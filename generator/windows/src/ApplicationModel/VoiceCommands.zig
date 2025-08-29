pub const IVoiceCommand = extern struct {
    vtable: *const VTable,
    pub fn getCommandName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_CommandName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getProperties(self: *@This()) core.HResult!*IMapView(HSTRING,IVectorView(HSTRING)) {
        var _r: *IMapView(HSTRING,IVectorView(HSTRING)) = undefined;
        const _c = self.vtable.get_Properties(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSpeechRecognitionResult(self: *@This()) core.HResult!*SpeechRecognitionResult {
        var _r: *SpeechRecognitionResult = undefined;
        const _c = self.vtable.get_SpeechRecognitionResult(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.VoiceCommands.IVoiceCommand";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "936f5273-ec82-42a6-a55c-d2d79ec6f920";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_CommandName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Properties: *const fn(self: *anyopaque, _r: **IMapView(HSTRING,IVectorView(HSTRING))) callconv(.winapi) HRESULT,
        get_SpeechRecognitionResult: *const fn(self: *anyopaque, _r: **SpeechRecognitionResult) callconv(.winapi) HRESULT,
    };
};
pub const IVoiceCommandCompletedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getReason(self: *@This()) core.HResult!VoiceCommandCompletionReason {
        var _r: VoiceCommandCompletionReason = undefined;
        const _c = self.vtable.get_Reason(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.VoiceCommands.IVoiceCommandCompletedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c85e675d-fe42-432c-9907-09df9fcf64e8";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Reason: *const fn(self: *anyopaque, _r: *VoiceCommandCompletionReason) callconv(.winapi) HRESULT,
    };
};
pub const IVoiceCommandConfirmationResult = extern struct {
    vtable: *const VTable,
    pub fn getConfirmed(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_Confirmed(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.VoiceCommands.IVoiceCommandConfirmationResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a022593e-8221-4526-b083-840972262247";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Confirmed: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IVoiceCommandContentTile = extern struct {
    vtable: *const VTable,
    pub fn getTitle(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Title(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putTitle(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_Title(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getTextLine1(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_TextLine1(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putTextLine1(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_TextLine1(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getTextLine2(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_TextLine2(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putTextLine2(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_TextLine2(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getTextLine3(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_TextLine3(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putTextLine3(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_TextLine3(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getImage(self: *@This()) core.HResult!*IStorageFile {
        var _r: *IStorageFile = undefined;
        const _c = self.vtable.get_Image(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putImage(self: *@This(), value: *IStorageFile) core.HResult!void {
        const _c = self.vtable.put_Image(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getAppContext(self: *@This()) core.HResult!*IInspectable {
        var _r: *IInspectable = undefined;
        const _c = self.vtable.get_AppContext(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putAppContext(self: *@This(), value: *IInspectable) core.HResult!void {
        const _c = self.vtable.put_AppContext(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getAppLaunchArgument(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_AppLaunchArgument(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putAppLaunchArgument(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_AppLaunchArgument(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getContentTileType(self: *@This()) core.HResult!VoiceCommandContentTileType {
        var _r: VoiceCommandContentTileType = undefined;
        const _c = self.vtable.get_ContentTileType(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putContentTileType(self: *@This(), value: VoiceCommandContentTileType) core.HResult!void {
        const _c = self.vtable.put_ContentTileType(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.VoiceCommands.IVoiceCommandContentTile";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3eefe9f0-b8c7-4c76-a0de-1607895ee327";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Title: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_Title: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_TextLine1: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_TextLine1: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_TextLine2: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_TextLine2: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_TextLine3: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_TextLine3: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_Image: *const fn(self: *anyopaque, _r: **IStorageFile) callconv(.winapi) HRESULT,
        put_Image: *const fn(self: *anyopaque, value: *IStorageFile) callconv(.winapi) HRESULT,
        get_AppContext: *const fn(self: *anyopaque, _r: **IInspectable) callconv(.winapi) HRESULT,
        put_AppContext: *const fn(self: *anyopaque, value: *IInspectable) callconv(.winapi) HRESULT,
        get_AppLaunchArgument: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_AppLaunchArgument: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_ContentTileType: *const fn(self: *anyopaque, _r: *VoiceCommandContentTileType) callconv(.winapi) HRESULT,
        put_ContentTileType: *const fn(self: *anyopaque, value: VoiceCommandContentTileType) callconv(.winapi) HRESULT,
    };
};
pub const IVoiceCommandDefinition = extern struct {
    vtable: *const VTable,
    pub fn getLanguage(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Language(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Name(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetPhraseListAsync(self: *@This(), phraseListName: HSTRING, phraseList: *IIterable(HSTRING)) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.SetPhraseListAsync(@ptrCast(self), phraseListName, phraseList, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.VoiceCommands.IVoiceCommandDefinition";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7972aad0-0974-4979-984b-cb8959cd61ae";
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
        get_Name: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        SetPhraseListAsync: *const fn(self: *anyopaque, phraseListName: HSTRING, phraseList: *IIterable(HSTRING), _r: **IAsyncAction) callconv(.winapi) HRESULT,
    };
};
pub const IVoiceCommandDefinitionManagerStatics = extern struct {
    vtable: *const VTable,
    pub fn InstallCommandDefinitionsFromStorageFileAsync(self: *@This(), file: *StorageFile) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.InstallCommandDefinitionsFromStorageFileAsync(@ptrCast(self), file, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getInstalledCommandDefinitions(self: *@This()) core.HResult!*IMapView(HSTRING,VoiceCommandDefinition) {
        var _r: *IMapView(HSTRING,VoiceCommandDefinition) = undefined;
        const _c = self.vtable.get_InstalledCommandDefinitions(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.VoiceCommands.IVoiceCommandDefinitionManagerStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "8fe7a69e-067e-4f16-a18c-5b17e9499940";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        InstallCommandDefinitionsFromStorageFileAsync: *const fn(self: *anyopaque, file: *StorageFile, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        get_InstalledCommandDefinitions: *const fn(self: *anyopaque, _r: **IMapView(HSTRING,VoiceCommandDefinition)) callconv(.winapi) HRESULT,
    };
};
pub const IVoiceCommandDisambiguationResult = extern struct {
    vtable: *const VTable,
    pub fn getSelectedItem(self: *@This()) core.HResult!*VoiceCommandContentTile {
        var _r: *VoiceCommandContentTile = undefined;
        const _c = self.vtable.get_SelectedItem(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.VoiceCommands.IVoiceCommandDisambiguationResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ecc68cfe-c9ac-45df-a8ea-feea08ef9c5e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_SelectedItem: *const fn(self: *anyopaque, _r: **VoiceCommandContentTile) callconv(.winapi) HRESULT,
    };
};
pub const IVoiceCommandResponse = extern struct {
    vtable: *const VTable,
    pub fn getMessage(self: *@This()) core.HResult!*VoiceCommandUserMessage {
        var _r: *VoiceCommandUserMessage = undefined;
        const _c = self.vtable.get_Message(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putMessage(self: *@This(), value: *VoiceCommandUserMessage) core.HResult!void {
        const _c = self.vtable.put_Message(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getRepeatMessage(self: *@This()) core.HResult!*VoiceCommandUserMessage {
        var _r: *VoiceCommandUserMessage = undefined;
        const _c = self.vtable.get_RepeatMessage(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putRepeatMessage(self: *@This(), value: *VoiceCommandUserMessage) core.HResult!void {
        const _c = self.vtable.put_RepeatMessage(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getAppLaunchArgument(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_AppLaunchArgument(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putAppLaunchArgument(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_AppLaunchArgument(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getVoiceCommandContentTiles(self: *@This()) core.HResult!*IVector(VoiceCommandContentTile) {
        var _r: *IVector(VoiceCommandContentTile) = undefined;
        const _c = self.vtable.get_VoiceCommandContentTiles(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.VoiceCommands.IVoiceCommandResponse";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "0284b30e-8a3b-4cc4-a6a1-cad5be2716b5";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Message: *const fn(self: *anyopaque, _r: **VoiceCommandUserMessage) callconv(.winapi) HRESULT,
        put_Message: *const fn(self: *anyopaque, value: *VoiceCommandUserMessage) callconv(.winapi) HRESULT,
        get_RepeatMessage: *const fn(self: *anyopaque, _r: **VoiceCommandUserMessage) callconv(.winapi) HRESULT,
        put_RepeatMessage: *const fn(self: *anyopaque, value: *VoiceCommandUserMessage) callconv(.winapi) HRESULT,
        get_AppLaunchArgument: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_AppLaunchArgument: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_VoiceCommandContentTiles: *const fn(self: *anyopaque, _r: **IVector(VoiceCommandContentTile)) callconv(.winapi) HRESULT,
    };
};
pub const IVoiceCommandResponseStatics = extern struct {
    vtable: *const VTable,
    pub fn getMaxSupportedVoiceCommandContentTiles(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_MaxSupportedVoiceCommandContentTiles(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateResponse(self: *@This(), userMessage: *VoiceCommandUserMessage) core.HResult!*VoiceCommandResponse {
        var _r: *VoiceCommandResponse = undefined;
        const _c = self.vtable.CreateResponse(@ptrCast(self), userMessage, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateResponse(self: *@This(), message: *VoiceCommandUserMessage, contentTiles: *IIterable(VoiceCommandContentTile)) core.HResult!*VoiceCommandResponse {
        var _r: *VoiceCommandResponse = undefined;
        const _c = self.vtable.CreateResponse(@ptrCast(self), message, contentTiles, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateResponseForPrompt(self: *@This(), message: *VoiceCommandUserMessage, repeatMessage: *VoiceCommandUserMessage) core.HResult!*VoiceCommandResponse {
        var _r: *VoiceCommandResponse = undefined;
        const _c = self.vtable.CreateResponseForPrompt(@ptrCast(self), message, repeatMessage, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateResponseForPrompt(self: *@This(), message: *VoiceCommandUserMessage, repeatMessage: *VoiceCommandUserMessage, contentTiles: *IIterable(VoiceCommandContentTile)) core.HResult!*VoiceCommandResponse {
        var _r: *VoiceCommandResponse = undefined;
        const _c = self.vtable.CreateResponseForPrompt(@ptrCast(self), message, repeatMessage, contentTiles, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.VoiceCommands.IVoiceCommandResponseStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2932f813-0d3b-49f2-96dd-625019bd3b5d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_MaxSupportedVoiceCommandContentTiles: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        CreateResponse: *const fn(self: *anyopaque, userMessage: *VoiceCommandUserMessage, _r: **VoiceCommandResponse) callconv(.winapi) HRESULT,
        CreateResponse: *const fn(self: *anyopaque, message: *VoiceCommandUserMessage, contentTiles: *IIterable(VoiceCommandContentTile), _r: **VoiceCommandResponse) callconv(.winapi) HRESULT,
        CreateResponseForPrompt: *const fn(self: *anyopaque, message: *VoiceCommandUserMessage, repeatMessage: *VoiceCommandUserMessage, _r: **VoiceCommandResponse) callconv(.winapi) HRESULT,
        CreateResponseForPrompt: *const fn(self: *anyopaque, message: *VoiceCommandUserMessage, repeatMessage: *VoiceCommandUserMessage, contentTiles: *IIterable(VoiceCommandContentTile), _r: **VoiceCommandResponse) callconv(.winapi) HRESULT,
    };
};
pub const IVoiceCommandServiceConnection = extern struct {
    vtable: *const VTable,
    pub fn GetVoiceCommandAsync(self: *@This()) core.HResult!*IAsyncOperation(VoiceCommand) {
        var _r: *IAsyncOperation(VoiceCommand) = undefined;
        const _c = self.vtable.GetVoiceCommandAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RequestConfirmationAsync(self: *@This(), response: *VoiceCommandResponse) core.HResult!*IAsyncOperation(VoiceCommandConfirmationResult) {
        var _r: *IAsyncOperation(VoiceCommandConfirmationResult) = undefined;
        const _c = self.vtable.RequestConfirmationAsync(@ptrCast(self), response, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RequestDisambiguationAsync(self: *@This(), response: *VoiceCommandResponse) core.HResult!*IAsyncOperation(VoiceCommandDisambiguationResult) {
        var _r: *IAsyncOperation(VoiceCommandDisambiguationResult) = undefined;
        const _c = self.vtable.RequestDisambiguationAsync(@ptrCast(self), response, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ReportProgressAsync(self: *@This(), response: *VoiceCommandResponse) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.ReportProgressAsync(@ptrCast(self), response, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ReportSuccessAsync(self: *@This(), response: *VoiceCommandResponse) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.ReportSuccessAsync(@ptrCast(self), response, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ReportFailureAsync(self: *@This(), response: *VoiceCommandResponse) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.ReportFailureAsync(@ptrCast(self), response, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RequestAppLaunchAsync(self: *@This(), response: *VoiceCommandResponse) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.RequestAppLaunchAsync(@ptrCast(self), response, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getLanguage(self: *@This()) core.HResult!*Language {
        var _r: *Language = undefined;
        const _c = self.vtable.get_Language(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addVoiceCommandCompleted(self: *@This(), handler: *TypedEventHandler(VoiceCommandServiceConnection,VoiceCommandCompletedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_VoiceCommandCompleted(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeVoiceCommandCompleted(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_VoiceCommandCompleted(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.VoiceCommands.IVoiceCommandServiceConnection";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d894bb9f-21da-44a4-98a2-fb131920a9cc";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetVoiceCommandAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(VoiceCommand)) callconv(.winapi) HRESULT,
        RequestConfirmationAsync: *const fn(self: *anyopaque, response: *VoiceCommandResponse, _r: **IAsyncOperation(VoiceCommandConfirmationResult)) callconv(.winapi) HRESULT,
        RequestDisambiguationAsync: *const fn(self: *anyopaque, response: *VoiceCommandResponse, _r: **IAsyncOperation(VoiceCommandDisambiguationResult)) callconv(.winapi) HRESULT,
        ReportProgressAsync: *const fn(self: *anyopaque, response: *VoiceCommandResponse, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        ReportSuccessAsync: *const fn(self: *anyopaque, response: *VoiceCommandResponse, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        ReportFailureAsync: *const fn(self: *anyopaque, response: *VoiceCommandResponse, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        RequestAppLaunchAsync: *const fn(self: *anyopaque, response: *VoiceCommandResponse, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        get_Language: *const fn(self: *anyopaque, _r: **Language) callconv(.winapi) HRESULT,
        add_VoiceCommandCompleted: *const fn(self: *anyopaque, handler: *TypedEventHandler(VoiceCommandServiceConnection,VoiceCommandCompletedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_VoiceCommandCompleted: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IVoiceCommandServiceConnectionStatics = extern struct {
    vtable: *const VTable,
    pub fn FromAppServiceTriggerDetails(self: *@This(), triggerDetails: *AppServiceTriggerDetails) core.HResult!*VoiceCommandServiceConnection {
        var _r: *VoiceCommandServiceConnection = undefined;
        const _c = self.vtable.FromAppServiceTriggerDetails(@ptrCast(self), triggerDetails, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.VoiceCommands.IVoiceCommandServiceConnectionStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "370ebffb-2d34-42df-8770-074d0f334697";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        FromAppServiceTriggerDetails: *const fn(self: *anyopaque, triggerDetails: *AppServiceTriggerDetails, _r: **VoiceCommandServiceConnection) callconv(.winapi) HRESULT,
    };
};
pub const IVoiceCommandUserMessage = extern struct {
    vtable: *const VTable,
    pub fn getDisplayMessage(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DisplayMessage(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDisplayMessage(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_DisplayMessage(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getSpokenMessage(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_SpokenMessage(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSpokenMessage(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_SpokenMessage(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.VoiceCommands.IVoiceCommandUserMessage";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "674eb3c0-44f6-4f07-b979-4c723fc08597";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_DisplayMessage: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_DisplayMessage: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_SpokenMessage: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_SpokenMessage: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const VoiceCommand = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getCommandName(self: *@This()) core.HResult!HSTRING {
        const this: *IVoiceCommand = @ptrCast(self);
        return try this.getCommandName();
    }
    pub fn getProperties(self: *@This()) core.HResult!*IMapView(HSTRING,IVectorView(HSTRING)) {
        const this: *IVoiceCommand = @ptrCast(self);
        return try this.getProperties();
    }
    pub fn getSpeechRecognitionResult(self: *@This()) core.HResult!*SpeechRecognitionResult {
        const this: *IVoiceCommand = @ptrCast(self);
        return try this.getSpeechRecognitionResult();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.VoiceCommands.VoiceCommand";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IVoiceCommand.GUID;
    pub const IID: Guid = IVoiceCommand.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IVoiceCommand.SIGNATURE);
};
pub const VoiceCommandCompletedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getReason(self: *@This()) core.HResult!VoiceCommandCompletionReason {
        const this: *IVoiceCommandCompletedEventArgs = @ptrCast(self);
        return try this.getReason();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.VoiceCommands.VoiceCommandCompletedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IVoiceCommandCompletedEventArgs.GUID;
    pub const IID: Guid = IVoiceCommandCompletedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IVoiceCommandCompletedEventArgs.SIGNATURE);
};
pub const VoiceCommandCompletionReason = enum(i32) {
    Unknown = 0,
    CommunicationFailed = 1,
    ResourceLimitsExceeded = 2,
    Canceled = 3,
    TimeoutExceeded = 4,
    AppLaunched = 5,
    Completed = 6,
};
pub const VoiceCommandConfirmationResult = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getConfirmed(self: *@This()) core.HResult!bool {
        const this: *IVoiceCommandConfirmationResult = @ptrCast(self);
        return try this.getConfirmed();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.VoiceCommands.VoiceCommandConfirmationResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IVoiceCommandConfirmationResult.GUID;
    pub const IID: Guid = IVoiceCommandConfirmationResult.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IVoiceCommandConfirmationResult.SIGNATURE);
};
pub const VoiceCommandContentTile = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getTitle(self: *@This()) core.HResult!HSTRING {
        const this: *IVoiceCommandContentTile = @ptrCast(self);
        return try this.getTitle();
    }
    pub fn putTitle(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IVoiceCommandContentTile = @ptrCast(self);
        return try this.putTitle(value);
    }
    pub fn getTextLine1(self: *@This()) core.HResult!HSTRING {
        const this: *IVoiceCommandContentTile = @ptrCast(self);
        return try this.getTextLine1();
    }
    pub fn putTextLine1(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IVoiceCommandContentTile = @ptrCast(self);
        return try this.putTextLine1(value);
    }
    pub fn getTextLine2(self: *@This()) core.HResult!HSTRING {
        const this: *IVoiceCommandContentTile = @ptrCast(self);
        return try this.getTextLine2();
    }
    pub fn putTextLine2(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IVoiceCommandContentTile = @ptrCast(self);
        return try this.putTextLine2(value);
    }
    pub fn getTextLine3(self: *@This()) core.HResult!HSTRING {
        const this: *IVoiceCommandContentTile = @ptrCast(self);
        return try this.getTextLine3();
    }
    pub fn putTextLine3(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IVoiceCommandContentTile = @ptrCast(self);
        return try this.putTextLine3(value);
    }
    pub fn getImage(self: *@This()) core.HResult!*IStorageFile {
        const this: *IVoiceCommandContentTile = @ptrCast(self);
        return try this.getImage();
    }
    pub fn putImage(self: *@This(), value: *IStorageFile) core.HResult!void {
        const this: *IVoiceCommandContentTile = @ptrCast(self);
        return try this.putImage(value);
    }
    pub fn getAppContext(self: *@This()) core.HResult!*IInspectable {
        const this: *IVoiceCommandContentTile = @ptrCast(self);
        return try this.getAppContext();
    }
    pub fn putAppContext(self: *@This(), value: *IInspectable) core.HResult!void {
        const this: *IVoiceCommandContentTile = @ptrCast(self);
        return try this.putAppContext(value);
    }
    pub fn getAppLaunchArgument(self: *@This()) core.HResult!HSTRING {
        const this: *IVoiceCommandContentTile = @ptrCast(self);
        return try this.getAppLaunchArgument();
    }
    pub fn putAppLaunchArgument(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IVoiceCommandContentTile = @ptrCast(self);
        return try this.putAppLaunchArgument(value);
    }
    pub fn getContentTileType(self: *@This()) core.HResult!VoiceCommandContentTileType {
        const this: *IVoiceCommandContentTile = @ptrCast(self);
        return try this.getContentTileType();
    }
    pub fn putContentTileType(self: *@This(), value: VoiceCommandContentTileType) core.HResult!void {
        const this: *IVoiceCommandContentTile = @ptrCast(self);
        return try this.putContentTileType(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IVoiceCommandContentTile.IID)));
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.VoiceCommands.VoiceCommandContentTile";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IVoiceCommandContentTile.GUID;
    pub const IID: Guid = IVoiceCommandContentTile.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IVoiceCommandContentTile.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const VoiceCommandContentTileType = enum(i32) {
    TitleOnly = 0,
    TitleWithText = 1,
    TitleWith68x68Icon = 2,
    TitleWith68x68IconAndText = 3,
    TitleWith68x92Icon = 4,
    TitleWith68x92IconAndText = 5,
    TitleWith280x140Icon = 6,
    TitleWith280x140IconAndText = 7,
};
pub const VoiceCommandDefinition = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getLanguage(self: *@This()) core.HResult!HSTRING {
        const this: *IVoiceCommandDefinition = @ptrCast(self);
        return try this.getLanguage();
    }
    pub fn getName(self: *@This()) core.HResult!HSTRING {
        const this: *IVoiceCommandDefinition = @ptrCast(self);
        return try this.getName();
    }
    pub fn SetPhraseListAsync(self: *@This(), phraseListName: HSTRING, phraseList: *IIterable(HSTRING)) core.HResult!*IAsyncAction {
        const this: *IVoiceCommandDefinition = @ptrCast(self);
        return try this.SetPhraseListAsync(phraseListName, phraseList);
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.VoiceCommands.VoiceCommandDefinition";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IVoiceCommandDefinition.GUID;
    pub const IID: Guid = IVoiceCommandDefinition.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IVoiceCommandDefinition.SIGNATURE);
};
pub const VoiceCommandDefinitionManager = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn InstallCommandDefinitionsFromStorageFileAsync(file: *StorageFile) core.HResult!*IAsyncAction {
        const factory = @This().IVoiceCommandDefinitionManagerStaticsCache.get();
        return try factory.InstallCommandDefinitionsFromStorageFileAsync(file);
    }
    pub fn getInstalledCommandDefinitions() core.HResult!*IMapView(HSTRING,VoiceCommandDefinition) {
        const factory = @This().IVoiceCommandDefinitionManagerStaticsCache.get();
        return try factory.getInstalledCommandDefinitions();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.VoiceCommands.VoiceCommandDefinitionManager";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _IVoiceCommandDefinitionManagerStaticsCache: FactoryCache(IVoiceCommandDefinitionManagerStatics, RUNTIME_NAME) = .{};
};
pub const VoiceCommandDisambiguationResult = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getSelectedItem(self: *@This()) core.HResult!*VoiceCommandContentTile {
        const this: *IVoiceCommandDisambiguationResult = @ptrCast(self);
        return try this.getSelectedItem();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.VoiceCommands.VoiceCommandDisambiguationResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IVoiceCommandDisambiguationResult.GUID;
    pub const IID: Guid = IVoiceCommandDisambiguationResult.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IVoiceCommandDisambiguationResult.SIGNATURE);
};
pub const VoiceCommandResponse = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getMessage(self: *@This()) core.HResult!*VoiceCommandUserMessage {
        const this: *IVoiceCommandResponse = @ptrCast(self);
        return try this.getMessage();
    }
    pub fn putMessage(self: *@This(), value: *VoiceCommandUserMessage) core.HResult!void {
        const this: *IVoiceCommandResponse = @ptrCast(self);
        return try this.putMessage(value);
    }
    pub fn getRepeatMessage(self: *@This()) core.HResult!*VoiceCommandUserMessage {
        const this: *IVoiceCommandResponse = @ptrCast(self);
        return try this.getRepeatMessage();
    }
    pub fn putRepeatMessage(self: *@This(), value: *VoiceCommandUserMessage) core.HResult!void {
        const this: *IVoiceCommandResponse = @ptrCast(self);
        return try this.putRepeatMessage(value);
    }
    pub fn getAppLaunchArgument(self: *@This()) core.HResult!HSTRING {
        const this: *IVoiceCommandResponse = @ptrCast(self);
        return try this.getAppLaunchArgument();
    }
    pub fn putAppLaunchArgument(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IVoiceCommandResponse = @ptrCast(self);
        return try this.putAppLaunchArgument(value);
    }
    pub fn getVoiceCommandContentTiles(self: *@This()) core.HResult!*IVector(VoiceCommandContentTile) {
        const this: *IVoiceCommandResponse = @ptrCast(self);
        return try this.getVoiceCommandContentTiles();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn getMaxSupportedVoiceCommandContentTiles() core.HResult!u32 {
        const factory = @This().IVoiceCommandResponseStaticsCache.get();
        return try factory.getMaxSupportedVoiceCommandContentTiles();
    }
    pub fn CreateResponse(userMessage: *VoiceCommandUserMessage) core.HResult!*VoiceCommandResponse {
        const factory = @This().IVoiceCommandResponseStaticsCache.get();
        return try factory.CreateResponse(userMessage);
    }
    pub fn CreateResponse(message: *VoiceCommandUserMessage, contentTiles: *IIterable(VoiceCommandContentTile)) core.HResult!*VoiceCommandResponse {
        const factory = @This().IVoiceCommandResponseStaticsCache.get();
        return try factory.CreateResponse(message, contentTiles);
    }
    pub fn CreateResponseForPrompt(message: *VoiceCommandUserMessage, repeatMessage: *VoiceCommandUserMessage) core.HResult!*VoiceCommandResponse {
        const factory = @This().IVoiceCommandResponseStaticsCache.get();
        return try factory.CreateResponseForPrompt(message, repeatMessage);
    }
    pub fn CreateResponseForPrompt(message: *VoiceCommandUserMessage, repeatMessage: *VoiceCommandUserMessage, contentTiles: *IIterable(VoiceCommandContentTile)) core.HResult!*VoiceCommandResponse {
        const factory = @This().IVoiceCommandResponseStaticsCache.get();
        return try factory.CreateResponseForPrompt(message, repeatMessage, contentTiles);
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.VoiceCommands.VoiceCommandResponse";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IVoiceCommandResponse.GUID;
    pub const IID: Guid = IVoiceCommandResponse.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IVoiceCommandResponse.SIGNATURE);
    var _IVoiceCommandResponseStaticsCache: FactoryCache(IVoiceCommandResponseStatics, RUNTIME_NAME) = .{};
};
pub const VoiceCommandServiceConnection = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn GetVoiceCommandAsync(self: *@This()) core.HResult!*IAsyncOperation(VoiceCommand) {
        const this: *IVoiceCommandServiceConnection = @ptrCast(self);
        return try this.GetVoiceCommandAsync();
    }
    pub fn RequestConfirmationAsync(self: *@This(), response: *VoiceCommandResponse) core.HResult!*IAsyncOperation(VoiceCommandConfirmationResult) {
        const this: *IVoiceCommandServiceConnection = @ptrCast(self);
        return try this.RequestConfirmationAsync(response);
    }
    pub fn RequestDisambiguationAsync(self: *@This(), response: *VoiceCommandResponse) core.HResult!*IAsyncOperation(VoiceCommandDisambiguationResult) {
        const this: *IVoiceCommandServiceConnection = @ptrCast(self);
        return try this.RequestDisambiguationAsync(response);
    }
    pub fn ReportProgressAsync(self: *@This(), response: *VoiceCommandResponse) core.HResult!*IAsyncAction {
        const this: *IVoiceCommandServiceConnection = @ptrCast(self);
        return try this.ReportProgressAsync(response);
    }
    pub fn ReportSuccessAsync(self: *@This(), response: *VoiceCommandResponse) core.HResult!*IAsyncAction {
        const this: *IVoiceCommandServiceConnection = @ptrCast(self);
        return try this.ReportSuccessAsync(response);
    }
    pub fn ReportFailureAsync(self: *@This(), response: *VoiceCommandResponse) core.HResult!*IAsyncAction {
        const this: *IVoiceCommandServiceConnection = @ptrCast(self);
        return try this.ReportFailureAsync(response);
    }
    pub fn RequestAppLaunchAsync(self: *@This(), response: *VoiceCommandResponse) core.HResult!*IAsyncAction {
        const this: *IVoiceCommandServiceConnection = @ptrCast(self);
        return try this.RequestAppLaunchAsync(response);
    }
    pub fn getLanguage(self: *@This()) core.HResult!*Language {
        const this: *IVoiceCommandServiceConnection = @ptrCast(self);
        return try this.getLanguage();
    }
    pub fn addVoiceCommandCompleted(self: *@This(), handler: *TypedEventHandler(VoiceCommandServiceConnection,VoiceCommandCompletedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IVoiceCommandServiceConnection = @ptrCast(self);
        return try this.addVoiceCommandCompleted(handler);
    }
    pub fn removeVoiceCommandCompleted(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IVoiceCommandServiceConnection = @ptrCast(self);
        return try this.removeVoiceCommandCompleted(token);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn FromAppServiceTriggerDetails(triggerDetails: *AppServiceTriggerDetails) core.HResult!*VoiceCommandServiceConnection {
        const factory = @This().IVoiceCommandServiceConnectionStaticsCache.get();
        return try factory.FromAppServiceTriggerDetails(triggerDetails);
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.VoiceCommands.VoiceCommandServiceConnection";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IVoiceCommandServiceConnection.GUID;
    pub const IID: Guid = IVoiceCommandServiceConnection.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IVoiceCommandServiceConnection.SIGNATURE);
    var _IVoiceCommandServiceConnectionStaticsCache: FactoryCache(IVoiceCommandServiceConnectionStatics, RUNTIME_NAME) = .{};
};
pub const VoiceCommandUserMessage = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getDisplayMessage(self: *@This()) core.HResult!HSTRING {
        const this: *IVoiceCommandUserMessage = @ptrCast(self);
        return try this.getDisplayMessage();
    }
    pub fn putDisplayMessage(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IVoiceCommandUserMessage = @ptrCast(self);
        return try this.putDisplayMessage(value);
    }
    pub fn getSpokenMessage(self: *@This()) core.HResult!HSTRING {
        const this: *IVoiceCommandUserMessage = @ptrCast(self);
        return try this.getSpokenMessage();
    }
    pub fn putSpokenMessage(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IVoiceCommandUserMessage = @ptrCast(self);
        return try this.putSpokenMessage(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IVoiceCommandUserMessage.IID)));
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.VoiceCommands.VoiceCommandUserMessage";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IVoiceCommandUserMessage.GUID;
    pub const IID: Guid = IVoiceCommandUserMessage.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IVoiceCommandUserMessage.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
const HSTRING = @import("../root.zig").HSTRING;
const IUnknown = @import("../root.zig").IUnknown;
const IActivationFactory = @import("../Foundation.zig").IActivationFactory;
const Guid = @import("../root.zig").Guid;
const IVectorView = @import("../Foundation/Collections.zig").IVectorView;
const IIterable = @import("../Foundation/Collections.zig").IIterable;
const IInspectable = @import("../Foundation.zig").IInspectable;
const IMapView = @import("../Foundation/Collections.zig").IMapView;
const SpeechRecognitionResult = @import("../Media/SpeechRecognition.zig").SpeechRecognitionResult;
const IVector = @import("../Foundation/Collections.zig").IVector;
const Language = @import("../Globalization.zig").Language;
const AppServiceTriggerDetails = @import("./AppService.zig").AppServiceTriggerDetails;
const HRESULT = @import("../root.zig").HRESULT;
const IAsyncOperation = @import("../Foundation.zig").IAsyncOperation;
const core = @import("../root.zig").core;
const FactoryCache = @import("../core.zig").FactoryCache;
const IStorageFile = @import("../Storage.zig").IStorageFile;
const EventRegistrationToken = @import("../Foundation.zig").EventRegistrationToken;
const TrustLevel = @import("../root.zig").TrustLevel;
const IAsyncAction = @import("../Foundation.zig").IAsyncAction;
const TypedEventHandler = @import("../Foundation.zig").TypedEventHandler;
const StorageFile = @import("../Storage.zig").StorageFile;
