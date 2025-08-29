pub const IJsonArray = extern struct {
    vtable: *const VTable,
    pub fn GetObjectAt(self: *@This(), index: u32) core.HResult!*JsonObject {
        var _r: *JsonObject = undefined;
        const _c = self.vtable.GetObjectAt(@ptrCast(self), index, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetArrayAt(self: *@This(), index: u32) core.HResult!*JsonArray {
        var _r: *JsonArray = undefined;
        const _c = self.vtable.GetArrayAt(@ptrCast(self), index, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetStringAt(self: *@This(), index: u32) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.GetStringAt(@ptrCast(self), index, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetNumberAt(self: *@This(), index: u32) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.GetNumberAt(@ptrCast(self), index, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetBooleanAt(self: *@This(), index: u32) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.GetBooleanAt(@ptrCast(self), index, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Data.Json.IJsonArray";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "08c1ddb6-0cbd-4a9a-b5d3-2f852dc37e81";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetObjectAt: *const fn(self: *anyopaque, index: u32, _r: **JsonObject) callconv(.winapi) HRESULT,
        GetArrayAt: *const fn(self: *anyopaque, index: u32, _r: **JsonArray) callconv(.winapi) HRESULT,
        GetStringAt: *const fn(self: *anyopaque, index: u32, _r: *HSTRING) callconv(.winapi) HRESULT,
        GetNumberAt: *const fn(self: *anyopaque, index: u32, _r: *f64) callconv(.winapi) HRESULT,
        GetBooleanAt: *const fn(self: *anyopaque, index: u32, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IJsonArrayStatics = extern struct {
    vtable: *const VTable,
    pub fn Parse(self: *@This(), input: HSTRING) core.HResult!*JsonArray {
        var _r: *JsonArray = undefined;
        const _c = self.vtable.Parse(@ptrCast(self), input, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryParse(self: *@This(), input: HSTRING, result: *JsonArray) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.TryParse(@ptrCast(self), input, result, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Data.Json.IJsonArrayStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "db1434a9-e164-499f-93e2-8a8f49bb90ba";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Parse: *const fn(self: *anyopaque, input: HSTRING, _r: **JsonArray) callconv(.winapi) HRESULT,
        TryParse: *const fn(self: *anyopaque, input: HSTRING, result: *JsonArray, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IJsonErrorStatics2 = extern struct {
    vtable: *const VTable,
    pub fn GetJsonStatus(self: *@This(), hresult: i32) core.HResult!JsonErrorStatus {
        var _r: JsonErrorStatus = undefined;
        const _c = self.vtable.GetJsonStatus(@ptrCast(self), hresult, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Data.Json.IJsonErrorStatics2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "404030da-87d0-436c-83ab-fc7b12c0cc26";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetJsonStatus: *const fn(self: *anyopaque, hresult: i32, _r: *JsonErrorStatus) callconv(.winapi) HRESULT,
    };
};
pub const IJsonObject = extern struct {
    vtable: *const VTable,
    pub fn GetNamedValue(self: *@This(), name: HSTRING) core.HResult!*JsonValue {
        var _r: *JsonValue = undefined;
        const _c = self.vtable.GetNamedValue(@ptrCast(self), name, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetNamedValue(self: *@This(), name: HSTRING, value: *IJsonValue) core.HResult!void {
        const _c = self.vtable.SetNamedValue(@ptrCast(self), name, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn GetNamedObject(self: *@This(), name: HSTRING) core.HResult!*JsonObject {
        var _r: *JsonObject = undefined;
        const _c = self.vtable.GetNamedObject(@ptrCast(self), name, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetNamedArray(self: *@This(), name: HSTRING) core.HResult!*JsonArray {
        var _r: *JsonArray = undefined;
        const _c = self.vtable.GetNamedArray(@ptrCast(self), name, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetNamedString(self: *@This(), name: HSTRING) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.GetNamedString(@ptrCast(self), name, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetNamedNumber(self: *@This(), name: HSTRING) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.GetNamedNumber(@ptrCast(self), name, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetNamedBoolean(self: *@This(), name: HSTRING) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.GetNamedBoolean(@ptrCast(self), name, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Data.Json.IJsonObject";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "064e24dd-29c2-4f83-9ac1-9ee11578beb3";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetNamedValue: *const fn(self: *anyopaque, name: HSTRING, _r: **JsonValue) callconv(.winapi) HRESULT,
        SetNamedValue: *const fn(self: *anyopaque, name: HSTRING, value: *IJsonValue) callconv(.winapi) HRESULT,
        GetNamedObject: *const fn(self: *anyopaque, name: HSTRING, _r: **JsonObject) callconv(.winapi) HRESULT,
        GetNamedArray: *const fn(self: *anyopaque, name: HSTRING, _r: **JsonArray) callconv(.winapi) HRESULT,
        GetNamedString: *const fn(self: *anyopaque, name: HSTRING, _r: *HSTRING) callconv(.winapi) HRESULT,
        GetNamedNumber: *const fn(self: *anyopaque, name: HSTRING, _r: *f64) callconv(.winapi) HRESULT,
        GetNamedBoolean: *const fn(self: *anyopaque, name: HSTRING, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IJsonObjectStatics = extern struct {
    vtable: *const VTable,
    pub fn Parse(self: *@This(), input: HSTRING) core.HResult!*JsonObject {
        var _r: *JsonObject = undefined;
        const _c = self.vtable.Parse(@ptrCast(self), input, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryParse(self: *@This(), input: HSTRING, result: *JsonObject) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.TryParse(@ptrCast(self), input, result, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Data.Json.IJsonObjectStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2289f159-54de-45d8-abcc-22603fa066a0";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Parse: *const fn(self: *anyopaque, input: HSTRING, _r: **JsonObject) callconv(.winapi) HRESULT,
        TryParse: *const fn(self: *anyopaque, input: HSTRING, result: *JsonObject, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IJsonObjectWithDefaultValues = extern struct {
    vtable: *const VTable,
    pub fn GetNamedValue(self: *@This(), name: HSTRING, defaultValue: *JsonValue) core.HResult!*JsonValue {
        var _r: *JsonValue = undefined;
        const _c = self.vtable.GetNamedValue(@ptrCast(self), name, defaultValue, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetNamedObject(self: *@This(), name: HSTRING, defaultValue: *JsonObject) core.HResult!*JsonObject {
        var _r: *JsonObject = undefined;
        const _c = self.vtable.GetNamedObject(@ptrCast(self), name, defaultValue, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetNamedString(self: *@This(), name: HSTRING, defaultValue: HSTRING) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.GetNamedString(@ptrCast(self), name, defaultValue, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetNamedArray(self: *@This(), name: HSTRING, defaultValue: *JsonArray) core.HResult!*JsonArray {
        var _r: *JsonArray = undefined;
        const _c = self.vtable.GetNamedArray(@ptrCast(self), name, defaultValue, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetNamedNumber(self: *@This(), name: HSTRING, defaultValue: f64) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.GetNamedNumber(@ptrCast(self), name, defaultValue, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetNamedBoolean(self: *@This(), name: HSTRING, defaultValue: bool) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.GetNamedBoolean(@ptrCast(self), name, defaultValue, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Data.Json.IJsonObjectWithDefaultValues";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d960d2a2-b7f0-4f00-8e44-d82cf415ea13";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetNamedValue: *const fn(self: *anyopaque, name: HSTRING, defaultValue: *JsonValue, _r: **JsonValue) callconv(.winapi) HRESULT,
        GetNamedObject: *const fn(self: *anyopaque, name: HSTRING, defaultValue: *JsonObject, _r: **JsonObject) callconv(.winapi) HRESULT,
        GetNamedString: *const fn(self: *anyopaque, name: HSTRING, defaultValue: HSTRING, _r: *HSTRING) callconv(.winapi) HRESULT,
        GetNamedArray: *const fn(self: *anyopaque, name: HSTRING, defaultValue: *JsonArray, _r: **JsonArray) callconv(.winapi) HRESULT,
        GetNamedNumber: *const fn(self: *anyopaque, name: HSTRING, defaultValue: f64, _r: *f64) callconv(.winapi) HRESULT,
        GetNamedBoolean: *const fn(self: *anyopaque, name: HSTRING, defaultValue: bool, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IJsonValue = extern struct {
    vtable: *const VTable,
    pub fn getValueType(self: *@This()) core.HResult!JsonValueType {
        var _r: JsonValueType = undefined;
        const _c = self.vtable.get_ValueType(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn Stringify(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.Stringify(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetString(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.GetString(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetNumber(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.GetNumber(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetBoolean(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.GetBoolean(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetArray(self: *@This()) core.HResult!*JsonArray {
        var _r: *JsonArray = undefined;
        const _c = self.vtable.GetArray(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetObject(self: *@This()) core.HResult!*JsonObject {
        var _r: *JsonObject = undefined;
        const _c = self.vtable.GetObject(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Data.Json.IJsonValue";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a3219ecb-f0b3-4dcd-beee-19d48cd3ed1e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ValueType: *const fn(self: *anyopaque, _r: *JsonValueType) callconv(.winapi) HRESULT,
        Stringify: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        GetString: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        GetNumber: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        GetBoolean: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        GetArray: *const fn(self: *anyopaque, _r: **JsonArray) callconv(.winapi) HRESULT,
        GetObject: *const fn(self: *anyopaque, _r: **JsonObject) callconv(.winapi) HRESULT,
    };
};
pub const IJsonValueStatics = extern struct {
    vtable: *const VTable,
    pub fn Parse(self: *@This(), input: HSTRING) core.HResult!*JsonValue {
        var _r: *JsonValue = undefined;
        const _c = self.vtable.Parse(@ptrCast(self), input, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryParse(self: *@This(), input: HSTRING, result: *JsonValue) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.TryParse(@ptrCast(self), input, result, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateBooleanValue(self: *@This(), input: bool) core.HResult!*JsonValue {
        var _r: *JsonValue = undefined;
        const _c = self.vtable.CreateBooleanValue(@ptrCast(self), input, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateNumberValue(self: *@This(), input: f64) core.HResult!*JsonValue {
        var _r: *JsonValue = undefined;
        const _c = self.vtable.CreateNumberValue(@ptrCast(self), input, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateStringValue(self: *@This(), input: HSTRING) core.HResult!*JsonValue {
        var _r: *JsonValue = undefined;
        const _c = self.vtable.CreateStringValue(@ptrCast(self), input, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Data.Json.IJsonValueStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5f6b544a-2f53-48e1-91a3-f78b50a6345c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Parse: *const fn(self: *anyopaque, input: HSTRING, _r: **JsonValue) callconv(.winapi) HRESULT,
        TryParse: *const fn(self: *anyopaque, input: HSTRING, result: *JsonValue, _r: *bool) callconv(.winapi) HRESULT,
        CreateBooleanValue: *const fn(self: *anyopaque, input: bool, _r: **JsonValue) callconv(.winapi) HRESULT,
        CreateNumberValue: *const fn(self: *anyopaque, input: f64, _r: **JsonValue) callconv(.winapi) HRESULT,
        CreateStringValue: *const fn(self: *anyopaque, input: HSTRING, _r: **JsonValue) callconv(.winapi) HRESULT,
    };
};
pub const IJsonValueStatics2 = extern struct {
    vtable: *const VTable,
    pub fn CreateNullValue(self: *@This()) core.HResult!*JsonValue {
        var _r: *JsonValue = undefined;
        const _c = self.vtable.CreateNullValue(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Data.Json.IJsonValueStatics2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1d9ecbe4-3fe8-4335-8392-93d8e36865f0";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateNullValue: *const fn(self: *anyopaque, _r: **JsonValue) callconv(.winapi) HRESULT,
    };
};
pub const JsonArray = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn GetObjectAt(self: *@This(), index: u32) core.HResult!*JsonObject {
        const this: *IJsonArray = @ptrCast(self);
        return try this.GetObjectAt(index);
    }
    pub fn GetArrayAt(self: *@This(), index: u32) core.HResult!*JsonArray {
        const this: *IJsonArray = @ptrCast(self);
        return try this.GetArrayAt(index);
    }
    pub fn GetStringAt(self: *@This(), index: u32) core.HResult!HSTRING {
        const this: *IJsonArray = @ptrCast(self);
        return try this.GetStringAt(index);
    }
    pub fn GetNumberAt(self: *@This(), index: u32) core.HResult!f64 {
        const this: *IJsonArray = @ptrCast(self);
        return try this.GetNumberAt(index);
    }
    pub fn GetBooleanAt(self: *@This(), index: u32) core.HResult!bool {
        const this: *IJsonArray = @ptrCast(self);
        return try this.GetBooleanAt(index);
    }
    pub fn getValueType(self: *@This()) core.HResult!JsonValueType {
        var this: ?*IJsonValue = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IJsonValue.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getValueType();
    }
    pub fn Stringify(self: *@This()) core.HResult!HSTRING {
        var this: ?*IJsonValue = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IJsonValue.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Stringify();
    }
    pub fn GetString(self: *@This()) core.HResult!HSTRING {
        var this: ?*IJsonValue = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IJsonValue.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetString();
    }
    pub fn GetNumber(self: *@This()) core.HResult!f64 {
        var this: ?*IJsonValue = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IJsonValue.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetNumber();
    }
    pub fn GetBoolean(self: *@This()) core.HResult!bool {
        var this: ?*IJsonValue = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IJsonValue.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetBoolean();
    }
    pub fn GetArray(self: *@This()) core.HResult!*JsonArray {
        var this: ?*IJsonValue = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IJsonValue.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetArray();
    }
    pub fn GetObject(self: *@This()) core.HResult!*JsonObject {
        var this: ?*IJsonValue = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IJsonValue.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetObject();
    }
    pub fn GetAt(self: *@This(), index: u32) core.HResult!*IJsonValue {
        var this: ?*IVector = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVector.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetAt(index);
    }
    pub fn getSize(self: *@This()) core.HResult!u32 {
        var this: ?*IVector = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVector.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSize();
    }
    pub fn GetView(self: *@This()) core.HResult!*IVectorView(IJsonValue) {
        var this: ?*IVector = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVector.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetView();
    }
    pub fn IndexOf(self: *@This(), value: *IJsonValue, index: u32) core.HResult!bool {
        var this: ?*IVector = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVector.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.IndexOf(value, index);
    }
    pub fn SetAt(self: *@This(), index: u32, value: *IJsonValue) core.HResult!void {
        var this: ?*IVector = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVector.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.SetAt(index, value);
    }
    pub fn InsertAt(self: *@This(), index: u32, value: *IJsonValue) core.HResult!void {
        var this: ?*IVector = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVector.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.InsertAt(index, value);
    }
    pub fn RemoveAt(self: *@This(), index: u32) core.HResult!void {
        var this: ?*IVector = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVector.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.RemoveAt(index);
    }
    pub fn Append(self: *@This(), value: *IJsonValue) core.HResult!void {
        var this: ?*IVector = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVector.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Append(value);
    }
    pub fn RemoveAtEnd(self: *@This()) core.HResult!void {
        var this: ?*IVector = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVector.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.RemoveAtEnd();
    }
    pub fn Clear(self: *@This()) core.HResult!void {
        var this: ?*IVector = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVector.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Clear();
    }
    pub fn GetMany(self: *@This(), startIndex: u32, items: [*]IJsonValue) core.HResult!u32 {
        var this: ?*IVector = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVector.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetMany(startIndex, items);
    }
    pub fn ReplaceAll(self: *@This(), items: [*]IJsonValue) core.HResult!void {
        var this: ?*IVector = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVector.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ReplaceAll(items);
    }
    pub fn First(self: *@This()) core.HResult!*IIterator(IJsonValue) {
        var this: ?*IIterable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IIterable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.First();
    }
    pub fn ToString(self: *@This()) core.HResult!HSTRING {
        var this: ?*IStringable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStringable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ToString();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IJsonArray.IID)));
    }
    pub fn Parse(input: HSTRING) core.HResult!*JsonArray {
        const factory = @This().IJsonArrayStaticsCache.get();
        return try factory.Parse(input);
    }
    pub fn TryParse(input: HSTRING, result: *JsonArray) core.HResult!bool {
        const factory = @This().IJsonArrayStaticsCache.get();
        return try factory.TryParse(input, result);
    }
    pub const NAME: []const u8 = "Windows.Data.Json.JsonArray";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IJsonArray.GUID;
    pub const IID: Guid = IJsonArray.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IJsonArray.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _IJsonArrayStaticsCache: FactoryCache(IJsonArrayStatics, RUNTIME_NAME) = .{};
};
pub const JsonError = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn GetJsonStatus(hresult: i32) core.HResult!JsonErrorStatus {
        const factory = @This().IJsonErrorStatics2Cache.get();
        return try factory.GetJsonStatus(hresult);
    }
    pub const NAME: []const u8 = "Windows.Data.Json.JsonError";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _IJsonErrorStatics2Cache: FactoryCache(IJsonErrorStatics2, RUNTIME_NAME) = .{};
};
pub const JsonErrorStatus = enum(i32) {
    Unknown = 0,
    InvalidJsonString = 1,
    InvalidJsonNumber = 2,
    JsonValueNotFound = 3,
    ImplementationLimit = 4,
};
pub const JsonObject = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn GetNamedValue(self: *@This(), name: HSTRING) core.HResult!*JsonValue {
        var this: ?*IJsonObjectWithDefaultValues = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IJsonObjectWithDefaultValues.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetNamedValue(name);
    }
    pub fn SetNamedValue(self: *@This(), name: HSTRING, value: *IJsonValue) core.HResult!void {
        const this: *IJsonObject = @ptrCast(self);
        return try this.SetNamedValue(name, value);
    }
    pub fn GetNamedObject(self: *@This(), name: HSTRING) core.HResult!*JsonObject {
        var this: ?*IJsonObjectWithDefaultValues = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IJsonObjectWithDefaultValues.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetNamedObject(name);
    }
    pub fn GetNamedArray(self: *@This(), name: HSTRING) core.HResult!*JsonArray {
        var this: ?*IJsonObjectWithDefaultValues = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IJsonObjectWithDefaultValues.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetNamedArray(name);
    }
    pub fn GetNamedString(self: *@This(), name: HSTRING) core.HResult!HSTRING {
        var this: ?*IJsonObjectWithDefaultValues = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IJsonObjectWithDefaultValues.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetNamedString(name);
    }
    pub fn GetNamedNumber(self: *@This(), name: HSTRING) core.HResult!f64 {
        var this: ?*IJsonObjectWithDefaultValues = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IJsonObjectWithDefaultValues.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetNamedNumber(name);
    }
    pub fn GetNamedBoolean(self: *@This(), name: HSTRING) core.HResult!bool {
        var this: ?*IJsonObjectWithDefaultValues = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IJsonObjectWithDefaultValues.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetNamedBoolean(name);
    }
    pub fn getValueType(self: *@This()) core.HResult!JsonValueType {
        var this: ?*IJsonValue = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IJsonValue.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getValueType();
    }
    pub fn Stringify(self: *@This()) core.HResult!HSTRING {
        var this: ?*IJsonValue = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IJsonValue.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Stringify();
    }
    pub fn GetString(self: *@This()) core.HResult!HSTRING {
        var this: ?*IJsonValue = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IJsonValue.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetString();
    }
    pub fn GetNumber(self: *@This()) core.HResult!f64 {
        var this: ?*IJsonValue = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IJsonValue.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetNumber();
    }
    pub fn GetBoolean(self: *@This()) core.HResult!bool {
        var this: ?*IJsonValue = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IJsonValue.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetBoolean();
    }
    pub fn GetArray(self: *@This()) core.HResult!*JsonArray {
        var this: ?*IJsonValue = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IJsonValue.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetArray();
    }
    pub fn GetObject(self: *@This()) core.HResult!*JsonObject {
        var this: ?*IJsonValue = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IJsonValue.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetObject();
    }
    pub fn Lookup(self: *@This(), key: HSTRING) core.HResult!*IJsonValue {
        var this: ?*IMap = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMap.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Lookup(key);
    }
    pub fn getSize(self: *@This()) core.HResult!u32 {
        var this: ?*IMap = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMap.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSize();
    }
    pub fn HasKey(self: *@This(), key: HSTRING) core.HResult!bool {
        var this: ?*IMap = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMap.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.HasKey(key);
    }
    pub fn GetView(self: *@This()) core.HResult!*IMapView(HSTRING,IJsonValue) {
        var this: ?*IMap = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMap.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetView();
    }
    pub fn Insert(self: *@This(), key: HSTRING, value: *IJsonValue) core.HResult!bool {
        var this: ?*IMap = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMap.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Insert(key, value);
    }
    pub fn Remove(self: *@This(), key: HSTRING) core.HResult!void {
        var this: ?*IMap = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMap.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Remove(key);
    }
    pub fn Clear(self: *@This()) core.HResult!void {
        var this: ?*IMap = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMap.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Clear();
    }
    pub fn First(self: *@This()) core.HResult!*IIterator(IKeyValuePair(HSTRING,IJsonValue)) {
        var this: ?*IIterable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IIterable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.First();
    }
    pub fn GetNamedValue(self: *@This(), name: HSTRING, defaultValue: *JsonValue) core.HResult!*JsonValue {
        var this: ?*IJsonObjectWithDefaultValues = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IJsonObjectWithDefaultValues.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetNamedValue(name, defaultValue);
    }
    pub fn GetNamedObject(self: *@This(), name: HSTRING, defaultValue: *JsonObject) core.HResult!*JsonObject {
        var this: ?*IJsonObjectWithDefaultValues = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IJsonObjectWithDefaultValues.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetNamedObject(name, defaultValue);
    }
    pub fn GetNamedString(self: *@This(), name: HSTRING, defaultValue: HSTRING) core.HResult!HSTRING {
        var this: ?*IJsonObjectWithDefaultValues = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IJsonObjectWithDefaultValues.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetNamedString(name, defaultValue);
    }
    pub fn GetNamedArray(self: *@This(), name: HSTRING, defaultValue: *JsonArray) core.HResult!*JsonArray {
        var this: ?*IJsonObjectWithDefaultValues = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IJsonObjectWithDefaultValues.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetNamedArray(name, defaultValue);
    }
    pub fn GetNamedNumber(self: *@This(), name: HSTRING, defaultValue: f64) core.HResult!f64 {
        var this: ?*IJsonObjectWithDefaultValues = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IJsonObjectWithDefaultValues.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetNamedNumber(name, defaultValue);
    }
    pub fn GetNamedBoolean(self: *@This(), name: HSTRING, defaultValue: bool) core.HResult!bool {
        var this: ?*IJsonObjectWithDefaultValues = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IJsonObjectWithDefaultValues.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetNamedBoolean(name, defaultValue);
    }
    pub fn ToString(self: *@This()) core.HResult!HSTRING {
        var this: ?*IStringable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStringable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ToString();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IJsonObject.IID)));
    }
    pub fn Parse(input: HSTRING) core.HResult!*JsonObject {
        const factory = @This().IJsonObjectStaticsCache.get();
        return try factory.Parse(input);
    }
    pub fn TryParse(input: HSTRING, result: *JsonObject) core.HResult!bool {
        const factory = @This().IJsonObjectStaticsCache.get();
        return try factory.TryParse(input, result);
    }
    pub const NAME: []const u8 = "Windows.Data.Json.JsonObject";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IJsonObject.GUID;
    pub const IID: Guid = IJsonObject.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IJsonObject.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _IJsonObjectStaticsCache: FactoryCache(IJsonObjectStatics, RUNTIME_NAME) = .{};
};
pub const JsonValue = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getValueType(self: *@This()) core.HResult!JsonValueType {
        const this: *IJsonValue = @ptrCast(self);
        return try this.getValueType();
    }
    pub fn Stringify(self: *@This()) core.HResult!HSTRING {
        const this: *IJsonValue = @ptrCast(self);
        return try this.Stringify();
    }
    pub fn GetString(self: *@This()) core.HResult!HSTRING {
        const this: *IJsonValue = @ptrCast(self);
        return try this.GetString();
    }
    pub fn GetNumber(self: *@This()) core.HResult!f64 {
        const this: *IJsonValue = @ptrCast(self);
        return try this.GetNumber();
    }
    pub fn GetBoolean(self: *@This()) core.HResult!bool {
        const this: *IJsonValue = @ptrCast(self);
        return try this.GetBoolean();
    }
    pub fn GetArray(self: *@This()) core.HResult!*JsonArray {
        const this: *IJsonValue = @ptrCast(self);
        return try this.GetArray();
    }
    pub fn GetObject(self: *@This()) core.HResult!*JsonObject {
        const this: *IJsonValue = @ptrCast(self);
        return try this.GetObject();
    }
    pub fn ToString(self: *@This()) core.HResult!HSTRING {
        var this: ?*IStringable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStringable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ToString();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn Parse(input: HSTRING) core.HResult!*JsonValue {
        const factory = @This().IJsonValueStaticsCache.get();
        return try factory.Parse(input);
    }
    pub fn TryParse(input: HSTRING, result: *JsonValue) core.HResult!bool {
        const factory = @This().IJsonValueStaticsCache.get();
        return try factory.TryParse(input, result);
    }
    pub fn CreateBooleanValue(input: bool) core.HResult!*JsonValue {
        const factory = @This().IJsonValueStaticsCache.get();
        return try factory.CreateBooleanValue(input);
    }
    pub fn CreateNumberValue(input: f64) core.HResult!*JsonValue {
        const factory = @This().IJsonValueStaticsCache.get();
        return try factory.CreateNumberValue(input);
    }
    pub fn CreateStringValue(input: HSTRING) core.HResult!*JsonValue {
        const factory = @This().IJsonValueStaticsCache.get();
        return try factory.CreateStringValue(input);
    }
    pub fn CreateNullValue() core.HResult!*JsonValue {
        const factory = @This().IJsonValueStatics2Cache.get();
        return try factory.CreateNullValue();
    }
    pub const NAME: []const u8 = "Windows.Data.Json.JsonValue";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IJsonValue.GUID;
    pub const IID: Guid = IJsonValue.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IJsonValue.SIGNATURE);
    var _IJsonValueStaticsCache: FactoryCache(IJsonValueStatics, RUNTIME_NAME) = .{};
    var _IJsonValueStatics2Cache: FactoryCache(IJsonValueStatics2, RUNTIME_NAME) = .{};
};
pub const JsonValueType = enum(i32) {
    Null = 0,
    Boolean = 1,
    Number = 2,
    String = 3,
    Array = 4,
    Object = 5,
};
const IUnknown = @import("../root.zig").IUnknown;
const IActivationFactory = @import("../Foundation.zig").IActivationFactory;
const Guid = @import("../root.zig").Guid;
const IVectorView = @import("../Foundation/Collections.zig").IVectorView;
const IIterable = @import("../Foundation/Collections.zig").IIterable;
const IInspectable = @import("../Foundation.zig").IInspectable;
const IMapView = @import("../Foundation/Collections.zig").IMapView;
const IVector = @import("../Foundation/Collections.zig").IVector;
const IMap = @import("../Foundation/Collections.zig").IMap;
const IStringable = @import("../Foundation.zig").IStringable;
const IKeyValuePair = @import("../Foundation/Collections.zig").IKeyValuePair;
const HRESULT = @import("../root.zig").HRESULT;
const FactoryCache = @import("../core.zig").FactoryCache;
const core = @import("../root.zig").core;
const IIterator = @import("../Foundation/Collections.zig").IIterator;
const TrustLevel = @import("../root.zig").TrustLevel;
const HSTRING = @import("../root.zig").HSTRING;
