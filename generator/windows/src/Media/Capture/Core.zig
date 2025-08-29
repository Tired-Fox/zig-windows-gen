pub const IVariablePhotoCapturedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getFrame(self: *@This()) core.HResult!*CapturedFrame {
        var _r: *CapturedFrame = undefined;
        const _c = self.vtable.get_Frame(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCaptureTimeOffset(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_CaptureTimeOffset(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getUsedFrameControllerIndex(self: *@This()) core.HResult!*IReference(u32) {
        var _r: *IReference(u32) = undefined;
        const _c = self.vtable.get_UsedFrameControllerIndex(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCapturedFrameControlValues(self: *@This()) core.HResult!*CapturedFrameControlValues {
        var _r: *CapturedFrameControlValues = undefined;
        const _c = self.vtable.get_CapturedFrameControlValues(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.Core.IVariablePhotoCapturedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d1eb4c5c-1b53-4e4a-8b5c-db7887ac949b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Frame: *const fn(self: *anyopaque, _r: **CapturedFrame) callconv(.winapi) HRESULT,
        get_CaptureTimeOffset: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
        get_UsedFrameControllerIndex: *const fn(self: *anyopaque, _r: **IReference(u32)) callconv(.winapi) HRESULT,
        get_CapturedFrameControlValues: *const fn(self: *anyopaque, _r: **CapturedFrameControlValues) callconv(.winapi) HRESULT,
    };
};
pub const IVariablePhotoSequenceCapture = extern struct {
    vtable: *const VTable,
    pub fn StartAsync(self: *@This()) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.StartAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn StopAsync(self: *@This()) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.StopAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FinishAsync(self: *@This()) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.FinishAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addPhotoCaptured(self: *@This(), handler: *TypedEventHandler(VariablePhotoSequenceCapture,VariablePhotoCapturedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_PhotoCaptured(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removePhotoCaptured(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_PhotoCaptured(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addStopped(self: *@This(), handler: *TypedEventHandler(VariablePhotoSequenceCapture,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_Stopped(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeStopped(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_Stopped(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.Core.IVariablePhotoSequenceCapture";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d0112d1d-031e-4041-a6d6-bd742476a8ee";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        StartAsync: *const fn(self: *anyopaque, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        StopAsync: *const fn(self: *anyopaque, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        FinishAsync: *const fn(self: *anyopaque, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        add_PhotoCaptured: *const fn(self: *anyopaque, handler: *TypedEventHandler(VariablePhotoSequenceCapture,VariablePhotoCapturedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_PhotoCaptured: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_Stopped: *const fn(self: *anyopaque, handler: *TypedEventHandler(VariablePhotoSequenceCapture,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_Stopped: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IVariablePhotoSequenceCapture2 = extern struct {
    vtable: *const VTable,
    pub fn UpdateSettingsAsync(self: *@This()) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.UpdateSettingsAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.Core.IVariablePhotoSequenceCapture2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "fe2c62bc-50b0-43e3-917c-e3b92798942f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        UpdateSettingsAsync: *const fn(self: *anyopaque, _r: **IAsyncAction) callconv(.winapi) HRESULT,
    };
};
pub const VariablePhotoCapturedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getFrame(self: *@This()) core.HResult!*CapturedFrame {
        const this: *IVariablePhotoCapturedEventArgs = @ptrCast(self);
        return try this.getFrame();
    }
    pub fn getCaptureTimeOffset(self: *@This()) core.HResult!TimeSpan {
        const this: *IVariablePhotoCapturedEventArgs = @ptrCast(self);
        return try this.getCaptureTimeOffset();
    }
    pub fn getUsedFrameControllerIndex(self: *@This()) core.HResult!*IReference(u32) {
        const this: *IVariablePhotoCapturedEventArgs = @ptrCast(self);
        return try this.getUsedFrameControllerIndex();
    }
    pub fn getCapturedFrameControlValues(self: *@This()) core.HResult!*CapturedFrameControlValues {
        const this: *IVariablePhotoCapturedEventArgs = @ptrCast(self);
        return try this.getCapturedFrameControlValues();
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.Core.VariablePhotoCapturedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IVariablePhotoCapturedEventArgs.GUID;
    pub const IID: Guid = IVariablePhotoCapturedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IVariablePhotoCapturedEventArgs.SIGNATURE);
};
pub const VariablePhotoSequenceCapture = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn StartAsync(self: *@This()) core.HResult!*IAsyncAction {
        const this: *IVariablePhotoSequenceCapture = @ptrCast(self);
        return try this.StartAsync();
    }
    pub fn StopAsync(self: *@This()) core.HResult!*IAsyncAction {
        const this: *IVariablePhotoSequenceCapture = @ptrCast(self);
        return try this.StopAsync();
    }
    pub fn FinishAsync(self: *@This()) core.HResult!*IAsyncAction {
        const this: *IVariablePhotoSequenceCapture = @ptrCast(self);
        return try this.FinishAsync();
    }
    pub fn addPhotoCaptured(self: *@This(), handler: *TypedEventHandler(VariablePhotoSequenceCapture,VariablePhotoCapturedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IVariablePhotoSequenceCapture = @ptrCast(self);
        return try this.addPhotoCaptured(handler);
    }
    pub fn removePhotoCaptured(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IVariablePhotoSequenceCapture = @ptrCast(self);
        return try this.removePhotoCaptured(token);
    }
    pub fn addStopped(self: *@This(), handler: *TypedEventHandler(VariablePhotoSequenceCapture,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *IVariablePhotoSequenceCapture = @ptrCast(self);
        return try this.addStopped(handler);
    }
    pub fn removeStopped(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IVariablePhotoSequenceCapture = @ptrCast(self);
        return try this.removeStopped(token);
    }
    pub fn UpdateSettingsAsync(self: *@This()) core.HResult!*IAsyncAction {
        var this: ?*IVariablePhotoSequenceCapture2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVariablePhotoSequenceCapture2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.UpdateSettingsAsync();
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.Core.VariablePhotoSequenceCapture";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IVariablePhotoSequenceCapture.GUID;
    pub const IID: Guid = IVariablePhotoSequenceCapture.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IVariablePhotoSequenceCapture.SIGNATURE);
};
const IUnknown = @import("../../root.zig").IUnknown;
const Guid = @import("../../root.zig").Guid;
const HRESULT = @import("../../root.zig").HRESULT;
const core = @import("../../root.zig").core;
const IInspectable = @import("../../Foundation.zig").IInspectable;
const TimeSpan = @import("../../Foundation.zig").TimeSpan;
const CapturedFrame = @import("../Capture.zig").CapturedFrame;
const IReference = @import("../../Foundation.zig").IReference;
const CapturedFrameControlValues = @import("../Capture.zig").CapturedFrameControlValues;
const EventRegistrationToken = @import("../../Foundation.zig").EventRegistrationToken;
const TrustLevel = @import("../../root.zig").TrustLevel;
const IAsyncAction = @import("../../Foundation.zig").IAsyncAction;
const TypedEventHandler = @import("../../Foundation.zig").TypedEventHandler;
const HSTRING = @import("../../root.zig").HSTRING;
