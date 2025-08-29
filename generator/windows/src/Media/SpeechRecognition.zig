pub const ISpeechContinuousRecognitionCompletedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getStatus(self: *@This()) core.HResult!SpeechRecognitionResultStatus {
        var _r: SpeechRecognitionResultStatus = undefined;
        const _c = self.vtable.get_Status(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.SpeechRecognition.ISpeechContinuousRecognitionCompletedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e3d069bb-e30c-5e18-424b-7fbe81f8fbd0";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Status: *const fn(self: *anyopaque, _r: *SpeechRecognitionResultStatus) callconv(.winapi) HRESULT,
    };
};
pub const ISpeechContinuousRecognitionResultGeneratedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getResult(self: *@This()) core.HResult!*SpeechRecognitionResult {
        var _r: *SpeechRecognitionResult = undefined;
        const _c = self.vtable.get_Result(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.SpeechRecognition.ISpeechContinuousRecognitionResultGeneratedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "19091e1e-6e7e-5a46-40fb-76594f786504";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Result: *const fn(self: *anyopaque, _r: **SpeechRecognitionResult) callconv(.winapi) HRESULT,
    };
};
pub const ISpeechContinuousRecognitionSession = extern struct {
    vtable: *const VTable,
    pub fn getAutoStopSilenceTimeout(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_AutoStopSilenceTimeout(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putAutoStopSilenceTimeout(self: *@This(), value: TimeSpan) core.HResult!void {
        const _c = self.vtable.put_AutoStopSilenceTimeout(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn StartAsync(self: *@This()) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.StartAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn StartAsync(self: *@This(), mode: SpeechContinuousRecognitionMode) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.StartAsync(@ptrCast(self), mode, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn StopAsync(self: *@This()) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.StopAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CancelAsync(self: *@This()) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.CancelAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn PauseAsync(self: *@This()) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.PauseAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn Resume(self: *@This()) core.HResult!void {
        const _c = self.vtable.Resume(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addCompleted(self: *@This(), value: *TypedEventHandler(SpeechContinuousRecognitionSession,SpeechContinuousRecognitionCompletedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_Completed(@ptrCast(self), value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeCompleted(self: *@This(), value: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_Completed(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addResultGenerated(self: *@This(), value: *TypedEventHandler(SpeechContinuousRecognitionSession,SpeechContinuousRecognitionResultGeneratedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_ResultGenerated(@ptrCast(self), value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeResultGenerated(self: *@This(), value: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_ResultGenerated(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Media.SpeechRecognition.ISpeechContinuousRecognitionSession";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "6a213c04-6614-49f8-99a2-b5e9b3a085c8";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_AutoStopSilenceTimeout: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
        put_AutoStopSilenceTimeout: *const fn(self: *anyopaque, value: TimeSpan) callconv(.winapi) HRESULT,
        StartAsync: *const fn(self: *anyopaque, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        StartAsync: *const fn(self: *anyopaque, mode: SpeechContinuousRecognitionMode, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        StopAsync: *const fn(self: *anyopaque, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        CancelAsync: *const fn(self: *anyopaque, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        PauseAsync: *const fn(self: *anyopaque, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        Resume: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        add_Completed: *const fn(self: *anyopaque, value: *TypedEventHandler(SpeechContinuousRecognitionSession,SpeechContinuousRecognitionCompletedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_Completed: *const fn(self: *anyopaque, value: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_ResultGenerated: *const fn(self: *anyopaque, value: *TypedEventHandler(SpeechContinuousRecognitionSession,SpeechContinuousRecognitionResultGeneratedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_ResultGenerated: *const fn(self: *anyopaque, value: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const ISpeechRecognitionCompilationResult = extern struct {
    vtable: *const VTable,
    pub fn getStatus(self: *@This()) core.HResult!SpeechRecognitionResultStatus {
        var _r: SpeechRecognitionResultStatus = undefined;
        const _c = self.vtable.get_Status(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.SpeechRecognition.ISpeechRecognitionCompilationResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "407e6c5d-6ac7-4da4-9cc1-2fce32cf7489";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Status: *const fn(self: *anyopaque, _r: *SpeechRecognitionResultStatus) callconv(.winapi) HRESULT,
    };
};
pub const ISpeechRecognitionConstraint = extern struct {
    vtable: *const VTable,
    pub fn getIsEnabled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsEnabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIsEnabled(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsEnabled(@ptrCast(self), value);
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
    pub fn getType(self: *@This()) core.HResult!SpeechRecognitionConstraintType {
        var _r: SpeechRecognitionConstraintType = undefined;
        const _c = self.vtable.get_Type(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getProbability(self: *@This()) core.HResult!SpeechRecognitionConstraintProbability {
        var _r: SpeechRecognitionConstraintProbability = undefined;
        const _c = self.vtable.get_Probability(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putProbability(self: *@This(), value: SpeechRecognitionConstraintProbability) core.HResult!void {
        const _c = self.vtable.put_Probability(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Media.SpeechRecognition.ISpeechRecognitionConstraint";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "79ac1628-4d68-43c4-8911-40dc4101b55b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IsEnabled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IsEnabled: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_Tag: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_Tag: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_Type: *const fn(self: *anyopaque, _r: *SpeechRecognitionConstraintType) callconv(.winapi) HRESULT,
        get_Probability: *const fn(self: *anyopaque, _r: *SpeechRecognitionConstraintProbability) callconv(.winapi) HRESULT,
        put_Probability: *const fn(self: *anyopaque, value: SpeechRecognitionConstraintProbability) callconv(.winapi) HRESULT,
    };
};
pub const ISpeechRecognitionGrammarFileConstraint = extern struct {
    vtable: *const VTable,
    pub fn getGrammarFile(self: *@This()) core.HResult!*StorageFile {
        var _r: *StorageFile = undefined;
        const _c = self.vtable.get_GrammarFile(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.SpeechRecognition.ISpeechRecognitionGrammarFileConstraint";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b5031a8f-85ca-4fa4-b11a-474fc41b3835";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_GrammarFile: *const fn(self: *anyopaque, _r: **StorageFile) callconv(.winapi) HRESULT,
    };
};
pub const ISpeechRecognitionGrammarFileConstraintFactory = extern struct {
    vtable: *const VTable,
    pub fn Create(self: *@This(), file: *StorageFile) core.HResult!*SpeechRecognitionGrammarFileConstraint {
        var _r: *SpeechRecognitionGrammarFileConstraint = undefined;
        const _c = self.vtable.Create(@ptrCast(self), file, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateWithTag(self: *@This(), file: *StorageFile, tag: HSTRING) core.HResult!*SpeechRecognitionGrammarFileConstraint {
        var _r: *SpeechRecognitionGrammarFileConstraint = undefined;
        const _c = self.vtable.CreateWithTag(@ptrCast(self), file, tag, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.SpeechRecognition.ISpeechRecognitionGrammarFileConstraintFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3da770eb-c479-4c27-9f19-89974ef392d1";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Create: *const fn(self: *anyopaque, file: *StorageFile, _r: **SpeechRecognitionGrammarFileConstraint) callconv(.winapi) HRESULT,
        CreateWithTag: *const fn(self: *anyopaque, file: *StorageFile, tag: HSTRING, _r: **SpeechRecognitionGrammarFileConstraint) callconv(.winapi) HRESULT,
    };
};
pub const ISpeechRecognitionHypothesis = extern struct {
    vtable: *const VTable,
    pub fn getText(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Text(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.SpeechRecognition.ISpeechRecognitionHypothesis";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7a7b25b0-99c5-4f7d-bf84-10aa1302b634";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Text: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const ISpeechRecognitionHypothesisGeneratedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getHypothesis(self: *@This()) core.HResult!*SpeechRecognitionHypothesis {
        var _r: *SpeechRecognitionHypothesis = undefined;
        const _c = self.vtable.get_Hypothesis(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.SpeechRecognition.ISpeechRecognitionHypothesisGeneratedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "55161a7a-8023-5866-411d-1213bb271476";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Hypothesis: *const fn(self: *anyopaque, _r: **SpeechRecognitionHypothesis) callconv(.winapi) HRESULT,
    };
};
pub const ISpeechRecognitionListConstraint = extern struct {
    vtable: *const VTable,
    pub fn getCommands(self: *@This()) core.HResult!*IVector(HSTRING) {
        var _r: *IVector(HSTRING) = undefined;
        const _c = self.vtable.get_Commands(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.SpeechRecognition.ISpeechRecognitionListConstraint";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "09c487e9-e4ad-4526-81f2-4946fb481d98";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Commands: *const fn(self: *anyopaque, _r: **IVector(HSTRING)) callconv(.winapi) HRESULT,
    };
};
pub const ISpeechRecognitionListConstraintFactory = extern struct {
    vtable: *const VTable,
    pub fn Create(self: *@This(), commands: *IIterable(HSTRING)) core.HResult!*SpeechRecognitionListConstraint {
        var _r: *SpeechRecognitionListConstraint = undefined;
        const _c = self.vtable.Create(@ptrCast(self), commands, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateWithTag(self: *@This(), commands: *IIterable(HSTRING), tag: HSTRING) core.HResult!*SpeechRecognitionListConstraint {
        var _r: *SpeechRecognitionListConstraint = undefined;
        const _c = self.vtable.CreateWithTag(@ptrCast(self), commands, tag, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.SpeechRecognition.ISpeechRecognitionListConstraintFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "40f3cdc7-562a-426a-9f3b-3b4e282be1d5";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Create: *const fn(self: *anyopaque, commands: *IIterable(HSTRING), _r: **SpeechRecognitionListConstraint) callconv(.winapi) HRESULT,
        CreateWithTag: *const fn(self: *anyopaque, commands: *IIterable(HSTRING), tag: HSTRING, _r: **SpeechRecognitionListConstraint) callconv(.winapi) HRESULT,
    };
};
pub const ISpeechRecognitionQualityDegradingEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getProblem(self: *@This()) core.HResult!SpeechRecognitionAudioProblem {
        var _r: SpeechRecognitionAudioProblem = undefined;
        const _c = self.vtable.get_Problem(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.SpeechRecognition.ISpeechRecognitionQualityDegradingEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "4fe24105-8c3a-4c7e-8d0a-5bd4f5b14ad8";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Problem: *const fn(self: *anyopaque, _r: *SpeechRecognitionAudioProblem) callconv(.winapi) HRESULT,
    };
};
pub const ISpeechRecognitionResult = extern struct {
    vtable: *const VTable,
    pub fn getStatus(self: *@This()) core.HResult!SpeechRecognitionResultStatus {
        var _r: SpeechRecognitionResultStatus = undefined;
        const _c = self.vtable.get_Status(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getText(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Text(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getConfidence(self: *@This()) core.HResult!SpeechRecognitionConfidence {
        var _r: SpeechRecognitionConfidence = undefined;
        const _c = self.vtable.get_Confidence(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSemanticInterpretation(self: *@This()) core.HResult!*SpeechRecognitionSemanticInterpretation {
        var _r: *SpeechRecognitionSemanticInterpretation = undefined;
        const _c = self.vtable.get_SemanticInterpretation(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetAlternates(self: *@This(), maxAlternates: u32) core.HResult!*IVectorView(SpeechRecognitionResult) {
        var _r: *IVectorView(SpeechRecognitionResult) = undefined;
        const _c = self.vtable.GetAlternates(@ptrCast(self), maxAlternates, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getConstraint(self: *@This()) core.HResult!*ISpeechRecognitionConstraint {
        var _r: *ISpeechRecognitionConstraint = undefined;
        const _c = self.vtable.get_Constraint(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRulePath(self: *@This()) core.HResult!*IVectorView(HSTRING) {
        var _r: *IVectorView(HSTRING) = undefined;
        const _c = self.vtable.get_RulePath(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRawConfidence(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_RawConfidence(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.SpeechRecognition.ISpeechRecognitionResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "4e303157-034e-4652-857e-d0454cc4beec";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Status: *const fn(self: *anyopaque, _r: *SpeechRecognitionResultStatus) callconv(.winapi) HRESULT,
        get_Text: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Confidence: *const fn(self: *anyopaque, _r: *SpeechRecognitionConfidence) callconv(.winapi) HRESULT,
        get_SemanticInterpretation: *const fn(self: *anyopaque, _r: **SpeechRecognitionSemanticInterpretation) callconv(.winapi) HRESULT,
        GetAlternates: *const fn(self: *anyopaque, maxAlternates: u32, _r: **IVectorView(SpeechRecognitionResult)) callconv(.winapi) HRESULT,
        get_Constraint: *const fn(self: *anyopaque, _r: **ISpeechRecognitionConstraint) callconv(.winapi) HRESULT,
        get_RulePath: *const fn(self: *anyopaque, _r: **IVectorView(HSTRING)) callconv(.winapi) HRESULT,
        get_RawConfidence: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
    };
};
pub const ISpeechRecognitionResult2 = extern struct {
    vtable: *const VTable,
    pub fn getPhraseStartTime(self: *@This()) core.HResult!DateTime {
        var _r: DateTime = undefined;
        const _c = self.vtable.get_PhraseStartTime(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPhraseDuration(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_PhraseDuration(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.SpeechRecognition.ISpeechRecognitionResult2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "af7ed1ba-451b-4166-a0c1-1ffe84032d03";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_PhraseStartTime: *const fn(self: *anyopaque, _r: *DateTime) callconv(.winapi) HRESULT,
        get_PhraseDuration: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
    };
};
pub const ISpeechRecognitionSemanticInterpretation = extern struct {
    vtable: *const VTable,
    pub fn getProperties(self: *@This()) core.HResult!*IMapView(HSTRING,IVectorView(HSTRING)) {
        var _r: *IMapView(HSTRING,IVectorView(HSTRING)) = undefined;
        const _c = self.vtable.get_Properties(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.SpeechRecognition.ISpeechRecognitionSemanticInterpretation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "aae1da9b-7e32-4c1f-89fe-0c65f486f52e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Properties: *const fn(self: *anyopaque, _r: **IMapView(HSTRING,IVectorView(HSTRING))) callconv(.winapi) HRESULT,
    };
};
pub const ISpeechRecognitionTopicConstraint = extern struct {
    vtable: *const VTable,
    pub fn getScenario(self: *@This()) core.HResult!SpeechRecognitionScenario {
        var _r: SpeechRecognitionScenario = undefined;
        const _c = self.vtable.get_Scenario(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTopicHint(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_TopicHint(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.SpeechRecognition.ISpeechRecognitionTopicConstraint";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "bf6fdf19-825d-4e69-a681-36e48cf1c93e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Scenario: *const fn(self: *anyopaque, _r: *SpeechRecognitionScenario) callconv(.winapi) HRESULT,
        get_TopicHint: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const ISpeechRecognitionTopicConstraintFactory = extern struct {
    vtable: *const VTable,
    pub fn Create(self: *@This(), scenario: SpeechRecognitionScenario, topicHint: HSTRING) core.HResult!*SpeechRecognitionTopicConstraint {
        var _r: *SpeechRecognitionTopicConstraint = undefined;
        const _c = self.vtable.Create(@ptrCast(self), scenario, topicHint, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateWithTag(self: *@This(), scenario: SpeechRecognitionScenario, topicHint: HSTRING, tag: HSTRING) core.HResult!*SpeechRecognitionTopicConstraint {
        var _r: *SpeechRecognitionTopicConstraint = undefined;
        const _c = self.vtable.CreateWithTag(@ptrCast(self), scenario, topicHint, tag, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.SpeechRecognition.ISpeechRecognitionTopicConstraintFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "6e6863df-ec05-47d7-a5df-56a3431e58d2";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Create: *const fn(self: *anyopaque, scenario: SpeechRecognitionScenario, topicHint: HSTRING, _r: **SpeechRecognitionTopicConstraint) callconv(.winapi) HRESULT,
        CreateWithTag: *const fn(self: *anyopaque, scenario: SpeechRecognitionScenario, topicHint: HSTRING, tag: HSTRING, _r: **SpeechRecognitionTopicConstraint) callconv(.winapi) HRESULT,
    };
};
pub const ISpeechRecognitionVoiceCommandDefinitionConstraint = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.Media.SpeechRecognition.ISpeechRecognitionVoiceCommandDefinitionConstraint";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f2791c2b-1ef4-4ae7-9d77-b6ff10b8a3c2";
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
pub const ISpeechRecognizer = extern struct {
    vtable: *const VTable,
    pub fn getCurrentLanguage(self: *@This()) core.HResult!*Language {
        var _r: *Language = undefined;
        const _c = self.vtable.get_CurrentLanguage(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getConstraints(self: *@This()) core.HResult!*IVector(ISpeechRecognitionConstraint) {
        var _r: *IVector(ISpeechRecognitionConstraint) = undefined;
        const _c = self.vtable.get_Constraints(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTimeouts(self: *@This()) core.HResult!*SpeechRecognizerTimeouts {
        var _r: *SpeechRecognizerTimeouts = undefined;
        const _c = self.vtable.get_Timeouts(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getUIOptions(self: *@This()) core.HResult!*SpeechRecognizerUIOptions {
        var _r: *SpeechRecognizerUIOptions = undefined;
        const _c = self.vtable.get_UIOptions(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CompileConstraintsAsync(self: *@This()) core.HResult!*IAsyncOperation(SpeechRecognitionCompilationResult) {
        var _r: *IAsyncOperation(SpeechRecognitionCompilationResult) = undefined;
        const _c = self.vtable.CompileConstraintsAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RecognizeAsync(self: *@This()) core.HResult!*IAsyncOperation(SpeechRecognitionResult) {
        var _r: *IAsyncOperation(SpeechRecognitionResult) = undefined;
        const _c = self.vtable.RecognizeAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RecognizeWithUIAsync(self: *@This()) core.HResult!*IAsyncOperation(SpeechRecognitionResult) {
        var _r: *IAsyncOperation(SpeechRecognitionResult) = undefined;
        const _c = self.vtable.RecognizeWithUIAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addRecognitionQualityDegrading(self: *@This(), speechRecognitionQualityDegradingHandler: *TypedEventHandler(SpeechRecognizer,SpeechRecognitionQualityDegradingEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_RecognitionQualityDegrading(@ptrCast(self), speechRecognitionQualityDegradingHandler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeRecognitionQualityDegrading(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_RecognitionQualityDegrading(@ptrCast(self), cookie);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addStateChanged(self: *@This(), stateChangedHandler: *TypedEventHandler(SpeechRecognizer,SpeechRecognizerStateChangedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_StateChanged(@ptrCast(self), stateChangedHandler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeStateChanged(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_StateChanged(@ptrCast(self), cookie);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Media.SpeechRecognition.ISpeechRecognizer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "0bc3c9cb-c26a-40f2-aeb5-8096b2e48073";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_CurrentLanguage: *const fn(self: *anyopaque, _r: **Language) callconv(.winapi) HRESULT,
        get_Constraints: *const fn(self: *anyopaque, _r: **IVector(ISpeechRecognitionConstraint)) callconv(.winapi) HRESULT,
        get_Timeouts: *const fn(self: *anyopaque, _r: **SpeechRecognizerTimeouts) callconv(.winapi) HRESULT,
        get_UIOptions: *const fn(self: *anyopaque, _r: **SpeechRecognizerUIOptions) callconv(.winapi) HRESULT,
        CompileConstraintsAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(SpeechRecognitionCompilationResult)) callconv(.winapi) HRESULT,
        RecognizeAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(SpeechRecognitionResult)) callconv(.winapi) HRESULT,
        RecognizeWithUIAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(SpeechRecognitionResult)) callconv(.winapi) HRESULT,
        add_RecognitionQualityDegrading: *const fn(self: *anyopaque, speechRecognitionQualityDegradingHandler: *TypedEventHandler(SpeechRecognizer,SpeechRecognitionQualityDegradingEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_RecognitionQualityDegrading: *const fn(self: *anyopaque, cookie: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_StateChanged: *const fn(self: *anyopaque, stateChangedHandler: *TypedEventHandler(SpeechRecognizer,SpeechRecognizerStateChangedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_StateChanged: *const fn(self: *anyopaque, cookie: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const ISpeechRecognizer2 = extern struct {
    vtable: *const VTable,
    pub fn getContinuousRecognitionSession(self: *@This()) core.HResult!*SpeechContinuousRecognitionSession {
        var _r: *SpeechContinuousRecognitionSession = undefined;
        const _c = self.vtable.get_ContinuousRecognitionSession(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getState(self: *@This()) core.HResult!SpeechRecognizerState {
        var _r: SpeechRecognizerState = undefined;
        const _c = self.vtable.get_State(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn StopRecognitionAsync(self: *@This()) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.StopRecognitionAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addHypothesisGenerated(self: *@This(), value: *TypedEventHandler(SpeechRecognizer,SpeechRecognitionHypothesisGeneratedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_HypothesisGenerated(@ptrCast(self), value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeHypothesisGenerated(self: *@This(), value: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_HypothesisGenerated(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Media.SpeechRecognition.ISpeechRecognizer2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "63c9baf1-91e3-4ea4-86a1-7c3867d084a6";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ContinuousRecognitionSession: *const fn(self: *anyopaque, _r: **SpeechContinuousRecognitionSession) callconv(.winapi) HRESULT,
        get_State: *const fn(self: *anyopaque, _r: *SpeechRecognizerState) callconv(.winapi) HRESULT,
        StopRecognitionAsync: *const fn(self: *anyopaque, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        add_HypothesisGenerated: *const fn(self: *anyopaque, value: *TypedEventHandler(SpeechRecognizer,SpeechRecognitionHypothesisGeneratedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_HypothesisGenerated: *const fn(self: *anyopaque, value: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const ISpeechRecognizerFactory = extern struct {
    vtable: *const VTable,
    pub fn Create(self: *@This(), language: *Language) core.HResult!*SpeechRecognizer {
        var _r: *SpeechRecognizer = undefined;
        const _c = self.vtable.Create(@ptrCast(self), language, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.SpeechRecognition.ISpeechRecognizerFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "60c488dd-7fb8-4033-ac70-d046f64818e1";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Create: *const fn(self: *anyopaque, language: *Language, _r: **SpeechRecognizer) callconv(.winapi) HRESULT,
    };
};
pub const ISpeechRecognizerStateChangedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getState(self: *@This()) core.HResult!SpeechRecognizerState {
        var _r: SpeechRecognizerState = undefined;
        const _c = self.vtable.get_State(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.SpeechRecognition.ISpeechRecognizerStateChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "563d4f09-ba03-4bad-ad81-ddc6c4dab0c3";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_State: *const fn(self: *anyopaque, _r: *SpeechRecognizerState) callconv(.winapi) HRESULT,
    };
};
pub const ISpeechRecognizerStatics = extern struct {
    vtable: *const VTable,
    pub fn getSystemSpeechLanguage(self: *@This()) core.HResult!*Language {
        var _r: *Language = undefined;
        const _c = self.vtable.get_SystemSpeechLanguage(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSupportedTopicLanguages(self: *@This()) core.HResult!*IVectorView(Language) {
        var _r: *IVectorView(Language) = undefined;
        const _c = self.vtable.get_SupportedTopicLanguages(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSupportedGrammarLanguages(self: *@This()) core.HResult!*IVectorView(Language) {
        var _r: *IVectorView(Language) = undefined;
        const _c = self.vtable.get_SupportedGrammarLanguages(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.SpeechRecognition.ISpeechRecognizerStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "87a35eac-a7dc-4b0b-bcc9-24f47c0b7ebf";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_SystemSpeechLanguage: *const fn(self: *anyopaque, _r: **Language) callconv(.winapi) HRESULT,
        get_SupportedTopicLanguages: *const fn(self: *anyopaque, _r: **IVectorView(Language)) callconv(.winapi) HRESULT,
        get_SupportedGrammarLanguages: *const fn(self: *anyopaque, _r: **IVectorView(Language)) callconv(.winapi) HRESULT,
    };
};
pub const ISpeechRecognizerStatics2 = extern struct {
    vtable: *const VTable,
    pub fn TrySetSystemSpeechLanguageAsync(self: *@This(), speechLanguage: *Language) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.TrySetSystemSpeechLanguageAsync(@ptrCast(self), speechLanguage, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.SpeechRecognition.ISpeechRecognizerStatics2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1d1b0d95-7565-4ef9-a2f3-ba15162a96cf";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        TrySetSystemSpeechLanguageAsync: *const fn(self: *anyopaque, speechLanguage: *Language, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
    };
};
pub const ISpeechRecognizerTimeouts = extern struct {
    vtable: *const VTable,
    pub fn getInitialSilenceTimeout(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_InitialSilenceTimeout(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putInitialSilenceTimeout(self: *@This(), value: TimeSpan) core.HResult!void {
        const _c = self.vtable.put_InitialSilenceTimeout(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getEndSilenceTimeout(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_EndSilenceTimeout(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putEndSilenceTimeout(self: *@This(), value: TimeSpan) core.HResult!void {
        const _c = self.vtable.put_EndSilenceTimeout(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getBabbleTimeout(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_BabbleTimeout(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putBabbleTimeout(self: *@This(), value: TimeSpan) core.HResult!void {
        const _c = self.vtable.put_BabbleTimeout(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Media.SpeechRecognition.ISpeechRecognizerTimeouts";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2ef76fca-6a3c-4dca-a153-df1bc88a79af";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_InitialSilenceTimeout: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
        put_InitialSilenceTimeout: *const fn(self: *anyopaque, value: TimeSpan) callconv(.winapi) HRESULT,
        get_EndSilenceTimeout: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
        put_EndSilenceTimeout: *const fn(self: *anyopaque, value: TimeSpan) callconv(.winapi) HRESULT,
        get_BabbleTimeout: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
        put_BabbleTimeout: *const fn(self: *anyopaque, value: TimeSpan) callconv(.winapi) HRESULT,
    };
};
pub const ISpeechRecognizerUIOptions = extern struct {
    vtable: *const VTable,
    pub fn getExampleText(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ExampleText(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putExampleText(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_ExampleText(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getAudiblePrompt(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_AudiblePrompt(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putAudiblePrompt(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_AudiblePrompt(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIsReadBackEnabled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsReadBackEnabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIsReadBackEnabled(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsReadBackEnabled(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getShowConfirmation(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_ShowConfirmation(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putShowConfirmation(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_ShowConfirmation(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Media.SpeechRecognition.ISpeechRecognizerUIOptions";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7888d641-b92b-44ba-a25f-d1864630641f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ExampleText: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_ExampleText: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_AudiblePrompt: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_AudiblePrompt: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_IsReadBackEnabled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IsReadBackEnabled: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_ShowConfirmation: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_ShowConfirmation: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
    };
};
pub const SpeechContinuousRecognitionCompletedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getStatus(self: *@This()) core.HResult!SpeechRecognitionResultStatus {
        const this: *ISpeechContinuousRecognitionCompletedEventArgs = @ptrCast(self);
        return try this.getStatus();
    }
    pub const NAME: []const u8 = "Windows.Media.SpeechRecognition.SpeechContinuousRecognitionCompletedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISpeechContinuousRecognitionCompletedEventArgs.GUID;
    pub const IID: Guid = ISpeechContinuousRecognitionCompletedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISpeechContinuousRecognitionCompletedEventArgs.SIGNATURE);
};
pub const SpeechContinuousRecognitionMode = enum(i32) {
    Default = 0,
    PauseOnRecognition = 1,
};
pub const SpeechContinuousRecognitionResultGeneratedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getResult(self: *@This()) core.HResult!*SpeechRecognitionResult {
        const this: *ISpeechContinuousRecognitionResultGeneratedEventArgs = @ptrCast(self);
        return try this.getResult();
    }
    pub const NAME: []const u8 = "Windows.Media.SpeechRecognition.SpeechContinuousRecognitionResultGeneratedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISpeechContinuousRecognitionResultGeneratedEventArgs.GUID;
    pub const IID: Guid = ISpeechContinuousRecognitionResultGeneratedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISpeechContinuousRecognitionResultGeneratedEventArgs.SIGNATURE);
};
pub const SpeechContinuousRecognitionSession = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getAutoStopSilenceTimeout(self: *@This()) core.HResult!TimeSpan {
        const this: *ISpeechContinuousRecognitionSession = @ptrCast(self);
        return try this.getAutoStopSilenceTimeout();
    }
    pub fn putAutoStopSilenceTimeout(self: *@This(), value: TimeSpan) core.HResult!void {
        const this: *ISpeechContinuousRecognitionSession = @ptrCast(self);
        return try this.putAutoStopSilenceTimeout(value);
    }
    pub fn StartAsync(self: *@This()) core.HResult!*IAsyncAction {
        const this: *ISpeechContinuousRecognitionSession = @ptrCast(self);
        return try this.StartAsync();
    }
    pub fn StartAsync(self: *@This(), mode: SpeechContinuousRecognitionMode) core.HResult!*IAsyncAction {
        const this: *ISpeechContinuousRecognitionSession = @ptrCast(self);
        return try this.StartAsync(mode);
    }
    pub fn StopAsync(self: *@This()) core.HResult!*IAsyncAction {
        const this: *ISpeechContinuousRecognitionSession = @ptrCast(self);
        return try this.StopAsync();
    }
    pub fn CancelAsync(self: *@This()) core.HResult!*IAsyncAction {
        const this: *ISpeechContinuousRecognitionSession = @ptrCast(self);
        return try this.CancelAsync();
    }
    pub fn PauseAsync(self: *@This()) core.HResult!*IAsyncAction {
        const this: *ISpeechContinuousRecognitionSession = @ptrCast(self);
        return try this.PauseAsync();
    }
    pub fn Resume(self: *@This()) core.HResult!void {
        const this: *ISpeechContinuousRecognitionSession = @ptrCast(self);
        return try this.Resume();
    }
    pub fn addCompleted(self: *@This(), value: *TypedEventHandler(SpeechContinuousRecognitionSession,SpeechContinuousRecognitionCompletedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *ISpeechContinuousRecognitionSession = @ptrCast(self);
        return try this.addCompleted(value);
    }
    pub fn removeCompleted(self: *@This(), value: EventRegistrationToken) core.HResult!void {
        const this: *ISpeechContinuousRecognitionSession = @ptrCast(self);
        return try this.removeCompleted(value);
    }
    pub fn addResultGenerated(self: *@This(), value: *TypedEventHandler(SpeechContinuousRecognitionSession,SpeechContinuousRecognitionResultGeneratedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *ISpeechContinuousRecognitionSession = @ptrCast(self);
        return try this.addResultGenerated(value);
    }
    pub fn removeResultGenerated(self: *@This(), value: EventRegistrationToken) core.HResult!void {
        const this: *ISpeechContinuousRecognitionSession = @ptrCast(self);
        return try this.removeResultGenerated(value);
    }
    pub const NAME: []const u8 = "Windows.Media.SpeechRecognition.SpeechContinuousRecognitionSession";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISpeechContinuousRecognitionSession.GUID;
    pub const IID: Guid = ISpeechContinuousRecognitionSession.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISpeechContinuousRecognitionSession.SIGNATURE);
};
pub const SpeechRecognitionAudioProblem = enum(i32) {
    None = 0,
    TooNoisy = 1,
    NoSignal = 2,
    TooLoud = 3,
    TooQuiet = 4,
    TooFast = 5,
    TooSlow = 6,
};
pub const SpeechRecognitionCompilationResult = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getStatus(self: *@This()) core.HResult!SpeechRecognitionResultStatus {
        const this: *ISpeechRecognitionCompilationResult = @ptrCast(self);
        return try this.getStatus();
    }
    pub const NAME: []const u8 = "Windows.Media.SpeechRecognition.SpeechRecognitionCompilationResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISpeechRecognitionCompilationResult.GUID;
    pub const IID: Guid = ISpeechRecognitionCompilationResult.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISpeechRecognitionCompilationResult.SIGNATURE);
};
pub const SpeechRecognitionConfidence = enum(i32) {
    High = 0,
    Medium = 1,
    Low = 2,
    Rejected = 3,
};
pub const SpeechRecognitionConstraintProbability = enum(i32) {
    Default = 0,
    Min = 1,
    Max = 2,
};
pub const SpeechRecognitionConstraintType = enum(i32) {
    Topic = 0,
    List = 1,
    Grammar = 2,
    VoiceCommandDefinition = 3,
};
pub const SpeechRecognitionGrammarFileConstraint = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getGrammarFile(self: *@This()) core.HResult!*StorageFile {
        const this: *ISpeechRecognitionGrammarFileConstraint = @ptrCast(self);
        return try this.getGrammarFile();
    }
    pub fn getIsEnabled(self: *@This()) core.HResult!bool {
        var this: ?*ISpeechRecognitionConstraint = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISpeechRecognitionConstraint.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsEnabled();
    }
    pub fn putIsEnabled(self: *@This(), value: bool) core.HResult!void {
        var this: ?*ISpeechRecognitionConstraint = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISpeechRecognitionConstraint.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putIsEnabled(value);
    }
    pub fn getTag(self: *@This()) core.HResult!HSTRING {
        var this: ?*ISpeechRecognitionConstraint = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISpeechRecognitionConstraint.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getTag();
    }
    pub fn putTag(self: *@This(), value: HSTRING) core.HResult!void {
        var this: ?*ISpeechRecognitionConstraint = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISpeechRecognitionConstraint.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putTag(value);
    }
    pub fn getType(self: *@This()) core.HResult!SpeechRecognitionConstraintType {
        var this: ?*ISpeechRecognitionConstraint = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISpeechRecognitionConstraint.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getType();
    }
    pub fn getProbability(self: *@This()) core.HResult!SpeechRecognitionConstraintProbability {
        var this: ?*ISpeechRecognitionConstraint = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISpeechRecognitionConstraint.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getProbability();
    }
    pub fn putProbability(self: *@This(), value: SpeechRecognitionConstraintProbability) core.HResult!void {
        var this: ?*ISpeechRecognitionConstraint = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISpeechRecognitionConstraint.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putProbability(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn Create(file: *StorageFile) core.HResult!*SpeechRecognitionGrammarFileConstraint {
        const factory = @This().ISpeechRecognitionGrammarFileConstraintFactoryCache.get();
        return try factory.Create(file);
    }
    pub fn CreateWithTag(file: *StorageFile, tag: HSTRING) core.HResult!*SpeechRecognitionGrammarFileConstraint {
        const factory = @This().ISpeechRecognitionGrammarFileConstraintFactoryCache.get();
        return try factory.CreateWithTag(file, tag);
    }
    pub const NAME: []const u8 = "Windows.Media.SpeechRecognition.SpeechRecognitionGrammarFileConstraint";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISpeechRecognitionGrammarFileConstraint.GUID;
    pub const IID: Guid = ISpeechRecognitionGrammarFileConstraint.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISpeechRecognitionGrammarFileConstraint.SIGNATURE);
    var _ISpeechRecognitionGrammarFileConstraintFactoryCache: FactoryCache(ISpeechRecognitionGrammarFileConstraintFactory, RUNTIME_NAME) = .{};
};
pub const SpeechRecognitionHypothesis = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getText(self: *@This()) core.HResult!HSTRING {
        const this: *ISpeechRecognitionHypothesis = @ptrCast(self);
        return try this.getText();
    }
    pub const NAME: []const u8 = "Windows.Media.SpeechRecognition.SpeechRecognitionHypothesis";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISpeechRecognitionHypothesis.GUID;
    pub const IID: Guid = ISpeechRecognitionHypothesis.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISpeechRecognitionHypothesis.SIGNATURE);
};
pub const SpeechRecognitionHypothesisGeneratedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getHypothesis(self: *@This()) core.HResult!*SpeechRecognitionHypothesis {
        const this: *ISpeechRecognitionHypothesisGeneratedEventArgs = @ptrCast(self);
        return try this.getHypothesis();
    }
    pub const NAME: []const u8 = "Windows.Media.SpeechRecognition.SpeechRecognitionHypothesisGeneratedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISpeechRecognitionHypothesisGeneratedEventArgs.GUID;
    pub const IID: Guid = ISpeechRecognitionHypothesisGeneratedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISpeechRecognitionHypothesisGeneratedEventArgs.SIGNATURE);
};
pub const SpeechRecognitionListConstraint = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getCommands(self: *@This()) core.HResult!*IVector(HSTRING) {
        const this: *ISpeechRecognitionListConstraint = @ptrCast(self);
        return try this.getCommands();
    }
    pub fn getIsEnabled(self: *@This()) core.HResult!bool {
        var this: ?*ISpeechRecognitionConstraint = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISpeechRecognitionConstraint.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsEnabled();
    }
    pub fn putIsEnabled(self: *@This(), value: bool) core.HResult!void {
        var this: ?*ISpeechRecognitionConstraint = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISpeechRecognitionConstraint.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putIsEnabled(value);
    }
    pub fn getTag(self: *@This()) core.HResult!HSTRING {
        var this: ?*ISpeechRecognitionConstraint = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISpeechRecognitionConstraint.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getTag();
    }
    pub fn putTag(self: *@This(), value: HSTRING) core.HResult!void {
        var this: ?*ISpeechRecognitionConstraint = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISpeechRecognitionConstraint.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putTag(value);
    }
    pub fn getType(self: *@This()) core.HResult!SpeechRecognitionConstraintType {
        var this: ?*ISpeechRecognitionConstraint = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISpeechRecognitionConstraint.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getType();
    }
    pub fn getProbability(self: *@This()) core.HResult!SpeechRecognitionConstraintProbability {
        var this: ?*ISpeechRecognitionConstraint = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISpeechRecognitionConstraint.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getProbability();
    }
    pub fn putProbability(self: *@This(), value: SpeechRecognitionConstraintProbability) core.HResult!void {
        var this: ?*ISpeechRecognitionConstraint = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISpeechRecognitionConstraint.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putProbability(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn Create(commands: *IIterable(HSTRING)) core.HResult!*SpeechRecognitionListConstraint {
        const factory = @This().ISpeechRecognitionListConstraintFactoryCache.get();
        return try factory.Create(commands);
    }
    pub fn CreateWithTag(commands: *IIterable(HSTRING), tag: HSTRING) core.HResult!*SpeechRecognitionListConstraint {
        const factory = @This().ISpeechRecognitionListConstraintFactoryCache.get();
        return try factory.CreateWithTag(commands, tag);
    }
    pub const NAME: []const u8 = "Windows.Media.SpeechRecognition.SpeechRecognitionListConstraint";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISpeechRecognitionListConstraint.GUID;
    pub const IID: Guid = ISpeechRecognitionListConstraint.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISpeechRecognitionListConstraint.SIGNATURE);
    var _ISpeechRecognitionListConstraintFactoryCache: FactoryCache(ISpeechRecognitionListConstraintFactory, RUNTIME_NAME) = .{};
};
pub const SpeechRecognitionQualityDegradingEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getProblem(self: *@This()) core.HResult!SpeechRecognitionAudioProblem {
        const this: *ISpeechRecognitionQualityDegradingEventArgs = @ptrCast(self);
        return try this.getProblem();
    }
    pub const NAME: []const u8 = "Windows.Media.SpeechRecognition.SpeechRecognitionQualityDegradingEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISpeechRecognitionQualityDegradingEventArgs.GUID;
    pub const IID: Guid = ISpeechRecognitionQualityDegradingEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISpeechRecognitionQualityDegradingEventArgs.SIGNATURE);
};
pub const SpeechRecognitionResult = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getStatus(self: *@This()) core.HResult!SpeechRecognitionResultStatus {
        const this: *ISpeechRecognitionResult = @ptrCast(self);
        return try this.getStatus();
    }
    pub fn getText(self: *@This()) core.HResult!HSTRING {
        const this: *ISpeechRecognitionResult = @ptrCast(self);
        return try this.getText();
    }
    pub fn getConfidence(self: *@This()) core.HResult!SpeechRecognitionConfidence {
        const this: *ISpeechRecognitionResult = @ptrCast(self);
        return try this.getConfidence();
    }
    pub fn getSemanticInterpretation(self: *@This()) core.HResult!*SpeechRecognitionSemanticInterpretation {
        const this: *ISpeechRecognitionResult = @ptrCast(self);
        return try this.getSemanticInterpretation();
    }
    pub fn GetAlternates(self: *@This(), maxAlternates: u32) core.HResult!*IVectorView(SpeechRecognitionResult) {
        const this: *ISpeechRecognitionResult = @ptrCast(self);
        return try this.GetAlternates(maxAlternates);
    }
    pub fn getConstraint(self: *@This()) core.HResult!*ISpeechRecognitionConstraint {
        const this: *ISpeechRecognitionResult = @ptrCast(self);
        return try this.getConstraint();
    }
    pub fn getRulePath(self: *@This()) core.HResult!*IVectorView(HSTRING) {
        const this: *ISpeechRecognitionResult = @ptrCast(self);
        return try this.getRulePath();
    }
    pub fn getRawConfidence(self: *@This()) core.HResult!f64 {
        const this: *ISpeechRecognitionResult = @ptrCast(self);
        return try this.getRawConfidence();
    }
    pub fn getPhraseStartTime(self: *@This()) core.HResult!DateTime {
        var this: ?*ISpeechRecognitionResult2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISpeechRecognitionResult2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getPhraseStartTime();
    }
    pub fn getPhraseDuration(self: *@This()) core.HResult!TimeSpan {
        var this: ?*ISpeechRecognitionResult2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISpeechRecognitionResult2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getPhraseDuration();
    }
    pub const NAME: []const u8 = "Windows.Media.SpeechRecognition.SpeechRecognitionResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISpeechRecognitionResult.GUID;
    pub const IID: Guid = ISpeechRecognitionResult.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISpeechRecognitionResult.SIGNATURE);
};
pub const SpeechRecognitionResultStatus = enum(i32) {
    Success = 0,
    TopicLanguageNotSupported = 1,
    GrammarLanguageMismatch = 2,
    GrammarCompilationFailure = 3,
    AudioQualityFailure = 4,
    UserCanceled = 5,
    Unknown = 6,
    TimeoutExceeded = 7,
    PauseLimitExceeded = 8,
    NetworkFailure = 9,
    MicrophoneUnavailable = 10,
};
pub const SpeechRecognitionScenario = enum(i32) {
    WebSearch = 0,
    Dictation = 1,
    FormFilling = 2,
};
pub const SpeechRecognitionSemanticInterpretation = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getProperties(self: *@This()) core.HResult!*IMapView(HSTRING,IVectorView(HSTRING)) {
        const this: *ISpeechRecognitionSemanticInterpretation = @ptrCast(self);
        return try this.getProperties();
    }
    pub const NAME: []const u8 = "Windows.Media.SpeechRecognition.SpeechRecognitionSemanticInterpretation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISpeechRecognitionSemanticInterpretation.GUID;
    pub const IID: Guid = ISpeechRecognitionSemanticInterpretation.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISpeechRecognitionSemanticInterpretation.SIGNATURE);
};
pub const SpeechRecognitionTopicConstraint = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getScenario(self: *@This()) core.HResult!SpeechRecognitionScenario {
        const this: *ISpeechRecognitionTopicConstraint = @ptrCast(self);
        return try this.getScenario();
    }
    pub fn getTopicHint(self: *@This()) core.HResult!HSTRING {
        const this: *ISpeechRecognitionTopicConstraint = @ptrCast(self);
        return try this.getTopicHint();
    }
    pub fn getIsEnabled(self: *@This()) core.HResult!bool {
        var this: ?*ISpeechRecognitionConstraint = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISpeechRecognitionConstraint.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsEnabled();
    }
    pub fn putIsEnabled(self: *@This(), value: bool) core.HResult!void {
        var this: ?*ISpeechRecognitionConstraint = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISpeechRecognitionConstraint.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putIsEnabled(value);
    }
    pub fn getTag(self: *@This()) core.HResult!HSTRING {
        var this: ?*ISpeechRecognitionConstraint = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISpeechRecognitionConstraint.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getTag();
    }
    pub fn putTag(self: *@This(), value: HSTRING) core.HResult!void {
        var this: ?*ISpeechRecognitionConstraint = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISpeechRecognitionConstraint.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putTag(value);
    }
    pub fn getType(self: *@This()) core.HResult!SpeechRecognitionConstraintType {
        var this: ?*ISpeechRecognitionConstraint = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISpeechRecognitionConstraint.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getType();
    }
    pub fn getProbability(self: *@This()) core.HResult!SpeechRecognitionConstraintProbability {
        var this: ?*ISpeechRecognitionConstraint = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISpeechRecognitionConstraint.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getProbability();
    }
    pub fn putProbability(self: *@This(), value: SpeechRecognitionConstraintProbability) core.HResult!void {
        var this: ?*ISpeechRecognitionConstraint = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISpeechRecognitionConstraint.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putProbability(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn Create(scenario: SpeechRecognitionScenario, topicHint: HSTRING) core.HResult!*SpeechRecognitionTopicConstraint {
        const factory = @This().ISpeechRecognitionTopicConstraintFactoryCache.get();
        return try factory.Create(scenario, topicHint);
    }
    pub fn CreateWithTag(scenario: SpeechRecognitionScenario, topicHint: HSTRING, tag: HSTRING) core.HResult!*SpeechRecognitionTopicConstraint {
        const factory = @This().ISpeechRecognitionTopicConstraintFactoryCache.get();
        return try factory.CreateWithTag(scenario, topicHint, tag);
    }
    pub const NAME: []const u8 = "Windows.Media.SpeechRecognition.SpeechRecognitionTopicConstraint";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISpeechRecognitionTopicConstraint.GUID;
    pub const IID: Guid = ISpeechRecognitionTopicConstraint.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISpeechRecognitionTopicConstraint.SIGNATURE);
    var _ISpeechRecognitionTopicConstraintFactoryCache: FactoryCache(ISpeechRecognitionTopicConstraintFactory, RUNTIME_NAME) = .{};
};
pub const SpeechRecognitionVoiceCommandDefinitionConstraint = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getIsEnabled(self: *@This()) core.HResult!bool {
        var this: ?*ISpeechRecognitionConstraint = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISpeechRecognitionConstraint.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsEnabled();
    }
    pub fn putIsEnabled(self: *@This(), value: bool) core.HResult!void {
        var this: ?*ISpeechRecognitionConstraint = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISpeechRecognitionConstraint.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putIsEnabled(value);
    }
    pub fn getTag(self: *@This()) core.HResult!HSTRING {
        var this: ?*ISpeechRecognitionConstraint = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISpeechRecognitionConstraint.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getTag();
    }
    pub fn putTag(self: *@This(), value: HSTRING) core.HResult!void {
        var this: ?*ISpeechRecognitionConstraint = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISpeechRecognitionConstraint.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putTag(value);
    }
    pub fn getType(self: *@This()) core.HResult!SpeechRecognitionConstraintType {
        var this: ?*ISpeechRecognitionConstraint = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISpeechRecognitionConstraint.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getType();
    }
    pub fn getProbability(self: *@This()) core.HResult!SpeechRecognitionConstraintProbability {
        var this: ?*ISpeechRecognitionConstraint = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISpeechRecognitionConstraint.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getProbability();
    }
    pub fn putProbability(self: *@This(), value: SpeechRecognitionConstraintProbability) core.HResult!void {
        var this: ?*ISpeechRecognitionConstraint = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISpeechRecognitionConstraint.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putProbability(value);
    }
    pub const NAME: []const u8 = "Windows.Media.SpeechRecognition.SpeechRecognitionVoiceCommandDefinitionConstraint";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISpeechRecognitionVoiceCommandDefinitionConstraint.GUID;
    pub const IID: Guid = ISpeechRecognitionVoiceCommandDefinitionConstraint.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISpeechRecognitionVoiceCommandDefinitionConstraint.SIGNATURE);
};
pub const SpeechRecognizer = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getCurrentLanguage(self: *@This()) core.HResult!*Language {
        const this: *ISpeechRecognizer = @ptrCast(self);
        return try this.getCurrentLanguage();
    }
    pub fn getConstraints(self: *@This()) core.HResult!*IVector(ISpeechRecognitionConstraint) {
        const this: *ISpeechRecognizer = @ptrCast(self);
        return try this.getConstraints();
    }
    pub fn getTimeouts(self: *@This()) core.HResult!*SpeechRecognizerTimeouts {
        const this: *ISpeechRecognizer = @ptrCast(self);
        return try this.getTimeouts();
    }
    pub fn getUIOptions(self: *@This()) core.HResult!*SpeechRecognizerUIOptions {
        const this: *ISpeechRecognizer = @ptrCast(self);
        return try this.getUIOptions();
    }
    pub fn CompileConstraintsAsync(self: *@This()) core.HResult!*IAsyncOperation(SpeechRecognitionCompilationResult) {
        const this: *ISpeechRecognizer = @ptrCast(self);
        return try this.CompileConstraintsAsync();
    }
    pub fn RecognizeAsync(self: *@This()) core.HResult!*IAsyncOperation(SpeechRecognitionResult) {
        const this: *ISpeechRecognizer = @ptrCast(self);
        return try this.RecognizeAsync();
    }
    pub fn RecognizeWithUIAsync(self: *@This()) core.HResult!*IAsyncOperation(SpeechRecognitionResult) {
        const this: *ISpeechRecognizer = @ptrCast(self);
        return try this.RecognizeWithUIAsync();
    }
    pub fn addRecognitionQualityDegrading(self: *@This(), speechRecognitionQualityDegradingHandler: *TypedEventHandler(SpeechRecognizer,SpeechRecognitionQualityDegradingEventArgs)) core.HResult!EventRegistrationToken {
        const this: *ISpeechRecognizer = @ptrCast(self);
        return try this.addRecognitionQualityDegrading(speechRecognitionQualityDegradingHandler);
    }
    pub fn removeRecognitionQualityDegrading(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const this: *ISpeechRecognizer = @ptrCast(self);
        return try this.removeRecognitionQualityDegrading(cookie);
    }
    pub fn addStateChanged(self: *@This(), stateChangedHandler: *TypedEventHandler(SpeechRecognizer,SpeechRecognizerStateChangedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *ISpeechRecognizer = @ptrCast(self);
        return try this.addStateChanged(stateChangedHandler);
    }
    pub fn removeStateChanged(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const this: *ISpeechRecognizer = @ptrCast(self);
        return try this.removeStateChanged(cookie);
    }
    pub fn Close(self: *@This()) core.HResult!void {
        var this: ?*IClosable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IClosable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Close();
    }
    pub fn getContinuousRecognitionSession(self: *@This()) core.HResult!*SpeechContinuousRecognitionSession {
        var this: ?*ISpeechRecognizer2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISpeechRecognizer2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getContinuousRecognitionSession();
    }
    pub fn getState(self: *@This()) core.HResult!SpeechRecognizerState {
        var this: ?*ISpeechRecognizer2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISpeechRecognizer2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getState();
    }
    pub fn StopRecognitionAsync(self: *@This()) core.HResult!*IAsyncAction {
        var this: ?*ISpeechRecognizer2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISpeechRecognizer2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.StopRecognitionAsync();
    }
    pub fn addHypothesisGenerated(self: *@This(), value: *TypedEventHandler(SpeechRecognizer,SpeechRecognitionHypothesisGeneratedEventArgs)) core.HResult!EventRegistrationToken {
        var this: ?*ISpeechRecognizer2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISpeechRecognizer2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addHypothesisGenerated(value);
    }
    pub fn removeHypothesisGenerated(self: *@This(), value: EventRegistrationToken) core.HResult!void {
        var this: ?*ISpeechRecognizer2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISpeechRecognizer2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removeHypothesisGenerated(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&ISpeechRecognizer.IID)));
    }
    pub fn Create(language: *Language) core.HResult!*SpeechRecognizer {
        const factory = @This().ISpeechRecognizerFactoryCache.get();
        return try factory.Create(language);
    }
    pub fn getSystemSpeechLanguage() core.HResult!*Language {
        const factory = @This().ISpeechRecognizerStaticsCache.get();
        return try factory.getSystemSpeechLanguage();
    }
    pub fn getSupportedTopicLanguages() core.HResult!*IVectorView(Language) {
        const factory = @This().ISpeechRecognizerStaticsCache.get();
        return try factory.getSupportedTopicLanguages();
    }
    pub fn getSupportedGrammarLanguages() core.HResult!*IVectorView(Language) {
        const factory = @This().ISpeechRecognizerStaticsCache.get();
        return try factory.getSupportedGrammarLanguages();
    }
    pub fn TrySetSystemSpeechLanguageAsync(speechLanguage: *Language) core.HResult!*IAsyncOperation(bool) {
        const factory = @This().ISpeechRecognizerStatics2Cache.get();
        return try factory.TrySetSystemSpeechLanguageAsync(speechLanguage);
    }
    pub const NAME: []const u8 = "Windows.Media.SpeechRecognition.SpeechRecognizer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISpeechRecognizer.GUID;
    pub const IID: Guid = ISpeechRecognizer.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISpeechRecognizer.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _ISpeechRecognizerFactoryCache: FactoryCache(ISpeechRecognizerFactory, RUNTIME_NAME) = .{};
    var _ISpeechRecognizerStaticsCache: FactoryCache(ISpeechRecognizerStatics, RUNTIME_NAME) = .{};
    var _ISpeechRecognizerStatics2Cache: FactoryCache(ISpeechRecognizerStatics2, RUNTIME_NAME) = .{};
};
pub const SpeechRecognizerState = enum(i32) {
    Idle = 0,
    Capturing = 1,
    Processing = 2,
    SoundStarted = 3,
    SoundEnded = 4,
    SpeechDetected = 5,
    Paused = 6,
};
pub const SpeechRecognizerStateChangedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getState(self: *@This()) core.HResult!SpeechRecognizerState {
        const this: *ISpeechRecognizerStateChangedEventArgs = @ptrCast(self);
        return try this.getState();
    }
    pub const NAME: []const u8 = "Windows.Media.SpeechRecognition.SpeechRecognizerStateChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISpeechRecognizerStateChangedEventArgs.GUID;
    pub const IID: Guid = ISpeechRecognizerStateChangedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISpeechRecognizerStateChangedEventArgs.SIGNATURE);
};
pub const SpeechRecognizerTimeouts = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getInitialSilenceTimeout(self: *@This()) core.HResult!TimeSpan {
        const this: *ISpeechRecognizerTimeouts = @ptrCast(self);
        return try this.getInitialSilenceTimeout();
    }
    pub fn putInitialSilenceTimeout(self: *@This(), value: TimeSpan) core.HResult!void {
        const this: *ISpeechRecognizerTimeouts = @ptrCast(self);
        return try this.putInitialSilenceTimeout(value);
    }
    pub fn getEndSilenceTimeout(self: *@This()) core.HResult!TimeSpan {
        const this: *ISpeechRecognizerTimeouts = @ptrCast(self);
        return try this.getEndSilenceTimeout();
    }
    pub fn putEndSilenceTimeout(self: *@This(), value: TimeSpan) core.HResult!void {
        const this: *ISpeechRecognizerTimeouts = @ptrCast(self);
        return try this.putEndSilenceTimeout(value);
    }
    pub fn getBabbleTimeout(self: *@This()) core.HResult!TimeSpan {
        const this: *ISpeechRecognizerTimeouts = @ptrCast(self);
        return try this.getBabbleTimeout();
    }
    pub fn putBabbleTimeout(self: *@This(), value: TimeSpan) core.HResult!void {
        const this: *ISpeechRecognizerTimeouts = @ptrCast(self);
        return try this.putBabbleTimeout(value);
    }
    pub const NAME: []const u8 = "Windows.Media.SpeechRecognition.SpeechRecognizerTimeouts";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISpeechRecognizerTimeouts.GUID;
    pub const IID: Guid = ISpeechRecognizerTimeouts.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISpeechRecognizerTimeouts.SIGNATURE);
};
pub const SpeechRecognizerUIOptions = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getExampleText(self: *@This()) core.HResult!HSTRING {
        const this: *ISpeechRecognizerUIOptions = @ptrCast(self);
        return try this.getExampleText();
    }
    pub fn putExampleText(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *ISpeechRecognizerUIOptions = @ptrCast(self);
        return try this.putExampleText(value);
    }
    pub fn getAudiblePrompt(self: *@This()) core.HResult!HSTRING {
        const this: *ISpeechRecognizerUIOptions = @ptrCast(self);
        return try this.getAudiblePrompt();
    }
    pub fn putAudiblePrompt(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *ISpeechRecognizerUIOptions = @ptrCast(self);
        return try this.putAudiblePrompt(value);
    }
    pub fn getIsReadBackEnabled(self: *@This()) core.HResult!bool {
        const this: *ISpeechRecognizerUIOptions = @ptrCast(self);
        return try this.getIsReadBackEnabled();
    }
    pub fn putIsReadBackEnabled(self: *@This(), value: bool) core.HResult!void {
        const this: *ISpeechRecognizerUIOptions = @ptrCast(self);
        return try this.putIsReadBackEnabled(value);
    }
    pub fn getShowConfirmation(self: *@This()) core.HResult!bool {
        const this: *ISpeechRecognizerUIOptions = @ptrCast(self);
        return try this.getShowConfirmation();
    }
    pub fn putShowConfirmation(self: *@This(), value: bool) core.HResult!void {
        const this: *ISpeechRecognizerUIOptions = @ptrCast(self);
        return try this.putShowConfirmation(value);
    }
    pub const NAME: []const u8 = "Windows.Media.SpeechRecognition.SpeechRecognizerUIOptions";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISpeechRecognizerUIOptions.GUID;
    pub const IID: Guid = ISpeechRecognizerUIOptions.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISpeechRecognizerUIOptions.SIGNATURE);
};
const Guid = @import("../root.zig").Guid;
const IVectorView = @import("../Foundation/Collections.zig").IVectorView;
const IUnknown = @import("../root.zig").IUnknown;
const IMapView = @import("../Foundation/Collections.zig").IMapView;
const IVector = @import("../Foundation/Collections.zig").IVector;
const IActivationFactory = @import("../Foundation.zig").IActivationFactory;
const Language = @import("../Globalization.zig").Language;
const DateTime = @import("../Foundation.zig").DateTime;
const FactoryCache = @import("../core.zig").FactoryCache;
const TrustLevel = @import("../root.zig").TrustLevel;
const TypedEventHandler = @import("../Foundation.zig").TypedEventHandler;
const IClosable = @import("../Foundation.zig").IClosable;
const HSTRING = @import("../root.zig").HSTRING;
const IIterable = @import("../Foundation/Collections.zig").IIterable;
const IInspectable = @import("../Foundation.zig").IInspectable;
const TimeSpan = @import("../Foundation.zig").TimeSpan;
const HRESULT = @import("../root.zig").HRESULT;
const IAsyncOperation = @import("../Foundation.zig").IAsyncOperation;
const core = @import("../root.zig").core;
const EventRegistrationToken = @import("../Foundation.zig").EventRegistrationToken;
const IAsyncAction = @import("../Foundation.zig").IAsyncAction;
const StorageFile = @import("../Storage.zig").StorageFile;
