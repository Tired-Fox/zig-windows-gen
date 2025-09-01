pub const IVpnAppId = extern struct {
    vtable: *const VTable,
    pub fn getType(self: *@This()) core.HResult!VpnAppIdType {
        var _r: VpnAppIdType = undefined;
        const _c = self.vtable.get_Type(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putType(self: *@This(), value: VpnAppIdType) core.HResult!void {
        const _c = self.vtable.put_Type(@ptrCast(self), value);
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
    pub const NAME: []const u8 = "Windows.Networking.Vpn.IVpnAppId";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7b06a635-5c58-41d9-94a7-bfbcf1d8ca54";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Type: *const fn(self: *anyopaque, _r: *VpnAppIdType) callconv(.winapi) HRESULT,
        put_Type: *const fn(self: *anyopaque, value: VpnAppIdType) callconv(.winapi) HRESULT,
        get_Value: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_Value: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IVpnAppIdFactory = extern struct {
    vtable: *const VTable,
    pub fn Create(self: *@This(), ty: VpnAppIdType, value: HSTRING) core.HResult!*VpnAppId {
        var _r: *VpnAppId = undefined;
        const _c = self.vtable.Create(@ptrCast(self), ty, value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.Vpn.IVpnAppIdFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "46adfd2a-0aab-4fdb-821d-d3ddc919788b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Create: *const fn(self: *anyopaque, ty: VpnAppIdType, value: HSTRING, _r: **VpnAppId) callconv(.winapi) HRESULT,
    };
};
pub const IVpnChannel = extern struct {
    vtable: *const VTable,
    pub fn AssociateTransport(self: *@This(), mainOuterTunnelTransport: *IInspectable, optionalOuterTunnelTransport: *IInspectable) core.HResult!void {
        const _c = self.vtable.AssociateTransport(@ptrCast(self), mainOuterTunnelTransport, optionalOuterTunnelTransport);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn Start(self: *@This(), assignedClientIPv4list: *IVectorView(HostName), assignedClientIPv6list: *IVectorView(HostName), vpnInterfaceId: *VpnInterfaceId, routeScope: *VpnRouteAssignment, namespaceScope: *VpnNamespaceAssignment, mtuSize: u32, maxFrameSize: u32, optimizeForLowCostNetwork: bool, mainOuterTunnelTransport: *IInspectable, optionalOuterTunnelTransport: *IInspectable) core.HResult!void {
        const _c = self.vtable.Start(@ptrCast(self), assignedClientIPv4list, assignedClientIPv6list, vpnInterfaceId, routeScope, namespaceScope, mtuSize, maxFrameSize, optimizeForLowCostNetwork, mainOuterTunnelTransport, optionalOuterTunnelTransport);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn Stop(self: *@This()) core.HResult!void {
        const _c = self.vtable.Stop(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn RequestCredentials(self: *@This(), credType: VpnCredentialType, isRetry: bool, isSingleSignOnCredential: bool, certificate: *Certificate) core.HResult!*VpnPickedCredential {
        var _r: *VpnPickedCredential = undefined;
        const _c = self.vtable.RequestCredentials(@ptrCast(self), credType, isRetry, isSingleSignOnCredential, certificate, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RequestVpnPacketBuffer(self: *@This(), ty: VpnDataPathType, vpnPacketBuffer: *VpnPacketBuffer) core.HResult!void {
        const _c = self.vtable.RequestVpnPacketBuffer(@ptrCast(self), ty, vpnPacketBuffer);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn LogDiagnosticMessage(self: *@This(), message: HSTRING) core.HResult!void {
        const _c = self.vtable.LogDiagnosticMessage(@ptrCast(self), message);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getId(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_Id(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getConfiguration(self: *@This()) core.HResult!*VpnChannelConfiguration {
        var _r: *VpnChannelConfiguration = undefined;
        const _c = self.vtable.get_Configuration(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addActivityChange(self: *@This(), handler: *TypedEventHandler(VpnChannel,VpnChannelActivityEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_ActivityChange(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeActivityChange(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_ActivityChange(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn putPlugInContext(self: *@This(), value: *IInspectable) core.HResult!void {
        const _c = self.vtable.put_PlugInContext(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getPlugInContext(self: *@This()) core.HResult!*IInspectable {
        var _r: *IInspectable = undefined;
        const _c = self.vtable.get_PlugInContext(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSystemHealth(self: *@This()) core.HResult!*VpnSystemHealth {
        var _r: *VpnSystemHealth = undefined;
        const _c = self.vtable.get_SystemHealth(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RequestCustomPrompt(self: *@This(), customPrompt: *IVectorView(IVpnCustomPrompt)) core.HResult!void {
        const _c = self.vtable.RequestCustomPrompt(@ptrCast(self), customPrompt);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn SetErrorMessage(self: *@This(), message: HSTRING) core.HResult!void {
        const _c = self.vtable.SetErrorMessage(@ptrCast(self), message);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn SetAllowedSslTlsVersions(self: *@This(), tunnelTransport: *IInspectable, useTls12: bool) core.HResult!void {
        const _c = self.vtable.SetAllowedSslTlsVersions(@ptrCast(self), tunnelTransport, useTls12);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Networking.Vpn.IVpnChannel";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "4ac78d07-d1a8-4303-a091-c8d2e0915bc3";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        AssociateTransport: *const fn(self: *anyopaque, mainOuterTunnelTransport: *IInspectable, optionalOuterTunnelTransport: *IInspectable) callconv(.winapi) HRESULT,
        Start: *const fn(self: *anyopaque, assignedClientIPv4list: *IVectorView(HostName), assignedClientIPv6list: *IVectorView(HostName), vpnInterfaceId: *VpnInterfaceId, routeScope: *VpnRouteAssignment, namespaceScope: *VpnNamespaceAssignment, mtuSize: u32, maxFrameSize: u32, optimizeForLowCostNetwork: bool, mainOuterTunnelTransport: *IInspectable, optionalOuterTunnelTransport: *IInspectable) callconv(.winapi) HRESULT,
        Stop: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        RequestCredentials: *const fn(self: *anyopaque, credType: VpnCredentialType, isRetry: bool, isSingleSignOnCredential: bool, certificate: *Certificate, _r: **VpnPickedCredential) callconv(.winapi) HRESULT,
        RequestVpnPacketBuffer: *const fn(self: *anyopaque, ty: VpnDataPathType, vpnPacketBuffer: *VpnPacketBuffer) callconv(.winapi) HRESULT,
        LogDiagnosticMessage: *const fn(self: *anyopaque, message: HSTRING) callconv(.winapi) HRESULT,
        get_Id: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_Configuration: *const fn(self: *anyopaque, _r: **VpnChannelConfiguration) callconv(.winapi) HRESULT,
        add_ActivityChange: *const fn(self: *anyopaque, handler: *TypedEventHandler(VpnChannel,VpnChannelActivityEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_ActivityChange: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        put_PlugInContext: *const fn(self: *anyopaque, value: *IInspectable) callconv(.winapi) HRESULT,
        get_PlugInContext: *const fn(self: *anyopaque, _r: **IInspectable) callconv(.winapi) HRESULT,
        get_SystemHealth: *const fn(self: *anyopaque, _r: **VpnSystemHealth) callconv(.winapi) HRESULT,
        RequestCustomPrompt: *const fn(self: *anyopaque, customPrompt: *IVectorView(IVpnCustomPrompt)) callconv(.winapi) HRESULT,
        SetErrorMessage: *const fn(self: *anyopaque, message: HSTRING) callconv(.winapi) HRESULT,
        SetAllowedSslTlsVersions: *const fn(self: *anyopaque, tunnelTransport: *IInspectable, useTls12: bool) callconv(.winapi) HRESULT,
    };
};
pub const IVpnChannel2 = extern struct {
    vtable: *const VTable,
    pub fn StartWithMainTransport(self: *@This(), assignedClientIPv4list: *IVectorView(HostName), assignedClientIPv6list: *IVectorView(HostName), vpnInterfaceId: *VpnInterfaceId, assignedRoutes: *VpnRouteAssignment, assignedDomainName: *VpnDomainNameAssignment, mtuSize: u32, maxFrameSize: u32, Reserved: bool, mainOuterTunnelTransport: *IInspectable) core.HResult!void {
        const _c = self.vtable.StartWithMainTransport(@ptrCast(self), assignedClientIPv4list, assignedClientIPv6list, vpnInterfaceId, assignedRoutes, assignedDomainName, mtuSize, maxFrameSize, Reserved, mainOuterTunnelTransport);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn StartExistingTransports(self: *@This(), assignedClientIPv4list: *IVectorView(HostName), assignedClientIPv6list: *IVectorView(HostName), vpnInterfaceId: *VpnInterfaceId, assignedRoutes: *VpnRouteAssignment, assignedDomainName: *VpnDomainNameAssignment, mtuSize: u32, maxFrameSize: u32, Reserved: bool) core.HResult!void {
        const _c = self.vtable.StartExistingTransports(@ptrCast(self), assignedClientIPv4list, assignedClientIPv6list, vpnInterfaceId, assignedRoutes, assignedDomainName, mtuSize, maxFrameSize, Reserved);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addActivityStateChange(self: *@This(), handler: *TypedEventHandler(VpnChannel,VpnChannelActivityStateChangedArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_ActivityStateChange(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeActivityStateChange(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_ActivityStateChange(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn GetVpnSendPacketBuffer(self: *@This()) core.HResult!*VpnPacketBuffer {
        var _r: *VpnPacketBuffer = undefined;
        const _c = self.vtable.GetVpnSendPacketBuffer(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetVpnReceivePacketBuffer(self: *@This()) core.HResult!*VpnPacketBuffer {
        var _r: *VpnPacketBuffer = undefined;
        const _c = self.vtable.GetVpnReceivePacketBuffer(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RequestCustomPromptAsync(self: *@This(), customPromptElement: *IVectorView(IVpnCustomPromptElement)) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.RequestCustomPromptAsync(@ptrCast(self), customPromptElement, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RequestCredentialsAsyncWithCredOptionsAndCertificate(self: *@This(), credType: VpnCredentialType, credOptions: u32, certificate: *Certificate) core.HResult!*IAsyncOperation(VpnCredential) {
        var _r: *IAsyncOperation(VpnCredential) = undefined;
        const _c = self.vtable.RequestCredentialsAsyncWithCredOptionsAndCertificate(@ptrCast(self), credType, credOptions, certificate, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RequestCredentialsAsyncWithCredOptions(self: *@This(), credType: VpnCredentialType, credOptions: u32) core.HResult!*IAsyncOperation(VpnCredential) {
        var _r: *IAsyncOperation(VpnCredential) = undefined;
        const _c = self.vtable.RequestCredentialsAsyncWithCredOptions(@ptrCast(self), credType, credOptions, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RequestCredentialsAsync(self: *@This(), credType: VpnCredentialType) core.HResult!*IAsyncOperation(VpnCredential) {
        var _r: *IAsyncOperation(VpnCredential) = undefined;
        const _c = self.vtable.RequestCredentialsAsync(@ptrCast(self), credType, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TerminateConnection(self: *@This(), message: HSTRING) core.HResult!void {
        const _c = self.vtable.TerminateConnection(@ptrCast(self), message);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn StartWithTrafficFilter(self: *@This(), assignedClientIpv4List: *IVectorView(HostName), assignedClientIpv6List: *IVectorView(HostName), vpnInterfaceId: *VpnInterfaceId, assignedRoutes: *VpnRouteAssignment, assignedNamespace: *VpnDomainNameAssignment, mtuSize: u32, maxFrameSize: u32, reserved: bool, mainOuterTunnelTransport: *IInspectable, optionalOuterTunnelTransport: *IInspectable, assignedTrafficFilters: *VpnTrafficFilterAssignment) core.HResult!void {
        const _c = self.vtable.StartWithTrafficFilter(@ptrCast(self), assignedClientIpv4List, assignedClientIpv6List, vpnInterfaceId, assignedRoutes, assignedNamespace, mtuSize, maxFrameSize, reserved, mainOuterTunnelTransport, optionalOuterTunnelTransport, assignedTrafficFilters);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Networking.Vpn.IVpnChannel2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2255d165-993b-4629-ad60-f1c3f3537f50";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        StartWithMainTransport: *const fn(self: *anyopaque, assignedClientIPv4list: *IVectorView(HostName), assignedClientIPv6list: *IVectorView(HostName), vpnInterfaceId: *VpnInterfaceId, assignedRoutes: *VpnRouteAssignment, assignedDomainName: *VpnDomainNameAssignment, mtuSize: u32, maxFrameSize: u32, Reserved: bool, mainOuterTunnelTransport: *IInspectable) callconv(.winapi) HRESULT,
        StartExistingTransports: *const fn(self: *anyopaque, assignedClientIPv4list: *IVectorView(HostName), assignedClientIPv6list: *IVectorView(HostName), vpnInterfaceId: *VpnInterfaceId, assignedRoutes: *VpnRouteAssignment, assignedDomainName: *VpnDomainNameAssignment, mtuSize: u32, maxFrameSize: u32, Reserved: bool) callconv(.winapi) HRESULT,
        add_ActivityStateChange: *const fn(self: *anyopaque, handler: *TypedEventHandler(VpnChannel,VpnChannelActivityStateChangedArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_ActivityStateChange: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        GetVpnSendPacketBuffer: *const fn(self: *anyopaque, _r: **VpnPacketBuffer) callconv(.winapi) HRESULT,
        GetVpnReceivePacketBuffer: *const fn(self: *anyopaque, _r: **VpnPacketBuffer) callconv(.winapi) HRESULT,
        RequestCustomPromptAsync: *const fn(self: *anyopaque, customPromptElement: *IVectorView(IVpnCustomPromptElement), _r: **IAsyncAction) callconv(.winapi) HRESULT,
        RequestCredentialsAsyncWithCredOptionsAndCertificate: *const fn(self: *anyopaque, credType: VpnCredentialType, credOptions: u32, certificate: *Certificate, _r: **IAsyncOperation(VpnCredential)) callconv(.winapi) HRESULT,
        RequestCredentialsAsyncWithCredOptions: *const fn(self: *anyopaque, credType: VpnCredentialType, credOptions: u32, _r: **IAsyncOperation(VpnCredential)) callconv(.winapi) HRESULT,
        RequestCredentialsAsync: *const fn(self: *anyopaque, credType: VpnCredentialType, _r: **IAsyncOperation(VpnCredential)) callconv(.winapi) HRESULT,
        TerminateConnection: *const fn(self: *anyopaque, message: HSTRING) callconv(.winapi) HRESULT,
        StartWithTrafficFilter: *const fn(self: *anyopaque, assignedClientIpv4List: *IVectorView(HostName), assignedClientIpv6List: *IVectorView(HostName), vpnInterfaceId: *VpnInterfaceId, assignedRoutes: *VpnRouteAssignment, assignedNamespace: *VpnDomainNameAssignment, mtuSize: u32, maxFrameSize: u32, reserved: bool, mainOuterTunnelTransport: *IInspectable, optionalOuterTunnelTransport: *IInspectable, assignedTrafficFilters: *VpnTrafficFilterAssignment) callconv(.winapi) HRESULT,
    };
};
pub const IVpnChannel4 = extern struct {
    vtable: *const VTable,
    pub fn AddAndAssociateTransport(self: *@This(), transport: *IInspectable, context: *IInspectable) core.HResult!void {
        const _c = self.vtable.AddAndAssociateTransport(@ptrCast(self), transport, context);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn StartWithTrafficFilter(self: *@This(), assignedClientIpv4Addresses: *IIterable(HostName), assignedClientIpv6Addresses: *IIterable(HostName), vpninterfaceId: *VpnInterfaceId, assignedRoutes: *VpnRouteAssignment, assignedNamespace: *VpnDomainNameAssignment, mtuSize: u32, maxFrameSize: u32, reserved: bool, transports: *IIterable(IInspectable), assignedTrafficFilters: *VpnTrafficFilterAssignment) core.HResult!void {
        const _c = self.vtable.StartWithTrafficFilter(@ptrCast(self), assignedClientIpv4Addresses, assignedClientIpv6Addresses, vpninterfaceId, assignedRoutes, assignedNamespace, mtuSize, maxFrameSize, reserved, transports, assignedTrafficFilters);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn ReplaceAndAssociateTransport(self: *@This(), transport: *IInspectable, context: *IInspectable) core.HResult!void {
        const _c = self.vtable.ReplaceAndAssociateTransport(@ptrCast(self), transport, context);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn StartReconnectingTransport(self: *@This(), transport: *IInspectable, context: *IInspectable) core.HResult!void {
        const _c = self.vtable.StartReconnectingTransport(@ptrCast(self), transport, context);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn GetSlotTypeForTransportContext(self: *@This(), context: *IInspectable) core.HResult!ControlChannelTriggerStatus {
        var _r: ControlChannelTriggerStatus = undefined;
        const _c = self.vtable.GetSlotTypeForTransportContext(@ptrCast(self), context, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCurrentRequestTransportContext(self: *@This()) core.HResult!*IInspectable {
        var _r: *IInspectable = undefined;
        const _c = self.vtable.get_CurrentRequestTransportContext(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.Vpn.IVpnChannel4";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d7266ede-2937-419d-9570-486aebb81803";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        AddAndAssociateTransport: *const fn(self: *anyopaque, transport: *IInspectable, context: *IInspectable) callconv(.winapi) HRESULT,
        StartWithTrafficFilter: *const fn(self: *anyopaque, assignedClientIpv4Addresses: *IIterable(HostName), assignedClientIpv6Addresses: *IIterable(HostName), vpninterfaceId: *VpnInterfaceId, assignedRoutes: *VpnRouteAssignment, assignedNamespace: *VpnDomainNameAssignment, mtuSize: u32, maxFrameSize: u32, reserved: bool, transports: *IIterable(IInspectable), assignedTrafficFilters: *VpnTrafficFilterAssignment) callconv(.winapi) HRESULT,
        ReplaceAndAssociateTransport: *const fn(self: *anyopaque, transport: *IInspectable, context: *IInspectable) callconv(.winapi) HRESULT,
        StartReconnectingTransport: *const fn(self: *anyopaque, transport: *IInspectable, context: *IInspectable) callconv(.winapi) HRESULT,
        GetSlotTypeForTransportContext: *const fn(self: *anyopaque, context: *IInspectable, _r: *ControlChannelTriggerStatus) callconv(.winapi) HRESULT,
        get_CurrentRequestTransportContext: *const fn(self: *anyopaque, _r: **IInspectable) callconv(.winapi) HRESULT,
    };
};
pub const IVpnChannel5 = extern struct {
    vtable: *const VTable,
    pub fn AppendVpnReceivePacketBuffer(self: *@This(), decapsulatedPacketBuffer: *VpnPacketBuffer) core.HResult!void {
        const _c = self.vtable.AppendVpnReceivePacketBuffer(@ptrCast(self), decapsulatedPacketBuffer);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AppendVpnSendPacketBuffer(self: *@This(), encapsulatedPacketBuffer: *VpnPacketBuffer) core.HResult!void {
        const _c = self.vtable.AppendVpnSendPacketBuffer(@ptrCast(self), encapsulatedPacketBuffer);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn FlushVpnReceivePacketBuffers(self: *@This()) core.HResult!void {
        const _c = self.vtable.FlushVpnReceivePacketBuffers(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn FlushVpnSendPacketBuffers(self: *@This()) core.HResult!void {
        const _c = self.vtable.FlushVpnSendPacketBuffers(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Networking.Vpn.IVpnChannel5";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "de7a0992-8384-4fbc-882c-1fd23124cd3b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        AppendVpnReceivePacketBuffer: *const fn(self: *anyopaque, decapsulatedPacketBuffer: *VpnPacketBuffer) callconv(.winapi) HRESULT,
        AppendVpnSendPacketBuffer: *const fn(self: *anyopaque, encapsulatedPacketBuffer: *VpnPacketBuffer) callconv(.winapi) HRESULT,
        FlushVpnReceivePacketBuffers: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        FlushVpnSendPacketBuffers: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
    };
};
pub const IVpnChannel6 = extern struct {
    vtable: *const VTable,
    pub fn ActivateForeground(self: *@This(), packageRelativeAppId: HSTRING, sharedContext: *ValueSet) core.HResult!*ValueSet {
        var _r: *ValueSet = undefined;
        const _c = self.vtable.ActivateForeground(@ptrCast(self), packageRelativeAppId, sharedContext, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.Vpn.IVpnChannel6";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "55843696-bd63-49c5-abca-5da77885551a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        ActivateForeground: *const fn(self: *anyopaque, packageRelativeAppId: HSTRING, sharedContext: *ValueSet, _r: **ValueSet) callconv(.winapi) HRESULT,
    };
};
pub const IVpnChannelActivityEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getType(self: *@This()) core.HResult!VpnChannelActivityEventType {
        var _r: VpnChannelActivityEventType = undefined;
        const _c = self.vtable.get_Type(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.Vpn.IVpnChannelActivityEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a36c88f2-afdc-4775-855d-d4ac0a35fc55";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Type: *const fn(self: *anyopaque, _r: *VpnChannelActivityEventType) callconv(.winapi) HRESULT,
    };
};
pub const IVpnChannelActivityStateChangedArgs = extern struct {
    vtable: *const VTable,
    pub fn getActivityState(self: *@This()) core.HResult!VpnChannelActivityEventType {
        var _r: VpnChannelActivityEventType = undefined;
        const _c = self.vtable.get_ActivityState(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.Vpn.IVpnChannelActivityStateChangedArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3d750565-fdc0-4bbe-a23b-45fffc6d97a1";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ActivityState: *const fn(self: *anyopaque, _r: *VpnChannelActivityEventType) callconv(.winapi) HRESULT,
    };
};
pub const IVpnChannelConfiguration = extern struct {
    vtable: *const VTable,
    pub fn getServerServiceName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ServerServiceName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getServerHostNameList(self: *@This()) core.HResult!*IVectorView(HostName) {
        var _r: *IVectorView(HostName) = undefined;
        const _c = self.vtable.get_ServerHostNameList(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCustomField(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_CustomField(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.Vpn.IVpnChannelConfiguration";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "0e2ddca2-2012-4fe4-b179-8c652c6d107e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ServerServiceName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_ServerHostNameList: *const fn(self: *anyopaque, _r: **IVectorView(HostName)) callconv(.winapi) HRESULT,
        get_CustomField: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IVpnChannelConfiguration2 = extern struct {
    vtable: *const VTable,
    pub fn getServerUris(self: *@This()) core.HResult!*IVectorView(Uri) {
        var _r: *IVectorView(Uri) = undefined;
        const _c = self.vtable.get_ServerUris(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.Vpn.IVpnChannelConfiguration2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f30b574c-7824-471c-a118-63dbc93ae4c7";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ServerUris: *const fn(self: *anyopaque, _r: **IVectorView(Uri)) callconv(.winapi) HRESULT,
    };
};
pub const IVpnChannelStatics = extern struct {
    vtable: *const VTable,
    pub fn ProcessEventAsync(self: *@This(), thirdPartyPlugIn: *IInspectable, event: *IInspectable) core.HResult!void {
        const _c = self.vtable.ProcessEventAsync(@ptrCast(self), thirdPartyPlugIn, event);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Networking.Vpn.IVpnChannelStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "88eb062d-e818-4ffd-98a6-363e3736c95d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        ProcessEventAsync: *const fn(self: *anyopaque, thirdPartyPlugIn: *IInspectable, event: *IInspectable) callconv(.winapi) HRESULT,
    };
};
pub const IVpnCredential = extern struct {
    vtable: *const VTable,
    pub fn getPasskeyCredential(self: *@This()) core.HResult!*PasswordCredential {
        var _r: *PasswordCredential = undefined;
        const _c = self.vtable.get_PasskeyCredential(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCertificateCredential(self: *@This()) core.HResult!*Certificate {
        var _r: *Certificate = undefined;
        const _c = self.vtable.get_CertificateCredential(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAdditionalPin(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_AdditionalPin(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getOldPasswordCredential(self: *@This()) core.HResult!*PasswordCredential {
        var _r: *PasswordCredential = undefined;
        const _c = self.vtable.get_OldPasswordCredential(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.Vpn.IVpnCredential";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b7e78af3-a46d-404b-8729-1832522853ac";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_PasskeyCredential: *const fn(self: *anyopaque, _r: **PasswordCredential) callconv(.winapi) HRESULT,
        get_CertificateCredential: *const fn(self: *anyopaque, _r: **Certificate) callconv(.winapi) HRESULT,
        get_AdditionalPin: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_OldPasswordCredential: *const fn(self: *anyopaque, _r: **PasswordCredential) callconv(.winapi) HRESULT,
    };
};
pub const IVpnCustomCheckBox = extern struct {
    vtable: *const VTable,
    pub fn putInitialCheckState(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_InitialCheckState(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getInitialCheckState(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_InitialCheckState(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getChecked(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_Checked(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.Vpn.IVpnCustomCheckBox";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "43878753-03c5-4e61-93d7-a957714c4282";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        put_InitialCheckState: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_InitialCheckState: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_Checked: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IVpnCustomComboBox = extern struct {
    vtable: *const VTable,
    pub fn putOptionsText(self: *@This(), value: *IVectorView(HSTRING)) core.HResult!void {
        const _c = self.vtable.put_OptionsText(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getOptionsText(self: *@This()) core.HResult!*IVectorView(HSTRING) {
        var _r: *IVectorView(HSTRING) = undefined;
        const _c = self.vtable.get_OptionsText(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSelected(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_Selected(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.Vpn.IVpnCustomComboBox";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "9a24158e-dba1-4c6f-8270-dcf3c9761c4c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        put_OptionsText: *const fn(self: *anyopaque, value: *IVectorView(HSTRING)) callconv(.winapi) HRESULT,
        get_OptionsText: *const fn(self: *anyopaque, _r: **IVectorView(HSTRING)) callconv(.winapi) HRESULT,
        get_Selected: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
    };
};
pub const IVpnCustomEditBox = extern struct {
    vtable: *const VTable,
    pub fn putDefaultText(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_DefaultText(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getDefaultText(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DefaultText(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putNoEcho(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_NoEcho(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getNoEcho(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_NoEcho(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getText(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Text(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.Vpn.IVpnCustomEditBox";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3002d9a0-cfbf-4c0b-8f3c-66f503c20b39";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        put_DefaultText: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_DefaultText: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_NoEcho: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_NoEcho: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_Text: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IVpnCustomErrorBox = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.Networking.Vpn.IVpnCustomErrorBox";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "9ec4efb2-c942-42af-b223-588b48328721";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
    };
};
pub const IVpnCustomPrompt = extern struct {
    vtable: *const VTable,
    pub fn putLabel(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_Label(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getLabel(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Label(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putCompulsory(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_Compulsory(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getCompulsory(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_Compulsory(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putBordered(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_Bordered(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getBordered(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_Bordered(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.Vpn.IVpnCustomPrompt";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "9b2ebe7b-87d5-433c-b4f6-eee6aa68a244";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        put_Label: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_Label: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_Compulsory: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_Compulsory: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_Bordered: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_Bordered: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IVpnCustomPromptBooleanInput = extern struct {
    vtable: *const VTable,
    pub fn putInitialValue(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_InitialValue(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getInitialValue(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_InitialValue(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getValue(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_Value(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.Vpn.IVpnCustomPromptBooleanInput";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c4c9a69e-ff47-4527-9f27-a49292019979";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        put_InitialValue: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_InitialValue: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_Value: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IVpnCustomPromptElement = extern struct {
    vtable: *const VTable,
    pub fn putDisplayName(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_DisplayName(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getDisplayName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DisplayName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putCompulsory(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_Compulsory(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getCompulsory(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_Compulsory(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putEmphasized(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_Emphasized(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getEmphasized(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_Emphasized(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.Vpn.IVpnCustomPromptElement";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "73bd5638-6f04-404d-93dd-50a44924a38b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        put_DisplayName: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_DisplayName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_Compulsory: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_Compulsory: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_Emphasized: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_Emphasized: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IVpnCustomPromptOptionSelector = extern struct {
    vtable: *const VTable,
    pub fn getOptions(self: *@This()) core.HResult!*IVector(HSTRING) {
        var _r: *IVector(HSTRING) = undefined;
        const _c = self.vtable.get_Options(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSelectedIndex(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_SelectedIndex(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.Vpn.IVpnCustomPromptOptionSelector";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3b8f34d9-8ec1-4e95-9a4e-7ba64d38f330";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Options: *const fn(self: *anyopaque, _r: **IVector(HSTRING)) callconv(.winapi) HRESULT,
        get_SelectedIndex: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
    };
};
pub const IVpnCustomPromptText = extern struct {
    vtable: *const VTable,
    pub fn putText(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_Text(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getText(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Text(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.Vpn.IVpnCustomPromptText";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3bc8bdee-3a42-49a3-abdd-07b2edea752d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        put_Text: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_Text: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IVpnCustomPromptTextInput = extern struct {
    vtable: *const VTable,
    pub fn putPlaceholderText(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_PlaceholderText(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getPlaceholderText(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_PlaceholderText(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIsTextHidden(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsTextHidden(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIsTextHidden(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsTextHidden(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getText(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Text(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.Vpn.IVpnCustomPromptTextInput";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c9da9c75-913c-47d5-88ba-48fc48930235";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        put_PlaceholderText: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_PlaceholderText: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_IsTextHidden: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_IsTextHidden: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_Text: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IVpnCustomTextBox = extern struct {
    vtable: *const VTable,
    pub fn putDisplayText(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_DisplayText(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getDisplayText(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DisplayText(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.Vpn.IVpnCustomTextBox";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "daa4c3ca-8f23-4d36-91f1-76d937827942";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        put_DisplayText: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_DisplayText: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IVpnDomainNameAssignment = extern struct {
    vtable: *const VTable,
    pub fn getDomainNameList(self: *@This()) core.HResult!*IVector(VpnDomainNameInfo) {
        var _r: *IVector(VpnDomainNameInfo) = undefined;
        const _c = self.vtable.get_DomainNameList(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putProxyAutoConfigurationUri(self: *@This(), value: *Uri) core.HResult!void {
        const _c = self.vtable.put_ProxyAutoConfigurationUri(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getProxyAutoConfigurationUri(self: *@This()) core.HResult!*Uri {
        var _r: *Uri = undefined;
        const _c = self.vtable.get_ProxyAutoConfigurationUri(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.Vpn.IVpnDomainNameAssignment";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "4135b141-ccdb-49b5-9401-039a8ae767e9";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_DomainNameList: *const fn(self: *anyopaque, _r: **IVector(VpnDomainNameInfo)) callconv(.winapi) HRESULT,
        put_ProxyAutoConfigurationUri: *const fn(self: *anyopaque, value: *Uri) callconv(.winapi) HRESULT,
        get_ProxyAutoConfigurationUri: *const fn(self: *anyopaque, _r: **Uri) callconv(.winapi) HRESULT,
    };
};
pub const IVpnDomainNameInfo = extern struct {
    vtable: *const VTable,
    pub fn putDomainName(self: *@This(), value: *HostName) core.HResult!void {
        const _c = self.vtable.put_DomainName(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getDomainName(self: *@This()) core.HResult!*HostName {
        var _r: *HostName = undefined;
        const _c = self.vtable.get_DomainName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDomainNameType(self: *@This(), value: VpnDomainNameType) core.HResult!void {
        const _c = self.vtable.put_DomainNameType(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getDomainNameType(self: *@This()) core.HResult!VpnDomainNameType {
        var _r: VpnDomainNameType = undefined;
        const _c = self.vtable.get_DomainNameType(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDnsServers(self: *@This()) core.HResult!*IVector(HostName) {
        var _r: *IVector(HostName) = undefined;
        const _c = self.vtable.get_DnsServers(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getWebProxyServers(self: *@This()) core.HResult!*IVector(HostName) {
        var _r: *IVector(HostName) = undefined;
        const _c = self.vtable.get_WebProxyServers(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.Vpn.IVpnDomainNameInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ad2eb82f-ea8e-4f7a-843e-1a87e32e1b9a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        put_DomainName: *const fn(self: *anyopaque, value: *HostName) callconv(.winapi) HRESULT,
        get_DomainName: *const fn(self: *anyopaque, _r: **HostName) callconv(.winapi) HRESULT,
        put_DomainNameType: *const fn(self: *anyopaque, value: VpnDomainNameType) callconv(.winapi) HRESULT,
        get_DomainNameType: *const fn(self: *anyopaque, _r: *VpnDomainNameType) callconv(.winapi) HRESULT,
        get_DnsServers: *const fn(self: *anyopaque, _r: **IVector(HostName)) callconv(.winapi) HRESULT,
        get_WebProxyServers: *const fn(self: *anyopaque, _r: **IVector(HostName)) callconv(.winapi) HRESULT,
    };
};
pub const IVpnDomainNameInfo2 = extern struct {
    vtable: *const VTable,
    pub fn getWebProxyUris(self: *@This()) core.HResult!*IVector(Uri) {
        var _r: *IVector(Uri) = undefined;
        const _c = self.vtable.get_WebProxyUris(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.Vpn.IVpnDomainNameInfo2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ab871151-6c53-4828-9883-d886de104407";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_WebProxyUris: *const fn(self: *anyopaque, _r: **IVector(Uri)) callconv(.winapi) HRESULT,
    };
};
pub const IVpnDomainNameInfoFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateVpnDomainNameInfo(self: *@This(), name: HSTRING, nameType: VpnDomainNameType, dnsServerList: *IIterable(HostName), proxyServerList: *IIterable(HostName)) core.HResult!*VpnDomainNameInfo {
        var _r: *VpnDomainNameInfo = undefined;
        const _c = self.vtable.CreateVpnDomainNameInfo(@ptrCast(self), name, nameType, dnsServerList, proxyServerList, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.Vpn.IVpnDomainNameInfoFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2507bb75-028f-4688-8d3a-c4531df37da8";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateVpnDomainNameInfo: *const fn(self: *anyopaque, name: HSTRING, nameType: VpnDomainNameType, dnsServerList: *IIterable(HostName), proxyServerList: *IIterable(HostName), _r: **VpnDomainNameInfo) callconv(.winapi) HRESULT,
    };
};
pub const IVpnForegroundActivatedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getProfileName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ProfileName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSharedContext(self: *@This()) core.HResult!*ValueSet {
        var _r: *ValueSet = undefined;
        const _c = self.vtable.get_SharedContext(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getActivationOperation(self: *@This()) core.HResult!*VpnForegroundActivationOperation {
        var _r: *VpnForegroundActivationOperation = undefined;
        const _c = self.vtable.get_ActivationOperation(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.Vpn.IVpnForegroundActivatedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "85b465b0-cadb-4d70-ac92-543a24dc9ebc";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ProfileName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_SharedContext: *const fn(self: *anyopaque, _r: **ValueSet) callconv(.winapi) HRESULT,
        get_ActivationOperation: *const fn(self: *anyopaque, _r: **VpnForegroundActivationOperation) callconv(.winapi) HRESULT,
    };
};
pub const IVpnForegroundActivationOperation = extern struct {
    vtable: *const VTable,
    pub fn Complete(self: *@This(), result: *ValueSet) core.HResult!void {
        const _c = self.vtable.Complete(@ptrCast(self), result);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Networking.Vpn.IVpnForegroundActivationOperation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "9e010d57-f17a-4bd5-9b6d-f984f1297d3c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Complete: *const fn(self: *anyopaque, result: *ValueSet) callconv(.winapi) HRESULT,
    };
};
pub const IVpnInterfaceId = extern struct {
    vtable: *const VTable,
    pub fn GetAddressInfo(self: *@This(), id: u8) core.HResult!void {
        const _c = self.vtable.GetAddressInfo(@ptrCast(self), id);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Networking.Vpn.IVpnInterfaceId";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "9e2ddca2-1712-4ce4-b179-8c652c6d1011";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetAddressInfo: *const fn(self: *anyopaque, id: u8) callconv(.winapi) HRESULT,
    };
};
pub const IVpnInterfaceIdFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateVpnInterfaceId(self: *@This(), address: [*]u8) core.HResult!*VpnInterfaceId {
        var _r: *VpnInterfaceId = undefined;
        const _c = self.vtable.CreateVpnInterfaceId(@ptrCast(self), address, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.Vpn.IVpnInterfaceIdFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "9e2ddca2-1712-4ce4-b179-8c652c6d1000";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateVpnInterfaceId: *const fn(self: *anyopaque, address: [*]u8, _r: **VpnInterfaceId) callconv(.winapi) HRESULT,
    };
};
pub const IVpnManagementAgent = extern struct {
    vtable: *const VTable,
    pub fn AddProfileFromXmlAsync(self: *@This(), xml: HSTRING) core.HResult!*IAsyncOperation(VpnManagementErrorStatus) {
        var _r: *IAsyncOperation(VpnManagementErrorStatus) = undefined;
        const _c = self.vtable.AddProfileFromXmlAsync(@ptrCast(self), xml, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn AddProfileFromObjectAsync(self: *@This(), profile: *IVpnProfile) core.HResult!*IAsyncOperation(VpnManagementErrorStatus) {
        var _r: *IAsyncOperation(VpnManagementErrorStatus) = undefined;
        const _c = self.vtable.AddProfileFromObjectAsync(@ptrCast(self), profile, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn UpdateProfileFromXmlAsync(self: *@This(), xml: HSTRING) core.HResult!*IAsyncOperation(VpnManagementErrorStatus) {
        var _r: *IAsyncOperation(VpnManagementErrorStatus) = undefined;
        const _c = self.vtable.UpdateProfileFromXmlAsync(@ptrCast(self), xml, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn UpdateProfileFromObjectAsync(self: *@This(), profile: *IVpnProfile) core.HResult!*IAsyncOperation(VpnManagementErrorStatus) {
        var _r: *IAsyncOperation(VpnManagementErrorStatus) = undefined;
        const _c = self.vtable.UpdateProfileFromObjectAsync(@ptrCast(self), profile, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetProfilesAsync(self: *@This()) core.HResult!*IAsyncOperation(IVectorView(IVpnProfile)) {
        var _r: *IAsyncOperation(IVectorView(IVpnProfile)) = undefined;
        const _c = self.vtable.GetProfilesAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn DeleteProfileAsync(self: *@This(), profile: *IVpnProfile) core.HResult!*IAsyncOperation(VpnManagementErrorStatus) {
        var _r: *IAsyncOperation(VpnManagementErrorStatus) = undefined;
        const _c = self.vtable.DeleteProfileAsync(@ptrCast(self), profile, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ConnectProfileAsync(self: *@This(), profile: *IVpnProfile) core.HResult!*IAsyncOperation(VpnManagementErrorStatus) {
        var _r: *IAsyncOperation(VpnManagementErrorStatus) = undefined;
        const _c = self.vtable.ConnectProfileAsync(@ptrCast(self), profile, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ConnectProfileWithPasswordCredentialAsync(self: *@This(), profile: *IVpnProfile, passwordCredential: *PasswordCredential) core.HResult!*IAsyncOperation(VpnManagementErrorStatus) {
        var _r: *IAsyncOperation(VpnManagementErrorStatus) = undefined;
        const _c = self.vtable.ConnectProfileWithPasswordCredentialAsync(@ptrCast(self), profile, passwordCredential, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn DisconnectProfileAsync(self: *@This(), profile: *IVpnProfile) core.HResult!*IAsyncOperation(VpnManagementErrorStatus) {
        var _r: *IAsyncOperation(VpnManagementErrorStatus) = undefined;
        const _c = self.vtable.DisconnectProfileAsync(@ptrCast(self), profile, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.Vpn.IVpnManagementAgent";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "193696cd-a5c4-4abe-852b-785be4cb3e34";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        AddProfileFromXmlAsync: *const fn(self: *anyopaque, xml: HSTRING, _r: **IAsyncOperation(VpnManagementErrorStatus)) callconv(.winapi) HRESULT,
        AddProfileFromObjectAsync: *const fn(self: *anyopaque, profile: *IVpnProfile, _r: **IAsyncOperation(VpnManagementErrorStatus)) callconv(.winapi) HRESULT,
        UpdateProfileFromXmlAsync: *const fn(self: *anyopaque, xml: HSTRING, _r: **IAsyncOperation(VpnManagementErrorStatus)) callconv(.winapi) HRESULT,
        UpdateProfileFromObjectAsync: *const fn(self: *anyopaque, profile: *IVpnProfile, _r: **IAsyncOperation(VpnManagementErrorStatus)) callconv(.winapi) HRESULT,
        GetProfilesAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(IVectorView(IVpnProfile))) callconv(.winapi) HRESULT,
        DeleteProfileAsync: *const fn(self: *anyopaque, profile: *IVpnProfile, _r: **IAsyncOperation(VpnManagementErrorStatus)) callconv(.winapi) HRESULT,
        ConnectProfileAsync: *const fn(self: *anyopaque, profile: *IVpnProfile, _r: **IAsyncOperation(VpnManagementErrorStatus)) callconv(.winapi) HRESULT,
        ConnectProfileWithPasswordCredentialAsync: *const fn(self: *anyopaque, profile: *IVpnProfile, passwordCredential: *PasswordCredential, _r: **IAsyncOperation(VpnManagementErrorStatus)) callconv(.winapi) HRESULT,
        DisconnectProfileAsync: *const fn(self: *anyopaque, profile: *IVpnProfile, _r: **IAsyncOperation(VpnManagementErrorStatus)) callconv(.winapi) HRESULT,
    };
};
pub const IVpnNamespaceAssignment = extern struct {
    vtable: *const VTable,
    pub fn putNamespaceList(self: *@This(), value: *IVector(VpnNamespaceInfo)) core.HResult!void {
        const _c = self.vtable.put_NamespaceList(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getNamespaceList(self: *@This()) core.HResult!*IVector(VpnNamespaceInfo) {
        var _r: *IVector(VpnNamespaceInfo) = undefined;
        const _c = self.vtable.get_NamespaceList(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putProxyAutoConfigUri(self: *@This(), value: *Uri) core.HResult!void {
        const _c = self.vtable.put_ProxyAutoConfigUri(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getProxyAutoConfigUri(self: *@This()) core.HResult!*Uri {
        var _r: *Uri = undefined;
        const _c = self.vtable.get_ProxyAutoConfigUri(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.Vpn.IVpnNamespaceAssignment";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d7f7db18-307d-4c0e-bd62-8fa270bbadd6";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        put_NamespaceList: *const fn(self: *anyopaque, value: *IVector(VpnNamespaceInfo)) callconv(.winapi) HRESULT,
        get_NamespaceList: *const fn(self: *anyopaque, _r: **IVector(VpnNamespaceInfo)) callconv(.winapi) HRESULT,
        put_ProxyAutoConfigUri: *const fn(self: *anyopaque, value: *Uri) callconv(.winapi) HRESULT,
        get_ProxyAutoConfigUri: *const fn(self: *anyopaque, _r: **Uri) callconv(.winapi) HRESULT,
    };
};
pub const IVpnNamespaceInfo = extern struct {
    vtable: *const VTable,
    pub fn putNamespace(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_Namespace(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getNamespace(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Namespace(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDnsServers(self: *@This(), value: *IVector(HostName)) core.HResult!void {
        const _c = self.vtable.put_DnsServers(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getDnsServers(self: *@This()) core.HResult!*IVector(HostName) {
        var _r: *IVector(HostName) = undefined;
        const _c = self.vtable.get_DnsServers(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putWebProxyServers(self: *@This(), value: *IVector(HostName)) core.HResult!void {
        const _c = self.vtable.put_WebProxyServers(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getWebProxyServers(self: *@This()) core.HResult!*IVector(HostName) {
        var _r: *IVector(HostName) = undefined;
        const _c = self.vtable.get_WebProxyServers(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.Vpn.IVpnNamespaceInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "30edfb43-444f-44c5-8167-a35a91f1af94";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        put_Namespace: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_Namespace: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_DnsServers: *const fn(self: *anyopaque, value: *IVector(HostName)) callconv(.winapi) HRESULT,
        get_DnsServers: *const fn(self: *anyopaque, _r: **IVector(HostName)) callconv(.winapi) HRESULT,
        put_WebProxyServers: *const fn(self: *anyopaque, value: *IVector(HostName)) callconv(.winapi) HRESULT,
        get_WebProxyServers: *const fn(self: *anyopaque, _r: **IVector(HostName)) callconv(.winapi) HRESULT,
    };
};
pub const IVpnNamespaceInfoFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateVpnNamespaceInfo(self: *@This(), name: HSTRING, dnsServerList: *IVector(HostName), proxyServerList: *IVector(HostName)) core.HResult!*VpnNamespaceInfo {
        var _r: *VpnNamespaceInfo = undefined;
        const _c = self.vtable.CreateVpnNamespaceInfo(@ptrCast(self), name, dnsServerList, proxyServerList, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.Vpn.IVpnNamespaceInfoFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "cb3e951a-b0ce-442b-acbb-5f99b202c31c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateVpnNamespaceInfo: *const fn(self: *anyopaque, name: HSTRING, dnsServerList: *IVector(HostName), proxyServerList: *IVector(HostName), _r: **VpnNamespaceInfo) callconv(.winapi) HRESULT,
    };
};
pub const IVpnNativeProfile = extern struct {
    vtable: *const VTable,
    pub fn getServers(self: *@This()) core.HResult!*IVector(HSTRING) {
        var _r: *IVector(HSTRING) = undefined;
        const _c = self.vtable.get_Servers(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRoutingPolicyType(self: *@This()) core.HResult!VpnRoutingPolicyType {
        var _r: VpnRoutingPolicyType = undefined;
        const _c = self.vtable.get_RoutingPolicyType(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putRoutingPolicyType(self: *@This(), value: VpnRoutingPolicyType) core.HResult!void {
        const _c = self.vtable.put_RoutingPolicyType(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getNativeProtocolType(self: *@This()) core.HResult!VpnNativeProtocolType {
        var _r: VpnNativeProtocolType = undefined;
        const _c = self.vtable.get_NativeProtocolType(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putNativeProtocolType(self: *@This(), value: VpnNativeProtocolType) core.HResult!void {
        const _c = self.vtable.put_NativeProtocolType(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getUserAuthenticationMethod(self: *@This()) core.HResult!VpnAuthenticationMethod {
        var _r: VpnAuthenticationMethod = undefined;
        const _c = self.vtable.get_UserAuthenticationMethod(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putUserAuthenticationMethod(self: *@This(), value: VpnAuthenticationMethod) core.HResult!void {
        const _c = self.vtable.put_UserAuthenticationMethod(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getTunnelAuthenticationMethod(self: *@This()) core.HResult!VpnAuthenticationMethod {
        var _r: VpnAuthenticationMethod = undefined;
        const _c = self.vtable.get_TunnelAuthenticationMethod(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putTunnelAuthenticationMethod(self: *@This(), value: VpnAuthenticationMethod) core.HResult!void {
        const _c = self.vtable.put_TunnelAuthenticationMethod(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getEapConfiguration(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_EapConfiguration(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putEapConfiguration(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_EapConfiguration(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Networking.Vpn.IVpnNativeProfile";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a4aee29e-6417-4333-9842-f0a66db69802";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Servers: *const fn(self: *anyopaque, _r: **IVector(HSTRING)) callconv(.winapi) HRESULT,
        get_RoutingPolicyType: *const fn(self: *anyopaque, _r: *VpnRoutingPolicyType) callconv(.winapi) HRESULT,
        put_RoutingPolicyType: *const fn(self: *anyopaque, value: VpnRoutingPolicyType) callconv(.winapi) HRESULT,
        get_NativeProtocolType: *const fn(self: *anyopaque, _r: *VpnNativeProtocolType) callconv(.winapi) HRESULT,
        put_NativeProtocolType: *const fn(self: *anyopaque, value: VpnNativeProtocolType) callconv(.winapi) HRESULT,
        get_UserAuthenticationMethod: *const fn(self: *anyopaque, _r: *VpnAuthenticationMethod) callconv(.winapi) HRESULT,
        put_UserAuthenticationMethod: *const fn(self: *anyopaque, value: VpnAuthenticationMethod) callconv(.winapi) HRESULT,
        get_TunnelAuthenticationMethod: *const fn(self: *anyopaque, _r: *VpnAuthenticationMethod) callconv(.winapi) HRESULT,
        put_TunnelAuthenticationMethod: *const fn(self: *anyopaque, value: VpnAuthenticationMethod) callconv(.winapi) HRESULT,
        get_EapConfiguration: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_EapConfiguration: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IVpnNativeProfile2 = extern struct {
    vtable: *const VTable,
    pub fn getRequireVpnClientAppUI(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_RequireVpnClientAppUI(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putRequireVpnClientAppUI(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_RequireVpnClientAppUI(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getConnectionStatus(self: *@This()) core.HResult!VpnManagementConnectionStatus {
        var _r: VpnManagementConnectionStatus = undefined;
        const _c = self.vtable.get_ConnectionStatus(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.Vpn.IVpnNativeProfile2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "0fec2467-cdb5-4ac7-b5a3-0afb5ec47682";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_RequireVpnClientAppUI: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_RequireVpnClientAppUI: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_ConnectionStatus: *const fn(self: *anyopaque, _r: *VpnManagementConnectionStatus) callconv(.winapi) HRESULT,
    };
};
pub const IVpnPacketBuffer = extern struct {
    vtable: *const VTable,
    pub fn getBuffer(self: *@This()) core.HResult!*Buffer {
        var _r: *Buffer = undefined;
        const _c = self.vtable.get_Buffer(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putStatus(self: *@This(), value: VpnPacketBufferStatus) core.HResult!void {
        const _c = self.vtable.put_Status(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getStatus(self: *@This()) core.HResult!VpnPacketBufferStatus {
        var _r: VpnPacketBufferStatus = undefined;
        const _c = self.vtable.get_Status(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putTransportAffinity(self: *@This(), value: u32) core.HResult!void {
        const _c = self.vtable.put_TransportAffinity(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getTransportAffinity(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_TransportAffinity(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.Vpn.IVpnPacketBuffer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c2f891fc-4d5c-4a63-b70d-4e307eacce55";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Buffer: *const fn(self: *anyopaque, _r: **Buffer) callconv(.winapi) HRESULT,
        put_Status: *const fn(self: *anyopaque, value: VpnPacketBufferStatus) callconv(.winapi) HRESULT,
        get_Status: *const fn(self: *anyopaque, _r: *VpnPacketBufferStatus) callconv(.winapi) HRESULT,
        put_TransportAffinity: *const fn(self: *anyopaque, value: u32) callconv(.winapi) HRESULT,
        get_TransportAffinity: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
    };
};
pub const IVpnPacketBuffer2 = extern struct {
    vtable: *const VTable,
    pub fn getAppId(self: *@This()) core.HResult!*VpnAppId {
        var _r: *VpnAppId = undefined;
        const _c = self.vtable.get_AppId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.Vpn.IVpnPacketBuffer2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "665e91f0-8805-4bf5-a619-2e84882e6b4f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_AppId: *const fn(self: *anyopaque, _r: **VpnAppId) callconv(.winapi) HRESULT,
    };
};
pub const IVpnPacketBuffer3 = extern struct {
    vtable: *const VTable,
    pub fn putTransportContext(self: *@This(), value: *IInspectable) core.HResult!void {
        const _c = self.vtable.put_TransportContext(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getTransportContext(self: *@This()) core.HResult!*IInspectable {
        var _r: *IInspectable = undefined;
        const _c = self.vtable.get_TransportContext(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.Vpn.IVpnPacketBuffer3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e256072f-107b-4c40-b127-5bc53e0ad960";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        put_TransportContext: *const fn(self: *anyopaque, value: *IInspectable) callconv(.winapi) HRESULT,
        get_TransportContext: *const fn(self: *anyopaque, _r: **IInspectable) callconv(.winapi) HRESULT,
    };
};
pub const IVpnPacketBufferFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateVpnPacketBuffer(self: *@This(), parentBuffer: *VpnPacketBuffer, offset: u32, length: u32) core.HResult!*VpnPacketBuffer {
        var _r: *VpnPacketBuffer = undefined;
        const _c = self.vtable.CreateVpnPacketBuffer(@ptrCast(self), parentBuffer, offset, length, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.Vpn.IVpnPacketBufferFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "9e2ddca2-1712-4ce4-b179-8c652c6d9999";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateVpnPacketBuffer: *const fn(self: *anyopaque, parentBuffer: *VpnPacketBuffer, offset: u32, length: u32, _r: **VpnPacketBuffer) callconv(.winapi) HRESULT,
    };
};
pub const IVpnPacketBufferList = extern struct {
    vtable: *const VTable,
    pub fn Append(self: *@This(), nextVpnPacketBuffer: *VpnPacketBuffer) core.HResult!void {
        const _c = self.vtable.Append(@ptrCast(self), nextVpnPacketBuffer);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddAtBegin(self: *@This(), nextVpnPacketBuffer: *VpnPacketBuffer) core.HResult!void {
        const _c = self.vtable.AddAtBegin(@ptrCast(self), nextVpnPacketBuffer);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn RemoveAtEnd(self: *@This()) core.HResult!*VpnPacketBuffer {
        var _r: *VpnPacketBuffer = undefined;
        const _c = self.vtable.RemoveAtEnd(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RemoveAtBegin(self: *@This()) core.HResult!*VpnPacketBuffer {
        var _r: *VpnPacketBuffer = undefined;
        const _c = self.vtable.RemoveAtBegin(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn Clear(self: *@This()) core.HResult!void {
        const _c = self.vtable.Clear(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn putStatus(self: *@This(), value: VpnPacketBufferStatus) core.HResult!void {
        const _c = self.vtable.put_Status(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getStatus(self: *@This()) core.HResult!VpnPacketBufferStatus {
        var _r: VpnPacketBufferStatus = undefined;
        const _c = self.vtable.get_Status(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSize(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_Size(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.Vpn.IVpnPacketBufferList";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c2f891fc-4d5c-4a63-b70d-4e307eacce77";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Append: *const fn(self: *anyopaque, nextVpnPacketBuffer: *VpnPacketBuffer) callconv(.winapi) HRESULT,
        AddAtBegin: *const fn(self: *anyopaque, nextVpnPacketBuffer: *VpnPacketBuffer) callconv(.winapi) HRESULT,
        RemoveAtEnd: *const fn(self: *anyopaque, _r: **VpnPacketBuffer) callconv(.winapi) HRESULT,
        RemoveAtBegin: *const fn(self: *anyopaque, _r: **VpnPacketBuffer) callconv(.winapi) HRESULT,
        Clear: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        put_Status: *const fn(self: *anyopaque, value: VpnPacketBufferStatus) callconv(.winapi) HRESULT,
        get_Status: *const fn(self: *anyopaque, _r: *VpnPacketBufferStatus) callconv(.winapi) HRESULT,
        get_Size: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
    };
};
pub const IVpnPacketBufferList2 = extern struct {
    vtable: *const VTable,
    pub fn AddLeadingPacket(self: *@This(), nextVpnPacketBuffer: *VpnPacketBuffer) core.HResult!void {
        const _c = self.vtable.AddLeadingPacket(@ptrCast(self), nextVpnPacketBuffer);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn RemoveLeadingPacket(self: *@This()) core.HResult!*VpnPacketBuffer {
        var _r: *VpnPacketBuffer = undefined;
        const _c = self.vtable.RemoveLeadingPacket(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn AddTrailingPacket(self: *@This(), nextVpnPacketBuffer: *VpnPacketBuffer) core.HResult!void {
        const _c = self.vtable.AddTrailingPacket(@ptrCast(self), nextVpnPacketBuffer);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn RemoveTrailingPacket(self: *@This()) core.HResult!*VpnPacketBuffer {
        var _r: *VpnPacketBuffer = undefined;
        const _c = self.vtable.RemoveTrailingPacket(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.Vpn.IVpnPacketBufferList2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3e7acfe5-ea1e-482a-8d98-c065f57d89ea";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        AddLeadingPacket: *const fn(self: *anyopaque, nextVpnPacketBuffer: *VpnPacketBuffer) callconv(.winapi) HRESULT,
        RemoveLeadingPacket: *const fn(self: *anyopaque, _r: **VpnPacketBuffer) callconv(.winapi) HRESULT,
        AddTrailingPacket: *const fn(self: *anyopaque, nextVpnPacketBuffer: *VpnPacketBuffer) callconv(.winapi) HRESULT,
        RemoveTrailingPacket: *const fn(self: *anyopaque, _r: **VpnPacketBuffer) callconv(.winapi) HRESULT,
    };
};
pub const IVpnPickedCredential = extern struct {
    vtable: *const VTable,
    pub fn getPasskeyCredential(self: *@This()) core.HResult!*PasswordCredential {
        var _r: *PasswordCredential = undefined;
        const _c = self.vtable.get_PasskeyCredential(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAdditionalPin(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_AdditionalPin(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getOldPasswordCredential(self: *@This()) core.HResult!*PasswordCredential {
        var _r: *PasswordCredential = undefined;
        const _c = self.vtable.get_OldPasswordCredential(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.Vpn.IVpnPickedCredential";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "9a793ac7-8854-4e52-ad97-24dd9a842bce";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_PasskeyCredential: *const fn(self: *anyopaque, _r: **PasswordCredential) callconv(.winapi) HRESULT,
        get_AdditionalPin: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_OldPasswordCredential: *const fn(self: *anyopaque, _r: **PasswordCredential) callconv(.winapi) HRESULT,
    };
};
pub const IVpnPlugIn = extern struct {
    vtable: *const VTable,
    pub fn Connect(self: *@This(), channel: *VpnChannel) core.HResult!void {
        const _c = self.vtable.Connect(@ptrCast(self), channel);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn Disconnect(self: *@This(), channel: *VpnChannel) core.HResult!void {
        const _c = self.vtable.Disconnect(@ptrCast(self), channel);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn GetKeepAlivePayload(self: *@This(), channel: *VpnChannel, keepAlivePacket: *VpnPacketBuffer) core.HResult!void {
        const _c = self.vtable.GetKeepAlivePayload(@ptrCast(self), channel, keepAlivePacket);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn Encapsulate(self: *@This(), channel: *VpnChannel, packets: *VpnPacketBufferList, encapulatedPackets: *VpnPacketBufferList) core.HResult!void {
        const _c = self.vtable.Encapsulate(@ptrCast(self), channel, packets, encapulatedPackets);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn Decapsulate(self: *@This(), channel: *VpnChannel, encapBuffer: *VpnPacketBuffer, decapsulatedPackets: *VpnPacketBufferList, controlPacketsToSend: *VpnPacketBufferList) core.HResult!void {
        const _c = self.vtable.Decapsulate(@ptrCast(self), channel, encapBuffer, decapsulatedPackets, controlPacketsToSend);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Networking.Vpn.IVpnPlugIn";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ceb78d07-d0a8-4703-a091-c8c2c0915bc4";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Connect: *const fn(self: *anyopaque, channel: *VpnChannel) callconv(.winapi) HRESULT,
        Disconnect: *const fn(self: *anyopaque, channel: *VpnChannel) callconv(.winapi) HRESULT,
        GetKeepAlivePayload: *const fn(self: *anyopaque, channel: *VpnChannel, keepAlivePacket: *VpnPacketBuffer) callconv(.winapi) HRESULT,
        Encapsulate: *const fn(self: *anyopaque, channel: *VpnChannel, packets: *VpnPacketBufferList, encapulatedPackets: *VpnPacketBufferList) callconv(.winapi) HRESULT,
        Decapsulate: *const fn(self: *anyopaque, channel: *VpnChannel, encapBuffer: *VpnPacketBuffer, decapsulatedPackets: *VpnPacketBufferList, controlPacketsToSend: *VpnPacketBufferList) callconv(.winapi) HRESULT,
    };
};
pub const IVpnPlugInProfile = extern struct {
    vtable: *const VTable,
    pub fn getServerUris(self: *@This()) core.HResult!*IVector(Uri) {
        var _r: *IVector(Uri) = undefined;
        const _c = self.vtable.get_ServerUris(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCustomConfiguration(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_CustomConfiguration(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putCustomConfiguration(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_CustomConfiguration(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getVpnPluginPackageFamilyName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_VpnPluginPackageFamilyName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putVpnPluginPackageFamilyName(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_VpnPluginPackageFamilyName(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Networking.Vpn.IVpnPlugInProfile";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "0edf0da4-4f00-4589-8d7b-4bf988f6542c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ServerUris: *const fn(self: *anyopaque, _r: **IVector(Uri)) callconv(.winapi) HRESULT,
        get_CustomConfiguration: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_CustomConfiguration: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_VpnPluginPackageFamilyName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_VpnPluginPackageFamilyName: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IVpnPlugInProfile2 = extern struct {
    vtable: *const VTable,
    pub fn getRequireVpnClientAppUI(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_RequireVpnClientAppUI(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putRequireVpnClientAppUI(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_RequireVpnClientAppUI(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getConnectionStatus(self: *@This()) core.HResult!VpnManagementConnectionStatus {
        var _r: VpnManagementConnectionStatus = undefined;
        const _c = self.vtable.get_ConnectionStatus(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.Vpn.IVpnPlugInProfile2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "611c4892-cf94-4ad6-ba99-00f4ff34565e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_RequireVpnClientAppUI: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_RequireVpnClientAppUI: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_ConnectionStatus: *const fn(self: *anyopaque, _r: *VpnManagementConnectionStatus) callconv(.winapi) HRESULT,
    };
};
pub const IVpnPlugInReconnectTransport = extern struct {
    vtable: *const VTable,
    pub fn ReconnectTransport(self: *@This(), channel: *VpnChannel, context: *IInspectable) core.HResult!void {
        const _c = self.vtable.ReconnectTransport(@ptrCast(self), channel, context);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Networking.Vpn.IVpnPlugInReconnectTransport";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "9d5a1092-bb46-4d34-9d88-f217893076f4";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        ReconnectTransport: *const fn(self: *anyopaque, channel: *VpnChannel, context: *IInspectable) callconv(.winapi) HRESULT,
    };
};
pub const IVpnProfile = extern struct {
    vtable: *const VTable,
    pub fn getProfileName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ProfileName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putProfileName(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_ProfileName(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getAppTriggers(self: *@This()) core.HResult!*IVector(VpnAppId) {
        var _r: *IVector(VpnAppId) = undefined;
        const _c = self.vtable.get_AppTriggers(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRoutes(self: *@This()) core.HResult!*IVector(VpnRoute) {
        var _r: *IVector(VpnRoute) = undefined;
        const _c = self.vtable.get_Routes(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDomainNameInfoList(self: *@This()) core.HResult!*IVector(VpnDomainNameInfo) {
        var _r: *IVector(VpnDomainNameInfo) = undefined;
        const _c = self.vtable.get_DomainNameInfoList(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTrafficFilters(self: *@This()) core.HResult!*IVector(VpnTrafficFilter) {
        var _r: *IVector(VpnTrafficFilter) = undefined;
        const _c = self.vtable.get_TrafficFilters(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRememberCredentials(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_RememberCredentials(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putRememberCredentials(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_RememberCredentials(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getAlwaysOn(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_AlwaysOn(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putAlwaysOn(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_AlwaysOn(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Networking.Vpn.IVpnProfile";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7875b751-b0d7-43db-8a93-d3fe2479e56a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ProfileName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_ProfileName: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_AppTriggers: *const fn(self: *anyopaque, _r: **IVector(VpnAppId)) callconv(.winapi) HRESULT,
        get_Routes: *const fn(self: *anyopaque, _r: **IVector(VpnRoute)) callconv(.winapi) HRESULT,
        get_DomainNameInfoList: *const fn(self: *anyopaque, _r: **IVector(VpnDomainNameInfo)) callconv(.winapi) HRESULT,
        get_TrafficFilters: *const fn(self: *anyopaque, _r: **IVector(VpnTrafficFilter)) callconv(.winapi) HRESULT,
        get_RememberCredentials: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_RememberCredentials: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_AlwaysOn: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_AlwaysOn: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
    };
};
pub const IVpnRoute = extern struct {
    vtable: *const VTable,
    pub fn putAddress(self: *@This(), value: *HostName) core.HResult!void {
        const _c = self.vtable.put_Address(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getAddress(self: *@This()) core.HResult!*HostName {
        var _r: *HostName = undefined;
        const _c = self.vtable.get_Address(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putPrefixSize(self: *@This(), value: u8) core.HResult!void {
        const _c = self.vtable.put_PrefixSize(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getPrefixSize(self: *@This()) core.HResult!u8 {
        var _r: u8 = undefined;
        const _c = self.vtable.get_PrefixSize(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.Vpn.IVpnRoute";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b5731b83-0969-4699-938e-7776db29cfb3";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        put_Address: *const fn(self: *anyopaque, value: *HostName) callconv(.winapi) HRESULT,
        get_Address: *const fn(self: *anyopaque, _r: **HostName) callconv(.winapi) HRESULT,
        put_PrefixSize: *const fn(self: *anyopaque, value: u8) callconv(.winapi) HRESULT,
        get_PrefixSize: *const fn(self: *anyopaque, _r: *u8) callconv(.winapi) HRESULT,
    };
};
pub const IVpnRouteAssignment = extern struct {
    vtable: *const VTable,
    pub fn putIpv4InclusionRoutes(self: *@This(), value: *IVector(VpnRoute)) core.HResult!void {
        const _c = self.vtable.put_Ipv4InclusionRoutes(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn putIpv6InclusionRoutes(self: *@This(), value: *IVector(VpnRoute)) core.HResult!void {
        const _c = self.vtable.put_Ipv6InclusionRoutes(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIpv4InclusionRoutes(self: *@This()) core.HResult!*IVector(VpnRoute) {
        var _r: *IVector(VpnRoute) = undefined;
        const _c = self.vtable.get_Ipv4InclusionRoutes(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIpv6InclusionRoutes(self: *@This()) core.HResult!*IVector(VpnRoute) {
        var _r: *IVector(VpnRoute) = undefined;
        const _c = self.vtable.get_Ipv6InclusionRoutes(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIpv4ExclusionRoutes(self: *@This(), value: *IVector(VpnRoute)) core.HResult!void {
        const _c = self.vtable.put_Ipv4ExclusionRoutes(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn putIpv6ExclusionRoutes(self: *@This(), value: *IVector(VpnRoute)) core.HResult!void {
        const _c = self.vtable.put_Ipv6ExclusionRoutes(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIpv4ExclusionRoutes(self: *@This()) core.HResult!*IVector(VpnRoute) {
        var _r: *IVector(VpnRoute) = undefined;
        const _c = self.vtable.get_Ipv4ExclusionRoutes(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIpv6ExclusionRoutes(self: *@This()) core.HResult!*IVector(VpnRoute) {
        var _r: *IVector(VpnRoute) = undefined;
        const _c = self.vtable.get_Ipv6ExclusionRoutes(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putExcludeLocalSubnets(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_ExcludeLocalSubnets(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getExcludeLocalSubnets(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_ExcludeLocalSubnets(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.Vpn.IVpnRouteAssignment";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "db64de22-ce39-4a76-9550-f61039f80e48";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        put_Ipv4InclusionRoutes: *const fn(self: *anyopaque, value: *IVector(VpnRoute)) callconv(.winapi) HRESULT,
        put_Ipv6InclusionRoutes: *const fn(self: *anyopaque, value: *IVector(VpnRoute)) callconv(.winapi) HRESULT,
        get_Ipv4InclusionRoutes: *const fn(self: *anyopaque, _r: **IVector(VpnRoute)) callconv(.winapi) HRESULT,
        get_Ipv6InclusionRoutes: *const fn(self: *anyopaque, _r: **IVector(VpnRoute)) callconv(.winapi) HRESULT,
        put_Ipv4ExclusionRoutes: *const fn(self: *anyopaque, value: *IVector(VpnRoute)) callconv(.winapi) HRESULT,
        put_Ipv6ExclusionRoutes: *const fn(self: *anyopaque, value: *IVector(VpnRoute)) callconv(.winapi) HRESULT,
        get_Ipv4ExclusionRoutes: *const fn(self: *anyopaque, _r: **IVector(VpnRoute)) callconv(.winapi) HRESULT,
        get_Ipv6ExclusionRoutes: *const fn(self: *anyopaque, _r: **IVector(VpnRoute)) callconv(.winapi) HRESULT,
        put_ExcludeLocalSubnets: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_ExcludeLocalSubnets: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IVpnRouteFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateVpnRoute(self: *@This(), address: *HostName, prefixSize: u8) core.HResult!*VpnRoute {
        var _r: *VpnRoute = undefined;
        const _c = self.vtable.CreateVpnRoute(@ptrCast(self), address, prefixSize, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.Vpn.IVpnRouteFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "bdeab5ff-45cf-4b99-83fb-db3bc2672b02";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateVpnRoute: *const fn(self: *anyopaque, address: *HostName, prefixSize: u8, _r: **VpnRoute) callconv(.winapi) HRESULT,
    };
};
pub const IVpnSystemHealth = extern struct {
    vtable: *const VTable,
    pub fn getStatementOfHealth(self: *@This()) core.HResult!*Buffer {
        var _r: *Buffer = undefined;
        const _c = self.vtable.get_StatementOfHealth(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.Vpn.IVpnSystemHealth";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "99a8f8af-c0ee-4e75-817a-f231aee5123d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_StatementOfHealth: *const fn(self: *anyopaque, _r: **Buffer) callconv(.winapi) HRESULT,
    };
};
pub const IVpnTrafficFilter = extern struct {
    vtable: *const VTable,
    pub fn getAppId(self: *@This()) core.HResult!*VpnAppId {
        var _r: *VpnAppId = undefined;
        const _c = self.vtable.get_AppId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putAppId(self: *@This(), value: *VpnAppId) core.HResult!void {
        const _c = self.vtable.put_AppId(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getAppClaims(self: *@This()) core.HResult!*IVector(HSTRING) {
        var _r: *IVector(HSTRING) = undefined;
        const _c = self.vtable.get_AppClaims(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getProtocol(self: *@This()) core.HResult!VpnIPProtocol {
        var _r: VpnIPProtocol = undefined;
        const _c = self.vtable.get_Protocol(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putProtocol(self: *@This(), value: VpnIPProtocol) core.HResult!void {
        const _c = self.vtable.put_Protocol(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getLocalPortRanges(self: *@This()) core.HResult!*IVector(HSTRING) {
        var _r: *IVector(HSTRING) = undefined;
        const _c = self.vtable.get_LocalPortRanges(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRemotePortRanges(self: *@This()) core.HResult!*IVector(HSTRING) {
        var _r: *IVector(HSTRING) = undefined;
        const _c = self.vtable.get_RemotePortRanges(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getLocalAddressRanges(self: *@This()) core.HResult!*IVector(HSTRING) {
        var _r: *IVector(HSTRING) = undefined;
        const _c = self.vtable.get_LocalAddressRanges(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRemoteAddressRanges(self: *@This()) core.HResult!*IVector(HSTRING) {
        var _r: *IVector(HSTRING) = undefined;
        const _c = self.vtable.get_RemoteAddressRanges(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRoutingPolicyType(self: *@This()) core.HResult!VpnRoutingPolicyType {
        var _r: VpnRoutingPolicyType = undefined;
        const _c = self.vtable.get_RoutingPolicyType(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putRoutingPolicyType(self: *@This(), value: VpnRoutingPolicyType) core.HResult!void {
        const _c = self.vtable.put_RoutingPolicyType(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Networking.Vpn.IVpnTrafficFilter";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2f691b60-6c9f-47f5-ac36-bb1b042e2c50";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_AppId: *const fn(self: *anyopaque, _r: **VpnAppId) callconv(.winapi) HRESULT,
        put_AppId: *const fn(self: *anyopaque, value: *VpnAppId) callconv(.winapi) HRESULT,
        get_AppClaims: *const fn(self: *anyopaque, _r: **IVector(HSTRING)) callconv(.winapi) HRESULT,
        get_Protocol: *const fn(self: *anyopaque, _r: *VpnIPProtocol) callconv(.winapi) HRESULT,
        put_Protocol: *const fn(self: *anyopaque, value: VpnIPProtocol) callconv(.winapi) HRESULT,
        get_LocalPortRanges: *const fn(self: *anyopaque, _r: **IVector(HSTRING)) callconv(.winapi) HRESULT,
        get_RemotePortRanges: *const fn(self: *anyopaque, _r: **IVector(HSTRING)) callconv(.winapi) HRESULT,
        get_LocalAddressRanges: *const fn(self: *anyopaque, _r: **IVector(HSTRING)) callconv(.winapi) HRESULT,
        get_RemoteAddressRanges: *const fn(self: *anyopaque, _r: **IVector(HSTRING)) callconv(.winapi) HRESULT,
        get_RoutingPolicyType: *const fn(self: *anyopaque, _r: *VpnRoutingPolicyType) callconv(.winapi) HRESULT,
        put_RoutingPolicyType: *const fn(self: *anyopaque, value: VpnRoutingPolicyType) callconv(.winapi) HRESULT,
    };
};
pub const IVpnTrafficFilterAssignment = extern struct {
    vtable: *const VTable,
    pub fn getTrafficFilterList(self: *@This()) core.HResult!*IVector(VpnTrafficFilter) {
        var _r: *IVector(VpnTrafficFilter) = undefined;
        const _c = self.vtable.get_TrafficFilterList(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAllowOutbound(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_AllowOutbound(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putAllowOutbound(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_AllowOutbound(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getAllowInbound(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_AllowInbound(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putAllowInbound(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_AllowInbound(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Networking.Vpn.IVpnTrafficFilterAssignment";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "56ccd45c-e664-471e-89cd-601603b9e0f3";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_TrafficFilterList: *const fn(self: *anyopaque, _r: **IVector(VpnTrafficFilter)) callconv(.winapi) HRESULT,
        get_AllowOutbound: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_AllowOutbound: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_AllowInbound: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_AllowInbound: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
    };
};
pub const IVpnTrafficFilterFactory = extern struct {
    vtable: *const VTable,
    pub fn Create(self: *@This(), appId: *VpnAppId) core.HResult!*VpnTrafficFilter {
        var _r: *VpnTrafficFilter = undefined;
        const _c = self.vtable.Create(@ptrCast(self), appId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.Vpn.IVpnTrafficFilterFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "480d41d5-7f99-474c-86ee-96df168318f1";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Create: *const fn(self: *anyopaque, appId: *VpnAppId, _r: **VpnTrafficFilter) callconv(.winapi) HRESULT,
    };
};
pub const VpnAppId = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getType(self: *@This()) core.HResult!VpnAppIdType {
        const this: *IVpnAppId = @ptrCast(self);
        return try this.getType();
    }
    pub fn putType(self: *@This(), value: VpnAppIdType) core.HResult!void {
        const this: *IVpnAppId = @ptrCast(self);
        return try this.putType(value);
    }
    pub fn getValue(self: *@This()) core.HResult!HSTRING {
        const this: *IVpnAppId = @ptrCast(self);
        return try this.getValue();
    }
    pub fn putValue(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IVpnAppId = @ptrCast(self);
        return try this.putValue(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn Create(ty: VpnAppIdType, value: HSTRING) core.HResult!*VpnAppId {
        const _f = @This().IVpnAppIdFactoryCache.get();
        return try _f.Create(ty, value);
    }
    pub const NAME: []const u8 = "Windows.Networking.Vpn.VpnAppId";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IVpnAppId.GUID;
    pub const IID: Guid = IVpnAppId.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IVpnAppId.SIGNATURE);
    var _IVpnAppIdFactoryCache: FactoryCache(IVpnAppIdFactory, RUNTIME_NAME) = .{};
};
pub const VpnAppIdType = enum(i32) {
    PackageFamilyName = 0,
    FullyQualifiedBinaryName = 1,
    FilePath = 2,
};
pub const VpnAuthenticationMethod = enum(i32) {
    Mschapv2 = 0,
    Eap = 1,
    Certificate = 2,
    PresharedKey = 3,
};
pub const VpnChannel = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn AssociateTransport(self: *@This(), mainOuterTunnelTransport: *IInspectable, optionalOuterTunnelTransport: *IInspectable) core.HResult!void {
        const this: *IVpnChannel = @ptrCast(self);
        return try this.AssociateTransport(mainOuterTunnelTransport, optionalOuterTunnelTransport);
    }
    pub fn Start(self: *@This(), assignedClientIPv4list: *IVectorView(HostName), assignedClientIPv6list: *IVectorView(HostName), vpnInterfaceId: *VpnInterfaceId, routeScope: *VpnRouteAssignment, namespaceScope: *VpnNamespaceAssignment, mtuSize: u32, maxFrameSize: u32, optimizeForLowCostNetwork: bool, mainOuterTunnelTransport: *IInspectable, optionalOuterTunnelTransport: *IInspectable) core.HResult!void {
        const this: *IVpnChannel = @ptrCast(self);
        return try this.Start(assignedClientIPv4list, assignedClientIPv6list, vpnInterfaceId, routeScope, namespaceScope, mtuSize, maxFrameSize, optimizeForLowCostNetwork, mainOuterTunnelTransport, optionalOuterTunnelTransport);
    }
    pub fn Stop(self: *@This()) core.HResult!void {
        const this: *IVpnChannel = @ptrCast(self);
        return try this.Stop();
    }
    pub fn RequestCredentials(self: *@This(), credType: VpnCredentialType, isRetry: bool, isSingleSignOnCredential: bool, certificate: *Certificate) core.HResult!*VpnPickedCredential {
        const this: *IVpnChannel = @ptrCast(self);
        return try this.RequestCredentials(credType, isRetry, isSingleSignOnCredential, certificate);
    }
    pub fn RequestVpnPacketBuffer(self: *@This(), ty: VpnDataPathType, vpnPacketBuffer: *VpnPacketBuffer) core.HResult!void {
        const this: *IVpnChannel = @ptrCast(self);
        return try this.RequestVpnPacketBuffer(ty, vpnPacketBuffer);
    }
    pub fn LogDiagnosticMessage(self: *@This(), message: HSTRING) core.HResult!void {
        const this: *IVpnChannel = @ptrCast(self);
        return try this.LogDiagnosticMessage(message);
    }
    pub fn getId(self: *@This()) core.HResult!u32 {
        const this: *IVpnChannel = @ptrCast(self);
        return try this.getId();
    }
    pub fn getConfiguration(self: *@This()) core.HResult!*VpnChannelConfiguration {
        const this: *IVpnChannel = @ptrCast(self);
        return try this.getConfiguration();
    }
    pub fn addActivityChange(self: *@This(), handler: *TypedEventHandler(VpnChannel,VpnChannelActivityEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IVpnChannel = @ptrCast(self);
        return try this.addActivityChange(handler);
    }
    pub fn removeActivityChange(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IVpnChannel = @ptrCast(self);
        return try this.removeActivityChange(token);
    }
    pub fn putPlugInContext(self: *@This(), value: *IInspectable) core.HResult!void {
        const this: *IVpnChannel = @ptrCast(self);
        return try this.putPlugInContext(value);
    }
    pub fn getPlugInContext(self: *@This()) core.HResult!*IInspectable {
        const this: *IVpnChannel = @ptrCast(self);
        return try this.getPlugInContext();
    }
    pub fn getSystemHealth(self: *@This()) core.HResult!*VpnSystemHealth {
        const this: *IVpnChannel = @ptrCast(self);
        return try this.getSystemHealth();
    }
    pub fn RequestCustomPrompt(self: *@This(), customPrompt: *IVectorView(IVpnCustomPrompt)) core.HResult!void {
        const this: *IVpnChannel = @ptrCast(self);
        return try this.RequestCustomPrompt(customPrompt);
    }
    pub fn SetErrorMessage(self: *@This(), message: HSTRING) core.HResult!void {
        const this: *IVpnChannel = @ptrCast(self);
        return try this.SetErrorMessage(message);
    }
    pub fn SetAllowedSslTlsVersions(self: *@This(), tunnelTransport: *IInspectable, useTls12: bool) core.HResult!void {
        const this: *IVpnChannel = @ptrCast(self);
        return try this.SetAllowedSslTlsVersions(tunnelTransport, useTls12);
    }
    pub fn StartWithMainTransport(self: *@This(), assignedClientIPv4list: *IVectorView(HostName), assignedClientIPv6list: *IVectorView(HostName), vpnInterfaceId: *VpnInterfaceId, assignedRoutes: *VpnRouteAssignment, assignedDomainName: *VpnDomainNameAssignment, mtuSize: u32, maxFrameSize: u32, Reserved: bool, mainOuterTunnelTransport: *IInspectable) core.HResult!void {
        var this: ?*IVpnChannel2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVpnChannel2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.StartWithMainTransport(assignedClientIPv4list, assignedClientIPv6list, vpnInterfaceId, assignedRoutes, assignedDomainName, mtuSize, maxFrameSize, Reserved, mainOuterTunnelTransport);
    }
    pub fn StartExistingTransports(self: *@This(), assignedClientIPv4list: *IVectorView(HostName), assignedClientIPv6list: *IVectorView(HostName), vpnInterfaceId: *VpnInterfaceId, assignedRoutes: *VpnRouteAssignment, assignedDomainName: *VpnDomainNameAssignment, mtuSize: u32, maxFrameSize: u32, Reserved: bool) core.HResult!void {
        var this: ?*IVpnChannel2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVpnChannel2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.StartExistingTransports(assignedClientIPv4list, assignedClientIPv6list, vpnInterfaceId, assignedRoutes, assignedDomainName, mtuSize, maxFrameSize, Reserved);
    }
    pub fn addActivityStateChange(self: *@This(), handler: *TypedEventHandler(VpnChannel,VpnChannelActivityStateChangedArgs)) core.HResult!EventRegistrationToken {
        var this: ?*IVpnChannel2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVpnChannel2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addActivityStateChange(handler);
    }
    pub fn removeActivityStateChange(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        var this: ?*IVpnChannel2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVpnChannel2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removeActivityStateChange(token);
    }
    pub fn GetVpnSendPacketBuffer(self: *@This()) core.HResult!*VpnPacketBuffer {
        var this: ?*IVpnChannel2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVpnChannel2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetVpnSendPacketBuffer();
    }
    pub fn GetVpnReceivePacketBuffer(self: *@This()) core.HResult!*VpnPacketBuffer {
        var this: ?*IVpnChannel2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVpnChannel2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetVpnReceivePacketBuffer();
    }
    pub fn RequestCustomPromptAsync(self: *@This(), customPromptElement: *IVectorView(IVpnCustomPromptElement)) core.HResult!*IAsyncAction {
        var this: ?*IVpnChannel2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVpnChannel2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.RequestCustomPromptAsync(customPromptElement);
    }
    pub fn RequestCredentialsAsyncWithCredOptionsAndCertificate(self: *@This(), credType: VpnCredentialType, credOptions: u32, certificate: *Certificate) core.HResult!*IAsyncOperation(VpnCredential) {
        var this: ?*IVpnChannel2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVpnChannel2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.RequestCredentialsAsyncWithCredOptionsAndCertificate(credType, credOptions, certificate);
    }
    pub fn RequestCredentialsAsyncWithCredOptions(self: *@This(), credType: VpnCredentialType, credOptions: u32) core.HResult!*IAsyncOperation(VpnCredential) {
        var this: ?*IVpnChannel2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVpnChannel2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.RequestCredentialsAsyncWithCredOptions(credType, credOptions);
    }
    pub fn RequestCredentialsAsync(self: *@This(), credType: VpnCredentialType) core.HResult!*IAsyncOperation(VpnCredential) {
        var this: ?*IVpnChannel2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVpnChannel2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.RequestCredentialsAsync(credType);
    }
    pub fn TerminateConnection(self: *@This(), message: HSTRING) core.HResult!void {
        var this: ?*IVpnChannel2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVpnChannel2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.TerminateConnection(message);
    }
    pub fn StartWithTrafficFilterWithAssignedClientIpv4ListAndAssignedClientIpv6ListAndMainOuterTunnelTransportAndOptionalOuterTunnelTransportAndAssignedTrafficFilters(self: *@This(), assignedClientIpv4List: *IVectorView(HostName), assignedClientIpv6List: *IVectorView(HostName), vpnInterfaceId: *VpnInterfaceId, assignedRoutes: *VpnRouteAssignment, assignedNamespace: *VpnDomainNameAssignment, mtuSize: u32, maxFrameSize: u32, reserved: bool, mainOuterTunnelTransport: *IInspectable, optionalOuterTunnelTransport: *IInspectable, assignedTrafficFilters: *VpnTrafficFilterAssignment) core.HResult!void {
        var this: ?*IVpnChannel2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVpnChannel2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.StartWithTrafficFilterWithAssignedClientIpv4ListAndAssignedClientIpv6ListAndMainOuterTunnelTransportAndOptionalOuterTunnelTransportAndAssignedTrafficFilters(assignedClientIpv4List, assignedClientIpv6List, vpnInterfaceId, assignedRoutes, assignedNamespace, mtuSize, maxFrameSize, reserved, mainOuterTunnelTransport, optionalOuterTunnelTransport, assignedTrafficFilters);
    }
    pub fn AddAndAssociateTransport(self: *@This(), transport: *IInspectable, context: *IInspectable) core.HResult!void {
        var this: ?*IVpnChannel4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVpnChannel4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.AddAndAssociateTransport(transport, context);
    }
    pub fn StartWithTrafficFilter(self: *@This(), assignedClientIpv4Addresses: *IIterable(HostName), assignedClientIpv6Addresses: *IIterable(HostName), vpninterfaceId: *VpnInterfaceId, assignedRoutes: *VpnRouteAssignment, assignedNamespace: *VpnDomainNameAssignment, mtuSize: u32, maxFrameSize: u32, reserved: bool, transports: *IIterable(IInspectable), assignedTrafficFilters: *VpnTrafficFilterAssignment) core.HResult!void {
        var this: ?*IVpnChannel4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVpnChannel4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.StartWithTrafficFilter(assignedClientIpv4Addresses, assignedClientIpv6Addresses, vpninterfaceId, assignedRoutes, assignedNamespace, mtuSize, maxFrameSize, reserved, transports, assignedTrafficFilters);
    }
    pub fn ReplaceAndAssociateTransport(self: *@This(), transport: *IInspectable, context: *IInspectable) core.HResult!void {
        var this: ?*IVpnChannel4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVpnChannel4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ReplaceAndAssociateTransport(transport, context);
    }
    pub fn StartReconnectingTransport(self: *@This(), transport: *IInspectable, context: *IInspectable) core.HResult!void {
        var this: ?*IVpnChannel4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVpnChannel4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.StartReconnectingTransport(transport, context);
    }
    pub fn GetSlotTypeForTransportContext(self: *@This(), context: *IInspectable) core.HResult!ControlChannelTriggerStatus {
        var this: ?*IVpnChannel4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVpnChannel4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetSlotTypeForTransportContext(context);
    }
    pub fn getCurrentRequestTransportContext(self: *@This()) core.HResult!*IInspectable {
        var this: ?*IVpnChannel4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVpnChannel4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getCurrentRequestTransportContext();
    }
    pub fn AppendVpnReceivePacketBuffer(self: *@This(), decapsulatedPacketBuffer: *VpnPacketBuffer) core.HResult!void {
        var this: ?*IVpnChannel5 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVpnChannel5.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.AppendVpnReceivePacketBuffer(decapsulatedPacketBuffer);
    }
    pub fn AppendVpnSendPacketBuffer(self: *@This(), encapsulatedPacketBuffer: *VpnPacketBuffer) core.HResult!void {
        var this: ?*IVpnChannel5 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVpnChannel5.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.AppendVpnSendPacketBuffer(encapsulatedPacketBuffer);
    }
    pub fn FlushVpnReceivePacketBuffers(self: *@This()) core.HResult!void {
        var this: ?*IVpnChannel5 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVpnChannel5.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.FlushVpnReceivePacketBuffers();
    }
    pub fn FlushVpnSendPacketBuffers(self: *@This()) core.HResult!void {
        var this: ?*IVpnChannel5 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVpnChannel5.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.FlushVpnSendPacketBuffers();
    }
    pub fn ActivateForeground(self: *@This(), packageRelativeAppId: HSTRING, sharedContext: *ValueSet) core.HResult!*ValueSet {
        var this: ?*IVpnChannel6 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVpnChannel6.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ActivateForeground(packageRelativeAppId, sharedContext);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn ProcessEventAsync(thirdPartyPlugIn: *IInspectable, event: *IInspectable) core.HResult!void {
        const _f = @This().IVpnChannelStaticsCache.get();
        return try _f.ProcessEventAsync(thirdPartyPlugIn, event);
    }
    pub const NAME: []const u8 = "Windows.Networking.Vpn.VpnChannel";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IVpnChannel.GUID;
    pub const IID: Guid = IVpnChannel.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IVpnChannel.SIGNATURE);
    var _IVpnChannelStaticsCache: FactoryCache(IVpnChannelStatics, RUNTIME_NAME) = .{};
};
pub const VpnChannelActivityEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getType(self: *@This()) core.HResult!VpnChannelActivityEventType {
        const this: *IVpnChannelActivityEventArgs = @ptrCast(self);
        return try this.getType();
    }
    pub const NAME: []const u8 = "Windows.Networking.Vpn.VpnChannelActivityEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IVpnChannelActivityEventArgs.GUID;
    pub const IID: Guid = IVpnChannelActivityEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IVpnChannelActivityEventArgs.SIGNATURE);
};
pub const VpnChannelActivityEventType = enum(i32) {
    Idle = 0,
    Active = 1,
};
pub const VpnChannelActivityStateChangedArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getActivityState(self: *@This()) core.HResult!VpnChannelActivityEventType {
        const this: *IVpnChannelActivityStateChangedArgs = @ptrCast(self);
        return try this.getActivityState();
    }
    pub const NAME: []const u8 = "Windows.Networking.Vpn.VpnChannelActivityStateChangedArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IVpnChannelActivityStateChangedArgs.GUID;
    pub const IID: Guid = IVpnChannelActivityStateChangedArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IVpnChannelActivityStateChangedArgs.SIGNATURE);
};
pub const VpnChannelConfiguration = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getServerServiceName(self: *@This()) core.HResult!HSTRING {
        const this: *IVpnChannelConfiguration = @ptrCast(self);
        return try this.getServerServiceName();
    }
    pub fn getServerHostNameList(self: *@This()) core.HResult!*IVectorView(HostName) {
        const this: *IVpnChannelConfiguration = @ptrCast(self);
        return try this.getServerHostNameList();
    }
    pub fn getCustomField(self: *@This()) core.HResult!HSTRING {
        const this: *IVpnChannelConfiguration = @ptrCast(self);
        return try this.getCustomField();
    }
    pub fn getServerUris(self: *@This()) core.HResult!*IVectorView(Uri) {
        var this: ?*IVpnChannelConfiguration2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVpnChannelConfiguration2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getServerUris();
    }
    pub const NAME: []const u8 = "Windows.Networking.Vpn.VpnChannelConfiguration";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IVpnChannelConfiguration.GUID;
    pub const IID: Guid = IVpnChannelConfiguration.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IVpnChannelConfiguration.SIGNATURE);
};
pub const VpnChannelRequestCredentialsOptions = enum(i32) {
    None = 0,
    Retrying = 1,
    UseForSingleSignIn = 2,
};
pub const VpnCredential = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getPasskeyCredential(self: *@This()) core.HResult!*PasswordCredential {
        const this: *IVpnCredential = @ptrCast(self);
        return try this.getPasskeyCredential();
    }
    pub fn getCertificateCredential(self: *@This()) core.HResult!*Certificate {
        const this: *IVpnCredential = @ptrCast(self);
        return try this.getCertificateCredential();
    }
    pub fn getAdditionalPin(self: *@This()) core.HResult!HSTRING {
        const this: *IVpnCredential = @ptrCast(self);
        return try this.getAdditionalPin();
    }
    pub fn getOldPasswordCredential(self: *@This()) core.HResult!*PasswordCredential {
        const this: *IVpnCredential = @ptrCast(self);
        return try this.getOldPasswordCredential();
    }
    pub const NAME: []const u8 = "Windows.Networking.Vpn.VpnCredential";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IVpnCredential.GUID;
    pub const IID: Guid = IVpnCredential.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IVpnCredential.SIGNATURE);
};
pub const VpnCredentialType = enum(i32) {
    UsernamePassword = 0,
    UsernameOtpPin = 1,
    UsernamePasswordAndPin = 2,
    UsernamePasswordChange = 3,
    SmartCard = 4,
    ProtectedCertificate = 5,
    UnProtectedCertificate = 6,
};
pub const VpnCustomCheckBox = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn putInitialCheckState(self: *@This(), value: bool) core.HResult!void {
        const this: *IVpnCustomCheckBox = @ptrCast(self);
        return try this.putInitialCheckState(value);
    }
    pub fn getInitialCheckState(self: *@This()) core.HResult!bool {
        const this: *IVpnCustomCheckBox = @ptrCast(self);
        return try this.getInitialCheckState();
    }
    pub fn getChecked(self: *@This()) core.HResult!bool {
        const this: *IVpnCustomCheckBox = @ptrCast(self);
        return try this.getChecked();
    }
    pub fn putLabel(self: *@This(), value: HSTRING) core.HResult!void {
        var this: ?*IVpnCustomPrompt = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVpnCustomPrompt.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putLabel(value);
    }
    pub fn getLabel(self: *@This()) core.HResult!HSTRING {
        var this: ?*IVpnCustomPrompt = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVpnCustomPrompt.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getLabel();
    }
    pub fn putCompulsory(self: *@This(), value: bool) core.HResult!void {
        var this: ?*IVpnCustomPrompt = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVpnCustomPrompt.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putCompulsory(value);
    }
    pub fn getCompulsory(self: *@This()) core.HResult!bool {
        var this: ?*IVpnCustomPrompt = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVpnCustomPrompt.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getCompulsory();
    }
    pub fn putBordered(self: *@This(), value: bool) core.HResult!void {
        var this: ?*IVpnCustomPrompt = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVpnCustomPrompt.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putBordered(value);
    }
    pub fn getBordered(self: *@This()) core.HResult!bool {
        var this: ?*IVpnCustomPrompt = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVpnCustomPrompt.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getBordered();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IVpnCustomCheckBox.IID)));
    }
    pub const NAME: []const u8 = "Windows.Networking.Vpn.VpnCustomCheckBox";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IVpnCustomCheckBox.GUID;
    pub const IID: Guid = IVpnCustomCheckBox.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IVpnCustomCheckBox.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const VpnCustomComboBox = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn putOptionsText(self: *@This(), value: *IVectorView(HSTRING)) core.HResult!void {
        const this: *IVpnCustomComboBox = @ptrCast(self);
        return try this.putOptionsText(value);
    }
    pub fn getOptionsText(self: *@This()) core.HResult!*IVectorView(HSTRING) {
        const this: *IVpnCustomComboBox = @ptrCast(self);
        return try this.getOptionsText();
    }
    pub fn getSelected(self: *@This()) core.HResult!u32 {
        const this: *IVpnCustomComboBox = @ptrCast(self);
        return try this.getSelected();
    }
    pub fn putLabel(self: *@This(), value: HSTRING) core.HResult!void {
        var this: ?*IVpnCustomPrompt = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVpnCustomPrompt.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putLabel(value);
    }
    pub fn getLabel(self: *@This()) core.HResult!HSTRING {
        var this: ?*IVpnCustomPrompt = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVpnCustomPrompt.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getLabel();
    }
    pub fn putCompulsory(self: *@This(), value: bool) core.HResult!void {
        var this: ?*IVpnCustomPrompt = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVpnCustomPrompt.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putCompulsory(value);
    }
    pub fn getCompulsory(self: *@This()) core.HResult!bool {
        var this: ?*IVpnCustomPrompt = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVpnCustomPrompt.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getCompulsory();
    }
    pub fn putBordered(self: *@This(), value: bool) core.HResult!void {
        var this: ?*IVpnCustomPrompt = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVpnCustomPrompt.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putBordered(value);
    }
    pub fn getBordered(self: *@This()) core.HResult!bool {
        var this: ?*IVpnCustomPrompt = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVpnCustomPrompt.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getBordered();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IVpnCustomComboBox.IID)));
    }
    pub const NAME: []const u8 = "Windows.Networking.Vpn.VpnCustomComboBox";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IVpnCustomComboBox.GUID;
    pub const IID: Guid = IVpnCustomComboBox.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IVpnCustomComboBox.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const VpnCustomEditBox = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn putDefaultText(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IVpnCustomEditBox = @ptrCast(self);
        return try this.putDefaultText(value);
    }
    pub fn getDefaultText(self: *@This()) core.HResult!HSTRING {
        const this: *IVpnCustomEditBox = @ptrCast(self);
        return try this.getDefaultText();
    }
    pub fn putNoEcho(self: *@This(), value: bool) core.HResult!void {
        const this: *IVpnCustomEditBox = @ptrCast(self);
        return try this.putNoEcho(value);
    }
    pub fn getNoEcho(self: *@This()) core.HResult!bool {
        const this: *IVpnCustomEditBox = @ptrCast(self);
        return try this.getNoEcho();
    }
    pub fn getText(self: *@This()) core.HResult!HSTRING {
        const this: *IVpnCustomEditBox = @ptrCast(self);
        return try this.getText();
    }
    pub fn putLabel(self: *@This(), value: HSTRING) core.HResult!void {
        var this: ?*IVpnCustomPrompt = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVpnCustomPrompt.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putLabel(value);
    }
    pub fn getLabel(self: *@This()) core.HResult!HSTRING {
        var this: ?*IVpnCustomPrompt = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVpnCustomPrompt.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getLabel();
    }
    pub fn putCompulsory(self: *@This(), value: bool) core.HResult!void {
        var this: ?*IVpnCustomPrompt = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVpnCustomPrompt.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putCompulsory(value);
    }
    pub fn getCompulsory(self: *@This()) core.HResult!bool {
        var this: ?*IVpnCustomPrompt = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVpnCustomPrompt.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getCompulsory();
    }
    pub fn putBordered(self: *@This(), value: bool) core.HResult!void {
        var this: ?*IVpnCustomPrompt = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVpnCustomPrompt.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putBordered(value);
    }
    pub fn getBordered(self: *@This()) core.HResult!bool {
        var this: ?*IVpnCustomPrompt = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVpnCustomPrompt.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getBordered();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IVpnCustomEditBox.IID)));
    }
    pub const NAME: []const u8 = "Windows.Networking.Vpn.VpnCustomEditBox";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IVpnCustomEditBox.GUID;
    pub const IID: Guid = IVpnCustomEditBox.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IVpnCustomEditBox.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const VpnCustomErrorBox = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn putLabel(self: *@This(), value: HSTRING) core.HResult!void {
        var this: ?*IVpnCustomPrompt = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVpnCustomPrompt.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putLabel(value);
    }
    pub fn getLabel(self: *@This()) core.HResult!HSTRING {
        var this: ?*IVpnCustomPrompt = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVpnCustomPrompt.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getLabel();
    }
    pub fn putCompulsory(self: *@This(), value: bool) core.HResult!void {
        var this: ?*IVpnCustomPrompt = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVpnCustomPrompt.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putCompulsory(value);
    }
    pub fn getCompulsory(self: *@This()) core.HResult!bool {
        var this: ?*IVpnCustomPrompt = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVpnCustomPrompt.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getCompulsory();
    }
    pub fn putBordered(self: *@This(), value: bool) core.HResult!void {
        var this: ?*IVpnCustomPrompt = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVpnCustomPrompt.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putBordered(value);
    }
    pub fn getBordered(self: *@This()) core.HResult!bool {
        var this: ?*IVpnCustomPrompt = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVpnCustomPrompt.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getBordered();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IVpnCustomErrorBox.IID)));
    }
    pub const NAME: []const u8 = "Windows.Networking.Vpn.VpnCustomErrorBox";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IVpnCustomErrorBox.GUID;
    pub const IID: Guid = IVpnCustomErrorBox.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IVpnCustomErrorBox.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const VpnCustomPromptBooleanInput = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn putInitialValue(self: *@This(), value: bool) core.HResult!void {
        const this: *IVpnCustomPromptBooleanInput = @ptrCast(self);
        return try this.putInitialValue(value);
    }
    pub fn getInitialValue(self: *@This()) core.HResult!bool {
        const this: *IVpnCustomPromptBooleanInput = @ptrCast(self);
        return try this.getInitialValue();
    }
    pub fn getValue(self: *@This()) core.HResult!bool {
        const this: *IVpnCustomPromptBooleanInput = @ptrCast(self);
        return try this.getValue();
    }
    pub fn putDisplayName(self: *@This(), value: HSTRING) core.HResult!void {
        var this: ?*IVpnCustomPromptElement = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVpnCustomPromptElement.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putDisplayName(value);
    }
    pub fn getDisplayName(self: *@This()) core.HResult!HSTRING {
        var this: ?*IVpnCustomPromptElement = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVpnCustomPromptElement.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getDisplayName();
    }
    pub fn putCompulsory(self: *@This(), value: bool) core.HResult!void {
        var this: ?*IVpnCustomPromptElement = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVpnCustomPromptElement.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putCompulsory(value);
    }
    pub fn getCompulsory(self: *@This()) core.HResult!bool {
        var this: ?*IVpnCustomPromptElement = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVpnCustomPromptElement.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getCompulsory();
    }
    pub fn putEmphasized(self: *@This(), value: bool) core.HResult!void {
        var this: ?*IVpnCustomPromptElement = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVpnCustomPromptElement.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putEmphasized(value);
    }
    pub fn getEmphasized(self: *@This()) core.HResult!bool {
        var this: ?*IVpnCustomPromptElement = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVpnCustomPromptElement.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getEmphasized();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IVpnCustomPromptBooleanInput.IID)));
    }
    pub const NAME: []const u8 = "Windows.Networking.Vpn.VpnCustomPromptBooleanInput";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IVpnCustomPromptBooleanInput.GUID;
    pub const IID: Guid = IVpnCustomPromptBooleanInput.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IVpnCustomPromptBooleanInput.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const VpnCustomPromptOptionSelector = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getOptions(self: *@This()) core.HResult!*IVector(HSTRING) {
        const this: *IVpnCustomPromptOptionSelector = @ptrCast(self);
        return try this.getOptions();
    }
    pub fn getSelectedIndex(self: *@This()) core.HResult!u32 {
        const this: *IVpnCustomPromptOptionSelector = @ptrCast(self);
        return try this.getSelectedIndex();
    }
    pub fn putDisplayName(self: *@This(), value: HSTRING) core.HResult!void {
        var this: ?*IVpnCustomPromptElement = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVpnCustomPromptElement.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putDisplayName(value);
    }
    pub fn getDisplayName(self: *@This()) core.HResult!HSTRING {
        var this: ?*IVpnCustomPromptElement = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVpnCustomPromptElement.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getDisplayName();
    }
    pub fn putCompulsory(self: *@This(), value: bool) core.HResult!void {
        var this: ?*IVpnCustomPromptElement = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVpnCustomPromptElement.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putCompulsory(value);
    }
    pub fn getCompulsory(self: *@This()) core.HResult!bool {
        var this: ?*IVpnCustomPromptElement = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVpnCustomPromptElement.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getCompulsory();
    }
    pub fn putEmphasized(self: *@This(), value: bool) core.HResult!void {
        var this: ?*IVpnCustomPromptElement = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVpnCustomPromptElement.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putEmphasized(value);
    }
    pub fn getEmphasized(self: *@This()) core.HResult!bool {
        var this: ?*IVpnCustomPromptElement = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVpnCustomPromptElement.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getEmphasized();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IVpnCustomPromptOptionSelector.IID)));
    }
    pub const NAME: []const u8 = "Windows.Networking.Vpn.VpnCustomPromptOptionSelector";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IVpnCustomPromptOptionSelector.GUID;
    pub const IID: Guid = IVpnCustomPromptOptionSelector.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IVpnCustomPromptOptionSelector.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const VpnCustomPromptText = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn putText(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IVpnCustomPromptText = @ptrCast(self);
        return try this.putText(value);
    }
    pub fn getText(self: *@This()) core.HResult!HSTRING {
        const this: *IVpnCustomPromptText = @ptrCast(self);
        return try this.getText();
    }
    pub fn putDisplayName(self: *@This(), value: HSTRING) core.HResult!void {
        var this: ?*IVpnCustomPromptElement = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVpnCustomPromptElement.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putDisplayName(value);
    }
    pub fn getDisplayName(self: *@This()) core.HResult!HSTRING {
        var this: ?*IVpnCustomPromptElement = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVpnCustomPromptElement.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getDisplayName();
    }
    pub fn putCompulsory(self: *@This(), value: bool) core.HResult!void {
        var this: ?*IVpnCustomPromptElement = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVpnCustomPromptElement.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putCompulsory(value);
    }
    pub fn getCompulsory(self: *@This()) core.HResult!bool {
        var this: ?*IVpnCustomPromptElement = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVpnCustomPromptElement.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getCompulsory();
    }
    pub fn putEmphasized(self: *@This(), value: bool) core.HResult!void {
        var this: ?*IVpnCustomPromptElement = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVpnCustomPromptElement.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putEmphasized(value);
    }
    pub fn getEmphasized(self: *@This()) core.HResult!bool {
        var this: ?*IVpnCustomPromptElement = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVpnCustomPromptElement.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getEmphasized();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IVpnCustomPromptText.IID)));
    }
    pub const NAME: []const u8 = "Windows.Networking.Vpn.VpnCustomPromptText";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IVpnCustomPromptText.GUID;
    pub const IID: Guid = IVpnCustomPromptText.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IVpnCustomPromptText.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const VpnCustomPromptTextInput = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn putPlaceholderText(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IVpnCustomPromptTextInput = @ptrCast(self);
        return try this.putPlaceholderText(value);
    }
    pub fn getPlaceholderText(self: *@This()) core.HResult!HSTRING {
        const this: *IVpnCustomPromptTextInput = @ptrCast(self);
        return try this.getPlaceholderText();
    }
    pub fn putIsTextHidden(self: *@This(), value: bool) core.HResult!void {
        const this: *IVpnCustomPromptTextInput = @ptrCast(self);
        return try this.putIsTextHidden(value);
    }
    pub fn getIsTextHidden(self: *@This()) core.HResult!bool {
        const this: *IVpnCustomPromptTextInput = @ptrCast(self);
        return try this.getIsTextHidden();
    }
    pub fn getText(self: *@This()) core.HResult!HSTRING {
        const this: *IVpnCustomPromptTextInput = @ptrCast(self);
        return try this.getText();
    }
    pub fn putDisplayName(self: *@This(), value: HSTRING) core.HResult!void {
        var this: ?*IVpnCustomPromptElement = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVpnCustomPromptElement.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putDisplayName(value);
    }
    pub fn getDisplayName(self: *@This()) core.HResult!HSTRING {
        var this: ?*IVpnCustomPromptElement = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVpnCustomPromptElement.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getDisplayName();
    }
    pub fn putCompulsory(self: *@This(), value: bool) core.HResult!void {
        var this: ?*IVpnCustomPromptElement = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVpnCustomPromptElement.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putCompulsory(value);
    }
    pub fn getCompulsory(self: *@This()) core.HResult!bool {
        var this: ?*IVpnCustomPromptElement = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVpnCustomPromptElement.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getCompulsory();
    }
    pub fn putEmphasized(self: *@This(), value: bool) core.HResult!void {
        var this: ?*IVpnCustomPromptElement = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVpnCustomPromptElement.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putEmphasized(value);
    }
    pub fn getEmphasized(self: *@This()) core.HResult!bool {
        var this: ?*IVpnCustomPromptElement = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVpnCustomPromptElement.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getEmphasized();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IVpnCustomPromptTextInput.IID)));
    }
    pub const NAME: []const u8 = "Windows.Networking.Vpn.VpnCustomPromptTextInput";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IVpnCustomPromptTextInput.GUID;
    pub const IID: Guid = IVpnCustomPromptTextInput.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IVpnCustomPromptTextInput.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const VpnCustomTextBox = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn putDisplayText(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IVpnCustomTextBox = @ptrCast(self);
        return try this.putDisplayText(value);
    }
    pub fn getDisplayText(self: *@This()) core.HResult!HSTRING {
        const this: *IVpnCustomTextBox = @ptrCast(self);
        return try this.getDisplayText();
    }
    pub fn putLabel(self: *@This(), value: HSTRING) core.HResult!void {
        var this: ?*IVpnCustomPrompt = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVpnCustomPrompt.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putLabel(value);
    }
    pub fn getLabel(self: *@This()) core.HResult!HSTRING {
        var this: ?*IVpnCustomPrompt = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVpnCustomPrompt.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getLabel();
    }
    pub fn putCompulsory(self: *@This(), value: bool) core.HResult!void {
        var this: ?*IVpnCustomPrompt = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVpnCustomPrompt.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putCompulsory(value);
    }
    pub fn getCompulsory(self: *@This()) core.HResult!bool {
        var this: ?*IVpnCustomPrompt = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVpnCustomPrompt.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getCompulsory();
    }
    pub fn putBordered(self: *@This(), value: bool) core.HResult!void {
        var this: ?*IVpnCustomPrompt = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVpnCustomPrompt.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putBordered(value);
    }
    pub fn getBordered(self: *@This()) core.HResult!bool {
        var this: ?*IVpnCustomPrompt = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVpnCustomPrompt.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getBordered();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IVpnCustomTextBox.IID)));
    }
    pub const NAME: []const u8 = "Windows.Networking.Vpn.VpnCustomTextBox";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IVpnCustomTextBox.GUID;
    pub const IID: Guid = IVpnCustomTextBox.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IVpnCustomTextBox.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const VpnDataPathType = enum(i32) {
    Send = 0,
    Receive = 1,
};
pub const VpnDomainNameAssignment = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getDomainNameList(self: *@This()) core.HResult!*IVector(VpnDomainNameInfo) {
        const this: *IVpnDomainNameAssignment = @ptrCast(self);
        return try this.getDomainNameList();
    }
    pub fn putProxyAutoConfigurationUri(self: *@This(), value: *Uri) core.HResult!void {
        const this: *IVpnDomainNameAssignment = @ptrCast(self);
        return try this.putProxyAutoConfigurationUri(value);
    }
    pub fn getProxyAutoConfigurationUri(self: *@This()) core.HResult!*Uri {
        const this: *IVpnDomainNameAssignment = @ptrCast(self);
        return try this.getProxyAutoConfigurationUri();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IVpnDomainNameAssignment.IID)));
    }
    pub const NAME: []const u8 = "Windows.Networking.Vpn.VpnDomainNameAssignment";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IVpnDomainNameAssignment.GUID;
    pub const IID: Guid = IVpnDomainNameAssignment.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IVpnDomainNameAssignment.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const VpnDomainNameInfo = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn putDomainName(self: *@This(), value: *HostName) core.HResult!void {
        const this: *IVpnDomainNameInfo = @ptrCast(self);
        return try this.putDomainName(value);
    }
    pub fn getDomainName(self: *@This()) core.HResult!*HostName {
        const this: *IVpnDomainNameInfo = @ptrCast(self);
        return try this.getDomainName();
    }
    pub fn putDomainNameType(self: *@This(), value: VpnDomainNameType) core.HResult!void {
        const this: *IVpnDomainNameInfo = @ptrCast(self);
        return try this.putDomainNameType(value);
    }
    pub fn getDomainNameType(self: *@This()) core.HResult!VpnDomainNameType {
        const this: *IVpnDomainNameInfo = @ptrCast(self);
        return try this.getDomainNameType();
    }
    pub fn getDnsServers(self: *@This()) core.HResult!*IVector(HostName) {
        const this: *IVpnDomainNameInfo = @ptrCast(self);
        return try this.getDnsServers();
    }
    pub fn getWebProxyServers(self: *@This()) core.HResult!*IVector(HostName) {
        const this: *IVpnDomainNameInfo = @ptrCast(self);
        return try this.getWebProxyServers();
    }
    pub fn getWebProxyUris(self: *@This()) core.HResult!*IVector(Uri) {
        var this: ?*IVpnDomainNameInfo2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVpnDomainNameInfo2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getWebProxyUris();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateVpnDomainNameInfo(name: HSTRING, nameType: VpnDomainNameType, dnsServerList: *IIterable(HostName), proxyServerList: *IIterable(HostName)) core.HResult!*VpnDomainNameInfo {
        const _f = @This().IVpnDomainNameInfoFactoryCache.get();
        return try _f.CreateVpnDomainNameInfo(name, nameType, dnsServerList, proxyServerList);
    }
    pub const NAME: []const u8 = "Windows.Networking.Vpn.VpnDomainNameInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IVpnDomainNameInfo.GUID;
    pub const IID: Guid = IVpnDomainNameInfo.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IVpnDomainNameInfo.SIGNATURE);
    var _IVpnDomainNameInfoFactoryCache: FactoryCache(IVpnDomainNameInfoFactory, RUNTIME_NAME) = .{};
};
pub const VpnDomainNameType = enum(i32) {
    Suffix = 0,
    FullyQualified = 1,
    Reserved = 65535,
};
pub const VpnForegroundActivatedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getProfileName(self: *@This()) core.HResult!HSTRING {
        const this: *IVpnForegroundActivatedEventArgs = @ptrCast(self);
        return try this.getProfileName();
    }
    pub fn getSharedContext(self: *@This()) core.HResult!*ValueSet {
        const this: *IVpnForegroundActivatedEventArgs = @ptrCast(self);
        return try this.getSharedContext();
    }
    pub fn getActivationOperation(self: *@This()) core.HResult!*VpnForegroundActivationOperation {
        const this: *IVpnForegroundActivatedEventArgs = @ptrCast(self);
        return try this.getActivationOperation();
    }
    pub fn getKind(self: *@This()) core.HResult!ActivationKind {
        var this: ?*IActivatedEventArgs = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgs.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getKind();
    }
    pub fn getPreviousExecutionState(self: *@This()) core.HResult!ApplicationExecutionState {
        var this: ?*IActivatedEventArgs = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgs.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getPreviousExecutionState();
    }
    pub fn getSplashScreen(self: *@This()) core.HResult!*SplashScreen {
        var this: ?*IActivatedEventArgs = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgs.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSplashScreen();
    }
    pub fn getUser(self: *@This()) core.HResult!*User {
        var this: ?*IActivatedEventArgsWithUser = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IActivatedEventArgsWithUser.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getUser();
    }
    pub const NAME: []const u8 = "Windows.Networking.Vpn.VpnForegroundActivatedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IVpnForegroundActivatedEventArgs.GUID;
    pub const IID: Guid = IVpnForegroundActivatedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IVpnForegroundActivatedEventArgs.SIGNATURE);
};
pub const VpnForegroundActivationOperation = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn Complete(self: *@This(), result: *ValueSet) core.HResult!void {
        const this: *IVpnForegroundActivationOperation = @ptrCast(self);
        return try this.Complete(result);
    }
    pub const NAME: []const u8 = "Windows.Networking.Vpn.VpnForegroundActivationOperation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IVpnForegroundActivationOperation.GUID;
    pub const IID: Guid = IVpnForegroundActivationOperation.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IVpnForegroundActivationOperation.SIGNATURE);
};
pub const VpnIPProtocol = enum(i32) {
    None = 0,
    Tcp = 6,
    Udp = 17,
    Icmp = 1,
    Ipv6Icmp = 58,
    Igmp = 2,
    Pgm = 113,
};
pub const VpnInterfaceId = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn GetAddressInfo(self: *@This(), id: u8) core.HResult!void {
        const this: *IVpnInterfaceId = @ptrCast(self);
        return try this.GetAddressInfo(id);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateVpnInterfaceId(address: [*]u8) core.HResult!*VpnInterfaceId {
        const _f = @This().IVpnInterfaceIdFactoryCache.get();
        return try _f.CreateVpnInterfaceId(address);
    }
    pub const NAME: []const u8 = "Windows.Networking.Vpn.VpnInterfaceId";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IVpnInterfaceId.GUID;
    pub const IID: Guid = IVpnInterfaceId.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IVpnInterfaceId.SIGNATURE);
    var _IVpnInterfaceIdFactoryCache: FactoryCache(IVpnInterfaceIdFactory, RUNTIME_NAME) = .{};
};
pub const VpnManagementAgent = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn AddProfileFromXmlAsync(self: *@This(), xml: HSTRING) core.HResult!*IAsyncOperation(VpnManagementErrorStatus) {
        const this: *IVpnManagementAgent = @ptrCast(self);
        return try this.AddProfileFromXmlAsync(xml);
    }
    pub fn AddProfileFromObjectAsync(self: *@This(), profile: *IVpnProfile) core.HResult!*IAsyncOperation(VpnManagementErrorStatus) {
        const this: *IVpnManagementAgent = @ptrCast(self);
        return try this.AddProfileFromObjectAsync(profile);
    }
    pub fn UpdateProfileFromXmlAsync(self: *@This(), xml: HSTRING) core.HResult!*IAsyncOperation(VpnManagementErrorStatus) {
        const this: *IVpnManagementAgent = @ptrCast(self);
        return try this.UpdateProfileFromXmlAsync(xml);
    }
    pub fn UpdateProfileFromObjectAsync(self: *@This(), profile: *IVpnProfile) core.HResult!*IAsyncOperation(VpnManagementErrorStatus) {
        const this: *IVpnManagementAgent = @ptrCast(self);
        return try this.UpdateProfileFromObjectAsync(profile);
    }
    pub fn GetProfilesAsync(self: *@This()) core.HResult!*IAsyncOperation(IVectorView(IVpnProfile)) {
        const this: *IVpnManagementAgent = @ptrCast(self);
        return try this.GetProfilesAsync();
    }
    pub fn DeleteProfileAsync(self: *@This(), profile: *IVpnProfile) core.HResult!*IAsyncOperation(VpnManagementErrorStatus) {
        const this: *IVpnManagementAgent = @ptrCast(self);
        return try this.DeleteProfileAsync(profile);
    }
    pub fn ConnectProfileAsync(self: *@This(), profile: *IVpnProfile) core.HResult!*IAsyncOperation(VpnManagementErrorStatus) {
        const this: *IVpnManagementAgent = @ptrCast(self);
        return try this.ConnectProfileAsync(profile);
    }
    pub fn ConnectProfileWithPasswordCredentialAsync(self: *@This(), profile: *IVpnProfile, passwordCredential: *PasswordCredential) core.HResult!*IAsyncOperation(VpnManagementErrorStatus) {
        const this: *IVpnManagementAgent = @ptrCast(self);
        return try this.ConnectProfileWithPasswordCredentialAsync(profile, passwordCredential);
    }
    pub fn DisconnectProfileAsync(self: *@This(), profile: *IVpnProfile) core.HResult!*IAsyncOperation(VpnManagementErrorStatus) {
        const this: *IVpnManagementAgent = @ptrCast(self);
        return try this.DisconnectProfileAsync(profile);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IVpnManagementAgent.IID)));
    }
    pub const NAME: []const u8 = "Windows.Networking.Vpn.VpnManagementAgent";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IVpnManagementAgent.GUID;
    pub const IID: Guid = IVpnManagementAgent.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IVpnManagementAgent.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const VpnManagementConnectionStatus = enum(i32) {
    Disconnected = 0,
    Disconnecting = 1,
    Connected = 2,
    Connecting = 3,
};
pub const VpnManagementErrorStatus = enum(i32) {
    Ok = 0,
    Other = 1,
    InvalidXmlSyntax = 2,
    ProfileNameTooLong = 3,
    ProfileInvalidAppId = 4,
    AccessDenied = 5,
    CannotFindProfile = 6,
    AlreadyDisconnecting = 7,
    AlreadyConnected = 8,
    GeneralAuthenticationFailure = 9,
    EapFailure = 10,
    SmartCardFailure = 11,
    CertificateFailure = 12,
    ServerConfiguration = 13,
    NoConnection = 14,
    ServerConnection = 15,
    UserNamePassword = 16,
    DnsNotResolvable = 17,
    InvalidIP = 18,
};
pub const VpnNamespaceAssignment = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn putNamespaceList(self: *@This(), value: *IVector(VpnNamespaceInfo)) core.HResult!void {
        const this: *IVpnNamespaceAssignment = @ptrCast(self);
        return try this.putNamespaceList(value);
    }
    pub fn getNamespaceList(self: *@This()) core.HResult!*IVector(VpnNamespaceInfo) {
        const this: *IVpnNamespaceAssignment = @ptrCast(self);
        return try this.getNamespaceList();
    }
    pub fn putProxyAutoConfigUri(self: *@This(), value: *Uri) core.HResult!void {
        const this: *IVpnNamespaceAssignment = @ptrCast(self);
        return try this.putProxyAutoConfigUri(value);
    }
    pub fn getProxyAutoConfigUri(self: *@This()) core.HResult!*Uri {
        const this: *IVpnNamespaceAssignment = @ptrCast(self);
        return try this.getProxyAutoConfigUri();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IVpnNamespaceAssignment.IID)));
    }
    pub const NAME: []const u8 = "Windows.Networking.Vpn.VpnNamespaceAssignment";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IVpnNamespaceAssignment.GUID;
    pub const IID: Guid = IVpnNamespaceAssignment.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IVpnNamespaceAssignment.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const VpnNamespaceInfo = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn putNamespace(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IVpnNamespaceInfo = @ptrCast(self);
        return try this.putNamespace(value);
    }
    pub fn getNamespace(self: *@This()) core.HResult!HSTRING {
        const this: *IVpnNamespaceInfo = @ptrCast(self);
        return try this.getNamespace();
    }
    pub fn putDnsServers(self: *@This(), value: *IVector(HostName)) core.HResult!void {
        const this: *IVpnNamespaceInfo = @ptrCast(self);
        return try this.putDnsServers(value);
    }
    pub fn getDnsServers(self: *@This()) core.HResult!*IVector(HostName) {
        const this: *IVpnNamespaceInfo = @ptrCast(self);
        return try this.getDnsServers();
    }
    pub fn putWebProxyServers(self: *@This(), value: *IVector(HostName)) core.HResult!void {
        const this: *IVpnNamespaceInfo = @ptrCast(self);
        return try this.putWebProxyServers(value);
    }
    pub fn getWebProxyServers(self: *@This()) core.HResult!*IVector(HostName) {
        const this: *IVpnNamespaceInfo = @ptrCast(self);
        return try this.getWebProxyServers();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateVpnNamespaceInfo(name: HSTRING, dnsServerList: *IVector(HostName), proxyServerList: *IVector(HostName)) core.HResult!*VpnNamespaceInfo {
        const _f = @This().IVpnNamespaceInfoFactoryCache.get();
        return try _f.CreateVpnNamespaceInfo(name, dnsServerList, proxyServerList);
    }
    pub const NAME: []const u8 = "Windows.Networking.Vpn.VpnNamespaceInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IVpnNamespaceInfo.GUID;
    pub const IID: Guid = IVpnNamespaceInfo.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IVpnNamespaceInfo.SIGNATURE);
    var _IVpnNamespaceInfoFactoryCache: FactoryCache(IVpnNamespaceInfoFactory, RUNTIME_NAME) = .{};
};
pub const VpnNativeProfile = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getServers(self: *@This()) core.HResult!*IVector(HSTRING) {
        const this: *IVpnNativeProfile = @ptrCast(self);
        return try this.getServers();
    }
    pub fn getRoutingPolicyType(self: *@This()) core.HResult!VpnRoutingPolicyType {
        const this: *IVpnNativeProfile = @ptrCast(self);
        return try this.getRoutingPolicyType();
    }
    pub fn putRoutingPolicyType(self: *@This(), value: VpnRoutingPolicyType) core.HResult!void {
        const this: *IVpnNativeProfile = @ptrCast(self);
        return try this.putRoutingPolicyType(value);
    }
    pub fn getNativeProtocolType(self: *@This()) core.HResult!VpnNativeProtocolType {
        const this: *IVpnNativeProfile = @ptrCast(self);
        return try this.getNativeProtocolType();
    }
    pub fn putNativeProtocolType(self: *@This(), value: VpnNativeProtocolType) core.HResult!void {
        const this: *IVpnNativeProfile = @ptrCast(self);
        return try this.putNativeProtocolType(value);
    }
    pub fn getUserAuthenticationMethod(self: *@This()) core.HResult!VpnAuthenticationMethod {
        const this: *IVpnNativeProfile = @ptrCast(self);
        return try this.getUserAuthenticationMethod();
    }
    pub fn putUserAuthenticationMethod(self: *@This(), value: VpnAuthenticationMethod) core.HResult!void {
        const this: *IVpnNativeProfile = @ptrCast(self);
        return try this.putUserAuthenticationMethod(value);
    }
    pub fn getTunnelAuthenticationMethod(self: *@This()) core.HResult!VpnAuthenticationMethod {
        const this: *IVpnNativeProfile = @ptrCast(self);
        return try this.getTunnelAuthenticationMethod();
    }
    pub fn putTunnelAuthenticationMethod(self: *@This(), value: VpnAuthenticationMethod) core.HResult!void {
        const this: *IVpnNativeProfile = @ptrCast(self);
        return try this.putTunnelAuthenticationMethod(value);
    }
    pub fn getEapConfiguration(self: *@This()) core.HResult!HSTRING {
        const this: *IVpnNativeProfile = @ptrCast(self);
        return try this.getEapConfiguration();
    }
    pub fn putEapConfiguration(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IVpnNativeProfile = @ptrCast(self);
        return try this.putEapConfiguration(value);
    }
    pub fn getProfileName(self: *@This()) core.HResult!HSTRING {
        var this: ?*IVpnProfile = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVpnProfile.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getProfileName();
    }
    pub fn putProfileName(self: *@This(), value: HSTRING) core.HResult!void {
        var this: ?*IVpnProfile = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVpnProfile.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putProfileName(value);
    }
    pub fn getAppTriggers(self: *@This()) core.HResult!*IVector(VpnAppId) {
        var this: ?*IVpnProfile = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVpnProfile.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getAppTriggers();
    }
    pub fn getRoutes(self: *@This()) core.HResult!*IVector(VpnRoute) {
        var this: ?*IVpnProfile = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVpnProfile.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getRoutes();
    }
    pub fn getDomainNameInfoList(self: *@This()) core.HResult!*IVector(VpnDomainNameInfo) {
        var this: ?*IVpnProfile = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVpnProfile.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getDomainNameInfoList();
    }
    pub fn getTrafficFilters(self: *@This()) core.HResult!*IVector(VpnTrafficFilter) {
        var this: ?*IVpnProfile = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVpnProfile.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getTrafficFilters();
    }
    pub fn getRememberCredentials(self: *@This()) core.HResult!bool {
        var this: ?*IVpnProfile = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVpnProfile.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getRememberCredentials();
    }
    pub fn putRememberCredentials(self: *@This(), value: bool) core.HResult!void {
        var this: ?*IVpnProfile = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVpnProfile.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putRememberCredentials(value);
    }
    pub fn getAlwaysOn(self: *@This()) core.HResult!bool {
        var this: ?*IVpnProfile = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVpnProfile.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getAlwaysOn();
    }
    pub fn putAlwaysOn(self: *@This(), value: bool) core.HResult!void {
        var this: ?*IVpnProfile = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVpnProfile.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putAlwaysOn(value);
    }
    pub fn getRequireVpnClientAppUI(self: *@This()) core.HResult!bool {
        var this: ?*IVpnNativeProfile2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVpnNativeProfile2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getRequireVpnClientAppUI();
    }
    pub fn putRequireVpnClientAppUI(self: *@This(), value: bool) core.HResult!void {
        var this: ?*IVpnNativeProfile2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVpnNativeProfile2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putRequireVpnClientAppUI(value);
    }
    pub fn getConnectionStatus(self: *@This()) core.HResult!VpnManagementConnectionStatus {
        var this: ?*IVpnNativeProfile2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVpnNativeProfile2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getConnectionStatus();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IVpnNativeProfile.IID)));
    }
    pub const NAME: []const u8 = "Windows.Networking.Vpn.VpnNativeProfile";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IVpnNativeProfile.GUID;
    pub const IID: Guid = IVpnNativeProfile.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IVpnNativeProfile.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const VpnNativeProtocolType = enum(i32) {
    Pptp = 0,
    L2tp = 1,
    IpsecIkev2 = 2,
};
pub const VpnPacketBuffer = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getBuffer(self: *@This()) core.HResult!*Buffer {
        const this: *IVpnPacketBuffer = @ptrCast(self);
        return try this.getBuffer();
    }
    pub fn putStatus(self: *@This(), value: VpnPacketBufferStatus) core.HResult!void {
        const this: *IVpnPacketBuffer = @ptrCast(self);
        return try this.putStatus(value);
    }
    pub fn getStatus(self: *@This()) core.HResult!VpnPacketBufferStatus {
        const this: *IVpnPacketBuffer = @ptrCast(self);
        return try this.getStatus();
    }
    pub fn putTransportAffinity(self: *@This(), value: u32) core.HResult!void {
        const this: *IVpnPacketBuffer = @ptrCast(self);
        return try this.putTransportAffinity(value);
    }
    pub fn getTransportAffinity(self: *@This()) core.HResult!u32 {
        const this: *IVpnPacketBuffer = @ptrCast(self);
        return try this.getTransportAffinity();
    }
    pub fn getAppId(self: *@This()) core.HResult!*VpnAppId {
        var this: ?*IVpnPacketBuffer2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVpnPacketBuffer2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getAppId();
    }
    pub fn putTransportContext(self: *@This(), value: *IInspectable) core.HResult!void {
        var this: ?*IVpnPacketBuffer3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVpnPacketBuffer3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putTransportContext(value);
    }
    pub fn getTransportContext(self: *@This()) core.HResult!*IInspectable {
        var this: ?*IVpnPacketBuffer3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVpnPacketBuffer3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getTransportContext();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateVpnPacketBuffer(parentBuffer: *VpnPacketBuffer, offset: u32, length: u32) core.HResult!*VpnPacketBuffer {
        const _f = @This().IVpnPacketBufferFactoryCache.get();
        return try _f.CreateVpnPacketBuffer(parentBuffer, offset, length);
    }
    pub const NAME: []const u8 = "Windows.Networking.Vpn.VpnPacketBuffer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IVpnPacketBuffer.GUID;
    pub const IID: Guid = IVpnPacketBuffer.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IVpnPacketBuffer.SIGNATURE);
    var _IVpnPacketBufferFactoryCache: FactoryCache(IVpnPacketBufferFactory, RUNTIME_NAME) = .{};
};
pub const VpnPacketBufferList = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn Append(self: *@This(), nextVpnPacketBuffer: *VpnPacketBuffer) core.HResult!void {
        const this: *IVpnPacketBufferList = @ptrCast(self);
        return try this.Append(nextVpnPacketBuffer);
    }
    pub fn AddAtBegin(self: *@This(), nextVpnPacketBuffer: *VpnPacketBuffer) core.HResult!void {
        const this: *IVpnPacketBufferList = @ptrCast(self);
        return try this.AddAtBegin(nextVpnPacketBuffer);
    }
    pub fn RemoveAtEnd(self: *@This()) core.HResult!*VpnPacketBuffer {
        const this: *IVpnPacketBufferList = @ptrCast(self);
        return try this.RemoveAtEnd();
    }
    pub fn RemoveAtBegin(self: *@This()) core.HResult!*VpnPacketBuffer {
        const this: *IVpnPacketBufferList = @ptrCast(self);
        return try this.RemoveAtBegin();
    }
    pub fn Clear(self: *@This()) core.HResult!void {
        const this: *IVpnPacketBufferList = @ptrCast(self);
        return try this.Clear();
    }
    pub fn putStatus(self: *@This(), value: VpnPacketBufferStatus) core.HResult!void {
        const this: *IVpnPacketBufferList = @ptrCast(self);
        return try this.putStatus(value);
    }
    pub fn getStatus(self: *@This()) core.HResult!VpnPacketBufferStatus {
        const this: *IVpnPacketBufferList = @ptrCast(self);
        return try this.getStatus();
    }
    pub fn getSize(self: *@This()) core.HResult!u32 {
        const this: *IVpnPacketBufferList = @ptrCast(self);
        return try this.getSize();
    }
    pub fn First(self: *@This()) core.HResult!*IIterator(VpnPacketBuffer) {
        var this: ?*IIterable(VpnPacketBuffer) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IIterable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.First();
    }
    pub const NAME: []const u8 = "Windows.Networking.Vpn.VpnPacketBufferList";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IVpnPacketBufferList.GUID;
    pub const IID: Guid = IVpnPacketBufferList.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IVpnPacketBufferList.SIGNATURE);
};
pub const VpnPacketBufferStatus = enum(i32) {
    Ok = 0,
    InvalidBufferSize = 1,
};
pub const VpnPickedCredential = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getPasskeyCredential(self: *@This()) core.HResult!*PasswordCredential {
        const this: *IVpnPickedCredential = @ptrCast(self);
        return try this.getPasskeyCredential();
    }
    pub fn getAdditionalPin(self: *@This()) core.HResult!HSTRING {
        const this: *IVpnPickedCredential = @ptrCast(self);
        return try this.getAdditionalPin();
    }
    pub fn getOldPasswordCredential(self: *@This()) core.HResult!*PasswordCredential {
        const this: *IVpnPickedCredential = @ptrCast(self);
        return try this.getOldPasswordCredential();
    }
    pub const NAME: []const u8 = "Windows.Networking.Vpn.VpnPickedCredential";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IVpnPickedCredential.GUID;
    pub const IID: Guid = IVpnPickedCredential.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IVpnPickedCredential.SIGNATURE);
};
pub const VpnPlugInProfile = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getServerUris(self: *@This()) core.HResult!*IVector(Uri) {
        const this: *IVpnPlugInProfile = @ptrCast(self);
        return try this.getServerUris();
    }
    pub fn getCustomConfiguration(self: *@This()) core.HResult!HSTRING {
        const this: *IVpnPlugInProfile = @ptrCast(self);
        return try this.getCustomConfiguration();
    }
    pub fn putCustomConfiguration(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IVpnPlugInProfile = @ptrCast(self);
        return try this.putCustomConfiguration(value);
    }
    pub fn getVpnPluginPackageFamilyName(self: *@This()) core.HResult!HSTRING {
        const this: *IVpnPlugInProfile = @ptrCast(self);
        return try this.getVpnPluginPackageFamilyName();
    }
    pub fn putVpnPluginPackageFamilyName(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IVpnPlugInProfile = @ptrCast(self);
        return try this.putVpnPluginPackageFamilyName(value);
    }
    pub fn getProfileName(self: *@This()) core.HResult!HSTRING {
        var this: ?*IVpnProfile = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVpnProfile.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getProfileName();
    }
    pub fn putProfileName(self: *@This(), value: HSTRING) core.HResult!void {
        var this: ?*IVpnProfile = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVpnProfile.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putProfileName(value);
    }
    pub fn getAppTriggers(self: *@This()) core.HResult!*IVector(VpnAppId) {
        var this: ?*IVpnProfile = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVpnProfile.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getAppTriggers();
    }
    pub fn getRoutes(self: *@This()) core.HResult!*IVector(VpnRoute) {
        var this: ?*IVpnProfile = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVpnProfile.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getRoutes();
    }
    pub fn getDomainNameInfoList(self: *@This()) core.HResult!*IVector(VpnDomainNameInfo) {
        var this: ?*IVpnProfile = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVpnProfile.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getDomainNameInfoList();
    }
    pub fn getTrafficFilters(self: *@This()) core.HResult!*IVector(VpnTrafficFilter) {
        var this: ?*IVpnProfile = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVpnProfile.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getTrafficFilters();
    }
    pub fn getRememberCredentials(self: *@This()) core.HResult!bool {
        var this: ?*IVpnProfile = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVpnProfile.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getRememberCredentials();
    }
    pub fn putRememberCredentials(self: *@This(), value: bool) core.HResult!void {
        var this: ?*IVpnProfile = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVpnProfile.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putRememberCredentials(value);
    }
    pub fn getAlwaysOn(self: *@This()) core.HResult!bool {
        var this: ?*IVpnProfile = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVpnProfile.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getAlwaysOn();
    }
    pub fn putAlwaysOn(self: *@This(), value: bool) core.HResult!void {
        var this: ?*IVpnProfile = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVpnProfile.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putAlwaysOn(value);
    }
    pub fn getRequireVpnClientAppUI(self: *@This()) core.HResult!bool {
        var this: ?*IVpnPlugInProfile2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVpnPlugInProfile2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getRequireVpnClientAppUI();
    }
    pub fn putRequireVpnClientAppUI(self: *@This(), value: bool) core.HResult!void {
        var this: ?*IVpnPlugInProfile2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVpnPlugInProfile2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putRequireVpnClientAppUI(value);
    }
    pub fn getConnectionStatus(self: *@This()) core.HResult!VpnManagementConnectionStatus {
        var this: ?*IVpnPlugInProfile2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVpnPlugInProfile2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getConnectionStatus();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IVpnPlugInProfile.IID)));
    }
    pub const NAME: []const u8 = "Windows.Networking.Vpn.VpnPlugInProfile";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IVpnPlugInProfile.GUID;
    pub const IID: Guid = IVpnPlugInProfile.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IVpnPlugInProfile.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const VpnRoute = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn putAddress(self: *@This(), value: *HostName) core.HResult!void {
        const this: *IVpnRoute = @ptrCast(self);
        return try this.putAddress(value);
    }
    pub fn getAddress(self: *@This()) core.HResult!*HostName {
        const this: *IVpnRoute = @ptrCast(self);
        return try this.getAddress();
    }
    pub fn putPrefixSize(self: *@This(), value: u8) core.HResult!void {
        const this: *IVpnRoute = @ptrCast(self);
        return try this.putPrefixSize(value);
    }
    pub fn getPrefixSize(self: *@This()) core.HResult!u8 {
        const this: *IVpnRoute = @ptrCast(self);
        return try this.getPrefixSize();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateVpnRoute(address: *HostName, prefixSize: u8) core.HResult!*VpnRoute {
        const _f = @This().IVpnRouteFactoryCache.get();
        return try _f.CreateVpnRoute(address, prefixSize);
    }
    pub const NAME: []const u8 = "Windows.Networking.Vpn.VpnRoute";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IVpnRoute.GUID;
    pub const IID: Guid = IVpnRoute.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IVpnRoute.SIGNATURE);
    var _IVpnRouteFactoryCache: FactoryCache(IVpnRouteFactory, RUNTIME_NAME) = .{};
};
pub const VpnRouteAssignment = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn putIpv4InclusionRoutes(self: *@This(), value: *IVector(VpnRoute)) core.HResult!void {
        const this: *IVpnRouteAssignment = @ptrCast(self);
        return try this.putIpv4InclusionRoutes(value);
    }
    pub fn putIpv6InclusionRoutes(self: *@This(), value: *IVector(VpnRoute)) core.HResult!void {
        const this: *IVpnRouteAssignment = @ptrCast(self);
        return try this.putIpv6InclusionRoutes(value);
    }
    pub fn getIpv4InclusionRoutes(self: *@This()) core.HResult!*IVector(VpnRoute) {
        const this: *IVpnRouteAssignment = @ptrCast(self);
        return try this.getIpv4InclusionRoutes();
    }
    pub fn getIpv6InclusionRoutes(self: *@This()) core.HResult!*IVector(VpnRoute) {
        const this: *IVpnRouteAssignment = @ptrCast(self);
        return try this.getIpv6InclusionRoutes();
    }
    pub fn putIpv4ExclusionRoutes(self: *@This(), value: *IVector(VpnRoute)) core.HResult!void {
        const this: *IVpnRouteAssignment = @ptrCast(self);
        return try this.putIpv4ExclusionRoutes(value);
    }
    pub fn putIpv6ExclusionRoutes(self: *@This(), value: *IVector(VpnRoute)) core.HResult!void {
        const this: *IVpnRouteAssignment = @ptrCast(self);
        return try this.putIpv6ExclusionRoutes(value);
    }
    pub fn getIpv4ExclusionRoutes(self: *@This()) core.HResult!*IVector(VpnRoute) {
        const this: *IVpnRouteAssignment = @ptrCast(self);
        return try this.getIpv4ExclusionRoutes();
    }
    pub fn getIpv6ExclusionRoutes(self: *@This()) core.HResult!*IVector(VpnRoute) {
        const this: *IVpnRouteAssignment = @ptrCast(self);
        return try this.getIpv6ExclusionRoutes();
    }
    pub fn putExcludeLocalSubnets(self: *@This(), value: bool) core.HResult!void {
        const this: *IVpnRouteAssignment = @ptrCast(self);
        return try this.putExcludeLocalSubnets(value);
    }
    pub fn getExcludeLocalSubnets(self: *@This()) core.HResult!bool {
        const this: *IVpnRouteAssignment = @ptrCast(self);
        return try this.getExcludeLocalSubnets();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IVpnRouteAssignment.IID)));
    }
    pub const NAME: []const u8 = "Windows.Networking.Vpn.VpnRouteAssignment";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IVpnRouteAssignment.GUID;
    pub const IID: Guid = IVpnRouteAssignment.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IVpnRouteAssignment.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const VpnRoutingPolicyType = enum(i32) {
    SplitRouting = 0,
    ForceAllTrafficOverVpn = 1,
};
pub const VpnSystemHealth = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getStatementOfHealth(self: *@This()) core.HResult!*Buffer {
        const this: *IVpnSystemHealth = @ptrCast(self);
        return try this.getStatementOfHealth();
    }
    pub const NAME: []const u8 = "Windows.Networking.Vpn.VpnSystemHealth";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IVpnSystemHealth.GUID;
    pub const IID: Guid = IVpnSystemHealth.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IVpnSystemHealth.SIGNATURE);
};
pub const VpnTrafficFilter = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getAppId(self: *@This()) core.HResult!*VpnAppId {
        const this: *IVpnTrafficFilter = @ptrCast(self);
        return try this.getAppId();
    }
    pub fn putAppId(self: *@This(), value: *VpnAppId) core.HResult!void {
        const this: *IVpnTrafficFilter = @ptrCast(self);
        return try this.putAppId(value);
    }
    pub fn getAppClaims(self: *@This()) core.HResult!*IVector(HSTRING) {
        const this: *IVpnTrafficFilter = @ptrCast(self);
        return try this.getAppClaims();
    }
    pub fn getProtocol(self: *@This()) core.HResult!VpnIPProtocol {
        const this: *IVpnTrafficFilter = @ptrCast(self);
        return try this.getProtocol();
    }
    pub fn putProtocol(self: *@This(), value: VpnIPProtocol) core.HResult!void {
        const this: *IVpnTrafficFilter = @ptrCast(self);
        return try this.putProtocol(value);
    }
    pub fn getLocalPortRanges(self: *@This()) core.HResult!*IVector(HSTRING) {
        const this: *IVpnTrafficFilter = @ptrCast(self);
        return try this.getLocalPortRanges();
    }
    pub fn getRemotePortRanges(self: *@This()) core.HResult!*IVector(HSTRING) {
        const this: *IVpnTrafficFilter = @ptrCast(self);
        return try this.getRemotePortRanges();
    }
    pub fn getLocalAddressRanges(self: *@This()) core.HResult!*IVector(HSTRING) {
        const this: *IVpnTrafficFilter = @ptrCast(self);
        return try this.getLocalAddressRanges();
    }
    pub fn getRemoteAddressRanges(self: *@This()) core.HResult!*IVector(HSTRING) {
        const this: *IVpnTrafficFilter = @ptrCast(self);
        return try this.getRemoteAddressRanges();
    }
    pub fn getRoutingPolicyType(self: *@This()) core.HResult!VpnRoutingPolicyType {
        const this: *IVpnTrafficFilter = @ptrCast(self);
        return try this.getRoutingPolicyType();
    }
    pub fn putRoutingPolicyType(self: *@This(), value: VpnRoutingPolicyType) core.HResult!void {
        const this: *IVpnTrafficFilter = @ptrCast(self);
        return try this.putRoutingPolicyType(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn Create(appId: *VpnAppId) core.HResult!*VpnTrafficFilter {
        const _f = @This().IVpnTrafficFilterFactoryCache.get();
        return try _f.Create(appId);
    }
    pub const NAME: []const u8 = "Windows.Networking.Vpn.VpnTrafficFilter";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IVpnTrafficFilter.GUID;
    pub const IID: Guid = IVpnTrafficFilter.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IVpnTrafficFilter.SIGNATURE);
    var _IVpnTrafficFilterFactoryCache: FactoryCache(IVpnTrafficFilterFactory, RUNTIME_NAME) = .{};
};
pub const VpnTrafficFilterAssignment = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getTrafficFilterList(self: *@This()) core.HResult!*IVector(VpnTrafficFilter) {
        const this: *IVpnTrafficFilterAssignment = @ptrCast(self);
        return try this.getTrafficFilterList();
    }
    pub fn getAllowOutbound(self: *@This()) core.HResult!bool {
        const this: *IVpnTrafficFilterAssignment = @ptrCast(self);
        return try this.getAllowOutbound();
    }
    pub fn putAllowOutbound(self: *@This(), value: bool) core.HResult!void {
        const this: *IVpnTrafficFilterAssignment = @ptrCast(self);
        return try this.putAllowOutbound(value);
    }
    pub fn getAllowInbound(self: *@This()) core.HResult!bool {
        const this: *IVpnTrafficFilterAssignment = @ptrCast(self);
        return try this.getAllowInbound();
    }
    pub fn putAllowInbound(self: *@This(), value: bool) core.HResult!void {
        const this: *IVpnTrafficFilterAssignment = @ptrCast(self);
        return try this.putAllowInbound(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IVpnTrafficFilterAssignment.IID)));
    }
    pub const NAME: []const u8 = "Windows.Networking.Vpn.VpnTrafficFilterAssignment";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IVpnTrafficFilterAssignment.GUID;
    pub const IID: Guid = IVpnTrafficFilterAssignment.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IVpnTrafficFilterAssignment.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
const IUnknown = @import("../root.zig").IUnknown;
const IActivationFactory = @import("../Foundation.zig").IActivationFactory;
const Guid = @import("../root.zig").Guid;
const IVector = @import("../Foundation/Collections.zig").IVector;
const ValueSet = @import("../Foundation/Collections.zig").ValueSet;
const ControlChannelTriggerStatus = @import("./Sockets.zig").ControlChannelTriggerStatus;
const Buffer = @import("../Storage/Streams.zig").Buffer;
const IActivatedEventArgsWithUser = @import("../ApplicationModel/Activation.zig").IActivatedEventArgsWithUser;
const IIterable = @import("../Foundation/Collections.zig").IIterable;
const IInspectable = @import("../Foundation.zig").IInspectable;
const Uri = @import("../Foundation.zig").Uri;
const HRESULT = @import("../root.zig").HRESULT;
const HostName = @import("../Networking.zig").HostName;
const EventRegistrationToken = @import("../Foundation.zig").EventRegistrationToken;
const ApplicationExecutionState = @import("../ApplicationModel/Activation.zig").ApplicationExecutionState;
const IAsyncAction = @import("../Foundation.zig").IAsyncAction;
const Certificate = @import("../Security/Cryptography/Certificates.zig").Certificate;
const IVectorView = @import("../Foundation/Collections.zig").IVectorView;
const FactoryCache = @import("../core.zig").FactoryCache;
const IIterator = @import("../Foundation/Collections.zig").IIterator;
const TrustLevel = @import("../root.zig").TrustLevel;
const TypedEventHandler = @import("../Foundation.zig").TypedEventHandler;
const ActivationKind = @import("../ApplicationModel/Activation.zig").ActivationKind;
const HSTRING = @import("../root.zig").HSTRING;
const PasswordCredential = @import("../Security/Credentials.zig").PasswordCredential;
const IAsyncOperation = @import("../Foundation.zig").IAsyncOperation;
const core = @import("../root.zig").core;
const SplashScreen = @import("../ApplicationModel/Activation.zig").SplashScreen;
const IActivatedEventArgs = @import("../ApplicationModel/Activation.zig").IActivatedEventArgs;
const User = @import("../System.zig").User;
