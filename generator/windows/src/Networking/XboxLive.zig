pub const IXboxLiveDeviceAddress = extern struct {
    vtable: *const VTable,
    pub fn addSnapshotChanged(self: *@This(), handler: *TypedEventHandler(XboxLiveDeviceAddress,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_SnapshotChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeSnapshotChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_SnapshotChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn GetSnapshotAsBase64(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.GetSnapshotAsBase64(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetSnapshotAsBuffer(self: *@This()) core.HResult!*IBuffer {
        var _r: *IBuffer = undefined;
        const _c = self.vtable.GetSnapshotAsBuffer(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetSnapshotAsBytes(self: *@This(), buffer: [*]u8, bytesWritten: u32) core.HResult!void {
        const _c = self.vtable.GetSnapshotAsBytes(@ptrCast(self), buffer, bytesWritten);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn Compare(self: *@This(), otherDeviceAddress: *XboxLiveDeviceAddress) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.Compare(@ptrCast(self), otherDeviceAddress, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsValid(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsValid(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsLocal(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsLocal(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getNetworkAccessKind(self: *@This()) core.HResult!XboxLiveNetworkAccessKind {
        var _r: XboxLiveNetworkAccessKind = undefined;
        const _c = self.vtable.get_NetworkAccessKind(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.XboxLive.IXboxLiveDeviceAddress";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f5bbd279-3c86-4b57-a31a-b9462408fd01";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        add_SnapshotChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(XboxLiveDeviceAddress,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_SnapshotChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        GetSnapshotAsBase64: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        GetSnapshotAsBuffer: *const fn(self: *anyopaque, _r: **IBuffer) callconv(.winapi) HRESULT,
        GetSnapshotAsBytes: *const fn(self: *anyopaque, buffer: [*]u8, bytesWritten: u32) callconv(.winapi) HRESULT,
        Compare: *const fn(self: *anyopaque, otherDeviceAddress: *XboxLiveDeviceAddress, _r: *i32) callconv(.winapi) HRESULT,
        get_IsValid: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsLocal: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_NetworkAccessKind: *const fn(self: *anyopaque, _r: *XboxLiveNetworkAccessKind) callconv(.winapi) HRESULT,
    };
};
pub const IXboxLiveDeviceAddressStatics = extern struct {
    vtable: *const VTable,
    pub fn CreateFromSnapshotBase64(self: *@This(), base64: HSTRING) core.HResult!*XboxLiveDeviceAddress {
        var _r: *XboxLiveDeviceAddress = undefined;
        const _c = self.vtable.CreateFromSnapshotBase64(@ptrCast(self), base64, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateFromSnapshotBuffer(self: *@This(), buffer: *IBuffer) core.HResult!*XboxLiveDeviceAddress {
        var _r: *XboxLiveDeviceAddress = undefined;
        const _c = self.vtable.CreateFromSnapshotBuffer(@ptrCast(self), buffer, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateFromSnapshotBytes(self: *@This(), buffer: [*]u8) core.HResult!*XboxLiveDeviceAddress {
        var _r: *XboxLiveDeviceAddress = undefined;
        const _c = self.vtable.CreateFromSnapshotBytes(@ptrCast(self), buffer, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetLocal(self: *@This()) core.HResult!*XboxLiveDeviceAddress {
        var _r: *XboxLiveDeviceAddress = undefined;
        const _c = self.vtable.GetLocal(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMaxSnapshotBytesSize(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_MaxSnapshotBytesSize(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.XboxLive.IXboxLiveDeviceAddressStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5954a819-4a79-4931-827c-7f503e963263";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateFromSnapshotBase64: *const fn(self: *anyopaque, base64: HSTRING, _r: **XboxLiveDeviceAddress) callconv(.winapi) HRESULT,
        CreateFromSnapshotBuffer: *const fn(self: *anyopaque, buffer: *IBuffer, _r: **XboxLiveDeviceAddress) callconv(.winapi) HRESULT,
        CreateFromSnapshotBytes: *const fn(self: *anyopaque, buffer: [*]u8, _r: **XboxLiveDeviceAddress) callconv(.winapi) HRESULT,
        GetLocal: *const fn(self: *anyopaque, _r: **XboxLiveDeviceAddress) callconv(.winapi) HRESULT,
        get_MaxSnapshotBytesSize: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
    };
};
pub const IXboxLiveEndpointPair = extern struct {
    vtable: *const VTable,
    pub fn addStateChanged(self: *@This(), handler: *TypedEventHandler(XboxLiveEndpointPair,XboxLiveEndpointPairStateChangedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_StateChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeStateChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_StateChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn DeleteAsync(self: *@This()) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.DeleteAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetRemoteSocketAddressBytes(self: *@This(), socketAddress: [*]u8) core.HResult!void {
        const _c = self.vtable.GetRemoteSocketAddressBytes(@ptrCast(self), socketAddress);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn GetLocalSocketAddressBytes(self: *@This(), socketAddress: [*]u8) core.HResult!void {
        const _c = self.vtable.GetLocalSocketAddressBytes(@ptrCast(self), socketAddress);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getState(self: *@This()) core.HResult!XboxLiveEndpointPairState {
        var _r: XboxLiveEndpointPairState = undefined;
        const _c = self.vtable.get_State(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTemplate(self: *@This()) core.HResult!*XboxLiveEndpointPairTemplate {
        var _r: *XboxLiveEndpointPairTemplate = undefined;
        const _c = self.vtable.get_Template(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRemoteDeviceAddress(self: *@This()) core.HResult!*XboxLiveDeviceAddress {
        var _r: *XboxLiveDeviceAddress = undefined;
        const _c = self.vtable.get_RemoteDeviceAddress(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRemoteHostName(self: *@This()) core.HResult!*HostName {
        var _r: *HostName = undefined;
        const _c = self.vtable.get_RemoteHostName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRemotePort(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_RemotePort(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getLocalHostName(self: *@This()) core.HResult!*HostName {
        var _r: *HostName = undefined;
        const _c = self.vtable.get_LocalHostName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getLocalPort(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_LocalPort(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.XboxLive.IXboxLiveEndpointPair";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1e9a839b-813e-44e0-b87f-c87a093475e4";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        add_StateChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(XboxLiveEndpointPair,XboxLiveEndpointPairStateChangedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_StateChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        DeleteAsync: *const fn(self: *anyopaque, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        GetRemoteSocketAddressBytes: *const fn(self: *anyopaque, socketAddress: [*]u8) callconv(.winapi) HRESULT,
        GetLocalSocketAddressBytes: *const fn(self: *anyopaque, socketAddress: [*]u8) callconv(.winapi) HRESULT,
        get_State: *const fn(self: *anyopaque, _r: *XboxLiveEndpointPairState) callconv(.winapi) HRESULT,
        get_Template: *const fn(self: *anyopaque, _r: **XboxLiveEndpointPairTemplate) callconv(.winapi) HRESULT,
        get_RemoteDeviceAddress: *const fn(self: *anyopaque, _r: **XboxLiveDeviceAddress) callconv(.winapi) HRESULT,
        get_RemoteHostName: *const fn(self: *anyopaque, _r: **HostName) callconv(.winapi) HRESULT,
        get_RemotePort: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_LocalHostName: *const fn(self: *anyopaque, _r: **HostName) callconv(.winapi) HRESULT,
        get_LocalPort: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IXboxLiveEndpointPairCreationResult = extern struct {
    vtable: *const VTable,
    pub fn getDeviceAddress(self: *@This()) core.HResult!*XboxLiveDeviceAddress {
        var _r: *XboxLiveDeviceAddress = undefined;
        const _c = self.vtable.get_DeviceAddress(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getStatus(self: *@This()) core.HResult!XboxLiveEndpointPairCreationStatus {
        var _r: XboxLiveEndpointPairCreationStatus = undefined;
        const _c = self.vtable.get_Status(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsExistingPathEvaluation(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsExistingPathEvaluation(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getEndpointPair(self: *@This()) core.HResult!*XboxLiveEndpointPair {
        var _r: *XboxLiveEndpointPair = undefined;
        const _c = self.vtable.get_EndpointPair(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.XboxLive.IXboxLiveEndpointPairCreationResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d9a8bb95-2aab-4d1e-9794-33ecc0dcf0fe";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_DeviceAddress: *const fn(self: *anyopaque, _r: **XboxLiveDeviceAddress) callconv(.winapi) HRESULT,
        get_Status: *const fn(self: *anyopaque, _r: *XboxLiveEndpointPairCreationStatus) callconv(.winapi) HRESULT,
        get_IsExistingPathEvaluation: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_EndpointPair: *const fn(self: *anyopaque, _r: **XboxLiveEndpointPair) callconv(.winapi) HRESULT,
    };
};
pub const IXboxLiveEndpointPairStateChangedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getOldState(self: *@This()) core.HResult!XboxLiveEndpointPairState {
        var _r: XboxLiveEndpointPairState = undefined;
        const _c = self.vtable.get_OldState(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getNewState(self: *@This()) core.HResult!XboxLiveEndpointPairState {
        var _r: XboxLiveEndpointPairState = undefined;
        const _c = self.vtable.get_NewState(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.XboxLive.IXboxLiveEndpointPairStateChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "592e3b55-de08-44e7-ac3b-b9b9a169583a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_OldState: *const fn(self: *anyopaque, _r: *XboxLiveEndpointPairState) callconv(.winapi) HRESULT,
        get_NewState: *const fn(self: *anyopaque, _r: *XboxLiveEndpointPairState) callconv(.winapi) HRESULT,
    };
};
pub const IXboxLiveEndpointPairStatics = extern struct {
    vtable: *const VTable,
    pub fn FindEndpointPairBySocketAddressBytes(self: *@This(), localSocketAddress: [*]u8, remoteSocketAddress: [*]u8) core.HResult!*XboxLiveEndpointPair {
        var _r: *XboxLiveEndpointPair = undefined;
        const _c = self.vtable.FindEndpointPairBySocketAddressBytes(@ptrCast(self), localSocketAddress, remoteSocketAddress, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FindEndpointPairByHostNamesAndPorts(self: *@This(), localHostName: *HostName, localPort: HSTRING, remoteHostName: *HostName, remotePort: HSTRING) core.HResult!*XboxLiveEndpointPair {
        var _r: *XboxLiveEndpointPair = undefined;
        const _c = self.vtable.FindEndpointPairByHostNamesAndPorts(@ptrCast(self), localHostName, localPort, remoteHostName, remotePort, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.XboxLive.IXboxLiveEndpointPairStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "64316b30-217a-4243-8ee1-6729281d27db";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        FindEndpointPairBySocketAddressBytes: *const fn(self: *anyopaque, localSocketAddress: [*]u8, remoteSocketAddress: [*]u8, _r: **XboxLiveEndpointPair) callconv(.winapi) HRESULT,
        FindEndpointPairByHostNamesAndPorts: *const fn(self: *anyopaque, localHostName: *HostName, localPort: HSTRING, remoteHostName: *HostName, remotePort: HSTRING, _r: **XboxLiveEndpointPair) callconv(.winapi) HRESULT,
    };
};
pub const IXboxLiveEndpointPairTemplate = extern struct {
    vtable: *const VTable,
    pub fn addInboundEndpointPairCreated(self: *@This(), handler: *TypedEventHandler(XboxLiveEndpointPairTemplate,XboxLiveInboundEndpointPairCreatedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_InboundEndpointPairCreated(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeInboundEndpointPairCreated(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_InboundEndpointPairCreated(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn CreateEndpointPairAsync(self: *@This(), deviceAddress: *XboxLiveDeviceAddress) core.HResult!*IAsyncOperation(XboxLiveEndpointPairCreationResult) {
        var _r: *IAsyncOperation(XboxLiveEndpointPairCreationResult) = undefined;
        const _c = self.vtable.CreateEndpointPairAsync(@ptrCast(self), deviceAddress, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateEndpointPairAsyncWithBehaviors(self: *@This(), deviceAddress: *XboxLiveDeviceAddress, behaviors: XboxLiveEndpointPairCreationBehaviors) core.HResult!*IAsyncOperation(XboxLiveEndpointPairCreationResult) {
        var _r: *IAsyncOperation(XboxLiveEndpointPairCreationResult) = undefined;
        const _c = self.vtable.CreateEndpointPairAsyncWithBehaviors(@ptrCast(self), deviceAddress, behaviors, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateEndpointPairForPortsAsync(self: *@This(), deviceAddress: *XboxLiveDeviceAddress, initiatorPort: HSTRING, acceptorPort: HSTRING) core.HResult!*IAsyncOperation(XboxLiveEndpointPairCreationResult) {
        var _r: *IAsyncOperation(XboxLiveEndpointPairCreationResult) = undefined;
        const _c = self.vtable.CreateEndpointPairForPortsAsync(@ptrCast(self), deviceAddress, initiatorPort, acceptorPort, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateEndpointPairForPortsAsyncWithInitiatorPortWithAcceptorPortWithBehaviors(self: *@This(), deviceAddress: *XboxLiveDeviceAddress, initiatorPort: HSTRING, acceptorPort: HSTRING, behaviors: XboxLiveEndpointPairCreationBehaviors) core.HResult!*IAsyncOperation(XboxLiveEndpointPairCreationResult) {
        var _r: *IAsyncOperation(XboxLiveEndpointPairCreationResult) = undefined;
        const _c = self.vtable.CreateEndpointPairForPortsAsyncWithInitiatorPortWithAcceptorPortWithBehaviors(@ptrCast(self), deviceAddress, initiatorPort, acceptorPort, behaviors, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Name(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSocketKind(self: *@This()) core.HResult!XboxLiveSocketKind {
        var _r: XboxLiveSocketKind = undefined;
        const _c = self.vtable.get_SocketKind(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getInitiatorBoundPortRangeLower(self: *@This()) core.HResult!u16 {
        var _r: u16 = undefined;
        const _c = self.vtable.get_InitiatorBoundPortRangeLower(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getInitiatorBoundPortRangeUpper(self: *@This()) core.HResult!u16 {
        var _r: u16 = undefined;
        const _c = self.vtable.get_InitiatorBoundPortRangeUpper(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAcceptorBoundPortRangeLower(self: *@This()) core.HResult!u16 {
        var _r: u16 = undefined;
        const _c = self.vtable.get_AcceptorBoundPortRangeLower(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAcceptorBoundPortRangeUpper(self: *@This()) core.HResult!u16 {
        var _r: u16 = undefined;
        const _c = self.vtable.get_AcceptorBoundPortRangeUpper(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getEndpointPairs(self: *@This()) core.HResult!*IVectorView(XboxLiveEndpointPair) {
        var _r: *IVectorView(XboxLiveEndpointPair) = undefined;
        const _c = self.vtable.get_EndpointPairs(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.XboxLive.IXboxLiveEndpointPairTemplate";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "6b286ecf-3457-40ce-b9a1-c0cfe0213ea7";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        add_InboundEndpointPairCreated: *const fn(self: *anyopaque, handler: *TypedEventHandler(XboxLiveEndpointPairTemplate,XboxLiveInboundEndpointPairCreatedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_InboundEndpointPairCreated: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        CreateEndpointPairAsync: *const fn(self: *anyopaque, deviceAddress: *XboxLiveDeviceAddress, _r: **IAsyncOperation(XboxLiveEndpointPairCreationResult)) callconv(.winapi) HRESULT,
        CreateEndpointPairAsyncWithBehaviors: *const fn(self: *anyopaque, deviceAddress: *XboxLiveDeviceAddress, behaviors: XboxLiveEndpointPairCreationBehaviors, _r: **IAsyncOperation(XboxLiveEndpointPairCreationResult)) callconv(.winapi) HRESULT,
        CreateEndpointPairForPortsAsync: *const fn(self: *anyopaque, deviceAddress: *XboxLiveDeviceAddress, initiatorPort: HSTRING, acceptorPort: HSTRING, _r: **IAsyncOperation(XboxLiveEndpointPairCreationResult)) callconv(.winapi) HRESULT,
        CreateEndpointPairForPortsAsyncWithInitiatorPortWithAcceptorPortWithBehaviors: *const fn(self: *anyopaque, deviceAddress: *XboxLiveDeviceAddress, initiatorPort: HSTRING, acceptorPort: HSTRING, behaviors: XboxLiveEndpointPairCreationBehaviors, _r: **IAsyncOperation(XboxLiveEndpointPairCreationResult)) callconv(.winapi) HRESULT,
        get_Name: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_SocketKind: *const fn(self: *anyopaque, _r: *XboxLiveSocketKind) callconv(.winapi) HRESULT,
        get_InitiatorBoundPortRangeLower: *const fn(self: *anyopaque, _r: *u16) callconv(.winapi) HRESULT,
        get_InitiatorBoundPortRangeUpper: *const fn(self: *anyopaque, _r: *u16) callconv(.winapi) HRESULT,
        get_AcceptorBoundPortRangeLower: *const fn(self: *anyopaque, _r: *u16) callconv(.winapi) HRESULT,
        get_AcceptorBoundPortRangeUpper: *const fn(self: *anyopaque, _r: *u16) callconv(.winapi) HRESULT,
        get_EndpointPairs: *const fn(self: *anyopaque, _r: **IVectorView(XboxLiveEndpointPair)) callconv(.winapi) HRESULT,
    };
};
pub const IXboxLiveEndpointPairTemplateStatics = extern struct {
    vtable: *const VTable,
    pub fn GetTemplateByName(self: *@This(), name: HSTRING) core.HResult!*XboxLiveEndpointPairTemplate {
        var _r: *XboxLiveEndpointPairTemplate = undefined;
        const _c = self.vtable.GetTemplateByName(@ptrCast(self), name, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTemplates(self: *@This()) core.HResult!*IVectorView(XboxLiveEndpointPairTemplate) {
        var _r: *IVectorView(XboxLiveEndpointPairTemplate) = undefined;
        const _c = self.vtable.get_Templates(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.XboxLive.IXboxLiveEndpointPairTemplateStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1e13137b-737b-4a23-bc64-0870f75655ba";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetTemplateByName: *const fn(self: *anyopaque, name: HSTRING, _r: **XboxLiveEndpointPairTemplate) callconv(.winapi) HRESULT,
        get_Templates: *const fn(self: *anyopaque, _r: **IVectorView(XboxLiveEndpointPairTemplate)) callconv(.winapi) HRESULT,
    };
};
pub const IXboxLiveInboundEndpointPairCreatedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getEndpointPair(self: *@This()) core.HResult!*XboxLiveEndpointPair {
        var _r: *XboxLiveEndpointPair = undefined;
        const _c = self.vtable.get_EndpointPair(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.XboxLive.IXboxLiveInboundEndpointPairCreatedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "dc183b62-22ba-48d2-80de-c23968bd198b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_EndpointPair: *const fn(self: *anyopaque, _r: **XboxLiveEndpointPair) callconv(.winapi) HRESULT,
    };
};
pub const IXboxLiveQualityOfServiceMeasurement = extern struct {
    vtable: *const VTable,
    pub fn MeasureAsync(self: *@This()) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.MeasureAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetMetricResultsForDevice(self: *@This(), deviceAddress: *XboxLiveDeviceAddress) core.HResult!*IVectorView(XboxLiveQualityOfServiceMetricResult) {
        var _r: *IVectorView(XboxLiveQualityOfServiceMetricResult) = undefined;
        const _c = self.vtable.GetMetricResultsForDevice(@ptrCast(self), deviceAddress, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetMetricResultsForMetric(self: *@This(), metric: XboxLiveQualityOfServiceMetric) core.HResult!*IVectorView(XboxLiveQualityOfServiceMetricResult) {
        var _r: *IVectorView(XboxLiveQualityOfServiceMetricResult) = undefined;
        const _c = self.vtable.GetMetricResultsForMetric(@ptrCast(self), metric, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetMetricResult(self: *@This(), deviceAddress: *XboxLiveDeviceAddress, metric: XboxLiveQualityOfServiceMetric) core.HResult!*XboxLiveQualityOfServiceMetricResult {
        var _r: *XboxLiveQualityOfServiceMetricResult = undefined;
        const _c = self.vtable.GetMetricResult(@ptrCast(self), deviceAddress, metric, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetPrivatePayloadResult(self: *@This(), deviceAddress: *XboxLiveDeviceAddress) core.HResult!*XboxLiveQualityOfServicePrivatePayloadResult {
        var _r: *XboxLiveQualityOfServicePrivatePayloadResult = undefined;
        const _c = self.vtable.GetPrivatePayloadResult(@ptrCast(self), deviceAddress, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMetrics(self: *@This()) core.HResult!*IVector(XboxLiveQualityOfServiceMetric) {
        var _r: *IVector(XboxLiveQualityOfServiceMetric) = undefined;
        const _c = self.vtable.get_Metrics(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDeviceAddresses(self: *@This()) core.HResult!*IVector(XboxLiveDeviceAddress) {
        var _r: *IVector(XboxLiveDeviceAddress) = undefined;
        const _c = self.vtable.get_DeviceAddresses(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getShouldRequestPrivatePayloads(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_ShouldRequestPrivatePayloads(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putShouldRequestPrivatePayloads(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_ShouldRequestPrivatePayloads(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getTimeoutInMilliseconds(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_TimeoutInMilliseconds(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putTimeoutInMilliseconds(self: *@This(), value: u32) core.HResult!void {
        const _c = self.vtable.put_TimeoutInMilliseconds(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getNumberOfProbesToAttempt(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_NumberOfProbesToAttempt(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putNumberOfProbesToAttempt(self: *@This(), value: u32) core.HResult!void {
        const _c = self.vtable.put_NumberOfProbesToAttempt(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getNumberOfResultsPending(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_NumberOfResultsPending(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMetricResults(self: *@This()) core.HResult!*IVectorView(XboxLiveQualityOfServiceMetricResult) {
        var _r: *IVectorView(XboxLiveQualityOfServiceMetricResult) = undefined;
        const _c = self.vtable.get_MetricResults(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPrivatePayloadResults(self: *@This()) core.HResult!*IVectorView(XboxLiveQualityOfServicePrivatePayloadResult) {
        var _r: *IVectorView(XboxLiveQualityOfServicePrivatePayloadResult) = undefined;
        const _c = self.vtable.get_PrivatePayloadResults(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.XboxLive.IXboxLiveQualityOfServiceMeasurement";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "4d682bce-a5d6-47e6-a236-cfde5fbdf2ed";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        MeasureAsync: *const fn(self: *anyopaque, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        GetMetricResultsForDevice: *const fn(self: *anyopaque, deviceAddress: *XboxLiveDeviceAddress, _r: **IVectorView(XboxLiveQualityOfServiceMetricResult)) callconv(.winapi) HRESULT,
        GetMetricResultsForMetric: *const fn(self: *anyopaque, metric: XboxLiveQualityOfServiceMetric, _r: **IVectorView(XboxLiveQualityOfServiceMetricResult)) callconv(.winapi) HRESULT,
        GetMetricResult: *const fn(self: *anyopaque, deviceAddress: *XboxLiveDeviceAddress, metric: XboxLiveQualityOfServiceMetric, _r: **XboxLiveQualityOfServiceMetricResult) callconv(.winapi) HRESULT,
        GetPrivatePayloadResult: *const fn(self: *anyopaque, deviceAddress: *XboxLiveDeviceAddress, _r: **XboxLiveQualityOfServicePrivatePayloadResult) callconv(.winapi) HRESULT,
        get_Metrics: *const fn(self: *anyopaque, _r: **IVector(XboxLiveQualityOfServiceMetric)) callconv(.winapi) HRESULT,
        get_DeviceAddresses: *const fn(self: *anyopaque, _r: **IVector(XboxLiveDeviceAddress)) callconv(.winapi) HRESULT,
        get_ShouldRequestPrivatePayloads: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_ShouldRequestPrivatePayloads: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_TimeoutInMilliseconds: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        put_TimeoutInMilliseconds: *const fn(self: *anyopaque, value: u32) callconv(.winapi) HRESULT,
        get_NumberOfProbesToAttempt: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        put_NumberOfProbesToAttempt: *const fn(self: *anyopaque, value: u32) callconv(.winapi) HRESULT,
        get_NumberOfResultsPending: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_MetricResults: *const fn(self: *anyopaque, _r: **IVectorView(XboxLiveQualityOfServiceMetricResult)) callconv(.winapi) HRESULT,
        get_PrivatePayloadResults: *const fn(self: *anyopaque, _r: **IVectorView(XboxLiveQualityOfServicePrivatePayloadResult)) callconv(.winapi) HRESULT,
    };
};
pub const IXboxLiveQualityOfServiceMeasurementStatics = extern struct {
    vtable: *const VTable,
    pub fn PublishPrivatePayloadBytes(self: *@This(), payload: [*]u8) core.HResult!void {
        const _c = self.vtable.PublishPrivatePayloadBytes(@ptrCast(self), payload);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn ClearPrivatePayload(self: *@This()) core.HResult!void {
        const _c = self.vtable.ClearPrivatePayload(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getMaxSimultaneousProbeConnections(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_MaxSimultaneousProbeConnections(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putMaxSimultaneousProbeConnections(self: *@This(), value: u32) core.HResult!void {
        const _c = self.vtable.put_MaxSimultaneousProbeConnections(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIsSystemOutboundBandwidthConstrained(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsSystemOutboundBandwidthConstrained(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIsSystemOutboundBandwidthConstrained(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsSystemOutboundBandwidthConstrained(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIsSystemInboundBandwidthConstrained(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsSystemInboundBandwidthConstrained(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIsSystemInboundBandwidthConstrained(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsSystemInboundBandwidthConstrained(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getPublishedPrivatePayload(self: *@This()) core.HResult!*IBuffer {
        var _r: *IBuffer = undefined;
        const _c = self.vtable.get_PublishedPrivatePayload(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putPublishedPrivatePayload(self: *@This(), value: *IBuffer) core.HResult!void {
        const _c = self.vtable.put_PublishedPrivatePayload(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getMaxPrivatePayloadSize(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_MaxPrivatePayloadSize(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.XboxLive.IXboxLiveQualityOfServiceMeasurementStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "6e352dca-23cf-440a-b077-5e30857a8234";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        PublishPrivatePayloadBytes: *const fn(self: *anyopaque, payload: [*]u8) callconv(.winapi) HRESULT,
        ClearPrivatePayload: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        get_MaxSimultaneousProbeConnections: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        put_MaxSimultaneousProbeConnections: *const fn(self: *anyopaque, value: u32) callconv(.winapi) HRESULT,
        get_IsSystemOutboundBandwidthConstrained: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IsSystemOutboundBandwidthConstrained: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_IsSystemInboundBandwidthConstrained: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IsSystemInboundBandwidthConstrained: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_PublishedPrivatePayload: *const fn(self: *anyopaque, _r: **IBuffer) callconv(.winapi) HRESULT,
        put_PublishedPrivatePayload: *const fn(self: *anyopaque, value: *IBuffer) callconv(.winapi) HRESULT,
        get_MaxPrivatePayloadSize: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
    };
};
pub const IXboxLiveQualityOfServiceMetricResult = extern struct {
    vtable: *const VTable,
    pub fn getStatus(self: *@This()) core.HResult!XboxLiveQualityOfServiceMeasurementStatus {
        var _r: XboxLiveQualityOfServiceMeasurementStatus = undefined;
        const _c = self.vtable.get_Status(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDeviceAddress(self: *@This()) core.HResult!*XboxLiveDeviceAddress {
        var _r: *XboxLiveDeviceAddress = undefined;
        const _c = self.vtable.get_DeviceAddress(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMetric(self: *@This()) core.HResult!XboxLiveQualityOfServiceMetric {
        var _r: XboxLiveQualityOfServiceMetric = undefined;
        const _c = self.vtable.get_Metric(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getValue(self: *@This()) core.HResult!u64 {
        var _r: u64 = undefined;
        const _c = self.vtable.get_Value(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.XboxLive.IXboxLiveQualityOfServiceMetricResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "aeec53d1-3561-4782-b0cf-d3ae29d9fa87";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Status: *const fn(self: *anyopaque, _r: *XboxLiveQualityOfServiceMeasurementStatus) callconv(.winapi) HRESULT,
        get_DeviceAddress: *const fn(self: *anyopaque, _r: **XboxLiveDeviceAddress) callconv(.winapi) HRESULT,
        get_Metric: *const fn(self: *anyopaque, _r: *XboxLiveQualityOfServiceMetric) callconv(.winapi) HRESULT,
        get_Value: *const fn(self: *anyopaque, _r: *u64) callconv(.winapi) HRESULT,
    };
};
pub const IXboxLiveQualityOfServicePrivatePayloadResult = extern struct {
    vtable: *const VTable,
    pub fn getStatus(self: *@This()) core.HResult!XboxLiveQualityOfServiceMeasurementStatus {
        var _r: XboxLiveQualityOfServiceMeasurementStatus = undefined;
        const _c = self.vtable.get_Status(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDeviceAddress(self: *@This()) core.HResult!*XboxLiveDeviceAddress {
        var _r: *XboxLiveDeviceAddress = undefined;
        const _c = self.vtable.get_DeviceAddress(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getValue(self: *@This()) core.HResult!*IBuffer {
        var _r: *IBuffer = undefined;
        const _c = self.vtable.get_Value(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.XboxLive.IXboxLiveQualityOfServicePrivatePayloadResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5a6302ae-6f38-41c0-9fcc-ea6cb978cafc";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Status: *const fn(self: *anyopaque, _r: *XboxLiveQualityOfServiceMeasurementStatus) callconv(.winapi) HRESULT,
        get_DeviceAddress: *const fn(self: *anyopaque, _r: **XboxLiveDeviceAddress) callconv(.winapi) HRESULT,
        get_Value: *const fn(self: *anyopaque, _r: **IBuffer) callconv(.winapi) HRESULT,
    };
};
pub const XboxLiveDeviceAddress = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn addSnapshotChanged(self: *@This(), handler: *TypedEventHandler(XboxLiveDeviceAddress,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *IXboxLiveDeviceAddress = @ptrCast(self);
        return try this.addSnapshotChanged(handler);
    }
    pub fn removeSnapshotChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IXboxLiveDeviceAddress = @ptrCast(self);
        return try this.removeSnapshotChanged(token);
    }
    pub fn GetSnapshotAsBase64(self: *@This()) core.HResult!HSTRING {
        const this: *IXboxLiveDeviceAddress = @ptrCast(self);
        return try this.GetSnapshotAsBase64();
    }
    pub fn GetSnapshotAsBuffer(self: *@This()) core.HResult!*IBuffer {
        const this: *IXboxLiveDeviceAddress = @ptrCast(self);
        return try this.GetSnapshotAsBuffer();
    }
    pub fn GetSnapshotAsBytes(self: *@This(), buffer: [*]u8, bytesWritten: u32) core.HResult!void {
        const this: *IXboxLiveDeviceAddress = @ptrCast(self);
        return try this.GetSnapshotAsBytes(buffer, bytesWritten);
    }
    pub fn Compare(self: *@This(), otherDeviceAddress: *XboxLiveDeviceAddress) core.HResult!i32 {
        const this: *IXboxLiveDeviceAddress = @ptrCast(self);
        return try this.Compare(otherDeviceAddress);
    }
    pub fn getIsValid(self: *@This()) core.HResult!bool {
        const this: *IXboxLiveDeviceAddress = @ptrCast(self);
        return try this.getIsValid();
    }
    pub fn getIsLocal(self: *@This()) core.HResult!bool {
        const this: *IXboxLiveDeviceAddress = @ptrCast(self);
        return try this.getIsLocal();
    }
    pub fn getNetworkAccessKind(self: *@This()) core.HResult!XboxLiveNetworkAccessKind {
        const this: *IXboxLiveDeviceAddress = @ptrCast(self);
        return try this.getNetworkAccessKind();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateFromSnapshotBase64(base64: HSTRING) core.HResult!*XboxLiveDeviceAddress {
        const factory = @This().IXboxLiveDeviceAddressStaticsCache.get();
        return try factory.CreateFromSnapshotBase64(base64);
    }
    pub fn CreateFromSnapshotBuffer(buffer: *IBuffer) core.HResult!*XboxLiveDeviceAddress {
        const factory = @This().IXboxLiveDeviceAddressStaticsCache.get();
        return try factory.CreateFromSnapshotBuffer(buffer);
    }
    pub fn CreateFromSnapshotBytes(buffer: [*]u8) core.HResult!*XboxLiveDeviceAddress {
        const factory = @This().IXboxLiveDeviceAddressStaticsCache.get();
        return try factory.CreateFromSnapshotBytes(buffer);
    }
    pub fn GetLocal() core.HResult!*XboxLiveDeviceAddress {
        const factory = @This().IXboxLiveDeviceAddressStaticsCache.get();
        return try factory.GetLocal();
    }
    pub fn getMaxSnapshotBytesSize() core.HResult!u32 {
        const factory = @This().IXboxLiveDeviceAddressStaticsCache.get();
        return try factory.getMaxSnapshotBytesSize();
    }
    pub const NAME: []const u8 = "Windows.Networking.XboxLive.XboxLiveDeviceAddress";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IXboxLiveDeviceAddress.GUID;
    pub const IID: Guid = IXboxLiveDeviceAddress.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IXboxLiveDeviceAddress.SIGNATURE);
    var _IXboxLiveDeviceAddressStaticsCache: FactoryCache(IXboxLiveDeviceAddressStatics, RUNTIME_NAME) = .{};
};
pub const XboxLiveEndpointPair = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn addStateChanged(self: *@This(), handler: *TypedEventHandler(XboxLiveEndpointPair,XboxLiveEndpointPairStateChangedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IXboxLiveEndpointPair = @ptrCast(self);
        return try this.addStateChanged(handler);
    }
    pub fn removeStateChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IXboxLiveEndpointPair = @ptrCast(self);
        return try this.removeStateChanged(token);
    }
    pub fn DeleteAsync(self: *@This()) core.HResult!*IAsyncAction {
        const this: *IXboxLiveEndpointPair = @ptrCast(self);
        return try this.DeleteAsync();
    }
    pub fn GetRemoteSocketAddressBytes(self: *@This(), socketAddress: [*]u8) core.HResult!void {
        const this: *IXboxLiveEndpointPair = @ptrCast(self);
        return try this.GetRemoteSocketAddressBytes(socketAddress);
    }
    pub fn GetLocalSocketAddressBytes(self: *@This(), socketAddress: [*]u8) core.HResult!void {
        const this: *IXboxLiveEndpointPair = @ptrCast(self);
        return try this.GetLocalSocketAddressBytes(socketAddress);
    }
    pub fn getState(self: *@This()) core.HResult!XboxLiveEndpointPairState {
        const this: *IXboxLiveEndpointPair = @ptrCast(self);
        return try this.getState();
    }
    pub fn getTemplate(self: *@This()) core.HResult!*XboxLiveEndpointPairTemplate {
        const this: *IXboxLiveEndpointPair = @ptrCast(self);
        return try this.getTemplate();
    }
    pub fn getRemoteDeviceAddress(self: *@This()) core.HResult!*XboxLiveDeviceAddress {
        const this: *IXboxLiveEndpointPair = @ptrCast(self);
        return try this.getRemoteDeviceAddress();
    }
    pub fn getRemoteHostName(self: *@This()) core.HResult!*HostName {
        const this: *IXboxLiveEndpointPair = @ptrCast(self);
        return try this.getRemoteHostName();
    }
    pub fn getRemotePort(self: *@This()) core.HResult!HSTRING {
        const this: *IXboxLiveEndpointPair = @ptrCast(self);
        return try this.getRemotePort();
    }
    pub fn getLocalHostName(self: *@This()) core.HResult!*HostName {
        const this: *IXboxLiveEndpointPair = @ptrCast(self);
        return try this.getLocalHostName();
    }
    pub fn getLocalPort(self: *@This()) core.HResult!HSTRING {
        const this: *IXboxLiveEndpointPair = @ptrCast(self);
        return try this.getLocalPort();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn FindEndpointPairBySocketAddressBytes(localSocketAddress: [*]u8, remoteSocketAddress: [*]u8) core.HResult!*XboxLiveEndpointPair {
        const factory = @This().IXboxLiveEndpointPairStaticsCache.get();
        return try factory.FindEndpointPairBySocketAddressBytes(localSocketAddress, remoteSocketAddress);
    }
    pub fn FindEndpointPairByHostNamesAndPorts(localHostName: *HostName, localPort: HSTRING, remoteHostName: *HostName, remotePort: HSTRING) core.HResult!*XboxLiveEndpointPair {
        const factory = @This().IXboxLiveEndpointPairStaticsCache.get();
        return try factory.FindEndpointPairByHostNamesAndPorts(localHostName, localPort, remoteHostName, remotePort);
    }
    pub const NAME: []const u8 = "Windows.Networking.XboxLive.XboxLiveEndpointPair";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IXboxLiveEndpointPair.GUID;
    pub const IID: Guid = IXboxLiveEndpointPair.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IXboxLiveEndpointPair.SIGNATURE);
    var _IXboxLiveEndpointPairStaticsCache: FactoryCache(IXboxLiveEndpointPairStatics, RUNTIME_NAME) = .{};
};
pub const XboxLiveEndpointPairCreationBehaviors = enum(i32) {
    None = 0,
    ReevaluatePath = 1,
};
pub const XboxLiveEndpointPairCreationResult = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getDeviceAddress(self: *@This()) core.HResult!*XboxLiveDeviceAddress {
        const this: *IXboxLiveEndpointPairCreationResult = @ptrCast(self);
        return try this.getDeviceAddress();
    }
    pub fn getStatus(self: *@This()) core.HResult!XboxLiveEndpointPairCreationStatus {
        const this: *IXboxLiveEndpointPairCreationResult = @ptrCast(self);
        return try this.getStatus();
    }
    pub fn getIsExistingPathEvaluation(self: *@This()) core.HResult!bool {
        const this: *IXboxLiveEndpointPairCreationResult = @ptrCast(self);
        return try this.getIsExistingPathEvaluation();
    }
    pub fn getEndpointPair(self: *@This()) core.HResult!*XboxLiveEndpointPair {
        const this: *IXboxLiveEndpointPairCreationResult = @ptrCast(self);
        return try this.getEndpointPair();
    }
    pub const NAME: []const u8 = "Windows.Networking.XboxLive.XboxLiveEndpointPairCreationResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IXboxLiveEndpointPairCreationResult.GUID;
    pub const IID: Guid = IXboxLiveEndpointPairCreationResult.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IXboxLiveEndpointPairCreationResult.SIGNATURE);
};
pub const XboxLiveEndpointPairCreationStatus = enum(i32) {
    Succeeded = 0,
    NoLocalNetworks = 1,
    NoCompatibleNetworkPaths = 2,
    LocalSystemNotAuthorized = 3,
    Canceled = 4,
    TimedOut = 5,
    RemoteSystemNotAuthorized = 6,
    RefusedDueToConfiguration = 7,
    UnexpectedInternalError = 8,
};
pub const XboxLiveEndpointPairState = enum(i32) {
    Invalid = 0,
    CreatingOutbound = 1,
    CreatingInbound = 2,
    Ready = 3,
    DeletingLocally = 4,
    RemoteEndpointTerminating = 5,
    Deleted = 6,
};
pub const XboxLiveEndpointPairStateChangedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getOldState(self: *@This()) core.HResult!XboxLiveEndpointPairState {
        const this: *IXboxLiveEndpointPairStateChangedEventArgs = @ptrCast(self);
        return try this.getOldState();
    }
    pub fn getNewState(self: *@This()) core.HResult!XboxLiveEndpointPairState {
        const this: *IXboxLiveEndpointPairStateChangedEventArgs = @ptrCast(self);
        return try this.getNewState();
    }
    pub const NAME: []const u8 = "Windows.Networking.XboxLive.XboxLiveEndpointPairStateChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IXboxLiveEndpointPairStateChangedEventArgs.GUID;
    pub const IID: Guid = IXboxLiveEndpointPairStateChangedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IXboxLiveEndpointPairStateChangedEventArgs.SIGNATURE);
};
pub const XboxLiveEndpointPairTemplate = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn addInboundEndpointPairCreated(self: *@This(), handler: *TypedEventHandler(XboxLiveEndpointPairTemplate,XboxLiveInboundEndpointPairCreatedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IXboxLiveEndpointPairTemplate = @ptrCast(self);
        return try this.addInboundEndpointPairCreated(handler);
    }
    pub fn removeInboundEndpointPairCreated(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IXboxLiveEndpointPairTemplate = @ptrCast(self);
        return try this.removeInboundEndpointPairCreated(token);
    }
    pub fn CreateEndpointPairAsync(self: *@This(), deviceAddress: *XboxLiveDeviceAddress) core.HResult!*IAsyncOperation(XboxLiveEndpointPairCreationResult) {
        const this: *IXboxLiveEndpointPairTemplate = @ptrCast(self);
        return try this.CreateEndpointPairAsync(deviceAddress);
    }
    pub fn CreateEndpointPairAsyncWithBehaviors(self: *@This(), deviceAddress: *XboxLiveDeviceAddress, behaviors: XboxLiveEndpointPairCreationBehaviors) core.HResult!*IAsyncOperation(XboxLiveEndpointPairCreationResult) {
        const this: *IXboxLiveEndpointPairTemplate = @ptrCast(self);
        return try this.CreateEndpointPairAsyncWithBehaviors(deviceAddress, behaviors);
    }
    pub fn CreateEndpointPairForPortsAsync(self: *@This(), deviceAddress: *XboxLiveDeviceAddress, initiatorPort: HSTRING, acceptorPort: HSTRING) core.HResult!*IAsyncOperation(XboxLiveEndpointPairCreationResult) {
        const this: *IXboxLiveEndpointPairTemplate = @ptrCast(self);
        return try this.CreateEndpointPairForPortsAsync(deviceAddress, initiatorPort, acceptorPort);
    }
    pub fn CreateEndpointPairForPortsAsyncWithInitiatorPortWithAcceptorPortWithBehaviors(self: *@This(), deviceAddress: *XboxLiveDeviceAddress, initiatorPort: HSTRING, acceptorPort: HSTRING, behaviors: XboxLiveEndpointPairCreationBehaviors) core.HResult!*IAsyncOperation(XboxLiveEndpointPairCreationResult) {
        const this: *IXboxLiveEndpointPairTemplate = @ptrCast(self);
        return try this.CreateEndpointPairForPortsAsyncWithInitiatorPortWithAcceptorPortWithBehaviors(deviceAddress, initiatorPort, acceptorPort, behaviors);
    }
    pub fn getName(self: *@This()) core.HResult!HSTRING {
        const this: *IXboxLiveEndpointPairTemplate = @ptrCast(self);
        return try this.getName();
    }
    pub fn getSocketKind(self: *@This()) core.HResult!XboxLiveSocketKind {
        const this: *IXboxLiveEndpointPairTemplate = @ptrCast(self);
        return try this.getSocketKind();
    }
    pub fn getInitiatorBoundPortRangeLower(self: *@This()) core.HResult!u16 {
        const this: *IXboxLiveEndpointPairTemplate = @ptrCast(self);
        return try this.getInitiatorBoundPortRangeLower();
    }
    pub fn getInitiatorBoundPortRangeUpper(self: *@This()) core.HResult!u16 {
        const this: *IXboxLiveEndpointPairTemplate = @ptrCast(self);
        return try this.getInitiatorBoundPortRangeUpper();
    }
    pub fn getAcceptorBoundPortRangeLower(self: *@This()) core.HResult!u16 {
        const this: *IXboxLiveEndpointPairTemplate = @ptrCast(self);
        return try this.getAcceptorBoundPortRangeLower();
    }
    pub fn getAcceptorBoundPortRangeUpper(self: *@This()) core.HResult!u16 {
        const this: *IXboxLiveEndpointPairTemplate = @ptrCast(self);
        return try this.getAcceptorBoundPortRangeUpper();
    }
    pub fn getEndpointPairs(self: *@This()) core.HResult!*IVectorView(XboxLiveEndpointPair) {
        const this: *IXboxLiveEndpointPairTemplate = @ptrCast(self);
        return try this.getEndpointPairs();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn GetTemplateByName(name: HSTRING) core.HResult!*XboxLiveEndpointPairTemplate {
        const factory = @This().IXboxLiveEndpointPairTemplateStaticsCache.get();
        return try factory.GetTemplateByName(name);
    }
    pub fn getTemplates() core.HResult!*IVectorView(XboxLiveEndpointPairTemplate) {
        const factory = @This().IXboxLiveEndpointPairTemplateStaticsCache.get();
        return try factory.getTemplates();
    }
    pub const NAME: []const u8 = "Windows.Networking.XboxLive.XboxLiveEndpointPairTemplate";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IXboxLiveEndpointPairTemplate.GUID;
    pub const IID: Guid = IXboxLiveEndpointPairTemplate.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IXboxLiveEndpointPairTemplate.SIGNATURE);
    var _IXboxLiveEndpointPairTemplateStaticsCache: FactoryCache(IXboxLiveEndpointPairTemplateStatics, RUNTIME_NAME) = .{};
};
pub const XboxLiveInboundEndpointPairCreatedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getEndpointPair(self: *@This()) core.HResult!*XboxLiveEndpointPair {
        const this: *IXboxLiveInboundEndpointPairCreatedEventArgs = @ptrCast(self);
        return try this.getEndpointPair();
    }
    pub const NAME: []const u8 = "Windows.Networking.XboxLive.XboxLiveInboundEndpointPairCreatedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IXboxLiveInboundEndpointPairCreatedEventArgs.GUID;
    pub const IID: Guid = IXboxLiveInboundEndpointPairCreatedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IXboxLiveInboundEndpointPairCreatedEventArgs.SIGNATURE);
};
pub const XboxLiveNetworkAccessKind = enum(i32) {
    Open = 0,
    Moderate = 1,
    Strict = 2,
};
pub const XboxLiveQualityOfServiceMeasurement = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn MeasureAsync(self: *@This()) core.HResult!*IAsyncAction {
        const this: *IXboxLiveQualityOfServiceMeasurement = @ptrCast(self);
        return try this.MeasureAsync();
    }
    pub fn GetMetricResultsForDevice(self: *@This(), deviceAddress: *XboxLiveDeviceAddress) core.HResult!*IVectorView(XboxLiveQualityOfServiceMetricResult) {
        const this: *IXboxLiveQualityOfServiceMeasurement = @ptrCast(self);
        return try this.GetMetricResultsForDevice(deviceAddress);
    }
    pub fn GetMetricResultsForMetric(self: *@This(), metric: XboxLiveQualityOfServiceMetric) core.HResult!*IVectorView(XboxLiveQualityOfServiceMetricResult) {
        const this: *IXboxLiveQualityOfServiceMeasurement = @ptrCast(self);
        return try this.GetMetricResultsForMetric(metric);
    }
    pub fn GetMetricResult(self: *@This(), deviceAddress: *XboxLiveDeviceAddress, metric: XboxLiveQualityOfServiceMetric) core.HResult!*XboxLiveQualityOfServiceMetricResult {
        const this: *IXboxLiveQualityOfServiceMeasurement = @ptrCast(self);
        return try this.GetMetricResult(deviceAddress, metric);
    }
    pub fn GetPrivatePayloadResult(self: *@This(), deviceAddress: *XboxLiveDeviceAddress) core.HResult!*XboxLiveQualityOfServicePrivatePayloadResult {
        const this: *IXboxLiveQualityOfServiceMeasurement = @ptrCast(self);
        return try this.GetPrivatePayloadResult(deviceAddress);
    }
    pub fn getMetrics(self: *@This()) core.HResult!*IVector(XboxLiveQualityOfServiceMetric) {
        const this: *IXboxLiveQualityOfServiceMeasurement = @ptrCast(self);
        return try this.getMetrics();
    }
    pub fn getDeviceAddresses(self: *@This()) core.HResult!*IVector(XboxLiveDeviceAddress) {
        const this: *IXboxLiveQualityOfServiceMeasurement = @ptrCast(self);
        return try this.getDeviceAddresses();
    }
    pub fn getShouldRequestPrivatePayloads(self: *@This()) core.HResult!bool {
        const this: *IXboxLiveQualityOfServiceMeasurement = @ptrCast(self);
        return try this.getShouldRequestPrivatePayloads();
    }
    pub fn putShouldRequestPrivatePayloads(self: *@This(), value: bool) core.HResult!void {
        const this: *IXboxLiveQualityOfServiceMeasurement = @ptrCast(self);
        return try this.putShouldRequestPrivatePayloads(value);
    }
    pub fn getTimeoutInMilliseconds(self: *@This()) core.HResult!u32 {
        const this: *IXboxLiveQualityOfServiceMeasurement = @ptrCast(self);
        return try this.getTimeoutInMilliseconds();
    }
    pub fn putTimeoutInMilliseconds(self: *@This(), value: u32) core.HResult!void {
        const this: *IXboxLiveQualityOfServiceMeasurement = @ptrCast(self);
        return try this.putTimeoutInMilliseconds(value);
    }
    pub fn getNumberOfProbesToAttempt(self: *@This()) core.HResult!u32 {
        const this: *IXboxLiveQualityOfServiceMeasurement = @ptrCast(self);
        return try this.getNumberOfProbesToAttempt();
    }
    pub fn putNumberOfProbesToAttempt(self: *@This(), value: u32) core.HResult!void {
        const this: *IXboxLiveQualityOfServiceMeasurement = @ptrCast(self);
        return try this.putNumberOfProbesToAttempt(value);
    }
    pub fn getNumberOfResultsPending(self: *@This()) core.HResult!u32 {
        const this: *IXboxLiveQualityOfServiceMeasurement = @ptrCast(self);
        return try this.getNumberOfResultsPending();
    }
    pub fn getMetricResults(self: *@This()) core.HResult!*IVectorView(XboxLiveQualityOfServiceMetricResult) {
        const this: *IXboxLiveQualityOfServiceMeasurement = @ptrCast(self);
        return try this.getMetricResults();
    }
    pub fn getPrivatePayloadResults(self: *@This()) core.HResult!*IVectorView(XboxLiveQualityOfServicePrivatePayloadResult) {
        const this: *IXboxLiveQualityOfServiceMeasurement = @ptrCast(self);
        return try this.getPrivatePayloadResults();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IXboxLiveQualityOfServiceMeasurement.IID)));
    }
    pub fn PublishPrivatePayloadBytes(payload: [*]u8) core.HResult!void {
        const factory = @This().IXboxLiveQualityOfServiceMeasurementStaticsCache.get();
        return try factory.PublishPrivatePayloadBytes(payload);
    }
    pub fn ClearPrivatePayload() core.HResult!void {
        const factory = @This().IXboxLiveQualityOfServiceMeasurementStaticsCache.get();
        return try factory.ClearPrivatePayload();
    }
    pub fn getMaxSimultaneousProbeConnections() core.HResult!u32 {
        const factory = @This().IXboxLiveQualityOfServiceMeasurementStaticsCache.get();
        return try factory.getMaxSimultaneousProbeConnections();
    }
    pub fn putMaxSimultaneousProbeConnections(value: u32) core.HResult!void {
        const factory = @This().IXboxLiveQualityOfServiceMeasurementStaticsCache.get();
        return try factory.putMaxSimultaneousProbeConnections(value);
    }
    pub fn getIsSystemOutboundBandwidthConstrained() core.HResult!bool {
        const factory = @This().IXboxLiveQualityOfServiceMeasurementStaticsCache.get();
        return try factory.getIsSystemOutboundBandwidthConstrained();
    }
    pub fn putIsSystemOutboundBandwidthConstrained(value: bool) core.HResult!void {
        const factory = @This().IXboxLiveQualityOfServiceMeasurementStaticsCache.get();
        return try factory.putIsSystemOutboundBandwidthConstrained(value);
    }
    pub fn getIsSystemInboundBandwidthConstrained() core.HResult!bool {
        const factory = @This().IXboxLiveQualityOfServiceMeasurementStaticsCache.get();
        return try factory.getIsSystemInboundBandwidthConstrained();
    }
    pub fn putIsSystemInboundBandwidthConstrained(value: bool) core.HResult!void {
        const factory = @This().IXboxLiveQualityOfServiceMeasurementStaticsCache.get();
        return try factory.putIsSystemInboundBandwidthConstrained(value);
    }
    pub fn getPublishedPrivatePayload() core.HResult!*IBuffer {
        const factory = @This().IXboxLiveQualityOfServiceMeasurementStaticsCache.get();
        return try factory.getPublishedPrivatePayload();
    }
    pub fn putPublishedPrivatePayload(value: *IBuffer) core.HResult!void {
        const factory = @This().IXboxLiveQualityOfServiceMeasurementStaticsCache.get();
        return try factory.putPublishedPrivatePayload(value);
    }
    pub fn getMaxPrivatePayloadSize() core.HResult!u32 {
        const factory = @This().IXboxLiveQualityOfServiceMeasurementStaticsCache.get();
        return try factory.getMaxPrivatePayloadSize();
    }
    pub const NAME: []const u8 = "Windows.Networking.XboxLive.XboxLiveQualityOfServiceMeasurement";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IXboxLiveQualityOfServiceMeasurement.GUID;
    pub const IID: Guid = IXboxLiveQualityOfServiceMeasurement.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IXboxLiveQualityOfServiceMeasurement.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _IXboxLiveQualityOfServiceMeasurementStaticsCache: FactoryCache(IXboxLiveQualityOfServiceMeasurementStatics, RUNTIME_NAME) = .{};
};
pub const XboxLiveQualityOfServiceMeasurementStatus = enum(i32) {
    NotStarted = 0,
    InProgress = 1,
    InProgressWithProvisionalResults = 2,
    Succeeded = 3,
    NoLocalNetworks = 4,
    NoCompatibleNetworkPaths = 5,
    LocalSystemNotAuthorized = 6,
    Canceled = 7,
    TimedOut = 8,
    RemoteSystemNotAuthorized = 9,
    RefusedDueToConfiguration = 10,
    UnexpectedInternalError = 11,
};
pub const XboxLiveQualityOfServiceMetric = enum(i32) {
    AverageLatencyInMilliseconds = 0,
    MinLatencyInMilliseconds = 1,
    MaxLatencyInMilliseconds = 2,
    AverageOutboundBitsPerSecond = 3,
    MinOutboundBitsPerSecond = 4,
    MaxOutboundBitsPerSecond = 5,
    AverageInboundBitsPerSecond = 6,
    MinInboundBitsPerSecond = 7,
    MaxInboundBitsPerSecond = 8,
};
pub const XboxLiveQualityOfServiceMetricResult = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getStatus(self: *@This()) core.HResult!XboxLiveQualityOfServiceMeasurementStatus {
        const this: *IXboxLiveQualityOfServiceMetricResult = @ptrCast(self);
        return try this.getStatus();
    }
    pub fn getDeviceAddress(self: *@This()) core.HResult!*XboxLiveDeviceAddress {
        const this: *IXboxLiveQualityOfServiceMetricResult = @ptrCast(self);
        return try this.getDeviceAddress();
    }
    pub fn getMetric(self: *@This()) core.HResult!XboxLiveQualityOfServiceMetric {
        const this: *IXboxLiveQualityOfServiceMetricResult = @ptrCast(self);
        return try this.getMetric();
    }
    pub fn getValue(self: *@This()) core.HResult!u64 {
        const this: *IXboxLiveQualityOfServiceMetricResult = @ptrCast(self);
        return try this.getValue();
    }
    pub const NAME: []const u8 = "Windows.Networking.XboxLive.XboxLiveQualityOfServiceMetricResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IXboxLiveQualityOfServiceMetricResult.GUID;
    pub const IID: Guid = IXboxLiveQualityOfServiceMetricResult.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IXboxLiveQualityOfServiceMetricResult.SIGNATURE);
};
pub const XboxLiveQualityOfServicePrivatePayloadResult = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getStatus(self: *@This()) core.HResult!XboxLiveQualityOfServiceMeasurementStatus {
        const this: *IXboxLiveQualityOfServicePrivatePayloadResult = @ptrCast(self);
        return try this.getStatus();
    }
    pub fn getDeviceAddress(self: *@This()) core.HResult!*XboxLiveDeviceAddress {
        const this: *IXboxLiveQualityOfServicePrivatePayloadResult = @ptrCast(self);
        return try this.getDeviceAddress();
    }
    pub fn getValue(self: *@This()) core.HResult!*IBuffer {
        const this: *IXboxLiveQualityOfServicePrivatePayloadResult = @ptrCast(self);
        return try this.getValue();
    }
    pub const NAME: []const u8 = "Windows.Networking.XboxLive.XboxLiveQualityOfServicePrivatePayloadResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IXboxLiveQualityOfServicePrivatePayloadResult.GUID;
    pub const IID: Guid = IXboxLiveQualityOfServicePrivatePayloadResult.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IXboxLiveQualityOfServicePrivatePayloadResult.SIGNATURE);
};
pub const XboxLiveSocketKind = enum(i32) {
    None = 0,
    Datagram = 1,
    Stream = 2,
};
const IUnknown = @import("../root.zig").IUnknown;
const IActivationFactory = @import("../Foundation.zig").IActivationFactory;
const Guid = @import("../root.zig").Guid;
const IVectorView = @import("../Foundation/Collections.zig").IVectorView;
const IInspectable = @import("../Foundation.zig").IInspectable;
const IVector = @import("../Foundation/Collections.zig").IVector;
const IBuffer = @import("../Storage/Streams.zig").IBuffer;
const HRESULT = @import("../root.zig").HRESULT;
const IAsyncOperation = @import("../Foundation.zig").IAsyncOperation;
const core = @import("../root.zig").core;
const FactoryCache = @import("../core.zig").FactoryCache;
const HostName = @import("../Networking.zig").HostName;
const EventRegistrationToken = @import("../Foundation.zig").EventRegistrationToken;
const TrustLevel = @import("../root.zig").TrustLevel;
const TypedEventHandler = @import("../Foundation.zig").TypedEventHandler;
const IAsyncAction = @import("../Foundation.zig").IAsyncAction;
const HSTRING = @import("../root.zig").HSTRING;
