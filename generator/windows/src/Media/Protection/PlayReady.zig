pub const INDClient = extern struct {
    vtable: *const VTable,
    pub fn addRegistrationCompleted(self: *@This(), handler: *TypedEventHandler(NDClient,INDRegistrationCompletedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_RegistrationCompleted(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeRegistrationCompleted(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_RegistrationCompleted(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addProximityDetectionCompleted(self: *@This(), handler: *TypedEventHandler(NDClient,INDProximityDetectionCompletedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_ProximityDetectionCompleted(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeProximityDetectionCompleted(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_ProximityDetectionCompleted(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addLicenseFetchCompleted(self: *@This(), handler: *TypedEventHandler(NDClient,INDLicenseFetchCompletedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_LicenseFetchCompleted(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeLicenseFetchCompleted(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_LicenseFetchCompleted(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addReRegistrationNeeded(self: *@This(), handler: *TypedEventHandler(NDClient,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_ReRegistrationNeeded(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeReRegistrationNeeded(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_ReRegistrationNeeded(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addClosedCaptionDataReceived(self: *@This(), handler: *TypedEventHandler(NDClient,INDClosedCaptionDataReceivedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_ClosedCaptionDataReceived(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeClosedCaptionDataReceived(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_ClosedCaptionDataReceived(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn StartAsync(self: *@This(), contentUrl: *Uri, startAsyncOptions: u32, registrationCustomData: *INDCustomData, licenseFetchDescriptor: *INDLicenseFetchDescriptor) core.HResult!*IAsyncOperation(INDStartResult) {
        var _r: *IAsyncOperation(INDStartResult) = undefined;
        const _c = self.vtable.StartAsync(@ptrCast(self), contentUrl, startAsyncOptions, registrationCustomData, licenseFetchDescriptor, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn LicenseFetchAsync(self: *@This(), licenseFetchDescriptor: *INDLicenseFetchDescriptor) core.HResult!*IAsyncOperation(INDLicenseFetchResult) {
        var _r: *IAsyncOperation(INDLicenseFetchResult) = undefined;
        const _c = self.vtable.LicenseFetchAsync(@ptrCast(self), licenseFetchDescriptor, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ReRegistrationAsync(self: *@This(), registrationCustomData: *INDCustomData) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.ReRegistrationAsync(@ptrCast(self), registrationCustomData, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn Close(self: *@This()) core.HResult!void {
        const _c = self.vtable.Close(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Media.Protection.PlayReady.INDClient";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3bd6781b-61b8-46e2-99a5-8abcb6b9f7d6";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        add_RegistrationCompleted: *const fn(self: *anyopaque, handler: *TypedEventHandler(NDClient,INDRegistrationCompletedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_RegistrationCompleted: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_ProximityDetectionCompleted: *const fn(self: *anyopaque, handler: *TypedEventHandler(NDClient,INDProximityDetectionCompletedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_ProximityDetectionCompleted: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_LicenseFetchCompleted: *const fn(self: *anyopaque, handler: *TypedEventHandler(NDClient,INDLicenseFetchCompletedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_LicenseFetchCompleted: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_ReRegistrationNeeded: *const fn(self: *anyopaque, handler: *TypedEventHandler(NDClient,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_ReRegistrationNeeded: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_ClosedCaptionDataReceived: *const fn(self: *anyopaque, handler: *TypedEventHandler(NDClient,INDClosedCaptionDataReceivedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_ClosedCaptionDataReceived: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        StartAsync: *const fn(self: *anyopaque, contentUrl: *Uri, startAsyncOptions: u32, registrationCustomData: *INDCustomData, licenseFetchDescriptor: *INDLicenseFetchDescriptor, _r: **IAsyncOperation(INDStartResult)) callconv(.winapi) HRESULT,
        LicenseFetchAsync: *const fn(self: *anyopaque, licenseFetchDescriptor: *INDLicenseFetchDescriptor, _r: **IAsyncOperation(INDLicenseFetchResult)) callconv(.winapi) HRESULT,
        ReRegistrationAsync: *const fn(self: *anyopaque, registrationCustomData: *INDCustomData, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        Close: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
    };
};
pub const INDClientFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstance(self: *@This(), downloadEngine: *INDDownloadEngine, streamParser: *INDStreamParser, pMessenger: *INDMessenger) core.HResult!*NDClient {
        var _r: *NDClient = undefined;
        const _c = self.vtable.CreateInstance(@ptrCast(self), downloadEngine, streamParser, pMessenger, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Protection.PlayReady.INDClientFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3e53dd62-fee8-451f-b0d4-f706cca3e037";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstance: *const fn(self: *anyopaque, downloadEngine: *INDDownloadEngine, streamParser: *INDStreamParser, pMessenger: *INDMessenger, _r: **NDClient) callconv(.winapi) HRESULT,
    };
};
pub const INDClosedCaptionDataReceivedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getClosedCaptionDataFormat(self: *@This()) core.HResult!NDClosedCaptionFormat {
        var _r: NDClosedCaptionFormat = undefined;
        const _c = self.vtable.get_ClosedCaptionDataFormat(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPresentationTimestamp(self: *@This()) core.HResult!i64 {
        var _r: i64 = undefined;
        const _c = self.vtable.get_PresentationTimestamp(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getClosedCaptionData(self: *@This()) core.HResult![*]u8 {
        var _r: [*]u8 = undefined;
        const _c = self.vtable.get_ClosedCaptionData(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Protection.PlayReady.INDClosedCaptionDataReceivedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "4738d29f-c345-4649-8468-b8c5fc357190";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ClosedCaptionDataFormat: *const fn(self: *anyopaque, _r: *NDClosedCaptionFormat) callconv(.winapi) HRESULT,
        get_PresentationTimestamp: *const fn(self: *anyopaque, _r: *i64) callconv(.winapi) HRESULT,
        get_ClosedCaptionData: *const fn(self: *anyopaque, _r: *[*]u8) callconv(.winapi) HRESULT,
    };
};
pub const INDCustomData = extern struct {
    vtable: *const VTable,
    pub fn getCustomDataTypeID(self: *@This()) core.HResult![*]u8 {
        var _r: [*]u8 = undefined;
        const _c = self.vtable.get_CustomDataTypeID(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCustomData(self: *@This()) core.HResult![*]u8 {
        var _r: [*]u8 = undefined;
        const _c = self.vtable.get_CustomData(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Protection.PlayReady.INDCustomData";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f5cb0fdc-2d09-4f19-b5e1-76a0b3ee9267";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_CustomDataTypeID: *const fn(self: *anyopaque, _r: *[*]u8) callconv(.winapi) HRESULT,
        get_CustomData: *const fn(self: *anyopaque, _r: *[*]u8) callconv(.winapi) HRESULT,
    };
};
pub const INDCustomDataFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstance(self: *@This(), customDataTypeIDBytes: [*]u8, customDataBytes: [*]u8) core.HResult!*NDCustomData {
        var _r: *NDCustomData = undefined;
        const _c = self.vtable.CreateInstance(@ptrCast(self), customDataTypeIDBytes, customDataBytes, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Protection.PlayReady.INDCustomDataFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d65405ab-3424-4833-8c9a-af5fdeb22872";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstance: *const fn(self: *anyopaque, customDataTypeIDBytes: [*]u8, customDataBytes: [*]u8, _r: **NDCustomData) callconv(.winapi) HRESULT,
    };
};
pub const INDDownloadEngine = extern struct {
    vtable: *const VTable,
    pub fn Open(self: *@This(), uri: *Uri, sessionIDBytes: [*]u8) core.HResult!void {
        const _c = self.vtable.Open(@ptrCast(self), uri, sessionIDBytes);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn Pause(self: *@This()) core.HResult!void {
        const _c = self.vtable.Pause(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn Resume(self: *@This()) core.HResult!void {
        const _c = self.vtable.Resume(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn Close(self: *@This()) core.HResult!void {
        const _c = self.vtable.Close(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn Seek(self: *@This(), startPosition: TimeSpan) core.HResult!void {
        const _c = self.vtable.Seek(@ptrCast(self), startPosition);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getCanSeek(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_CanSeek(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getBufferFullMinThresholdInSamples(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_BufferFullMinThresholdInSamples(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getBufferFullMaxThresholdInSamples(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_BufferFullMaxThresholdInSamples(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getNotifier(self: *@This()) core.HResult!*NDDownloadEngineNotifier {
        var _r: *NDDownloadEngineNotifier = undefined;
        const _c = self.vtable.get_Notifier(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Protection.PlayReady.INDDownloadEngine";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2d223d65-c4b6-4438-8d46-b96e6d0fb21f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Open: *const fn(self: *anyopaque, uri: *Uri, sessionIDBytes: [*]u8) callconv(.winapi) HRESULT,
        Pause: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        Resume: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        Close: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        Seek: *const fn(self: *anyopaque, startPosition: TimeSpan) callconv(.winapi) HRESULT,
        get_CanSeek: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_BufferFullMinThresholdInSamples: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_BufferFullMaxThresholdInSamples: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_Notifier: *const fn(self: *anyopaque, _r: **NDDownloadEngineNotifier) callconv(.winapi) HRESULT,
    };
};
pub const INDDownloadEngineNotifier = extern struct {
    vtable: *const VTable,
    pub fn OnStreamOpened(self: *@This()) core.HResult!void {
        const _c = self.vtable.OnStreamOpened(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn OnPlayReadyObjectReceived(self: *@This(), dataBytes: [*]u8) core.HResult!void {
        const _c = self.vtable.OnPlayReadyObjectReceived(@ptrCast(self), dataBytes);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn OnContentIDReceived(self: *@This(), licenseFetchDescriptor: *INDLicenseFetchDescriptor) core.HResult!void {
        const _c = self.vtable.OnContentIDReceived(@ptrCast(self), licenseFetchDescriptor);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn OnDataReceived(self: *@This(), dataBytes: [*]u8, bytesReceived: u32) core.HResult!void {
        const _c = self.vtable.OnDataReceived(@ptrCast(self), dataBytes, bytesReceived);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn OnEndOfStream(self: *@This()) core.HResult!void {
        const _c = self.vtable.OnEndOfStream(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn OnNetworkError(self: *@This()) core.HResult!void {
        const _c = self.vtable.OnNetworkError(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Media.Protection.PlayReady.INDDownloadEngineNotifier";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d720b4d4-f4b8-4530-a809-9193a571e7fc";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        OnStreamOpened: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        OnPlayReadyObjectReceived: *const fn(self: *anyopaque, dataBytes: [*]u8) callconv(.winapi) HRESULT,
        OnContentIDReceived: *const fn(self: *anyopaque, licenseFetchDescriptor: *INDLicenseFetchDescriptor) callconv(.winapi) HRESULT,
        OnDataReceived: *const fn(self: *anyopaque, dataBytes: [*]u8, bytesReceived: u32) callconv(.winapi) HRESULT,
        OnEndOfStream: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        OnNetworkError: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
    };
};
pub const INDLicenseFetchCompletedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getResponseCustomData(self: *@This()) core.HResult!*INDCustomData {
        var _r: *INDCustomData = undefined;
        const _c = self.vtable.get_ResponseCustomData(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Protection.PlayReady.INDLicenseFetchCompletedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1ee30a1a-11b2-4558-8865-e3a516922517";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ResponseCustomData: *const fn(self: *anyopaque, _r: **INDCustomData) callconv(.winapi) HRESULT,
    };
};
pub const INDLicenseFetchDescriptor = extern struct {
    vtable: *const VTable,
    pub fn getContentIDType(self: *@This()) core.HResult!NDContentIDType {
        var _r: NDContentIDType = undefined;
        const _c = self.vtable.get_ContentIDType(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getContentID(self: *@This()) core.HResult![*]u8 {
        var _r: [*]u8 = undefined;
        const _c = self.vtable.get_ContentID(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getLicenseFetchChallengeCustomData(self: *@This()) core.HResult!*INDCustomData {
        var _r: *INDCustomData = undefined;
        const _c = self.vtable.get_LicenseFetchChallengeCustomData(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putLicenseFetchChallengeCustomData(self: *@This(), licenseFetchChallengeCustomData: *INDCustomData) core.HResult!void {
        const _c = self.vtable.put_LicenseFetchChallengeCustomData(@ptrCast(self), licenseFetchChallengeCustomData);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Media.Protection.PlayReady.INDLicenseFetchDescriptor";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5498d33a-e686-4935-a567-7ca77ad20fa4";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ContentIDType: *const fn(self: *anyopaque, _r: *NDContentIDType) callconv(.winapi) HRESULT,
        get_ContentID: *const fn(self: *anyopaque, _r: *[*]u8) callconv(.winapi) HRESULT,
        get_LicenseFetchChallengeCustomData: *const fn(self: *anyopaque, _r: **INDCustomData) callconv(.winapi) HRESULT,
        put_LicenseFetchChallengeCustomData: *const fn(self: *anyopaque, licenseFetchChallengeCustomData: *INDCustomData) callconv(.winapi) HRESULT,
    };
};
pub const INDLicenseFetchDescriptorFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstance(self: *@This(), contentIDType: NDContentIDType, contentIDBytes: [*]u8, licenseFetchChallengeCustomData: *INDCustomData) core.HResult!*NDLicenseFetchDescriptor {
        var _r: *NDLicenseFetchDescriptor = undefined;
        const _c = self.vtable.CreateInstance(@ptrCast(self), contentIDType, contentIDBytes, licenseFetchChallengeCustomData, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Protection.PlayReady.INDLicenseFetchDescriptorFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d0031202-cfac-4f00-ae6a-97af80b848f2";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstance: *const fn(self: *anyopaque, contentIDType: NDContentIDType, contentIDBytes: [*]u8, licenseFetchChallengeCustomData: *INDCustomData, _r: **NDLicenseFetchDescriptor) callconv(.winapi) HRESULT,
    };
};
pub const INDLicenseFetchResult = extern struct {
    vtable: *const VTable,
    pub fn getResponseCustomData(self: *@This()) core.HResult!*INDCustomData {
        var _r: *INDCustomData = undefined;
        const _c = self.vtable.get_ResponseCustomData(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Protection.PlayReady.INDLicenseFetchResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "21d39698-aa62-45ff-a5ff-8037e5433825";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ResponseCustomData: *const fn(self: *anyopaque, _r: **INDCustomData) callconv(.winapi) HRESULT,
    };
};
pub const INDMessenger = extern struct {
    vtable: *const VTable,
    pub fn SendRegistrationRequestAsync(self: *@This(), sessionIDBytes: [*]u8, challengeDataBytes: [*]u8) core.HResult!*IAsyncOperation(INDSendResult) {
        var _r: *IAsyncOperation(INDSendResult) = undefined;
        const _c = self.vtable.SendRegistrationRequestAsync(@ptrCast(self), sessionIDBytes, challengeDataBytes, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SendProximityDetectionStartAsync(self: *@This(), pdType: NDProximityDetectionType, transmitterChannelBytes: [*]u8, sessionIDBytes: [*]u8, challengeDataBytes: [*]u8) core.HResult!*IAsyncOperation(INDSendResult) {
        var _r: *IAsyncOperation(INDSendResult) = undefined;
        const _c = self.vtable.SendProximityDetectionStartAsync(@ptrCast(self), pdType, transmitterChannelBytes, sessionIDBytes, challengeDataBytes, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SendProximityDetectionResponseAsync(self: *@This(), pdType: NDProximityDetectionType, transmitterChannelBytes: [*]u8, sessionIDBytes: [*]u8, responseDataBytes: [*]u8) core.HResult!*IAsyncOperation(INDSendResult) {
        var _r: *IAsyncOperation(INDSendResult) = undefined;
        const _c = self.vtable.SendProximityDetectionResponseAsync(@ptrCast(self), pdType, transmitterChannelBytes, sessionIDBytes, responseDataBytes, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SendLicenseFetchRequestAsync(self: *@This(), sessionIDBytes: [*]u8, challengeDataBytes: [*]u8) core.HResult!*IAsyncOperation(INDSendResult) {
        var _r: *IAsyncOperation(INDSendResult) = undefined;
        const _c = self.vtable.SendLicenseFetchRequestAsync(@ptrCast(self), sessionIDBytes, challengeDataBytes, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Protection.PlayReady.INDMessenger";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d42df95d-a75b-47bf-8249-bc83820da38a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        SendRegistrationRequestAsync: *const fn(self: *anyopaque, sessionIDBytes: [*]u8, challengeDataBytes: [*]u8, _r: **IAsyncOperation(INDSendResult)) callconv(.winapi) HRESULT,
        SendProximityDetectionStartAsync: *const fn(self: *anyopaque, pdType: NDProximityDetectionType, transmitterChannelBytes: [*]u8, sessionIDBytes: [*]u8, challengeDataBytes: [*]u8, _r: **IAsyncOperation(INDSendResult)) callconv(.winapi) HRESULT,
        SendProximityDetectionResponseAsync: *const fn(self: *anyopaque, pdType: NDProximityDetectionType, transmitterChannelBytes: [*]u8, sessionIDBytes: [*]u8, responseDataBytes: [*]u8, _r: **IAsyncOperation(INDSendResult)) callconv(.winapi) HRESULT,
        SendLicenseFetchRequestAsync: *const fn(self: *anyopaque, sessionIDBytes: [*]u8, challengeDataBytes: [*]u8, _r: **IAsyncOperation(INDSendResult)) callconv(.winapi) HRESULT,
    };
};
pub const INDProximityDetectionCompletedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getProximityDetectionRetryCount(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_ProximityDetectionRetryCount(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Protection.PlayReady.INDProximityDetectionCompletedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2a706328-da25-4f8c-9eb7-5d0fc3658bca";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ProximityDetectionRetryCount: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
    };
};
pub const INDRegistrationCompletedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getResponseCustomData(self: *@This()) core.HResult!*INDCustomData {
        var _r: *INDCustomData = undefined;
        const _c = self.vtable.get_ResponseCustomData(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTransmitterProperties(self: *@This()) core.HResult!*INDTransmitterProperties {
        var _r: *INDTransmitterProperties = undefined;
        const _c = self.vtable.get_TransmitterProperties(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTransmitterCertificateAccepted(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_TransmitterCertificateAccepted(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putTransmitterCertificateAccepted(self: *@This(), accept: bool) core.HResult!void {
        const _c = self.vtable.put_TransmitterCertificateAccepted(@ptrCast(self), accept);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Media.Protection.PlayReady.INDRegistrationCompletedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "9e39b64d-ab5b-4905-acdc-787a77c6374d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ResponseCustomData: *const fn(self: *anyopaque, _r: **INDCustomData) callconv(.winapi) HRESULT,
        get_TransmitterProperties: *const fn(self: *anyopaque, _r: **INDTransmitterProperties) callconv(.winapi) HRESULT,
        get_TransmitterCertificateAccepted: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_TransmitterCertificateAccepted: *const fn(self: *anyopaque, accept: bool) callconv(.winapi) HRESULT,
    };
};
pub const INDSendResult = extern struct {
    vtable: *const VTable,
    pub fn getResponse(self: *@This()) core.HResult![*]u8 {
        var _r: [*]u8 = undefined;
        const _c = self.vtable.get_Response(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Protection.PlayReady.INDSendResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e3685517-a584-479d-90b7-d689c7bf7c80";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Response: *const fn(self: *anyopaque, _r: *[*]u8) callconv(.winapi) HRESULT,
    };
};
pub const INDStartResult = extern struct {
    vtable: *const VTable,
    pub fn getMediaStreamSource(self: *@This()) core.HResult!*MediaStreamSource {
        var _r: *MediaStreamSource = undefined;
        const _c = self.vtable.get_MediaStreamSource(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Protection.PlayReady.INDStartResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "79f6e96e-f50f-4015-8ba4-c2bc344ebd4e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_MediaStreamSource: *const fn(self: *anyopaque, _r: **MediaStreamSource) callconv(.winapi) HRESULT,
    };
};
pub const INDStorageFileHelper = extern struct {
    vtable: *const VTable,
    pub fn GetFileURLs(self: *@This(), file: *IStorageFile) core.HResult!*IVector(HSTRING) {
        var _r: *IVector(HSTRING) = undefined;
        const _c = self.vtable.GetFileURLs(@ptrCast(self), file, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Protection.PlayReady.INDStorageFileHelper";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d8f0bef8-91d2-4d47-a3f9-eaff4edb729f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetFileURLs: *const fn(self: *anyopaque, file: *IStorageFile, _r: **IVector(HSTRING)) callconv(.winapi) HRESULT,
    };
};
pub const INDStreamParser = extern struct {
    vtable: *const VTable,
    pub fn ParseData(self: *@This(), dataBytes: [*]u8) core.HResult!void {
        const _c = self.vtable.ParseData(@ptrCast(self), dataBytes);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn GetStreamInformation(self: *@This(), descriptor: *IMediaStreamDescriptor, streamType: NDMediaStreamType) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.GetStreamInformation(@ptrCast(self), descriptor, streamType, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn BeginOfStream(self: *@This()) core.HResult!void {
        const _c = self.vtable.BeginOfStream(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn EndOfStream(self: *@This()) core.HResult!void {
        const _c = self.vtable.EndOfStream(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getNotifier(self: *@This()) core.HResult!*NDStreamParserNotifier {
        var _r: *NDStreamParserNotifier = undefined;
        const _c = self.vtable.get_Notifier(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Protection.PlayReady.INDStreamParser";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e0baa198-9796-41c9-8695-59437e67e66a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        ParseData: *const fn(self: *anyopaque, dataBytes: [*]u8) callconv(.winapi) HRESULT,
        GetStreamInformation: *const fn(self: *anyopaque, descriptor: *IMediaStreamDescriptor, streamType: NDMediaStreamType, _r: *u32) callconv(.winapi) HRESULT,
        BeginOfStream: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        EndOfStream: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        get_Notifier: *const fn(self: *anyopaque, _r: **NDStreamParserNotifier) callconv(.winapi) HRESULT,
    };
};
pub const INDStreamParserNotifier = extern struct {
    vtable: *const VTable,
    pub fn OnContentIDReceived(self: *@This(), licenseFetchDescriptor: *INDLicenseFetchDescriptor) core.HResult!void {
        const _c = self.vtable.OnContentIDReceived(@ptrCast(self), licenseFetchDescriptor);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn OnMediaStreamDescriptorCreated(self: *@This(), audioStreamDescriptors: *IVector(AudioStreamDescriptor), videoStreamDescriptors: *IVector(VideoStreamDescriptor)) core.HResult!void {
        const _c = self.vtable.OnMediaStreamDescriptorCreated(@ptrCast(self), audioStreamDescriptors, videoStreamDescriptors);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn OnSampleParsed(self: *@This(), streamID: u32, streamType: NDMediaStreamType, streamSample: *MediaStreamSample, pts: i64, ccFormat: NDClosedCaptionFormat, ccDataBytes: [*]u8) core.HResult!void {
        const _c = self.vtable.OnSampleParsed(@ptrCast(self), streamID, streamType, streamSample, pts, ccFormat, ccDataBytes);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn OnBeginSetupDecryptor(self: *@This(), descriptor: *IMediaStreamDescriptor, keyID: *Guid, proBytes: [*]u8) core.HResult!void {
        const _c = self.vtable.OnBeginSetupDecryptor(@ptrCast(self), descriptor, keyID, proBytes);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Media.Protection.PlayReady.INDStreamParserNotifier";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c167acd0-2ce6-426c-ace5-5e9275fea715";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        OnContentIDReceived: *const fn(self: *anyopaque, licenseFetchDescriptor: *INDLicenseFetchDescriptor) callconv(.winapi) HRESULT,
        OnMediaStreamDescriptorCreated: *const fn(self: *anyopaque, audioStreamDescriptors: *IVector(AudioStreamDescriptor), videoStreamDescriptors: *IVector(VideoStreamDescriptor)) callconv(.winapi) HRESULT,
        OnSampleParsed: *const fn(self: *anyopaque, streamID: u32, streamType: NDMediaStreamType, streamSample: *MediaStreamSample, pts: i64, ccFormat: NDClosedCaptionFormat, ccDataBytes: [*]u8) callconv(.winapi) HRESULT,
        OnBeginSetupDecryptor: *const fn(self: *anyopaque, descriptor: *IMediaStreamDescriptor, keyID: *Guid, proBytes: [*]u8) callconv(.winapi) HRESULT,
    };
};
pub const INDTCPMessengerFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstance(self: *@This(), remoteHostName: HSTRING, remoteHostPort: u32) core.HResult!*NDTCPMessenger {
        var _r: *NDTCPMessenger = undefined;
        const _c = self.vtable.CreateInstance(@ptrCast(self), remoteHostName, remoteHostPort, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Protection.PlayReady.INDTCPMessengerFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7dd85cfe-1b99-4f68-8f82-8177f7cedf2b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstance: *const fn(self: *anyopaque, remoteHostName: HSTRING, remoteHostPort: u32, _r: **NDTCPMessenger) callconv(.winapi) HRESULT,
    };
};
pub const INDTransmitterProperties = extern struct {
    vtable: *const VTable,
    pub fn getCertificateType(self: *@This()) core.HResult!NDCertificateType {
        var _r: NDCertificateType = undefined;
        const _c = self.vtable.get_CertificateType(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPlatformIdentifier(self: *@This()) core.HResult!NDCertificatePlatformID {
        var _r: NDCertificatePlatformID = undefined;
        const _c = self.vtable.get_PlatformIdentifier(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSupportedFeatures(self: *@This()) core.HResult![*]NDCertificateFeature {
        var _r: [*]NDCertificateFeature = undefined;
        const _c = self.vtable.get_SupportedFeatures(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSecurityLevel(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_SecurityLevel(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSecurityVersion(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_SecurityVersion(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getExpirationDate(self: *@This()) core.HResult!DateTime {
        var _r: DateTime = undefined;
        const _c = self.vtable.get_ExpirationDate(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getClientID(self: *@This()) core.HResult![*]u8 {
        var _r: [*]u8 = undefined;
        const _c = self.vtable.get_ClientID(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getModelDigest(self: *@This()) core.HResult![*]u8 {
        var _r: [*]u8 = undefined;
        const _c = self.vtable.get_ModelDigest(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getModelManufacturerName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ModelManufacturerName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getModelName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ModelName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getModelNumber(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ModelNumber(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Protection.PlayReady.INDTransmitterProperties";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e536af23-ac4f-4adc-8c66-4ff7c2702dd6";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_CertificateType: *const fn(self: *anyopaque, _r: *NDCertificateType) callconv(.winapi) HRESULT,
        get_PlatformIdentifier: *const fn(self: *anyopaque, _r: *NDCertificatePlatformID) callconv(.winapi) HRESULT,
        get_SupportedFeatures: *const fn(self: *anyopaque, _r: *[*]NDCertificateFeature) callconv(.winapi) HRESULT,
        get_SecurityLevel: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_SecurityVersion: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_ExpirationDate: *const fn(self: *anyopaque, _r: *DateTime) callconv(.winapi) HRESULT,
        get_ClientID: *const fn(self: *anyopaque, _r: *[*]u8) callconv(.winapi) HRESULT,
        get_ModelDigest: *const fn(self: *anyopaque, _r: *[*]u8) callconv(.winapi) HRESULT,
        get_ModelManufacturerName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_ModelName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_ModelNumber: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IPlayReadyContentHeader = extern struct {
    vtable: *const VTable,
    pub fn getKeyId(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_KeyId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getKeyIdString(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_KeyIdString(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getLicenseAcquisitionUrl(self: *@This()) core.HResult!*Uri {
        var _r: *Uri = undefined;
        const _c = self.vtable.get_LicenseAcquisitionUrl(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getLicenseAcquisitionUserInterfaceUrl(self: *@This()) core.HResult!*Uri {
        var _r: *Uri = undefined;
        const _c = self.vtable.get_LicenseAcquisitionUserInterfaceUrl(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDomainServiceId(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_DomainServiceId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getEncryptionType(self: *@This()) core.HResult!PlayReadyEncryptionAlgorithm {
        var _r: PlayReadyEncryptionAlgorithm = undefined;
        const _c = self.vtable.get_EncryptionType(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCustomAttributes(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_CustomAttributes(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDecryptorSetup(self: *@This()) core.HResult!PlayReadyDecryptorSetup {
        var _r: PlayReadyDecryptorSetup = undefined;
        const _c = self.vtable.get_DecryptorSetup(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetSerializedHeader(self: *@This()) core.HResult![*]u8 {
        var _r: [*]u8 = undefined;
        const _c = self.vtable.GetSerializedHeader(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getHeaderWithEmbeddedUpdates(self: *@This()) core.HResult!*PlayReadyContentHeader {
        var _r: *PlayReadyContentHeader = undefined;
        const _c = self.vtable.get_HeaderWithEmbeddedUpdates(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Protection.PlayReady.IPlayReadyContentHeader";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "9a438a6a-7f4c-452e-88bd-0148c6387a2c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_KeyId: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
        get_KeyIdString: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_LicenseAcquisitionUrl: *const fn(self: *anyopaque, _r: **Uri) callconv(.winapi) HRESULT,
        get_LicenseAcquisitionUserInterfaceUrl: *const fn(self: *anyopaque, _r: **Uri) callconv(.winapi) HRESULT,
        get_DomainServiceId: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
        get_EncryptionType: *const fn(self: *anyopaque, _r: *PlayReadyEncryptionAlgorithm) callconv(.winapi) HRESULT,
        get_CustomAttributes: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_DecryptorSetup: *const fn(self: *anyopaque, _r: *PlayReadyDecryptorSetup) callconv(.winapi) HRESULT,
        GetSerializedHeader: *const fn(self: *anyopaque, _r: *[*]u8) callconv(.winapi) HRESULT,
        get_HeaderWithEmbeddedUpdates: *const fn(self: *anyopaque, _r: **PlayReadyContentHeader) callconv(.winapi) HRESULT,
    };
};
pub const IPlayReadyContentHeader2 = extern struct {
    vtable: *const VTable,
    pub fn getKeyIds(self: *@This()) core.HResult![*]Guid {
        var _r: [*]Guid = undefined;
        const _c = self.vtable.get_KeyIds(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getKeyIdStrings(self: *@This()) core.HResult![*]HSTRING {
        var _r: [*]HSTRING = undefined;
        const _c = self.vtable.get_KeyIdStrings(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Protection.PlayReady.IPlayReadyContentHeader2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "359c79f4-2180-498c-965b-e754d875eab2";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_KeyIds: *const fn(self: *anyopaque, _r: *[*]Guid) callconv(.winapi) HRESULT,
        get_KeyIdStrings: *const fn(self: *anyopaque, _r: *[*]HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IPlayReadyContentHeaderFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstanceFromWindowsMediaDrmHeader(self: *@This(), headerBytes: [*]u8, licenseAcquisitionUrl: *Uri, licenseAcquisitionUserInterfaceUrl: *Uri, customAttributes: HSTRING, domainServiceId: *Guid) core.HResult!*PlayReadyContentHeader {
        var _r: *PlayReadyContentHeader = undefined;
        const _c = self.vtable.CreateInstanceFromWindowsMediaDrmHeader(@ptrCast(self), headerBytes, licenseAcquisitionUrl, licenseAcquisitionUserInterfaceUrl, customAttributes, domainServiceId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateInstanceFromComponents(self: *@This(), contentKeyId: *Guid, contentKeyIdString: HSTRING, contentEncryptionAlgorithm: PlayReadyEncryptionAlgorithm, licenseAcquisitionUrl: *Uri, licenseAcquisitionUserInterfaceUrl: *Uri, customAttributes: HSTRING, domainServiceId: *Guid) core.HResult!*PlayReadyContentHeader {
        var _r: *PlayReadyContentHeader = undefined;
        const _c = self.vtable.CreateInstanceFromComponents(@ptrCast(self), contentKeyId, contentKeyIdString, contentEncryptionAlgorithm, licenseAcquisitionUrl, licenseAcquisitionUserInterfaceUrl, customAttributes, domainServiceId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateInstanceFromPlayReadyHeader(self: *@This(), headerBytes: [*]u8) core.HResult!*PlayReadyContentHeader {
        var _r: *PlayReadyContentHeader = undefined;
        const _c = self.vtable.CreateInstanceFromPlayReadyHeader(@ptrCast(self), headerBytes, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Protection.PlayReady.IPlayReadyContentHeaderFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "cb97c8ff-b758-4776-bf01-217a8b510b2c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstanceFromWindowsMediaDrmHeader: *const fn(self: *anyopaque, headerBytes: [*]u8, licenseAcquisitionUrl: *Uri, licenseAcquisitionUserInterfaceUrl: *Uri, customAttributes: HSTRING, domainServiceId: *Guid, _r: **PlayReadyContentHeader) callconv(.winapi) HRESULT,
        CreateInstanceFromComponents: *const fn(self: *anyopaque, contentKeyId: *Guid, contentKeyIdString: HSTRING, contentEncryptionAlgorithm: PlayReadyEncryptionAlgorithm, licenseAcquisitionUrl: *Uri, licenseAcquisitionUserInterfaceUrl: *Uri, customAttributes: HSTRING, domainServiceId: *Guid, _r: **PlayReadyContentHeader) callconv(.winapi) HRESULT,
        CreateInstanceFromPlayReadyHeader: *const fn(self: *anyopaque, headerBytes: [*]u8, _r: **PlayReadyContentHeader) callconv(.winapi) HRESULT,
    };
};
pub const IPlayReadyContentHeaderFactory2 = extern struct {
    vtable: *const VTable,
    pub fn CreateInstanceFromComponents2(self: *@This(), dwFlags: u32, contentKeyIds: [*]Guid, contentKeyIdStrings: [*]HSTRING, contentEncryptionAlgorithm: PlayReadyEncryptionAlgorithm, licenseAcquisitionUrl: *Uri, licenseAcquisitionUserInterfaceUrl: *Uri, customAttributes: HSTRING, domainServiceId: *Guid) core.HResult!*PlayReadyContentHeader {
        var _r: *PlayReadyContentHeader = undefined;
        const _c = self.vtable.CreateInstanceFromComponents2(@ptrCast(self), dwFlags, contentKeyIds, contentKeyIdStrings, contentEncryptionAlgorithm, licenseAcquisitionUrl, licenseAcquisitionUserInterfaceUrl, customAttributes, domainServiceId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Protection.PlayReady.IPlayReadyContentHeaderFactory2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d1239cf5-ae6d-4778-97fd-6e3a2eeadbeb";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstanceFromComponents2: *const fn(self: *anyopaque, dwFlags: u32, contentKeyIds: [*]Guid, contentKeyIdStrings: [*]HSTRING, contentEncryptionAlgorithm: PlayReadyEncryptionAlgorithm, licenseAcquisitionUrl: *Uri, licenseAcquisitionUserInterfaceUrl: *Uri, customAttributes: HSTRING, domainServiceId: *Guid, _r: **PlayReadyContentHeader) callconv(.winapi) HRESULT,
    };
};
pub const IPlayReadyContentResolver = extern struct {
    vtable: *const VTable,
    pub fn ServiceRequest(self: *@This(), contentHeader: *PlayReadyContentHeader) core.HResult!*IPlayReadyServiceRequest {
        var _r: *IPlayReadyServiceRequest = undefined;
        const _c = self.vtable.ServiceRequest(@ptrCast(self), contentHeader, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Protection.PlayReady.IPlayReadyContentResolver";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "fbfd2523-906d-4982-a6b8-6849565a7ce8";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        ServiceRequest: *const fn(self: *anyopaque, contentHeader: *PlayReadyContentHeader, _r: **IPlayReadyServiceRequest) callconv(.winapi) HRESULT,
    };
};
pub const IPlayReadyDomain = extern struct {
    vtable: *const VTable,
    pub fn getAccountId(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_AccountId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getServiceId(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_ServiceId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRevision(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_Revision(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getFriendlyName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_FriendlyName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDomainJoinUrl(self: *@This()) core.HResult!*Uri {
        var _r: *Uri = undefined;
        const _c = self.vtable.get_DomainJoinUrl(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Protection.PlayReady.IPlayReadyDomain";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "adcc93ac-97e6-43ef-95e4-d7868f3b16a9";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_AccountId: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
        get_ServiceId: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
        get_Revision: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_FriendlyName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_DomainJoinUrl: *const fn(self: *anyopaque, _r: **Uri) callconv(.winapi) HRESULT,
    };
};
pub const IPlayReadyDomainIterableFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstance(self: *@This(), domainAccountId: *Guid) core.HResult!*PlayReadyDomainIterable {
        var _r: *PlayReadyDomainIterable = undefined;
        const _c = self.vtable.CreateInstance(@ptrCast(self), domainAccountId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Protection.PlayReady.IPlayReadyDomainIterableFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "4df384ee-3121-4df3-a5e8-d0c24c0500fc";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstance: *const fn(self: *anyopaque, domainAccountId: *Guid, _r: **PlayReadyDomainIterable) callconv(.winapi) HRESULT,
    };
};
pub const IPlayReadyDomainJoinServiceRequest = extern struct {
    vtable: *const VTable,
    pub fn getDomainAccountId(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_DomainAccountId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDomainAccountId(self: *@This(), value: *Guid) core.HResult!void {
        const _c = self.vtable.put_DomainAccountId(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getDomainFriendlyName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DomainFriendlyName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDomainFriendlyName(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_DomainFriendlyName(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getDomainServiceId(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_DomainServiceId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDomainServiceId(self: *@This(), value: *Guid) core.HResult!void {
        const _c = self.vtable.put_DomainServiceId(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Media.Protection.PlayReady.IPlayReadyDomainJoinServiceRequest";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "171b4a5a-405f-4739-b040-67b9f0c38758";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_DomainAccountId: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
        put_DomainAccountId: *const fn(self: *anyopaque, value: *Guid) callconv(.winapi) HRESULT,
        get_DomainFriendlyName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_DomainFriendlyName: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_DomainServiceId: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
        put_DomainServiceId: *const fn(self: *anyopaque, value: *Guid) callconv(.winapi) HRESULT,
    };
};
pub const IPlayReadyDomainLeaveServiceRequest = extern struct {
    vtable: *const VTable,
    pub fn getDomainAccountId(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_DomainAccountId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDomainAccountId(self: *@This(), value: *Guid) core.HResult!void {
        const _c = self.vtable.put_DomainAccountId(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getDomainServiceId(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_DomainServiceId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDomainServiceId(self: *@This(), value: *Guid) core.HResult!void {
        const _c = self.vtable.put_DomainServiceId(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Media.Protection.PlayReady.IPlayReadyDomainLeaveServiceRequest";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "062d58be-97ad-4917-aa03-46d4c252d464";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_DomainAccountId: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
        put_DomainAccountId: *const fn(self: *anyopaque, value: *Guid) callconv(.winapi) HRESULT,
        get_DomainServiceId: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
        put_DomainServiceId: *const fn(self: *anyopaque, value: *Guid) callconv(.winapi) HRESULT,
    };
};
pub const IPlayReadyITADataGenerator = extern struct {
    vtable: *const VTable,
    pub fn GenerateData(self: *@This(), guidCPSystemId: *Guid, countOfStreams: u32, configuration: *IPropertySet, format: PlayReadyITADataFormat) core.HResult![*]u8 {
        var _r: [*]u8 = undefined;
        const _c = self.vtable.GenerateData(@ptrCast(self), guidCPSystemId, countOfStreams, configuration, format, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Protection.PlayReady.IPlayReadyITADataGenerator";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "24446b8e-10b9-4530-b25b-901a8029a9b2";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GenerateData: *const fn(self: *anyopaque, guidCPSystemId: *Guid, countOfStreams: u32, configuration: *IPropertySet, format: PlayReadyITADataFormat, _r: *[*]u8) callconv(.winapi) HRESULT,
    };
};
pub const IPlayReadyIndividualizationServiceRequest = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.Media.Protection.PlayReady.IPlayReadyIndividualizationServiceRequest";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "21f5a86b-008c-4611-ab2f-aaa6c69f0e24";
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
pub const IPlayReadyLicense = extern struct {
    vtable: *const VTable,
    pub fn getFullyEvaluated(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_FullyEvaluated(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getUsableForPlay(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_UsableForPlay(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getExpirationDate(self: *@This()) core.HResult!*IReference(DateTime) {
        var _r: *IReference(DateTime) = undefined;
        const _c = self.vtable.get_ExpirationDate(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getExpireAfterFirstPlay(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_ExpireAfterFirstPlay(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDomainAccountID(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_DomainAccountID(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getChainDepth(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_ChainDepth(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetKIDAtChainDepth(self: *@This(), chainDepth: u32) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.GetKIDAtChainDepth(@ptrCast(self), chainDepth, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Protection.PlayReady.IPlayReadyLicense";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ee474c4e-fa3c-414d-a9f2-3ffc1ef832d4";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_FullyEvaluated: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_UsableForPlay: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_ExpirationDate: *const fn(self: *anyopaque, _r: **IReference(DateTime)) callconv(.winapi) HRESULT,
        get_ExpireAfterFirstPlay: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_DomainAccountID: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
        get_ChainDepth: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        GetKIDAtChainDepth: *const fn(self: *anyopaque, chainDepth: u32, _r: **Guid) callconv(.winapi) HRESULT,
    };
};
pub const IPlayReadyLicense2 = extern struct {
    vtable: *const VTable,
    pub fn getSecureStopId(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_SecureStopId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSecurityLevel(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_SecurityLevel(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getInMemoryOnly(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_InMemoryOnly(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getExpiresInRealTime(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_ExpiresInRealTime(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Protection.PlayReady.IPlayReadyLicense2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "30f4e7a7-d8e3-48a0-bcda-ff9f40530436";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_SecureStopId: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
        get_SecurityLevel: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_InMemoryOnly: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_ExpiresInRealTime: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IPlayReadyLicenseAcquisitionServiceRequest = extern struct {
    vtable: *const VTable,
    pub fn getContentHeader(self: *@This()) core.HResult!*PlayReadyContentHeader {
        var _r: *PlayReadyContentHeader = undefined;
        const _c = self.vtable.get_ContentHeader(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putContentHeader(self: *@This(), value: *PlayReadyContentHeader) core.HResult!void {
        const _c = self.vtable.put_ContentHeader(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getDomainServiceId(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_DomainServiceId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDomainServiceId(self: *@This(), value: *Guid) core.HResult!void {
        const _c = self.vtable.put_DomainServiceId(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Media.Protection.PlayReady.IPlayReadyLicenseAcquisitionServiceRequest";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5d85ff45-3e9f-4f48-93e1-9530c8d58c3e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ContentHeader: *const fn(self: *anyopaque, _r: **PlayReadyContentHeader) callconv(.winapi) HRESULT,
        put_ContentHeader: *const fn(self: *anyopaque, value: *PlayReadyContentHeader) callconv(.winapi) HRESULT,
        get_DomainServiceId: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
        put_DomainServiceId: *const fn(self: *anyopaque, value: *Guid) callconv(.winapi) HRESULT,
    };
};
pub const IPlayReadyLicenseAcquisitionServiceRequest2 = extern struct {
    vtable: *const VTable,
    pub fn getSessionId(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_SessionId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Protection.PlayReady.IPlayReadyLicenseAcquisitionServiceRequest2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b7fa5eb5-fe0c-b225-bc60-5a9edd32ceb5";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_SessionId: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
    };
};
pub const IPlayReadyLicenseAcquisitionServiceRequest3 = extern struct {
    vtable: *const VTable,
    pub fn CreateLicenseIterable(self: *@This(), contentHeader: *PlayReadyContentHeader, fullyEvaluated: bool) core.HResult!*PlayReadyLicenseIterable {
        var _r: *PlayReadyLicenseIterable = undefined;
        const _c = self.vtable.CreateLicenseIterable(@ptrCast(self), contentHeader, fullyEvaluated, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Protection.PlayReady.IPlayReadyLicenseAcquisitionServiceRequest3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "394e5f4d-7f75-430d-b2e7-7f75f34b2d75";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateLicenseIterable: *const fn(self: *anyopaque, contentHeader: *PlayReadyContentHeader, fullyEvaluated: bool, _r: **PlayReadyLicenseIterable) callconv(.winapi) HRESULT,
    };
};
pub const IPlayReadyLicenseIterableFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstance(self: *@This(), contentHeader: *PlayReadyContentHeader, fullyEvaluated: bool) core.HResult!*PlayReadyLicenseIterable {
        var _r: *PlayReadyLicenseIterable = undefined;
        const _c = self.vtable.CreateInstance(@ptrCast(self), contentHeader, fullyEvaluated, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Protection.PlayReady.IPlayReadyLicenseIterableFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d4179f08-0837-4978-8e68-be4293c8d7a6";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstance: *const fn(self: *anyopaque, contentHeader: *PlayReadyContentHeader, fullyEvaluated: bool, _r: **PlayReadyLicenseIterable) callconv(.winapi) HRESULT,
    };
};
pub const IPlayReadyLicenseManagement = extern struct {
    vtable: *const VTable,
    pub fn DeleteLicenses(self: *@This(), contentHeader: *PlayReadyContentHeader) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.DeleteLicenses(@ptrCast(self), contentHeader, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Protection.PlayReady.IPlayReadyLicenseManagement";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "aaeb2141-0957-4405-b892-8bf3ec5dadd9";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        DeleteLicenses: *const fn(self: *anyopaque, contentHeader: *PlayReadyContentHeader, _r: **IAsyncAction) callconv(.winapi) HRESULT,
    };
};
pub const IPlayReadyLicenseSession = extern struct {
    vtable: *const VTable,
    pub fn CreateLAServiceRequest(self: *@This()) core.HResult!*IPlayReadyLicenseAcquisitionServiceRequest {
        var _r: *IPlayReadyLicenseAcquisitionServiceRequest = undefined;
        const _c = self.vtable.CreateLAServiceRequest(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ConfigureMediaProtectionManager(self: *@This(), mpm: *MediaProtectionManager) core.HResult!void {
        const _c = self.vtable.ConfigureMediaProtectionManager(@ptrCast(self), mpm);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Media.Protection.PlayReady.IPlayReadyLicenseSession";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a1723a39-87fa-4fdd-abbb-a9720e845259";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateLAServiceRequest: *const fn(self: *anyopaque, _r: **IPlayReadyLicenseAcquisitionServiceRequest) callconv(.winapi) HRESULT,
        ConfigureMediaProtectionManager: *const fn(self: *anyopaque, mpm: *MediaProtectionManager) callconv(.winapi) HRESULT,
    };
};
pub const IPlayReadyLicenseSession2 = extern struct {
    vtable: *const VTable,
    pub fn CreateLicenseIterable(self: *@This(), contentHeader: *PlayReadyContentHeader, fullyEvaluated: bool) core.HResult!*PlayReadyLicenseIterable {
        var _r: *PlayReadyLicenseIterable = undefined;
        const _c = self.vtable.CreateLicenseIterable(@ptrCast(self), contentHeader, fullyEvaluated, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Protection.PlayReady.IPlayReadyLicenseSession2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "4909be3a-3aed-4656-8ad7-ee0fd7799510";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateLicenseIterable: *const fn(self: *anyopaque, contentHeader: *PlayReadyContentHeader, fullyEvaluated: bool, _r: **PlayReadyLicenseIterable) callconv(.winapi) HRESULT,
    };
};
pub const IPlayReadyLicenseSessionFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstance(self: *@This(), configuration: *IPropertySet) core.HResult!*PlayReadyLicenseSession {
        var _r: *PlayReadyLicenseSession = undefined;
        const _c = self.vtable.CreateInstance(@ptrCast(self), configuration, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Protection.PlayReady.IPlayReadyLicenseSessionFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "62492699-6527-429e-98be-48d798ac2739";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstance: *const fn(self: *anyopaque, configuration: *IPropertySet, _r: **PlayReadyLicenseSession) callconv(.winapi) HRESULT,
    };
};
pub const IPlayReadyMeteringReportServiceRequest = extern struct {
    vtable: *const VTable,
    pub fn getMeteringCertificate(self: *@This()) core.HResult![*]u8 {
        var _r: [*]u8 = undefined;
        const _c = self.vtable.get_MeteringCertificate(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putMeteringCertificate(self: *@This(), meteringCertBytes: [*]u8) core.HResult!void {
        const _c = self.vtable.put_MeteringCertificate(@ptrCast(self), meteringCertBytes);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Media.Protection.PlayReady.IPlayReadyMeteringReportServiceRequest";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c12b231c-0ecd-4f11-a185-1e24a4a67fb7";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_MeteringCertificate: *const fn(self: *anyopaque, _r: *[*]u8) callconv(.winapi) HRESULT,
        put_MeteringCertificate: *const fn(self: *anyopaque, meteringCertBytes: [*]u8) callconv(.winapi) HRESULT,
    };
};
pub const IPlayReadyRevocationServiceRequest = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.Media.Protection.PlayReady.IPlayReadyRevocationServiceRequest";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "543d66ac-faf0-4560-84a5-0e4acec939e4";
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
pub const IPlayReadySecureStopIterableFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstance(self: *@This(), publisherCertBytes: [*]u8) core.HResult!*PlayReadySecureStopIterable {
        var _r: *PlayReadySecureStopIterable = undefined;
        const _c = self.vtable.CreateInstance(@ptrCast(self), publisherCertBytes, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Protection.PlayReady.IPlayReadySecureStopIterableFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5f1f0165-4214-4d9e-81eb-e89f9d294aee";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstance: *const fn(self: *anyopaque, publisherCertBytes: [*]u8, _r: **PlayReadySecureStopIterable) callconv(.winapi) HRESULT,
    };
};
pub const IPlayReadySecureStopServiceRequest = extern struct {
    vtable: *const VTable,
    pub fn getSessionID(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_SessionID(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getStartTime(self: *@This()) core.HResult!DateTime {
        var _r: DateTime = undefined;
        const _c = self.vtable.get_StartTime(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getUpdateTime(self: *@This()) core.HResult!DateTime {
        var _r: DateTime = undefined;
        const _c = self.vtable.get_UpdateTime(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getStopped(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_Stopped(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPublisherCertificate(self: *@This()) core.HResult![*]u8 {
        var _r: [*]u8 = undefined;
        const _c = self.vtable.get_PublisherCertificate(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Protection.PlayReady.IPlayReadySecureStopServiceRequest";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b5501ee5-01bf-4401-9677-05630a6a4cc8";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_SessionID: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
        get_StartTime: *const fn(self: *anyopaque, _r: *DateTime) callconv(.winapi) HRESULT,
        get_UpdateTime: *const fn(self: *anyopaque, _r: *DateTime) callconv(.winapi) HRESULT,
        get_Stopped: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_PublisherCertificate: *const fn(self: *anyopaque, _r: *[*]u8) callconv(.winapi) HRESULT,
    };
};
pub const IPlayReadySecureStopServiceRequestFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstance(self: *@This(), publisherCertBytes: [*]u8) core.HResult!*PlayReadySecureStopServiceRequest {
        var _r: *PlayReadySecureStopServiceRequest = undefined;
        const _c = self.vtable.CreateInstance(@ptrCast(self), publisherCertBytes, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateInstanceFromSessionID(self: *@This(), sessionID: *Guid, publisherCertBytes: [*]u8) core.HResult!*PlayReadySecureStopServiceRequest {
        var _r: *PlayReadySecureStopServiceRequest = undefined;
        const _c = self.vtable.CreateInstanceFromSessionID(@ptrCast(self), sessionID, publisherCertBytes, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Protection.PlayReady.IPlayReadySecureStopServiceRequestFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "0e448ac9-e67e-494e-9f49-6285438c76cf";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstance: *const fn(self: *anyopaque, publisherCertBytes: [*]u8, _r: **PlayReadySecureStopServiceRequest) callconv(.winapi) HRESULT,
        CreateInstanceFromSessionID: *const fn(self: *anyopaque, sessionID: *Guid, publisherCertBytes: [*]u8, _r: **PlayReadySecureStopServiceRequest) callconv(.winapi) HRESULT,
    };
};
pub const IPlayReadyServiceRequest = extern struct {
    vtable: *const VTable,
    pub fn getUri(self: *@This()) core.HResult!*Uri {
        var _r: *Uri = undefined;
        const _c = self.vtable.get_Uri(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putUri(self: *@This(), value: *Uri) core.HResult!void {
        const _c = self.vtable.put_Uri(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getResponseCustomData(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ResponseCustomData(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getChallengeCustomData(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ChallengeCustomData(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putChallengeCustomData(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_ChallengeCustomData(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn BeginServiceRequest(self: *@This()) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.BeginServiceRequest(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn NextServiceRequest(self: *@This()) core.HResult!*IPlayReadyServiceRequest {
        var _r: *IPlayReadyServiceRequest = undefined;
        const _c = self.vtable.NextServiceRequest(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GenerateManualEnablingChallenge(self: *@This()) core.HResult!*PlayReadySoapMessage {
        var _r: *PlayReadySoapMessage = undefined;
        const _c = self.vtable.GenerateManualEnablingChallenge(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ProcessManualEnablingResponse(self: *@This(), responseBytes: [*]u8) core.HResult!HResult {
        var _r: HResult = undefined;
        const _c = self.vtable.ProcessManualEnablingResponse(@ptrCast(self), responseBytes, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Protection.PlayReady.IPlayReadyServiceRequest";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "8bad2836-a703-45a6-a180-76f3565aa725";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Uri: *const fn(self: *anyopaque, _r: **Uri) callconv(.winapi) HRESULT,
        put_Uri: *const fn(self: *anyopaque, value: *Uri) callconv(.winapi) HRESULT,
        get_ResponseCustomData: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_ChallengeCustomData: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_ChallengeCustomData: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        BeginServiceRequest: *const fn(self: *anyopaque, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        NextServiceRequest: *const fn(self: *anyopaque, _r: **IPlayReadyServiceRequest) callconv(.winapi) HRESULT,
        GenerateManualEnablingChallenge: *const fn(self: *anyopaque, _r: **PlayReadySoapMessage) callconv(.winapi) HRESULT,
        ProcessManualEnablingResponse: *const fn(self: *anyopaque, responseBytes: [*]u8, _r: *HResult) callconv(.winapi) HRESULT,
    };
};
pub const IPlayReadySoapMessage = extern struct {
    vtable: *const VTable,
    pub fn GetMessageBody(self: *@This()) core.HResult![*]u8 {
        var _r: [*]u8 = undefined;
        const _c = self.vtable.GetMessageBody(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMessageHeaders(self: *@This()) core.HResult!*IPropertySet {
        var _r: *IPropertySet = undefined;
        const _c = self.vtable.get_MessageHeaders(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getUri(self: *@This()) core.HResult!*Uri {
        var _r: *Uri = undefined;
        const _c = self.vtable.get_Uri(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Protection.PlayReady.IPlayReadySoapMessage";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b659fcb5-ce41-41ba-8a0d-61df5fffa139";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetMessageBody: *const fn(self: *anyopaque, _r: *[*]u8) callconv(.winapi) HRESULT,
        get_MessageHeaders: *const fn(self: *anyopaque, _r: **IPropertySet) callconv(.winapi) HRESULT,
        get_Uri: *const fn(self: *anyopaque, _r: **Uri) callconv(.winapi) HRESULT,
    };
};
pub const IPlayReadyStatics = extern struct {
    vtable: *const VTable,
    pub fn getDomainJoinServiceRequestType(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_DomainJoinServiceRequestType(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDomainLeaveServiceRequestType(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_DomainLeaveServiceRequestType(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIndividualizationServiceRequestType(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_IndividualizationServiceRequestType(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getLicenseAcquirerServiceRequestType(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_LicenseAcquirerServiceRequestType(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMeteringReportServiceRequestType(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_MeteringReportServiceRequestType(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRevocationServiceRequestType(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_RevocationServiceRequestType(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMediaProtectionSystemId(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_MediaProtectionSystemId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPlayReadySecurityVersion(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_PlayReadySecurityVersion(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Protection.PlayReady.IPlayReadyStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5e69c00d-247c-469a-8f31-5c1a1571d9c6";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_DomainJoinServiceRequestType: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
        get_DomainLeaveServiceRequestType: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
        get_IndividualizationServiceRequestType: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
        get_LicenseAcquirerServiceRequestType: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
        get_MeteringReportServiceRequestType: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
        get_RevocationServiceRequestType: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
        get_MediaProtectionSystemId: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
        get_PlayReadySecurityVersion: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
    };
};
pub const IPlayReadyStatics2 = extern struct {
    vtable: *const VTable,
    pub fn getPlayReadyCertificateSecurityLevel(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_PlayReadyCertificateSecurityLevel(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Protection.PlayReady.IPlayReadyStatics2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1f8d6a92-5f9a-423e-9466-b33969af7a3d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_PlayReadyCertificateSecurityLevel: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
    };
};
pub const IPlayReadyStatics3 = extern struct {
    vtable: *const VTable,
    pub fn getSecureStopServiceRequestType(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_SecureStopServiceRequestType(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CheckSupportedHardware(self: *@This(), hwdrmFeature: PlayReadyHardwareDRMFeatures) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.CheckSupportedHardware(@ptrCast(self), hwdrmFeature, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Protection.PlayReady.IPlayReadyStatics3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3fa33f71-2dd3-4bed-ae49-f7148e63e710";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_SecureStopServiceRequestType: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
        CheckSupportedHardware: *const fn(self: *anyopaque, hwdrmFeature: PlayReadyHardwareDRMFeatures, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IPlayReadyStatics4 = extern struct {
    vtable: *const VTable,
    pub fn getInputTrustAuthorityToCreate(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_InputTrustAuthorityToCreate(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getProtectionSystemId(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_ProtectionSystemId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Protection.PlayReady.IPlayReadyStatics4";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "50a91300-d824-4231-9d5e-78ef8844c7d7";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_InputTrustAuthorityToCreate: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_ProtectionSystemId: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
    };
};
pub const IPlayReadyStatics5 = extern struct {
    vtable: *const VTable,
    pub fn getHardwareDRMDisabledAtTime(self: *@This()) core.HResult!*IReference(DateTime) {
        var _r: *IReference(DateTime) = undefined;
        const _c = self.vtable.get_HardwareDRMDisabledAtTime(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getHardwareDRMDisabledUntilTime(self: *@This()) core.HResult!*IReference(DateTime) {
        var _r: *IReference(DateTime) = undefined;
        const _c = self.vtable.get_HardwareDRMDisabledUntilTime(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ResetHardwareDRMDisabled(self: *@This()) core.HResult!void {
        const _c = self.vtable.ResetHardwareDRMDisabled(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Media.Protection.PlayReady.IPlayReadyStatics5";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "230a7075-dfa0-4f8e-a779-cefea9c6824b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_HardwareDRMDisabledAtTime: *const fn(self: *anyopaque, _r: **IReference(DateTime)) callconv(.winapi) HRESULT,
        get_HardwareDRMDisabledUntilTime: *const fn(self: *anyopaque, _r: **IReference(DateTime)) callconv(.winapi) HRESULT,
        ResetHardwareDRMDisabled: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
    };
};
pub const NDCertificateFeature = enum(i32) {
    Transmitter = 1,
    Receiver = 2,
    SharedCertificate = 3,
    SecureClock = 4,
    AntiRollBackClock = 5,
    CRLS = 9,
    PlayReady3Features = 13,
};
pub const NDCertificatePlatformID = enum(i32) {
    Windows = 0,
    OSX = 1,
    WindowsOnARM = 2,
    WindowsMobile7 = 5,
    iOSOnARM = 6,
    XBoxOnPPC = 7,
    WindowsPhone8OnARM = 8,
    WindowsPhone8OnX86 = 9,
    XboxOne = 10,
    AndroidOnARM = 11,
    WindowsPhone81OnARM = 12,
    WindowsPhone81OnX86 = 13,
};
pub const NDCertificateType = enum(i32) {
    Unknown = 0,
    PC = 1,
    Device = 2,
    Domain = 3,
    Issuer = 4,
    CrlSigner = 5,
    Service = 6,
    Silverlight = 7,
    Application = 8,
    Metering = 9,
    KeyFileSigner = 10,
    Server = 11,
    LicenseSigner = 12,
};
pub const NDClient = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn addRegistrationCompleted(self: *@This(), handler: *TypedEventHandler(NDClient,INDRegistrationCompletedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *INDClient = @ptrCast(self);
        return try this.addRegistrationCompleted(handler);
    }
    pub fn removeRegistrationCompleted(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *INDClient = @ptrCast(self);
        return try this.removeRegistrationCompleted(token);
    }
    pub fn addProximityDetectionCompleted(self: *@This(), handler: *TypedEventHandler(NDClient,INDProximityDetectionCompletedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *INDClient = @ptrCast(self);
        return try this.addProximityDetectionCompleted(handler);
    }
    pub fn removeProximityDetectionCompleted(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *INDClient = @ptrCast(self);
        return try this.removeProximityDetectionCompleted(token);
    }
    pub fn addLicenseFetchCompleted(self: *@This(), handler: *TypedEventHandler(NDClient,INDLicenseFetchCompletedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *INDClient = @ptrCast(self);
        return try this.addLicenseFetchCompleted(handler);
    }
    pub fn removeLicenseFetchCompleted(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *INDClient = @ptrCast(self);
        return try this.removeLicenseFetchCompleted(token);
    }
    pub fn addReRegistrationNeeded(self: *@This(), handler: *TypedEventHandler(NDClient,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *INDClient = @ptrCast(self);
        return try this.addReRegistrationNeeded(handler);
    }
    pub fn removeReRegistrationNeeded(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *INDClient = @ptrCast(self);
        return try this.removeReRegistrationNeeded(token);
    }
    pub fn addClosedCaptionDataReceived(self: *@This(), handler: *TypedEventHandler(NDClient,INDClosedCaptionDataReceivedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *INDClient = @ptrCast(self);
        return try this.addClosedCaptionDataReceived(handler);
    }
    pub fn removeClosedCaptionDataReceived(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *INDClient = @ptrCast(self);
        return try this.removeClosedCaptionDataReceived(token);
    }
    pub fn StartAsync(self: *@This(), contentUrl: *Uri, startAsyncOptions: u32, registrationCustomData: *INDCustomData, licenseFetchDescriptor: *INDLicenseFetchDescriptor) core.HResult!*IAsyncOperation(INDStartResult) {
        const this: *INDClient = @ptrCast(self);
        return try this.StartAsync(contentUrl, startAsyncOptions, registrationCustomData, licenseFetchDescriptor);
    }
    pub fn LicenseFetchAsync(self: *@This(), licenseFetchDescriptor: *INDLicenseFetchDescriptor) core.HResult!*IAsyncOperation(INDLicenseFetchResult) {
        const this: *INDClient = @ptrCast(self);
        return try this.LicenseFetchAsync(licenseFetchDescriptor);
    }
    pub fn ReRegistrationAsync(self: *@This(), registrationCustomData: *INDCustomData) core.HResult!*IAsyncAction {
        const this: *INDClient = @ptrCast(self);
        return try this.ReRegistrationAsync(registrationCustomData);
    }
    pub fn Close(self: *@This()) core.HResult!void {
        const this: *INDClient = @ptrCast(self);
        return try this.Close();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateInstance(downloadEngine: *INDDownloadEngine, streamParser: *INDStreamParser, pMessenger: *INDMessenger) core.HResult!*NDClient {
        const factory = @This().INDClientFactoryCache.get();
        return try factory.CreateInstance(downloadEngine, streamParser, pMessenger);
    }
    pub const NAME: []const u8 = "Windows.Media.Protection.PlayReady.NDClient";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = INDClient.GUID;
    pub const IID: Guid = INDClient.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, INDClient.SIGNATURE);
    var _INDClientFactoryCache: FactoryCache(INDClientFactory, RUNTIME_NAME) = .{};
};
pub const NDClosedCaptionFormat = enum(i32) {
    ATSC = 0,
    SCTE20 = 1,
    Unknown = 2,
};
pub const NDContentIDType = enum(i32) {
    KeyID = 1,
    PlayReadyObject = 2,
    Custom = 3,
};
pub const NDCustomData = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getCustomDataTypeID(self: *@This()) core.HResult![*]u8 {
        const this: *INDCustomData = @ptrCast(self);
        return try this.getCustomDataTypeID();
    }
    pub fn getCustomData(self: *@This()) core.HResult![*]u8 {
        const this: *INDCustomData = @ptrCast(self);
        return try this.getCustomData();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateInstance(customDataTypeIDBytes: [*]u8, customDataBytes: [*]u8) core.HResult!*NDCustomData {
        const factory = @This().INDCustomDataFactoryCache.get();
        return try factory.CreateInstance(customDataTypeIDBytes, customDataBytes);
    }
    pub const NAME: []const u8 = "Windows.Media.Protection.PlayReady.NDCustomData";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = INDCustomData.GUID;
    pub const IID: Guid = INDCustomData.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, INDCustomData.SIGNATURE);
    var _INDCustomDataFactoryCache: FactoryCache(INDCustomDataFactory, RUNTIME_NAME) = .{};
};
pub const NDDownloadEngineNotifier = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn OnStreamOpened(self: *@This()) core.HResult!void {
        const this: *INDDownloadEngineNotifier = @ptrCast(self);
        return try this.OnStreamOpened();
    }
    pub fn OnPlayReadyObjectReceived(self: *@This(), dataBytes: [*]u8) core.HResult!void {
        const this: *INDDownloadEngineNotifier = @ptrCast(self);
        return try this.OnPlayReadyObjectReceived(dataBytes);
    }
    pub fn OnContentIDReceived(self: *@This(), licenseFetchDescriptor: *INDLicenseFetchDescriptor) core.HResult!void {
        const this: *INDDownloadEngineNotifier = @ptrCast(self);
        return try this.OnContentIDReceived(licenseFetchDescriptor);
    }
    pub fn OnDataReceived(self: *@This(), dataBytes: [*]u8, bytesReceived: u32) core.HResult!void {
        const this: *INDDownloadEngineNotifier = @ptrCast(self);
        return try this.OnDataReceived(dataBytes, bytesReceived);
    }
    pub fn OnEndOfStream(self: *@This()) core.HResult!void {
        const this: *INDDownloadEngineNotifier = @ptrCast(self);
        return try this.OnEndOfStream();
    }
    pub fn OnNetworkError(self: *@This()) core.HResult!void {
        const this: *INDDownloadEngineNotifier = @ptrCast(self);
        return try this.OnNetworkError();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&INDDownloadEngineNotifier.IID)));
    }
    pub const NAME: []const u8 = "Windows.Media.Protection.PlayReady.NDDownloadEngineNotifier";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = INDDownloadEngineNotifier.GUID;
    pub const IID: Guid = INDDownloadEngineNotifier.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, INDDownloadEngineNotifier.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const NDLicenseFetchDescriptor = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getContentIDType(self: *@This()) core.HResult!NDContentIDType {
        const this: *INDLicenseFetchDescriptor = @ptrCast(self);
        return try this.getContentIDType();
    }
    pub fn getContentID(self: *@This()) core.HResult![*]u8 {
        const this: *INDLicenseFetchDescriptor = @ptrCast(self);
        return try this.getContentID();
    }
    pub fn getLicenseFetchChallengeCustomData(self: *@This()) core.HResult!*INDCustomData {
        const this: *INDLicenseFetchDescriptor = @ptrCast(self);
        return try this.getLicenseFetchChallengeCustomData();
    }
    pub fn putLicenseFetchChallengeCustomData(self: *@This(), licenseFetchChallengeCustomData: *INDCustomData) core.HResult!void {
        const this: *INDLicenseFetchDescriptor = @ptrCast(self);
        return try this.putLicenseFetchChallengeCustomData(licenseFetchChallengeCustomData);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateInstance(contentIDType: NDContentIDType, contentIDBytes: [*]u8, licenseFetchChallengeCustomData: *INDCustomData) core.HResult!*NDLicenseFetchDescriptor {
        const factory = @This().INDLicenseFetchDescriptorFactoryCache.get();
        return try factory.CreateInstance(contentIDType, contentIDBytes, licenseFetchChallengeCustomData);
    }
    pub const NAME: []const u8 = "Windows.Media.Protection.PlayReady.NDLicenseFetchDescriptor";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = INDLicenseFetchDescriptor.GUID;
    pub const IID: Guid = INDLicenseFetchDescriptor.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, INDLicenseFetchDescriptor.SIGNATURE);
    var _INDLicenseFetchDescriptorFactoryCache: FactoryCache(INDLicenseFetchDescriptorFactory, RUNTIME_NAME) = .{};
};
pub const NDMediaStreamType = enum(i32) {
    Audio = 1,
    Video = 2,
};
pub const NDProximityDetectionType = enum(i32) {
    UDP = 1,
    TCP = 2,
    TransportAgnostic = 4,
};
pub const NDStartAsyncOptions = enum(i32) {
    MutualAuthentication = 1,
    WaitForLicenseDescriptor = 2,
};
pub const NDStorageFileHelper = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn GetFileURLs(self: *@This(), file: *IStorageFile) core.HResult!*IVector(HSTRING) {
        const this: *INDStorageFileHelper = @ptrCast(self);
        return try this.GetFileURLs(file);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&INDStorageFileHelper.IID)));
    }
    pub const NAME: []const u8 = "Windows.Media.Protection.PlayReady.NDStorageFileHelper";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = INDStorageFileHelper.GUID;
    pub const IID: Guid = INDStorageFileHelper.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, INDStorageFileHelper.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const NDStreamParserNotifier = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn OnContentIDReceived(self: *@This(), licenseFetchDescriptor: *INDLicenseFetchDescriptor) core.HResult!void {
        const this: *INDStreamParserNotifier = @ptrCast(self);
        return try this.OnContentIDReceived(licenseFetchDescriptor);
    }
    pub fn OnMediaStreamDescriptorCreated(self: *@This(), audioStreamDescriptors: *IVector(AudioStreamDescriptor), videoStreamDescriptors: *IVector(VideoStreamDescriptor)) core.HResult!void {
        const this: *INDStreamParserNotifier = @ptrCast(self);
        return try this.OnMediaStreamDescriptorCreated(audioStreamDescriptors, videoStreamDescriptors);
    }
    pub fn OnSampleParsed(self: *@This(), streamID: u32, streamType: NDMediaStreamType, streamSample: *MediaStreamSample, pts: i64, ccFormat: NDClosedCaptionFormat, ccDataBytes: [*]u8) core.HResult!void {
        const this: *INDStreamParserNotifier = @ptrCast(self);
        return try this.OnSampleParsed(streamID, streamType, streamSample, pts, ccFormat, ccDataBytes);
    }
    pub fn OnBeginSetupDecryptor(self: *@This(), descriptor: *IMediaStreamDescriptor, keyID: *Guid, proBytes: [*]u8) core.HResult!void {
        const this: *INDStreamParserNotifier = @ptrCast(self);
        return try this.OnBeginSetupDecryptor(descriptor, keyID, proBytes);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&INDStreamParserNotifier.IID)));
    }
    pub const NAME: []const u8 = "Windows.Media.Protection.PlayReady.NDStreamParserNotifier";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = INDStreamParserNotifier.GUID;
    pub const IID: Guid = INDStreamParserNotifier.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, INDStreamParserNotifier.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const NDTCPMessenger = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn SendRegistrationRequestAsync(self: *@This(), sessionIDBytes: [*]u8, challengeDataBytes: [*]u8) core.HResult!*IAsyncOperation(INDSendResult) {
        const this: *INDMessenger = @ptrCast(self);
        return try this.SendRegistrationRequestAsync(sessionIDBytes, challengeDataBytes);
    }
    pub fn SendProximityDetectionStartAsync(self: *@This(), pdType: NDProximityDetectionType, transmitterChannelBytes: [*]u8, sessionIDBytes: [*]u8, challengeDataBytes: [*]u8) core.HResult!*IAsyncOperation(INDSendResult) {
        const this: *INDMessenger = @ptrCast(self);
        return try this.SendProximityDetectionStartAsync(pdType, transmitterChannelBytes, sessionIDBytes, challengeDataBytes);
    }
    pub fn SendProximityDetectionResponseAsync(self: *@This(), pdType: NDProximityDetectionType, transmitterChannelBytes: [*]u8, sessionIDBytes: [*]u8, responseDataBytes: [*]u8) core.HResult!*IAsyncOperation(INDSendResult) {
        const this: *INDMessenger = @ptrCast(self);
        return try this.SendProximityDetectionResponseAsync(pdType, transmitterChannelBytes, sessionIDBytes, responseDataBytes);
    }
    pub fn SendLicenseFetchRequestAsync(self: *@This(), sessionIDBytes: [*]u8, challengeDataBytes: [*]u8) core.HResult!*IAsyncOperation(INDSendResult) {
        const this: *INDMessenger = @ptrCast(self);
        return try this.SendLicenseFetchRequestAsync(sessionIDBytes, challengeDataBytes);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateInstance(remoteHostName: HSTRING, remoteHostPort: u32) core.HResult!*NDTCPMessenger {
        const factory = @This().INDTCPMessengerFactoryCache.get();
        return try factory.CreateInstance(remoteHostName, remoteHostPort);
    }
    pub const NAME: []const u8 = "Windows.Media.Protection.PlayReady.NDTCPMessenger";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = INDMessenger.GUID;
    pub const IID: Guid = INDMessenger.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, INDMessenger.SIGNATURE);
    var _INDTCPMessengerFactoryCache: FactoryCache(INDTCPMessengerFactory, RUNTIME_NAME) = .{};
};
pub const PlayReadyContentHeader = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getKeyId(self: *@This()) core.HResult!*Guid {
        const this: *IPlayReadyContentHeader = @ptrCast(self);
        return try this.getKeyId();
    }
    pub fn getKeyIdString(self: *@This()) core.HResult!HSTRING {
        const this: *IPlayReadyContentHeader = @ptrCast(self);
        return try this.getKeyIdString();
    }
    pub fn getLicenseAcquisitionUrl(self: *@This()) core.HResult!*Uri {
        const this: *IPlayReadyContentHeader = @ptrCast(self);
        return try this.getLicenseAcquisitionUrl();
    }
    pub fn getLicenseAcquisitionUserInterfaceUrl(self: *@This()) core.HResult!*Uri {
        const this: *IPlayReadyContentHeader = @ptrCast(self);
        return try this.getLicenseAcquisitionUserInterfaceUrl();
    }
    pub fn getDomainServiceId(self: *@This()) core.HResult!*Guid {
        const this: *IPlayReadyContentHeader = @ptrCast(self);
        return try this.getDomainServiceId();
    }
    pub fn getEncryptionType(self: *@This()) core.HResult!PlayReadyEncryptionAlgorithm {
        const this: *IPlayReadyContentHeader = @ptrCast(self);
        return try this.getEncryptionType();
    }
    pub fn getCustomAttributes(self: *@This()) core.HResult!HSTRING {
        const this: *IPlayReadyContentHeader = @ptrCast(self);
        return try this.getCustomAttributes();
    }
    pub fn getDecryptorSetup(self: *@This()) core.HResult!PlayReadyDecryptorSetup {
        const this: *IPlayReadyContentHeader = @ptrCast(self);
        return try this.getDecryptorSetup();
    }
    pub fn GetSerializedHeader(self: *@This()) core.HResult![*]u8 {
        const this: *IPlayReadyContentHeader = @ptrCast(self);
        return try this.GetSerializedHeader();
    }
    pub fn getHeaderWithEmbeddedUpdates(self: *@This()) core.HResult!*PlayReadyContentHeader {
        const this: *IPlayReadyContentHeader = @ptrCast(self);
        return try this.getHeaderWithEmbeddedUpdates();
    }
    pub fn getKeyIds(self: *@This()) core.HResult![*]Guid {
        var this: ?*IPlayReadyContentHeader2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPlayReadyContentHeader2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getKeyIds();
    }
    pub fn getKeyIdStrings(self: *@This()) core.HResult![*]HSTRING {
        var this: ?*IPlayReadyContentHeader2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPlayReadyContentHeader2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getKeyIdStrings();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateInstanceFromWindowsMediaDrmHeader(headerBytes: [*]u8, licenseAcquisitionUrl: *Uri, licenseAcquisitionUserInterfaceUrl: *Uri, customAttributes: HSTRING, domainServiceId: *Guid) core.HResult!*PlayReadyContentHeader {
        const factory = @This().IPlayReadyContentHeaderFactoryCache.get();
        return try factory.CreateInstanceFromWindowsMediaDrmHeader(headerBytes, licenseAcquisitionUrl, licenseAcquisitionUserInterfaceUrl, customAttributes, domainServiceId);
    }
    pub fn CreateInstanceFromComponents(contentKeyId: *Guid, contentKeyIdString: HSTRING, contentEncryptionAlgorithm: PlayReadyEncryptionAlgorithm, licenseAcquisitionUrl: *Uri, licenseAcquisitionUserInterfaceUrl: *Uri, customAttributes: HSTRING, domainServiceId: *Guid) core.HResult!*PlayReadyContentHeader {
        const factory = @This().IPlayReadyContentHeaderFactoryCache.get();
        return try factory.CreateInstanceFromComponents(contentKeyId, contentKeyIdString, contentEncryptionAlgorithm, licenseAcquisitionUrl, licenseAcquisitionUserInterfaceUrl, customAttributes, domainServiceId);
    }
    pub fn CreateInstanceFromPlayReadyHeader(headerBytes: [*]u8) core.HResult!*PlayReadyContentHeader {
        const factory = @This().IPlayReadyContentHeaderFactoryCache.get();
        return try factory.CreateInstanceFromPlayReadyHeader(headerBytes);
    }
    pub fn CreateInstanceFromComponents2(dwFlags: u32, contentKeyIds: [*]Guid, contentKeyIdStrings: [*]HSTRING, contentEncryptionAlgorithm: PlayReadyEncryptionAlgorithm, licenseAcquisitionUrl: *Uri, licenseAcquisitionUserInterfaceUrl: *Uri, customAttributes: HSTRING, domainServiceId: *Guid) core.HResult!*PlayReadyContentHeader {
        const factory = @This().IPlayReadyContentHeaderFactory2Cache.get();
        return try factory.CreateInstanceFromComponents2(dwFlags, contentKeyIds, contentKeyIdStrings, contentEncryptionAlgorithm, licenseAcquisitionUrl, licenseAcquisitionUserInterfaceUrl, customAttributes, domainServiceId);
    }
    pub const NAME: []const u8 = "Windows.Media.Protection.PlayReady.PlayReadyContentHeader";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPlayReadyContentHeader.GUID;
    pub const IID: Guid = IPlayReadyContentHeader.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPlayReadyContentHeader.SIGNATURE);
    var _IPlayReadyContentHeaderFactoryCache: FactoryCache(IPlayReadyContentHeaderFactory, RUNTIME_NAME) = .{};
    var _IPlayReadyContentHeaderFactory2Cache: FactoryCache(IPlayReadyContentHeaderFactory2, RUNTIME_NAME) = .{};
};
pub const PlayReadyContentResolver = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn ServiceRequest(contentHeader: *PlayReadyContentHeader) core.HResult!*IPlayReadyServiceRequest {
        const factory = @This().IPlayReadyContentResolverCache.get();
        return try factory.ServiceRequest(contentHeader);
    }
    pub const NAME: []const u8 = "Windows.Media.Protection.PlayReady.PlayReadyContentResolver";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _IPlayReadyContentResolverCache: FactoryCache(IPlayReadyContentResolver, RUNTIME_NAME) = .{};
};
pub const PlayReadyDecryptorSetup = enum(i32) {
    Uninitialized = 0,
    OnDemand = 1,
};
pub const PlayReadyDomain = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getAccountId(self: *@This()) core.HResult!*Guid {
        const this: *IPlayReadyDomain = @ptrCast(self);
        return try this.getAccountId();
    }
    pub fn getServiceId(self: *@This()) core.HResult!*Guid {
        const this: *IPlayReadyDomain = @ptrCast(self);
        return try this.getServiceId();
    }
    pub fn getRevision(self: *@This()) core.HResult!u32 {
        const this: *IPlayReadyDomain = @ptrCast(self);
        return try this.getRevision();
    }
    pub fn getFriendlyName(self: *@This()) core.HResult!HSTRING {
        const this: *IPlayReadyDomain = @ptrCast(self);
        return try this.getFriendlyName();
    }
    pub fn getDomainJoinUrl(self: *@This()) core.HResult!*Uri {
        const this: *IPlayReadyDomain = @ptrCast(self);
        return try this.getDomainJoinUrl();
    }
    pub const NAME: []const u8 = "Windows.Media.Protection.PlayReady.PlayReadyDomain";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPlayReadyDomain.GUID;
    pub const IID: Guid = IPlayReadyDomain.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPlayReadyDomain.SIGNATURE);
};
pub const PlayReadyDomainIterable = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn First(self: *@This()) core.HResult!*IIterator(IPlayReadyDomain) {
        const this: *IIterable = @ptrCast(self);
        return try this.First();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateInstance(domainAccountId: *Guid) core.HResult!*PlayReadyDomainIterable {
        const factory = @This().IPlayReadyDomainIterableFactoryCache.get();
        return try factory.CreateInstance(domainAccountId);
    }
    pub const NAME: []const u8 = "Windows.Media.Protection.PlayReady.PlayReadyDomainIterable";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IIterable.GUID;
    pub const IID: Guid = IIterable.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IIterable.SIGNATURE);
    var _IPlayReadyDomainIterableFactoryCache: FactoryCache(IPlayReadyDomainIterableFactory, RUNTIME_NAME) = .{};
};
pub const PlayReadyDomainIterator = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getCurrent(self: *@This()) core.HResult!*IPlayReadyDomain {
        const this: *IIterator = @ptrCast(self);
        return try this.getCurrent();
    }
    pub fn getHasCurrent(self: *@This()) core.HResult!bool {
        const this: *IIterator = @ptrCast(self);
        return try this.getHasCurrent();
    }
    pub fn MoveNext(self: *@This()) core.HResult!bool {
        const this: *IIterator = @ptrCast(self);
        return try this.MoveNext();
    }
    pub fn GetMany(self: *@This(), items: [*]IPlayReadyDomain) core.HResult!u32 {
        const this: *IIterator = @ptrCast(self);
        return try this.GetMany(items);
    }
    pub const NAME: []const u8 = "Windows.Media.Protection.PlayReady.PlayReadyDomainIterator";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IIterator.GUID;
    pub const IID: Guid = IIterator.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IIterator.SIGNATURE);
};
pub const PlayReadyDomainJoinServiceRequest = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getDomainAccountId(self: *@This()) core.HResult!*Guid {
        const this: *IPlayReadyDomainJoinServiceRequest = @ptrCast(self);
        return try this.getDomainAccountId();
    }
    pub fn putDomainAccountId(self: *@This(), value: *Guid) core.HResult!void {
        const this: *IPlayReadyDomainJoinServiceRequest = @ptrCast(self);
        return try this.putDomainAccountId(value);
    }
    pub fn getDomainFriendlyName(self: *@This()) core.HResult!HSTRING {
        const this: *IPlayReadyDomainJoinServiceRequest = @ptrCast(self);
        return try this.getDomainFriendlyName();
    }
    pub fn putDomainFriendlyName(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IPlayReadyDomainJoinServiceRequest = @ptrCast(self);
        return try this.putDomainFriendlyName(value);
    }
    pub fn getDomainServiceId(self: *@This()) core.HResult!*Guid {
        const this: *IPlayReadyDomainJoinServiceRequest = @ptrCast(self);
        return try this.getDomainServiceId();
    }
    pub fn putDomainServiceId(self: *@This(), value: *Guid) core.HResult!void {
        const this: *IPlayReadyDomainJoinServiceRequest = @ptrCast(self);
        return try this.putDomainServiceId(value);
    }
    pub fn getUri(self: *@This()) core.HResult!*Uri {
        var this: ?*IPlayReadyServiceRequest = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPlayReadyServiceRequest.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getUri();
    }
    pub fn putUri(self: *@This(), value: *Uri) core.HResult!void {
        var this: ?*IPlayReadyServiceRequest = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPlayReadyServiceRequest.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putUri(value);
    }
    pub fn getResponseCustomData(self: *@This()) core.HResult!HSTRING {
        var this: ?*IPlayReadyServiceRequest = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPlayReadyServiceRequest.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getResponseCustomData();
    }
    pub fn getChallengeCustomData(self: *@This()) core.HResult!HSTRING {
        var this: ?*IPlayReadyServiceRequest = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPlayReadyServiceRequest.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getChallengeCustomData();
    }
    pub fn putChallengeCustomData(self: *@This(), value: HSTRING) core.HResult!void {
        var this: ?*IPlayReadyServiceRequest = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPlayReadyServiceRequest.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putChallengeCustomData(value);
    }
    pub fn BeginServiceRequest(self: *@This()) core.HResult!*IAsyncAction {
        var this: ?*IPlayReadyServiceRequest = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPlayReadyServiceRequest.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.BeginServiceRequest();
    }
    pub fn NextServiceRequest(self: *@This()) core.HResult!*IPlayReadyServiceRequest {
        var this: ?*IPlayReadyServiceRequest = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPlayReadyServiceRequest.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.NextServiceRequest();
    }
    pub fn GenerateManualEnablingChallenge(self: *@This()) core.HResult!*PlayReadySoapMessage {
        var this: ?*IPlayReadyServiceRequest = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPlayReadyServiceRequest.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GenerateManualEnablingChallenge();
    }
    pub fn ProcessManualEnablingResponse(self: *@This(), responseBytes: [*]u8) core.HResult!HResult {
        var this: ?*IPlayReadyServiceRequest = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPlayReadyServiceRequest.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ProcessManualEnablingResponse(responseBytes);
    }
    pub fn getProtectionSystem(self: *@This()) core.HResult!*Guid {
        var this: ?*IMediaProtectionServiceRequest = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaProtectionServiceRequest.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getProtectionSystem();
    }
    pub fn getType(self: *@This()) core.HResult!*Guid {
        var this: ?*IMediaProtectionServiceRequest = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaProtectionServiceRequest.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getType();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IPlayReadyDomainJoinServiceRequest.IID)));
    }
    pub const NAME: []const u8 = "Windows.Media.Protection.PlayReady.PlayReadyDomainJoinServiceRequest";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPlayReadyDomainJoinServiceRequest.GUID;
    pub const IID: Guid = IPlayReadyDomainJoinServiceRequest.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPlayReadyDomainJoinServiceRequest.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const PlayReadyDomainLeaveServiceRequest = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getDomainAccountId(self: *@This()) core.HResult!*Guid {
        const this: *IPlayReadyDomainLeaveServiceRequest = @ptrCast(self);
        return try this.getDomainAccountId();
    }
    pub fn putDomainAccountId(self: *@This(), value: *Guid) core.HResult!void {
        const this: *IPlayReadyDomainLeaveServiceRequest = @ptrCast(self);
        return try this.putDomainAccountId(value);
    }
    pub fn getDomainServiceId(self: *@This()) core.HResult!*Guid {
        const this: *IPlayReadyDomainLeaveServiceRequest = @ptrCast(self);
        return try this.getDomainServiceId();
    }
    pub fn putDomainServiceId(self: *@This(), value: *Guid) core.HResult!void {
        const this: *IPlayReadyDomainLeaveServiceRequest = @ptrCast(self);
        return try this.putDomainServiceId(value);
    }
    pub fn getUri(self: *@This()) core.HResult!*Uri {
        var this: ?*IPlayReadyServiceRequest = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPlayReadyServiceRequest.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getUri();
    }
    pub fn putUri(self: *@This(), value: *Uri) core.HResult!void {
        var this: ?*IPlayReadyServiceRequest = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPlayReadyServiceRequest.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putUri(value);
    }
    pub fn getResponseCustomData(self: *@This()) core.HResult!HSTRING {
        var this: ?*IPlayReadyServiceRequest = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPlayReadyServiceRequest.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getResponseCustomData();
    }
    pub fn getChallengeCustomData(self: *@This()) core.HResult!HSTRING {
        var this: ?*IPlayReadyServiceRequest = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPlayReadyServiceRequest.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getChallengeCustomData();
    }
    pub fn putChallengeCustomData(self: *@This(), value: HSTRING) core.HResult!void {
        var this: ?*IPlayReadyServiceRequest = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPlayReadyServiceRequest.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putChallengeCustomData(value);
    }
    pub fn BeginServiceRequest(self: *@This()) core.HResult!*IAsyncAction {
        var this: ?*IPlayReadyServiceRequest = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPlayReadyServiceRequest.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.BeginServiceRequest();
    }
    pub fn NextServiceRequest(self: *@This()) core.HResult!*IPlayReadyServiceRequest {
        var this: ?*IPlayReadyServiceRequest = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPlayReadyServiceRequest.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.NextServiceRequest();
    }
    pub fn GenerateManualEnablingChallenge(self: *@This()) core.HResult!*PlayReadySoapMessage {
        var this: ?*IPlayReadyServiceRequest = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPlayReadyServiceRequest.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GenerateManualEnablingChallenge();
    }
    pub fn ProcessManualEnablingResponse(self: *@This(), responseBytes: [*]u8) core.HResult!HResult {
        var this: ?*IPlayReadyServiceRequest = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPlayReadyServiceRequest.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ProcessManualEnablingResponse(responseBytes);
    }
    pub fn getProtectionSystem(self: *@This()) core.HResult!*Guid {
        var this: ?*IMediaProtectionServiceRequest = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaProtectionServiceRequest.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getProtectionSystem();
    }
    pub fn getType(self: *@This()) core.HResult!*Guid {
        var this: ?*IMediaProtectionServiceRequest = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaProtectionServiceRequest.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getType();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IPlayReadyDomainLeaveServiceRequest.IID)));
    }
    pub const NAME: []const u8 = "Windows.Media.Protection.PlayReady.PlayReadyDomainLeaveServiceRequest";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPlayReadyDomainLeaveServiceRequest.GUID;
    pub const IID: Guid = IPlayReadyDomainLeaveServiceRequest.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPlayReadyDomainLeaveServiceRequest.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const PlayReadyEncryptionAlgorithm = enum(i32) {
    Unprotected = 0,
    Aes128Ctr = 1,
    Cocktail = 4,
    Aes128Cbc = 5,
    Unspecified = 65535,
    Uninitialized = 2147483647,
};
pub const PlayReadyHardwareDRMFeatures = enum(i32) {
    HardwareDRM = 1,
    HEVC = 2,
    Aes128Cbc = 3,
};
pub const PlayReadyITADataFormat = enum(i32) {
    SerializedProperties = 0,
    SerializedProperties_WithContentProtectionWrapper = 1,
};
pub const PlayReadyITADataGenerator = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn GenerateData(self: *@This(), guidCPSystemId: *Guid, countOfStreams: u32, configuration: *IPropertySet, format: PlayReadyITADataFormat) core.HResult![*]u8 {
        const this: *IPlayReadyITADataGenerator = @ptrCast(self);
        return try this.GenerateData(guidCPSystemId, countOfStreams, configuration, format);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IPlayReadyITADataGenerator.IID)));
    }
    pub const NAME: []const u8 = "Windows.Media.Protection.PlayReady.PlayReadyITADataGenerator";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPlayReadyITADataGenerator.GUID;
    pub const IID: Guid = IPlayReadyITADataGenerator.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPlayReadyITADataGenerator.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const PlayReadyIndividualizationServiceRequest = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getUri(self: *@This()) core.HResult!*Uri {
        var this: ?*IPlayReadyServiceRequest = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPlayReadyServiceRequest.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getUri();
    }
    pub fn putUri(self: *@This(), value: *Uri) core.HResult!void {
        var this: ?*IPlayReadyServiceRequest = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPlayReadyServiceRequest.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putUri(value);
    }
    pub fn getResponseCustomData(self: *@This()) core.HResult!HSTRING {
        var this: ?*IPlayReadyServiceRequest = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPlayReadyServiceRequest.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getResponseCustomData();
    }
    pub fn getChallengeCustomData(self: *@This()) core.HResult!HSTRING {
        var this: ?*IPlayReadyServiceRequest = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPlayReadyServiceRequest.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getChallengeCustomData();
    }
    pub fn putChallengeCustomData(self: *@This(), value: HSTRING) core.HResult!void {
        var this: ?*IPlayReadyServiceRequest = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPlayReadyServiceRequest.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putChallengeCustomData(value);
    }
    pub fn BeginServiceRequest(self: *@This()) core.HResult!*IAsyncAction {
        var this: ?*IPlayReadyServiceRequest = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPlayReadyServiceRequest.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.BeginServiceRequest();
    }
    pub fn NextServiceRequest(self: *@This()) core.HResult!*IPlayReadyServiceRequest {
        var this: ?*IPlayReadyServiceRequest = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPlayReadyServiceRequest.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.NextServiceRequest();
    }
    pub fn GenerateManualEnablingChallenge(self: *@This()) core.HResult!*PlayReadySoapMessage {
        var this: ?*IPlayReadyServiceRequest = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPlayReadyServiceRequest.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GenerateManualEnablingChallenge();
    }
    pub fn ProcessManualEnablingResponse(self: *@This(), responseBytes: [*]u8) core.HResult!HResult {
        var this: ?*IPlayReadyServiceRequest = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPlayReadyServiceRequest.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ProcessManualEnablingResponse(responseBytes);
    }
    pub fn getProtectionSystem(self: *@This()) core.HResult!*Guid {
        var this: ?*IMediaProtectionServiceRequest = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaProtectionServiceRequest.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getProtectionSystem();
    }
    pub fn getType(self: *@This()) core.HResult!*Guid {
        var this: ?*IMediaProtectionServiceRequest = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaProtectionServiceRequest.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getType();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IPlayReadyIndividualizationServiceRequest.IID)));
    }
    pub const NAME: []const u8 = "Windows.Media.Protection.PlayReady.PlayReadyIndividualizationServiceRequest";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPlayReadyIndividualizationServiceRequest.GUID;
    pub const IID: Guid = IPlayReadyIndividualizationServiceRequest.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPlayReadyIndividualizationServiceRequest.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const PlayReadyLicense = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getFullyEvaluated(self: *@This()) core.HResult!bool {
        const this: *IPlayReadyLicense = @ptrCast(self);
        return try this.getFullyEvaluated();
    }
    pub fn getUsableForPlay(self: *@This()) core.HResult!bool {
        const this: *IPlayReadyLicense = @ptrCast(self);
        return try this.getUsableForPlay();
    }
    pub fn getExpirationDate(self: *@This()) core.HResult!*IReference(DateTime) {
        const this: *IPlayReadyLicense = @ptrCast(self);
        return try this.getExpirationDate();
    }
    pub fn getExpireAfterFirstPlay(self: *@This()) core.HResult!u32 {
        const this: *IPlayReadyLicense = @ptrCast(self);
        return try this.getExpireAfterFirstPlay();
    }
    pub fn getDomainAccountID(self: *@This()) core.HResult!*Guid {
        const this: *IPlayReadyLicense = @ptrCast(self);
        return try this.getDomainAccountID();
    }
    pub fn getChainDepth(self: *@This()) core.HResult!u32 {
        const this: *IPlayReadyLicense = @ptrCast(self);
        return try this.getChainDepth();
    }
    pub fn GetKIDAtChainDepth(self: *@This(), chainDepth: u32) core.HResult!*Guid {
        const this: *IPlayReadyLicense = @ptrCast(self);
        return try this.GetKIDAtChainDepth(chainDepth);
    }
    pub fn getSecureStopId(self: *@This()) core.HResult!*Guid {
        var this: ?*IPlayReadyLicense2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPlayReadyLicense2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSecureStopId();
    }
    pub fn getSecurityLevel(self: *@This()) core.HResult!u32 {
        var this: ?*IPlayReadyLicense2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPlayReadyLicense2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSecurityLevel();
    }
    pub fn getInMemoryOnly(self: *@This()) core.HResult!bool {
        var this: ?*IPlayReadyLicense2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPlayReadyLicense2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getInMemoryOnly();
    }
    pub fn getExpiresInRealTime(self: *@This()) core.HResult!bool {
        var this: ?*IPlayReadyLicense2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPlayReadyLicense2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getExpiresInRealTime();
    }
    pub const NAME: []const u8 = "Windows.Media.Protection.PlayReady.PlayReadyLicense";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPlayReadyLicense.GUID;
    pub const IID: Guid = IPlayReadyLicense.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPlayReadyLicense.SIGNATURE);
};
pub const PlayReadyLicenseAcquisitionServiceRequest = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getContentHeader(self: *@This()) core.HResult!*PlayReadyContentHeader {
        const this: *IPlayReadyLicenseAcquisitionServiceRequest = @ptrCast(self);
        return try this.getContentHeader();
    }
    pub fn putContentHeader(self: *@This(), value: *PlayReadyContentHeader) core.HResult!void {
        const this: *IPlayReadyLicenseAcquisitionServiceRequest = @ptrCast(self);
        return try this.putContentHeader(value);
    }
    pub fn getDomainServiceId(self: *@This()) core.HResult!*Guid {
        const this: *IPlayReadyLicenseAcquisitionServiceRequest = @ptrCast(self);
        return try this.getDomainServiceId();
    }
    pub fn putDomainServiceId(self: *@This(), value: *Guid) core.HResult!void {
        const this: *IPlayReadyLicenseAcquisitionServiceRequest = @ptrCast(self);
        return try this.putDomainServiceId(value);
    }
    pub fn getUri(self: *@This()) core.HResult!*Uri {
        var this: ?*IPlayReadyServiceRequest = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPlayReadyServiceRequest.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getUri();
    }
    pub fn putUri(self: *@This(), value: *Uri) core.HResult!void {
        var this: ?*IPlayReadyServiceRequest = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPlayReadyServiceRequest.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putUri(value);
    }
    pub fn getResponseCustomData(self: *@This()) core.HResult!HSTRING {
        var this: ?*IPlayReadyServiceRequest = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPlayReadyServiceRequest.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getResponseCustomData();
    }
    pub fn getChallengeCustomData(self: *@This()) core.HResult!HSTRING {
        var this: ?*IPlayReadyServiceRequest = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPlayReadyServiceRequest.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getChallengeCustomData();
    }
    pub fn putChallengeCustomData(self: *@This(), value: HSTRING) core.HResult!void {
        var this: ?*IPlayReadyServiceRequest = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPlayReadyServiceRequest.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putChallengeCustomData(value);
    }
    pub fn BeginServiceRequest(self: *@This()) core.HResult!*IAsyncAction {
        var this: ?*IPlayReadyServiceRequest = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPlayReadyServiceRequest.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.BeginServiceRequest();
    }
    pub fn NextServiceRequest(self: *@This()) core.HResult!*IPlayReadyServiceRequest {
        var this: ?*IPlayReadyServiceRequest = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPlayReadyServiceRequest.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.NextServiceRequest();
    }
    pub fn GenerateManualEnablingChallenge(self: *@This()) core.HResult!*PlayReadySoapMessage {
        var this: ?*IPlayReadyServiceRequest = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPlayReadyServiceRequest.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GenerateManualEnablingChallenge();
    }
    pub fn ProcessManualEnablingResponse(self: *@This(), responseBytes: [*]u8) core.HResult!HResult {
        var this: ?*IPlayReadyServiceRequest = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPlayReadyServiceRequest.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ProcessManualEnablingResponse(responseBytes);
    }
    pub fn getProtectionSystem(self: *@This()) core.HResult!*Guid {
        var this: ?*IMediaProtectionServiceRequest = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaProtectionServiceRequest.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getProtectionSystem();
    }
    pub fn getType(self: *@This()) core.HResult!*Guid {
        var this: ?*IMediaProtectionServiceRequest = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaProtectionServiceRequest.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getType();
    }
    pub fn getSessionId(self: *@This()) core.HResult!*Guid {
        var this: ?*IPlayReadyLicenseAcquisitionServiceRequest2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPlayReadyLicenseAcquisitionServiceRequest2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSessionId();
    }
    pub fn CreateLicenseIterable(self: *@This(), contentHeader: *PlayReadyContentHeader, fullyEvaluated: bool) core.HResult!*PlayReadyLicenseIterable {
        var this: ?*IPlayReadyLicenseAcquisitionServiceRequest3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPlayReadyLicenseAcquisitionServiceRequest3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.CreateLicenseIterable(contentHeader, fullyEvaluated);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IPlayReadyLicenseAcquisitionServiceRequest.IID)));
    }
    pub const NAME: []const u8 = "Windows.Media.Protection.PlayReady.PlayReadyLicenseAcquisitionServiceRequest";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPlayReadyLicenseAcquisitionServiceRequest.GUID;
    pub const IID: Guid = IPlayReadyLicenseAcquisitionServiceRequest.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPlayReadyLicenseAcquisitionServiceRequest.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const PlayReadyLicenseIterable = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn First(self: *@This()) core.HResult!*IIterator(IPlayReadyLicense) {
        const this: *IIterable = @ptrCast(self);
        return try this.First();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IIterable.IID)));
    }
    pub fn CreateInstance(contentHeader: *PlayReadyContentHeader, fullyEvaluated: bool) core.HResult!*PlayReadyLicenseIterable {
        const factory = @This().IPlayReadyLicenseIterableFactoryCache.get();
        return try factory.CreateInstance(contentHeader, fullyEvaluated);
    }
    pub const NAME: []const u8 = "Windows.Media.Protection.PlayReady.PlayReadyLicenseIterable";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IIterable.GUID;
    pub const IID: Guid = IIterable.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IIterable.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _IPlayReadyLicenseIterableFactoryCache: FactoryCache(IPlayReadyLicenseIterableFactory, RUNTIME_NAME) = .{};
};
pub const PlayReadyLicenseIterator = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getCurrent(self: *@This()) core.HResult!*IPlayReadyLicense {
        const this: *IIterator = @ptrCast(self);
        return try this.getCurrent();
    }
    pub fn getHasCurrent(self: *@This()) core.HResult!bool {
        const this: *IIterator = @ptrCast(self);
        return try this.getHasCurrent();
    }
    pub fn MoveNext(self: *@This()) core.HResult!bool {
        const this: *IIterator = @ptrCast(self);
        return try this.MoveNext();
    }
    pub fn GetMany(self: *@This(), items: [*]IPlayReadyLicense) core.HResult!u32 {
        const this: *IIterator = @ptrCast(self);
        return try this.GetMany(items);
    }
    pub const NAME: []const u8 = "Windows.Media.Protection.PlayReady.PlayReadyLicenseIterator";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IIterator.GUID;
    pub const IID: Guid = IIterator.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IIterator.SIGNATURE);
};
pub const PlayReadyLicenseManagement = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn DeleteLicenses(contentHeader: *PlayReadyContentHeader) core.HResult!*IAsyncAction {
        const factory = @This().IPlayReadyLicenseManagementCache.get();
        return try factory.DeleteLicenses(contentHeader);
    }
    pub const NAME: []const u8 = "Windows.Media.Protection.PlayReady.PlayReadyLicenseManagement";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _IPlayReadyLicenseManagementCache: FactoryCache(IPlayReadyLicenseManagement, RUNTIME_NAME) = .{};
};
pub const PlayReadyLicenseSession = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn CreateLAServiceRequest(self: *@This()) core.HResult!*IPlayReadyLicenseAcquisitionServiceRequest {
        const this: *IPlayReadyLicenseSession = @ptrCast(self);
        return try this.CreateLAServiceRequest();
    }
    pub fn ConfigureMediaProtectionManager(self: *@This(), mpm: *MediaProtectionManager) core.HResult!void {
        const this: *IPlayReadyLicenseSession = @ptrCast(self);
        return try this.ConfigureMediaProtectionManager(mpm);
    }
    pub fn CreateLicenseIterable(self: *@This(), contentHeader: *PlayReadyContentHeader, fullyEvaluated: bool) core.HResult!*PlayReadyLicenseIterable {
        var this: ?*IPlayReadyLicenseSession2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPlayReadyLicenseSession2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.CreateLicenseIterable(contentHeader, fullyEvaluated);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateInstance(configuration: *IPropertySet) core.HResult!*PlayReadyLicenseSession {
        const factory = @This().IPlayReadyLicenseSessionFactoryCache.get();
        return try factory.CreateInstance(configuration);
    }
    pub const NAME: []const u8 = "Windows.Media.Protection.PlayReady.PlayReadyLicenseSession";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPlayReadyLicenseSession.GUID;
    pub const IID: Guid = IPlayReadyLicenseSession.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPlayReadyLicenseSession.SIGNATURE);
    var _IPlayReadyLicenseSessionFactoryCache: FactoryCache(IPlayReadyLicenseSessionFactory, RUNTIME_NAME) = .{};
};
pub const PlayReadyMeteringReportServiceRequest = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getMeteringCertificate(self: *@This()) core.HResult![*]u8 {
        const this: *IPlayReadyMeteringReportServiceRequest = @ptrCast(self);
        return try this.getMeteringCertificate();
    }
    pub fn putMeteringCertificate(self: *@This(), meteringCertBytes: [*]u8) core.HResult!void {
        const this: *IPlayReadyMeteringReportServiceRequest = @ptrCast(self);
        return try this.putMeteringCertificate(meteringCertBytes);
    }
    pub fn getUri(self: *@This()) core.HResult!*Uri {
        var this: ?*IPlayReadyServiceRequest = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPlayReadyServiceRequest.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getUri();
    }
    pub fn putUri(self: *@This(), value: *Uri) core.HResult!void {
        var this: ?*IPlayReadyServiceRequest = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPlayReadyServiceRequest.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putUri(value);
    }
    pub fn getResponseCustomData(self: *@This()) core.HResult!HSTRING {
        var this: ?*IPlayReadyServiceRequest = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPlayReadyServiceRequest.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getResponseCustomData();
    }
    pub fn getChallengeCustomData(self: *@This()) core.HResult!HSTRING {
        var this: ?*IPlayReadyServiceRequest = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPlayReadyServiceRequest.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getChallengeCustomData();
    }
    pub fn putChallengeCustomData(self: *@This(), value: HSTRING) core.HResult!void {
        var this: ?*IPlayReadyServiceRequest = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPlayReadyServiceRequest.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putChallengeCustomData(value);
    }
    pub fn BeginServiceRequest(self: *@This()) core.HResult!*IAsyncAction {
        var this: ?*IPlayReadyServiceRequest = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPlayReadyServiceRequest.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.BeginServiceRequest();
    }
    pub fn NextServiceRequest(self: *@This()) core.HResult!*IPlayReadyServiceRequest {
        var this: ?*IPlayReadyServiceRequest = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPlayReadyServiceRequest.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.NextServiceRequest();
    }
    pub fn GenerateManualEnablingChallenge(self: *@This()) core.HResult!*PlayReadySoapMessage {
        var this: ?*IPlayReadyServiceRequest = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPlayReadyServiceRequest.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GenerateManualEnablingChallenge();
    }
    pub fn ProcessManualEnablingResponse(self: *@This(), responseBytes: [*]u8) core.HResult!HResult {
        var this: ?*IPlayReadyServiceRequest = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPlayReadyServiceRequest.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ProcessManualEnablingResponse(responseBytes);
    }
    pub fn getProtectionSystem(self: *@This()) core.HResult!*Guid {
        var this: ?*IMediaProtectionServiceRequest = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaProtectionServiceRequest.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getProtectionSystem();
    }
    pub fn getType(self: *@This()) core.HResult!*Guid {
        var this: ?*IMediaProtectionServiceRequest = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaProtectionServiceRequest.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getType();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IPlayReadyMeteringReportServiceRequest.IID)));
    }
    pub const NAME: []const u8 = "Windows.Media.Protection.PlayReady.PlayReadyMeteringReportServiceRequest";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPlayReadyMeteringReportServiceRequest.GUID;
    pub const IID: Guid = IPlayReadyMeteringReportServiceRequest.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPlayReadyMeteringReportServiceRequest.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const PlayReadyRevocationServiceRequest = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getUri(self: *@This()) core.HResult!*Uri {
        var this: ?*IPlayReadyServiceRequest = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPlayReadyServiceRequest.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getUri();
    }
    pub fn putUri(self: *@This(), value: *Uri) core.HResult!void {
        var this: ?*IPlayReadyServiceRequest = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPlayReadyServiceRequest.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putUri(value);
    }
    pub fn getResponseCustomData(self: *@This()) core.HResult!HSTRING {
        var this: ?*IPlayReadyServiceRequest = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPlayReadyServiceRequest.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getResponseCustomData();
    }
    pub fn getChallengeCustomData(self: *@This()) core.HResult!HSTRING {
        var this: ?*IPlayReadyServiceRequest = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPlayReadyServiceRequest.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getChallengeCustomData();
    }
    pub fn putChallengeCustomData(self: *@This(), value: HSTRING) core.HResult!void {
        var this: ?*IPlayReadyServiceRequest = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPlayReadyServiceRequest.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putChallengeCustomData(value);
    }
    pub fn BeginServiceRequest(self: *@This()) core.HResult!*IAsyncAction {
        var this: ?*IPlayReadyServiceRequest = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPlayReadyServiceRequest.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.BeginServiceRequest();
    }
    pub fn NextServiceRequest(self: *@This()) core.HResult!*IPlayReadyServiceRequest {
        var this: ?*IPlayReadyServiceRequest = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPlayReadyServiceRequest.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.NextServiceRequest();
    }
    pub fn GenerateManualEnablingChallenge(self: *@This()) core.HResult!*PlayReadySoapMessage {
        var this: ?*IPlayReadyServiceRequest = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPlayReadyServiceRequest.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GenerateManualEnablingChallenge();
    }
    pub fn ProcessManualEnablingResponse(self: *@This(), responseBytes: [*]u8) core.HResult!HResult {
        var this: ?*IPlayReadyServiceRequest = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPlayReadyServiceRequest.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ProcessManualEnablingResponse(responseBytes);
    }
    pub fn getProtectionSystem(self: *@This()) core.HResult!*Guid {
        var this: ?*IMediaProtectionServiceRequest = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaProtectionServiceRequest.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getProtectionSystem();
    }
    pub fn getType(self: *@This()) core.HResult!*Guid {
        var this: ?*IMediaProtectionServiceRequest = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaProtectionServiceRequest.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getType();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IPlayReadyRevocationServiceRequest.IID)));
    }
    pub const NAME: []const u8 = "Windows.Media.Protection.PlayReady.PlayReadyRevocationServiceRequest";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPlayReadyRevocationServiceRequest.GUID;
    pub const IID: Guid = IPlayReadyRevocationServiceRequest.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPlayReadyRevocationServiceRequest.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const PlayReadySecureStopIterable = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn First(self: *@This()) core.HResult!*IIterator(IPlayReadySecureStopServiceRequest) {
        const this: *IIterable = @ptrCast(self);
        return try this.First();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateInstance(publisherCertBytes: [*]u8) core.HResult!*PlayReadySecureStopIterable {
        const factory = @This().IPlayReadySecureStopIterableFactoryCache.get();
        return try factory.CreateInstance(publisherCertBytes);
    }
    pub const NAME: []const u8 = "Windows.Media.Protection.PlayReady.PlayReadySecureStopIterable";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IIterable.GUID;
    pub const IID: Guid = IIterable.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IIterable.SIGNATURE);
    var _IPlayReadySecureStopIterableFactoryCache: FactoryCache(IPlayReadySecureStopIterableFactory, RUNTIME_NAME) = .{};
};
pub const PlayReadySecureStopIterator = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getCurrent(self: *@This()) core.HResult!*IPlayReadySecureStopServiceRequest {
        const this: *IIterator = @ptrCast(self);
        return try this.getCurrent();
    }
    pub fn getHasCurrent(self: *@This()) core.HResult!bool {
        const this: *IIterator = @ptrCast(self);
        return try this.getHasCurrent();
    }
    pub fn MoveNext(self: *@This()) core.HResult!bool {
        const this: *IIterator = @ptrCast(self);
        return try this.MoveNext();
    }
    pub fn GetMany(self: *@This(), items: [*]IPlayReadySecureStopServiceRequest) core.HResult!u32 {
        const this: *IIterator = @ptrCast(self);
        return try this.GetMany(items);
    }
    pub const NAME: []const u8 = "Windows.Media.Protection.PlayReady.PlayReadySecureStopIterator";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IIterator.GUID;
    pub const IID: Guid = IIterator.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IIterator.SIGNATURE);
};
pub const PlayReadySecureStopServiceRequest = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getSessionID(self: *@This()) core.HResult!*Guid {
        const this: *IPlayReadySecureStopServiceRequest = @ptrCast(self);
        return try this.getSessionID();
    }
    pub fn getStartTime(self: *@This()) core.HResult!DateTime {
        const this: *IPlayReadySecureStopServiceRequest = @ptrCast(self);
        return try this.getStartTime();
    }
    pub fn getUpdateTime(self: *@This()) core.HResult!DateTime {
        const this: *IPlayReadySecureStopServiceRequest = @ptrCast(self);
        return try this.getUpdateTime();
    }
    pub fn getStopped(self: *@This()) core.HResult!bool {
        const this: *IPlayReadySecureStopServiceRequest = @ptrCast(self);
        return try this.getStopped();
    }
    pub fn getPublisherCertificate(self: *@This()) core.HResult![*]u8 {
        const this: *IPlayReadySecureStopServiceRequest = @ptrCast(self);
        return try this.getPublisherCertificate();
    }
    pub fn getUri(self: *@This()) core.HResult!*Uri {
        var this: ?*IPlayReadyServiceRequest = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPlayReadyServiceRequest.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getUri();
    }
    pub fn putUri(self: *@This(), value: *Uri) core.HResult!void {
        var this: ?*IPlayReadyServiceRequest = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPlayReadyServiceRequest.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putUri(value);
    }
    pub fn getResponseCustomData(self: *@This()) core.HResult!HSTRING {
        var this: ?*IPlayReadyServiceRequest = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPlayReadyServiceRequest.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getResponseCustomData();
    }
    pub fn getChallengeCustomData(self: *@This()) core.HResult!HSTRING {
        var this: ?*IPlayReadyServiceRequest = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPlayReadyServiceRequest.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getChallengeCustomData();
    }
    pub fn putChallengeCustomData(self: *@This(), value: HSTRING) core.HResult!void {
        var this: ?*IPlayReadyServiceRequest = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPlayReadyServiceRequest.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putChallengeCustomData(value);
    }
    pub fn BeginServiceRequest(self: *@This()) core.HResult!*IAsyncAction {
        var this: ?*IPlayReadyServiceRequest = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPlayReadyServiceRequest.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.BeginServiceRequest();
    }
    pub fn NextServiceRequest(self: *@This()) core.HResult!*IPlayReadyServiceRequest {
        var this: ?*IPlayReadyServiceRequest = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPlayReadyServiceRequest.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.NextServiceRequest();
    }
    pub fn GenerateManualEnablingChallenge(self: *@This()) core.HResult!*PlayReadySoapMessage {
        var this: ?*IPlayReadyServiceRequest = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPlayReadyServiceRequest.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GenerateManualEnablingChallenge();
    }
    pub fn ProcessManualEnablingResponse(self: *@This(), responseBytes: [*]u8) core.HResult!HResult {
        var this: ?*IPlayReadyServiceRequest = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPlayReadyServiceRequest.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ProcessManualEnablingResponse(responseBytes);
    }
    pub fn getProtectionSystem(self: *@This()) core.HResult!*Guid {
        var this: ?*IMediaProtectionServiceRequest = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaProtectionServiceRequest.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getProtectionSystem();
    }
    pub fn getType(self: *@This()) core.HResult!*Guid {
        var this: ?*IMediaProtectionServiceRequest = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaProtectionServiceRequest.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getType();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateInstance(publisherCertBytes: [*]u8) core.HResult!*PlayReadySecureStopServiceRequest {
        const factory = @This().IPlayReadySecureStopServiceRequestFactoryCache.get();
        return try factory.CreateInstance(publisherCertBytes);
    }
    pub fn CreateInstanceFromSessionID(sessionID: *Guid, publisherCertBytes: [*]u8) core.HResult!*PlayReadySecureStopServiceRequest {
        const factory = @This().IPlayReadySecureStopServiceRequestFactoryCache.get();
        return try factory.CreateInstanceFromSessionID(sessionID, publisherCertBytes);
    }
    pub const NAME: []const u8 = "Windows.Media.Protection.PlayReady.PlayReadySecureStopServiceRequest";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPlayReadySecureStopServiceRequest.GUID;
    pub const IID: Guid = IPlayReadySecureStopServiceRequest.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPlayReadySecureStopServiceRequest.SIGNATURE);
    var _IPlayReadySecureStopServiceRequestFactoryCache: FactoryCache(IPlayReadySecureStopServiceRequestFactory, RUNTIME_NAME) = .{};
};
pub const PlayReadySoapMessage = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn GetMessageBody(self: *@This()) core.HResult![*]u8 {
        const this: *IPlayReadySoapMessage = @ptrCast(self);
        return try this.GetMessageBody();
    }
    pub fn getMessageHeaders(self: *@This()) core.HResult!*IPropertySet {
        const this: *IPlayReadySoapMessage = @ptrCast(self);
        return try this.getMessageHeaders();
    }
    pub fn getUri(self: *@This()) core.HResult!*Uri {
        const this: *IPlayReadySoapMessage = @ptrCast(self);
        return try this.getUri();
    }
    pub const NAME: []const u8 = "Windows.Media.Protection.PlayReady.PlayReadySoapMessage";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPlayReadySoapMessage.GUID;
    pub const IID: Guid = IPlayReadySoapMessage.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPlayReadySoapMessage.SIGNATURE);
};
pub const PlayReadyStatics = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn get_SecureStopServiceRequestType() core.HResult!*Guid {
        const factory = @This().IPlayReadyStatics3Cache.get();
        return try factory.getSecureStopServiceRequestType();
    }
    pub fn CheckSupportedHardware(hwdrmFeature: PlayReadyHardwareDRMFeatures) core.HResult!bool {
        const factory = @This().IPlayReadyStatics3Cache.get();
        return try factory.CheckSupportedHardware(hwdrmFeature);
    }
    pub fn get_PlayReadyCertificateSecurityLevel() core.HResult!u32 {
        const factory = @This().IPlayReadyStatics2Cache.get();
        return try factory.getPlayReadyCertificateSecurityLevel();
    }
    pub fn get_InputTrustAuthorityToCreate() core.HResult!HSTRING {
        const factory = @This().IPlayReadyStatics4Cache.get();
        return try factory.getInputTrustAuthorityToCreate();
    }
    pub fn get_ProtectionSystemId() core.HResult!*Guid {
        const factory = @This().IPlayReadyStatics4Cache.get();
        return try factory.getProtectionSystemId();
    }
    pub fn get_DomainJoinServiceRequestType() core.HResult!*Guid {
        const factory = @This().IPlayReadyStaticsCache.get();
        return try factory.getDomainJoinServiceRequestType();
    }
    pub fn get_DomainLeaveServiceRequestType() core.HResult!*Guid {
        const factory = @This().IPlayReadyStaticsCache.get();
        return try factory.getDomainLeaveServiceRequestType();
    }
    pub fn get_IndividualizationServiceRequestType() core.HResult!*Guid {
        const factory = @This().IPlayReadyStaticsCache.get();
        return try factory.getIndividualizationServiceRequestType();
    }
    pub fn get_LicenseAcquirerServiceRequestType() core.HResult!*Guid {
        const factory = @This().IPlayReadyStaticsCache.get();
        return try factory.getLicenseAcquirerServiceRequestType();
    }
    pub fn get_MeteringReportServiceRequestType() core.HResult!*Guid {
        const factory = @This().IPlayReadyStaticsCache.get();
        return try factory.getMeteringReportServiceRequestType();
    }
    pub fn get_RevocationServiceRequestType() core.HResult!*Guid {
        const factory = @This().IPlayReadyStaticsCache.get();
        return try factory.getRevocationServiceRequestType();
    }
    pub fn get_MediaProtectionSystemId() core.HResult!*Guid {
        const factory = @This().IPlayReadyStaticsCache.get();
        return try factory.getMediaProtectionSystemId();
    }
    pub fn get_PlayReadySecurityVersion() core.HResult!u32 {
        const factory = @This().IPlayReadyStaticsCache.get();
        return try factory.getPlayReadySecurityVersion();
    }
    pub fn get_HardwareDRMDisabledAtTime() core.HResult!*IReference(DateTime) {
        const factory = @This().IPlayReadyStatics5Cache.get();
        return try factory.getHardwareDRMDisabledAtTime();
    }
    pub fn get_HardwareDRMDisabledUntilTime() core.HResult!*IReference(DateTime) {
        const factory = @This().IPlayReadyStatics5Cache.get();
        return try factory.getHardwareDRMDisabledUntilTime();
    }
    pub fn ResetHardwareDRMDisabled() core.HResult!void {
        const factory = @This().IPlayReadyStatics5Cache.get();
        return try factory.ResetHardwareDRMDisabled();
    }
    pub const NAME: []const u8 = "Windows.Media.Protection.PlayReady.PlayReadyStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _IPlayReadyStatics3Cache: FactoryCache(IPlayReadyStatics3, RUNTIME_NAME) = .{};
    var _IPlayReadyStatics2Cache: FactoryCache(IPlayReadyStatics2, RUNTIME_NAME) = .{};
    var _IPlayReadyStatics4Cache: FactoryCache(IPlayReadyStatics4, RUNTIME_NAME) = .{};
    var _IPlayReadyStaticsCache: FactoryCache(IPlayReadyStatics, RUNTIME_NAME) = .{};
    var _IPlayReadyStatics5Cache: FactoryCache(IPlayReadyStatics5, RUNTIME_NAME) = .{};
};
const IUnknown = @import("../../root.zig").IUnknown;
const IActivationFactory = @import("../../Foundation.zig").IActivationFactory;
const Guid = @import("../../root.zig").Guid;
const IMediaProtectionServiceRequest = @import("../Protection.zig").IMediaProtectionServiceRequest;
const IVector = @import("../../Foundation/Collections.zig").IVector;
const MediaStreamSample = @import("../Core.zig").MediaStreamSample;
const IMediaStreamDescriptor = @import("../Core.zig").IMediaStreamDescriptor;
const VideoStreamDescriptor = @import("../Core.zig").VideoStreamDescriptor;
const IIterable = @import("../../Foundation/Collections.zig").IIterable;
const IInspectable = @import("../../Foundation.zig").IInspectable;
const Uri = @import("../../Foundation.zig").Uri;
const MediaStreamSource = @import("../Core.zig").MediaStreamSource;
const HRESULT = @import("../../root.zig").HRESULT;
const EventRegistrationToken = @import("../../Foundation.zig").EventRegistrationToken;
const IAsyncAction = @import("../../Foundation.zig").IAsyncAction;
const IReference = @import("../../Foundation.zig").IReference;
const DateTime = @import("../../Foundation.zig").DateTime;
const FactoryCache = @import("../../core.zig").FactoryCache;
const IIterator = @import("../../Foundation/Collections.zig").IIterator;
const IStorageFile = @import("../../Storage.zig").IStorageFile;
const TrustLevel = @import("../../root.zig").TrustLevel;
const TypedEventHandler = @import("../../Foundation.zig").TypedEventHandler;
const HSTRING = @import("../../root.zig").HSTRING;
const TimeSpan = @import("../../Foundation.zig").TimeSpan;
const MediaProtectionManager = @import("../Protection.zig").MediaProtectionManager;
const HResult = @import("../../Foundation.zig").HResult;
const IAsyncOperation = @import("../../Foundation.zig").IAsyncOperation;
const core = @import("../../root.zig").core;
const IPropertySet = @import("../../Foundation/Collections.zig").IPropertySet;
const AudioStreamDescriptor = @import("../Core.zig").AudioStreamDescriptor;
