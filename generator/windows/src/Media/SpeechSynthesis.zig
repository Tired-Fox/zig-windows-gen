pub const IInstalledVoicesStatic = extern struct {
    vtable: *const VTable,
    pub fn getAllVoices(self: *@This()) core.HResult!*IVectorView(VoiceInformation) {
        var _r: *IVectorView(VoiceInformation) = undefined;
        const _c = self.vtable.get_AllVoices(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDefaultVoice(self: *@This()) core.HResult!*VoiceInformation {
        var _r: *VoiceInformation = undefined;
        const _c = self.vtable.get_DefaultVoice(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.SpeechSynthesis.IInstalledVoicesStatic";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7d526ecc-7533-4c3f-85be-888c2baeebdc";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_AllVoices: *const fn(self: *anyopaque, _r: **IVectorView(VoiceInformation)) callconv(.winapi) HRESULT,
        get_DefaultVoice: *const fn(self: *anyopaque, _r: **VoiceInformation) callconv(.winapi) HRESULT,
    };
};
pub const IInstalledVoicesStatic2 = extern struct {
    vtable: *const VTable,
    pub fn TrySetDefaultVoiceAsync(self: *@This(), voice: *VoiceInformation) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.TrySetDefaultVoiceAsync(@ptrCast(self), voice, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.SpeechSynthesis.IInstalledVoicesStatic2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "64255f2e-358d-4058-be9a-fd3fcb423530";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        TrySetDefaultVoiceAsync: *const fn(self: *anyopaque, voice: *VoiceInformation, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
    };
};
pub const ISpeechSynthesisStream = extern struct {
    vtable: *const VTable,
    pub fn getMarkers(self: *@This()) core.HResult!*IVectorView(IMediaMarker) {
        var _r: *IVectorView(IMediaMarker) = undefined;
        const _c = self.vtable.get_Markers(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.SpeechSynthesis.ISpeechSynthesisStream";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "83e46e93-244c-4622-ba0b-6229c4d0d65d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Markers: *const fn(self: *anyopaque, _r: **IVectorView(IMediaMarker)) callconv(.winapi) HRESULT,
    };
};
pub const ISpeechSynthesizer = extern struct {
    vtable: *const VTable,
    pub fn SynthesizeTextToStreamAsync(self: *@This(), text: HSTRING) core.HResult!*IAsyncOperation(SpeechSynthesisStream) {
        var _r: *IAsyncOperation(SpeechSynthesisStream) = undefined;
        const _c = self.vtable.SynthesizeTextToStreamAsync(@ptrCast(self), text, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SynthesizeSsmlToStreamAsync(self: *@This(), Ssml: HSTRING) core.HResult!*IAsyncOperation(SpeechSynthesisStream) {
        var _r: *IAsyncOperation(SpeechSynthesisStream) = undefined;
        const _c = self.vtable.SynthesizeSsmlToStreamAsync(@ptrCast(self), Ssml, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putVoice(self: *@This(), value: *VoiceInformation) core.HResult!void {
        const _c = self.vtable.put_Voice(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getVoice(self: *@This()) core.HResult!*VoiceInformation {
        var _r: *VoiceInformation = undefined;
        const _c = self.vtable.get_Voice(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.SpeechSynthesis.ISpeechSynthesizer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ce9f7c76-97f4-4ced-ad68-d51c458e45c6";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        SynthesizeTextToStreamAsync: *const fn(self: *anyopaque, text: HSTRING, _r: **IAsyncOperation(SpeechSynthesisStream)) callconv(.winapi) HRESULT,
        SynthesizeSsmlToStreamAsync: *const fn(self: *anyopaque, Ssml: HSTRING, _r: **IAsyncOperation(SpeechSynthesisStream)) callconv(.winapi) HRESULT,
        put_Voice: *const fn(self: *anyopaque, value: *VoiceInformation) callconv(.winapi) HRESULT,
        get_Voice: *const fn(self: *anyopaque, _r: **VoiceInformation) callconv(.winapi) HRESULT,
    };
};
pub const ISpeechSynthesizer2 = extern struct {
    vtable: *const VTable,
    pub fn getOptions(self: *@This()) core.HResult!*SpeechSynthesizerOptions {
        var _r: *SpeechSynthesizerOptions = undefined;
        const _c = self.vtable.get_Options(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.SpeechSynthesis.ISpeechSynthesizer2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a7c5ecb2-4339-4d6a-bbf8-c7a4f1544c2e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Options: *const fn(self: *anyopaque, _r: **SpeechSynthesizerOptions) callconv(.winapi) HRESULT,
    };
};
pub const ISpeechSynthesizerOptions = extern struct {
    vtable: *const VTable,
    pub fn getIncludeWordBoundaryMetadata(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IncludeWordBoundaryMetadata(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIncludeWordBoundaryMetadata(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IncludeWordBoundaryMetadata(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIncludeSentenceBoundaryMetadata(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IncludeSentenceBoundaryMetadata(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIncludeSentenceBoundaryMetadata(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IncludeSentenceBoundaryMetadata(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Media.SpeechSynthesis.ISpeechSynthesizerOptions";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a0e23871-cc3d-43c9-91b1-ee185324d83d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IncludeWordBoundaryMetadata: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IncludeWordBoundaryMetadata: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_IncludeSentenceBoundaryMetadata: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IncludeSentenceBoundaryMetadata: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
    };
};
pub const ISpeechSynthesizerOptions2 = extern struct {
    vtable: *const VTable,
    pub fn getAudioVolume(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_AudioVolume(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putAudioVolume(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_AudioVolume(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getSpeakingRate(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_SpeakingRate(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSpeakingRate(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_SpeakingRate(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getAudioPitch(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_AudioPitch(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putAudioPitch(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_AudioPitch(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Media.SpeechSynthesis.ISpeechSynthesizerOptions2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1cbef60e-119c-4bed-b118-d250c3a25793";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_AudioVolume: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_AudioVolume: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
        get_SpeakingRate: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_SpeakingRate: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
        get_AudioPitch: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_AudioPitch: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
    };
};
pub const ISpeechSynthesizerOptions3 = extern struct {
    vtable: *const VTable,
    pub fn getAppendedSilence(self: *@This()) core.HResult!SpeechAppendedSilence {
        var _r: SpeechAppendedSilence = undefined;
        const _c = self.vtable.get_AppendedSilence(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putAppendedSilence(self: *@This(), value: SpeechAppendedSilence) core.HResult!void {
        const _c = self.vtable.put_AppendedSilence(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getPunctuationSilence(self: *@This()) core.HResult!SpeechPunctuationSilence {
        var _r: SpeechPunctuationSilence = undefined;
        const _c = self.vtable.get_PunctuationSilence(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putPunctuationSilence(self: *@This(), value: SpeechPunctuationSilence) core.HResult!void {
        const _c = self.vtable.put_PunctuationSilence(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Media.SpeechSynthesis.ISpeechSynthesizerOptions3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "401ed877-902c-4814-a582-a5d0c0769fa8";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_AppendedSilence: *const fn(self: *anyopaque, _r: *SpeechAppendedSilence) callconv(.winapi) HRESULT,
        put_AppendedSilence: *const fn(self: *anyopaque, value: SpeechAppendedSilence) callconv(.winapi) HRESULT,
        get_PunctuationSilence: *const fn(self: *anyopaque, _r: *SpeechPunctuationSilence) callconv(.winapi) HRESULT,
        put_PunctuationSilence: *const fn(self: *anyopaque, value: SpeechPunctuationSilence) callconv(.winapi) HRESULT,
    };
};
pub const IVoiceInformation = extern struct {
    vtable: *const VTable,
    pub fn getDisplayName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DisplayName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Id(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getLanguage(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Language(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDescription(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Description(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getGender(self: *@This()) core.HResult!VoiceGender {
        var _r: VoiceGender = undefined;
        const _c = self.vtable.get_Gender(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.SpeechSynthesis.IVoiceInformation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b127d6a4-1291-4604-aa9c-83134083352c";
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
        get_Id: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Language: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Description: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Gender: *const fn(self: *anyopaque, _r: *VoiceGender) callconv(.winapi) HRESULT,
    };
};
pub const SpeechAppendedSilence = enum(i32) {
    Default = 0,
    Min = 1,
};
pub const SpeechPunctuationSilence = enum(i32) {
    Default = 0,
    Min = 1,
};
pub const SpeechSynthesisStream = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getMarkers(self: *@This()) core.HResult!*IVectorView(IMediaMarker) {
        const this: *ISpeechSynthesisStream = @ptrCast(self);
        return try this.getMarkers();
    }
    pub fn getSize(self: *@This()) core.HResult!u64 {
        var this: ?*IRandomAccessStream = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IRandomAccessStream.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSize();
    }
    pub fn putSize(self: *@This(), value: u64) core.HResult!void {
        var this: ?*IRandomAccessStream = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IRandomAccessStream.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putSize(value);
    }
    pub fn GetInputStreamAt(self: *@This(), position: u64) core.HResult!*IInputStream {
        var this: ?*IRandomAccessStream = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IRandomAccessStream.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetInputStreamAt(position);
    }
    pub fn GetOutputStreamAt(self: *@This(), position: u64) core.HResult!*IOutputStream {
        var this: ?*IRandomAccessStream = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IRandomAccessStream.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetOutputStreamAt(position);
    }
    pub fn getPosition(self: *@This()) core.HResult!u64 {
        var this: ?*IRandomAccessStream = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IRandomAccessStream.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getPosition();
    }
    pub fn Seek(self: *@This(), position: u64) core.HResult!void {
        var this: ?*IRandomAccessStream = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IRandomAccessStream.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Seek(position);
    }
    pub fn CloneStream(self: *@This()) core.HResult!*IRandomAccessStream {
        var this: ?*IRandomAccessStream = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IRandomAccessStream.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.CloneStream();
    }
    pub fn getCanRead(self: *@This()) core.HResult!bool {
        var this: ?*IRandomAccessStream = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IRandomAccessStream.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getCanRead();
    }
    pub fn getCanWrite(self: *@This()) core.HResult!bool {
        var this: ?*IRandomAccessStream = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IRandomAccessStream.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getCanWrite();
    }
    pub fn Close(self: *@This()) core.HResult!void {
        var this: ?*IClosable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IClosable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Close();
    }
    pub fn ReadAsync(self: *@This(), buffer: *IBuffer, count: u32, options: InputStreamOptions) core.HResult!*IAsyncOperationWithProgress(IBuffer,u32) {
        var this: ?*IInputStream = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IInputStream.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ReadAsync(buffer, count, options);
    }
    pub fn WriteAsync(self: *@This(), buffer: *IBuffer) core.HResult!*IAsyncOperationWithProgress(u32,u32) {
        var this: ?*IOutputStream = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IOutputStream.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.WriteAsync(buffer);
    }
    pub fn FlushAsync(self: *@This()) core.HResult!*IAsyncOperation(bool) {
        var this: ?*IOutputStream = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IOutputStream.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.FlushAsync();
    }
    pub fn getContentType(self: *@This()) core.HResult!HSTRING {
        var this: ?*IContentTypeProvider = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IContentTypeProvider.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getContentType();
    }
    pub fn getTimedMetadataTracks(self: *@This()) core.HResult!*IVectorView(TimedMetadataTrack) {
        var this: ?*ITimedMetadataTrackProvider = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ITimedMetadataTrackProvider.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getTimedMetadataTracks();
    }
    pub const NAME: []const u8 = "Windows.Media.SpeechSynthesis.SpeechSynthesisStream";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISpeechSynthesisStream.GUID;
    pub const IID: Guid = ISpeechSynthesisStream.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISpeechSynthesisStream.SIGNATURE);
};
pub const SpeechSynthesizer = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn SynthesizeTextToStreamAsync(self: *@This(), text: HSTRING) core.HResult!*IAsyncOperation(SpeechSynthesisStream) {
        const this: *ISpeechSynthesizer = @ptrCast(self);
        return try this.SynthesizeTextToStreamAsync(text);
    }
    pub fn SynthesizeSsmlToStreamAsync(self: *@This(), Ssml: HSTRING) core.HResult!*IAsyncOperation(SpeechSynthesisStream) {
        const this: *ISpeechSynthesizer = @ptrCast(self);
        return try this.SynthesizeSsmlToStreamAsync(Ssml);
    }
    pub fn putVoice(self: *@This(), value: *VoiceInformation) core.HResult!void {
        const this: *ISpeechSynthesizer = @ptrCast(self);
        return try this.putVoice(value);
    }
    pub fn getVoice(self: *@This()) core.HResult!*VoiceInformation {
        const this: *ISpeechSynthesizer = @ptrCast(self);
        return try this.getVoice();
    }
    pub fn Close(self: *@This()) core.HResult!void {
        var this: ?*IClosable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IClosable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Close();
    }
    pub fn getOptions(self: *@This()) core.HResult!*SpeechSynthesizerOptions {
        var this: ?*ISpeechSynthesizer2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISpeechSynthesizer2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getOptions();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&ISpeechSynthesizer.IID)));
    }
    pub fn getAllVoices() core.HResult!*IVectorView(VoiceInformation) {
        const _f = @This().IInstalledVoicesStaticCache.get();
        return try _f.getAllVoices();
    }
    pub fn getDefaultVoice() core.HResult!*VoiceInformation {
        const _f = @This().IInstalledVoicesStaticCache.get();
        return try _f.getDefaultVoice();
    }
    pub fn TrySetDefaultVoiceAsync(voice: *VoiceInformation) core.HResult!*IAsyncOperation(bool) {
        const _f = @This().IInstalledVoicesStatic2Cache.get();
        return try _f.TrySetDefaultVoiceAsync(voice);
    }
    pub const NAME: []const u8 = "Windows.Media.SpeechSynthesis.SpeechSynthesizer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISpeechSynthesizer.GUID;
    pub const IID: Guid = ISpeechSynthesizer.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISpeechSynthesizer.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _IInstalledVoicesStaticCache: FactoryCache(IInstalledVoicesStatic, RUNTIME_NAME) = .{};
    var _IInstalledVoicesStatic2Cache: FactoryCache(IInstalledVoicesStatic2, RUNTIME_NAME) = .{};
};
pub const SpeechSynthesizerOptions = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getIncludeWordBoundaryMetadata(self: *@This()) core.HResult!bool {
        const this: *ISpeechSynthesizerOptions = @ptrCast(self);
        return try this.getIncludeWordBoundaryMetadata();
    }
    pub fn putIncludeWordBoundaryMetadata(self: *@This(), value: bool) core.HResult!void {
        const this: *ISpeechSynthesizerOptions = @ptrCast(self);
        return try this.putIncludeWordBoundaryMetadata(value);
    }
    pub fn getIncludeSentenceBoundaryMetadata(self: *@This()) core.HResult!bool {
        const this: *ISpeechSynthesizerOptions = @ptrCast(self);
        return try this.getIncludeSentenceBoundaryMetadata();
    }
    pub fn putIncludeSentenceBoundaryMetadata(self: *@This(), value: bool) core.HResult!void {
        const this: *ISpeechSynthesizerOptions = @ptrCast(self);
        return try this.putIncludeSentenceBoundaryMetadata(value);
    }
    pub fn getAudioVolume(self: *@This()) core.HResult!f64 {
        var this: ?*ISpeechSynthesizerOptions2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISpeechSynthesizerOptions2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getAudioVolume();
    }
    pub fn putAudioVolume(self: *@This(), value: f64) core.HResult!void {
        var this: ?*ISpeechSynthesizerOptions2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISpeechSynthesizerOptions2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putAudioVolume(value);
    }
    pub fn getSpeakingRate(self: *@This()) core.HResult!f64 {
        var this: ?*ISpeechSynthesizerOptions2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISpeechSynthesizerOptions2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSpeakingRate();
    }
    pub fn putSpeakingRate(self: *@This(), value: f64) core.HResult!void {
        var this: ?*ISpeechSynthesizerOptions2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISpeechSynthesizerOptions2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putSpeakingRate(value);
    }
    pub fn getAudioPitch(self: *@This()) core.HResult!f64 {
        var this: ?*ISpeechSynthesizerOptions2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISpeechSynthesizerOptions2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getAudioPitch();
    }
    pub fn putAudioPitch(self: *@This(), value: f64) core.HResult!void {
        var this: ?*ISpeechSynthesizerOptions2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISpeechSynthesizerOptions2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putAudioPitch(value);
    }
    pub fn getAppendedSilence(self: *@This()) core.HResult!SpeechAppendedSilence {
        var this: ?*ISpeechSynthesizerOptions3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISpeechSynthesizerOptions3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getAppendedSilence();
    }
    pub fn putAppendedSilence(self: *@This(), value: SpeechAppendedSilence) core.HResult!void {
        var this: ?*ISpeechSynthesizerOptions3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISpeechSynthesizerOptions3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putAppendedSilence(value);
    }
    pub fn getPunctuationSilence(self: *@This()) core.HResult!SpeechPunctuationSilence {
        var this: ?*ISpeechSynthesizerOptions3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISpeechSynthesizerOptions3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getPunctuationSilence();
    }
    pub fn putPunctuationSilence(self: *@This(), value: SpeechPunctuationSilence) core.HResult!void {
        var this: ?*ISpeechSynthesizerOptions3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISpeechSynthesizerOptions3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putPunctuationSilence(value);
    }
    pub const NAME: []const u8 = "Windows.Media.SpeechSynthesis.SpeechSynthesizerOptions";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISpeechSynthesizerOptions.GUID;
    pub const IID: Guid = ISpeechSynthesizerOptions.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISpeechSynthesizerOptions.SIGNATURE);
};
pub const VoiceGender = enum(i32) {
    Male = 0,
    Female = 1,
};
pub const VoiceInformation = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getDisplayName(self: *@This()) core.HResult!HSTRING {
        const this: *IVoiceInformation = @ptrCast(self);
        return try this.getDisplayName();
    }
    pub fn getId(self: *@This()) core.HResult!HSTRING {
        const this: *IVoiceInformation = @ptrCast(self);
        return try this.getId();
    }
    pub fn getLanguage(self: *@This()) core.HResult!HSTRING {
        const this: *IVoiceInformation = @ptrCast(self);
        return try this.getLanguage();
    }
    pub fn getDescription(self: *@This()) core.HResult!HSTRING {
        const this: *IVoiceInformation = @ptrCast(self);
        return try this.getDescription();
    }
    pub fn getGender(self: *@This()) core.HResult!VoiceGender {
        const this: *IVoiceInformation = @ptrCast(self);
        return try this.getGender();
    }
    pub const NAME: []const u8 = "Windows.Media.SpeechSynthesis.VoiceInformation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IVoiceInformation.GUID;
    pub const IID: Guid = IVoiceInformation.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IVoiceInformation.SIGNATURE);
};
const IUnknown = @import("../root.zig").IUnknown;
const IContentTypeProvider = @import("../Storage/Streams.zig").IContentTypeProvider;
const Guid = @import("../root.zig").Guid;
const IVectorView = @import("../Foundation/Collections.zig").IVectorView;
const HSTRING = @import("../root.zig").HSTRING;
const IActivationFactory = @import("../Foundation.zig").IActivationFactory;
const IInspectable = @import("../Foundation.zig").IInspectable;
const IBuffer = @import("../Storage/Streams.zig").IBuffer;
const IRandomAccessStreamWithContentType = @import("../Storage/Streams.zig").IRandomAccessStreamWithContentType;
const IInputStream = @import("../Storage/Streams.zig").IInputStream;
const IOutputStream = @import("../Storage/Streams.zig").IOutputStream;
const IRandomAccessStream = @import("../Storage/Streams.zig").IRandomAccessStream;
const HRESULT = @import("../root.zig").HRESULT;
const IAsyncOperation = @import("../Foundation.zig").IAsyncOperation;
const core = @import("../root.zig").core;
const IAsyncOperationWithProgress = @import("../Foundation.zig").IAsyncOperationWithProgress;
const FactoryCache = @import("../core.zig").FactoryCache;
const TimedMetadataTrack = @import("./Core.zig").TimedMetadataTrack;
const IMediaMarker = @import("../Media.zig").IMediaMarker;
const ITimedMetadataTrackProvider = @import("./Core.zig").ITimedMetadataTrackProvider;
const InputStreamOptions = @import("../Storage/Streams.zig").InputStreamOptions;
const TrustLevel = @import("../root.zig").TrustLevel;
const IClosable = @import("../Foundation.zig").IClosable;
