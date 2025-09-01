pub const ActivatableAttribute = extern struct {
    vtable: *const IInspectable.VTable,
    pub const NAME: []const u8 = "Windows.Foundation.Metadata.ActivatableAttribute";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
};
pub const AllowForWebAttribute = extern struct {
    vtable: *const IInspectable.VTable,
    pub const NAME: []const u8 = "Windows.Foundation.Metadata.AllowForWebAttribute";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
};
pub const AllowMultipleAttribute = extern struct {
    vtable: *const IInspectable.VTable,
    pub const NAME: []const u8 = "Windows.Foundation.Metadata.AllowMultipleAttribute";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
};
pub const ApiContractAttribute = extern struct {
    vtable: *const IInspectable.VTable,
    pub const NAME: []const u8 = "Windows.Foundation.Metadata.ApiContractAttribute";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
};
pub const ApiInformation = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn IsTypePresent(typeName: HSTRING) core.HResult!bool {
        const _f = @This().IApiInformationStaticsCache.get();
        return try _f.IsTypePresent(typeName);
    }
    pub fn IsMethodPresent(typeName: HSTRING, methodName: HSTRING) core.HResult!bool {
        const _f = @This().IApiInformationStaticsCache.get();
        return try _f.IsMethodPresent(typeName, methodName);
    }
    pub fn IsMethodPresentWithInputParameterCount(typeName: HSTRING, methodName: HSTRING, inputParameterCount: u32) core.HResult!bool {
        const _f = @This().IApiInformationStaticsCache.get();
        return try _f.IsMethodPresentWithInputParameterCount(typeName, methodName, inputParameterCount);
    }
    pub fn IsEventPresent(typeName: HSTRING, eventName: HSTRING) core.HResult!bool {
        const _f = @This().IApiInformationStaticsCache.get();
        return try _f.IsEventPresent(typeName, eventName);
    }
    pub fn IsPropertyPresent(typeName: HSTRING, propertyName: HSTRING) core.HResult!bool {
        const _f = @This().IApiInformationStaticsCache.get();
        return try _f.IsPropertyPresent(typeName, propertyName);
    }
    pub fn IsReadOnlyPropertyPresent(typeName: HSTRING, propertyName: HSTRING) core.HResult!bool {
        const _f = @This().IApiInformationStaticsCache.get();
        return try _f.IsReadOnlyPropertyPresent(typeName, propertyName);
    }
    pub fn IsWriteablePropertyPresent(typeName: HSTRING, propertyName: HSTRING) core.HResult!bool {
        const _f = @This().IApiInformationStaticsCache.get();
        return try _f.IsWriteablePropertyPresent(typeName, propertyName);
    }
    pub fn IsEnumNamedValuePresent(enumTypeName: HSTRING, valueName: HSTRING) core.HResult!bool {
        const _f = @This().IApiInformationStaticsCache.get();
        return try _f.IsEnumNamedValuePresent(enumTypeName, valueName);
    }
    pub fn IsApiContractPresent(contractName: HSTRING, majorVersion: u16) core.HResult!bool {
        const _f = @This().IApiInformationStaticsCache.get();
        return try _f.IsApiContractPresent(contractName, majorVersion);
    }
    pub fn IsApiContractPresentWithMinorVersion(contractName: HSTRING, majorVersion: u16, minorVersion: u16) core.HResult!bool {
        const _f = @This().IApiInformationStaticsCache.get();
        return try _f.IsApiContractPresentWithMinorVersion(contractName, majorVersion, minorVersion);
    }
    pub const NAME: []const u8 = "Windows.Foundation.Metadata.ApiInformation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _IApiInformationStaticsCache: FactoryCache(IApiInformationStatics, RUNTIME_NAME) = .{};
};
pub const AttributeNameAttribute = extern struct {
    vtable: *const IInspectable.VTable,
    pub const NAME: []const u8 = "Windows.Foundation.Metadata.AttributeNameAttribute";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
};
pub const AttributeTargets = enum(i32) {
    All = -1,
    Delegate = 1,
    Enum = 2,
    Event = 4,
    Field = 8,
    Interface = 16,
    Method = 64,
    Parameter = 128,
    Property = 256,
    RuntimeClass = 512,
    Struct = 1024,
    InterfaceImpl = 2048,
    ApiContract = 8192,
};
pub const AttributeUsageAttribute = extern struct {
    vtable: *const IInspectable.VTable,
    pub const NAME: []const u8 = "Windows.Foundation.Metadata.AttributeUsageAttribute";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
};
pub const ComposableAttribute = extern struct {
    vtable: *const IInspectable.VTable,
    pub const NAME: []const u8 = "Windows.Foundation.Metadata.ComposableAttribute";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
};
pub const CompositionType = enum(i32) {
    Protected = 1,
    Public = 2,
};
pub const ContractVersionAttribute = extern struct {
    vtable: *const IInspectable.VTable,
    pub const NAME: []const u8 = "Windows.Foundation.Metadata.ContractVersionAttribute";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
};
pub const DefaultAttribute = extern struct {
    vtable: *const IInspectable.VTable,
    pub const NAME: []const u8 = "Windows.Foundation.Metadata.DefaultAttribute";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
};
pub const DefaultOverloadAttribute = extern struct {
    vtable: *const IInspectable.VTable,
    pub const NAME: []const u8 = "Windows.Foundation.Metadata.DefaultOverloadAttribute";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
};
pub const DeprecatedAttribute = extern struct {
    vtable: *const IInspectable.VTable,
    pub const NAME: []const u8 = "Windows.Foundation.Metadata.DeprecatedAttribute";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
};
pub const DeprecationType = enum(i32) {
    Deprecate = 0,
    Remove = 1,
};
pub const DualApiPartitionAttribute = extern struct {
    vtable: *const IInspectable.VTable,
    pub const NAME: []const u8 = "Windows.Foundation.Metadata.DualApiPartitionAttribute";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
};
pub const ExclusiveToAttribute = extern struct {
    vtable: *const IInspectable.VTable,
    pub const NAME: []const u8 = "Windows.Foundation.Metadata.ExclusiveToAttribute";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
};
pub const ExperimentalAttribute = extern struct {
    vtable: *const IInspectable.VTable,
    pub const NAME: []const u8 = "Windows.Foundation.Metadata.ExperimentalAttribute";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
};
pub const FastAbiAttribute = extern struct {
    vtable: *const IInspectable.VTable,
    pub const NAME: []const u8 = "Windows.Foundation.Metadata.FastAbiAttribute";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
};
pub const FeatureAttribute = extern struct {
    vtable: *const IInspectable.VTable,
    pub const NAME: []const u8 = "Windows.Foundation.Metadata.FeatureAttribute";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
};
pub const FeatureStage = enum(i32) {
    AlwaysDisabled = 0,
    DisabledByDefault = 1,
    EnabledByDefault = 2,
    AlwaysEnabled = 3,
};
pub const GCPressureAmount = enum(i32) {
    Low = 0,
    Medium = 1,
    High = 2,
};
pub const GCPressureAttribute = extern struct {
    vtable: *const IInspectable.VTable,
    pub const NAME: []const u8 = "Windows.Foundation.Metadata.GCPressureAttribute";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
};
pub const GuidAttribute = extern struct {
    vtable: *const IInspectable.VTable,
    pub const NAME: []const u8 = "Windows.Foundation.Metadata.GuidAttribute";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
};
pub const HasVariantAttribute = extern struct {
    vtable: *const IInspectable.VTable,
    pub const NAME: []const u8 = "Windows.Foundation.Metadata.HasVariantAttribute";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
};
pub const IApiInformationStatics = extern struct {
    vtable: *const VTable,
    pub fn IsTypePresent(self: *@This(), typeName: HSTRING) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.IsTypePresent(@ptrCast(self), typeName, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn IsMethodPresent(self: *@This(), typeName: HSTRING, methodName: HSTRING) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.IsMethodPresent(@ptrCast(self), typeName, methodName, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn IsMethodPresentWithInputParameterCount(self: *@This(), typeName: HSTRING, methodName: HSTRING, inputParameterCount: u32) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.IsMethodPresentWithInputParameterCount(@ptrCast(self), typeName, methodName, inputParameterCount, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn IsEventPresent(self: *@This(), typeName: HSTRING, eventName: HSTRING) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.IsEventPresent(@ptrCast(self), typeName, eventName, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn IsPropertyPresent(self: *@This(), typeName: HSTRING, propertyName: HSTRING) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.IsPropertyPresent(@ptrCast(self), typeName, propertyName, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn IsReadOnlyPropertyPresent(self: *@This(), typeName: HSTRING, propertyName: HSTRING) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.IsReadOnlyPropertyPresent(@ptrCast(self), typeName, propertyName, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn IsWriteablePropertyPresent(self: *@This(), typeName: HSTRING, propertyName: HSTRING) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.IsWriteablePropertyPresent(@ptrCast(self), typeName, propertyName, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn IsEnumNamedValuePresent(self: *@This(), enumTypeName: HSTRING, valueName: HSTRING) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.IsEnumNamedValuePresent(@ptrCast(self), enumTypeName, valueName, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn IsApiContractPresent(self: *@This(), contractName: HSTRING, majorVersion: u16) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.IsApiContractPresent(@ptrCast(self), contractName, majorVersion, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn IsApiContractPresentWithMinorVersion(self: *@This(), contractName: HSTRING, majorVersion: u16, minorVersion: u16) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.IsApiContractPresentWithMinorVersion(@ptrCast(self), contractName, majorVersion, minorVersion, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Foundation.Metadata.IApiInformationStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "997439fe-f681-4a11-b416-c13a47e8ba36";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        IsTypePresent: *const fn(self: *anyopaque, typeName: HSTRING, _r: *bool) callconv(.winapi) HRESULT,
        IsMethodPresent: *const fn(self: *anyopaque, typeName: HSTRING, methodName: HSTRING, _r: *bool) callconv(.winapi) HRESULT,
        IsMethodPresentWithInputParameterCount: *const fn(self: *anyopaque, typeName: HSTRING, methodName: HSTRING, inputParameterCount: u32, _r: *bool) callconv(.winapi) HRESULT,
        IsEventPresent: *const fn(self: *anyopaque, typeName: HSTRING, eventName: HSTRING, _r: *bool) callconv(.winapi) HRESULT,
        IsPropertyPresent: *const fn(self: *anyopaque, typeName: HSTRING, propertyName: HSTRING, _r: *bool) callconv(.winapi) HRESULT,
        IsReadOnlyPropertyPresent: *const fn(self: *anyopaque, typeName: HSTRING, propertyName: HSTRING, _r: *bool) callconv(.winapi) HRESULT,
        IsWriteablePropertyPresent: *const fn(self: *anyopaque, typeName: HSTRING, propertyName: HSTRING, _r: *bool) callconv(.winapi) HRESULT,
        IsEnumNamedValuePresent: *const fn(self: *anyopaque, enumTypeName: HSTRING, valueName: HSTRING, _r: *bool) callconv(.winapi) HRESULT,
        IsApiContractPresent: *const fn(self: *anyopaque, contractName: HSTRING, majorVersion: u16, _r: *bool) callconv(.winapi) HRESULT,
        IsApiContractPresentWithMinorVersion: *const fn(self: *anyopaque, contractName: HSTRING, majorVersion: u16, minorVersion: u16, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const InternalAttribute = extern struct {
    vtable: *const IInspectable.VTable,
    pub const NAME: []const u8 = "Windows.Foundation.Metadata.InternalAttribute";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
};
pub const LengthIsAttribute = extern struct {
    vtable: *const IInspectable.VTable,
    pub const NAME: []const u8 = "Windows.Foundation.Metadata.LengthIsAttribute";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
};
pub const MarshalingBehaviorAttribute = extern struct {
    vtable: *const IInspectable.VTable,
    pub const NAME: []const u8 = "Windows.Foundation.Metadata.MarshalingBehaviorAttribute";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
};
pub const MarshalingType = enum(i32) {
    None = 1,
    Agile = 2,
    Standard = 3,
    InvalidMarshaling = 0,
};
pub const MetadataMarshalAttribute = extern struct {
    vtable: *const IInspectable.VTable,
    pub const NAME: []const u8 = "Windows.Foundation.Metadata.MetadataMarshalAttribute";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
};
pub const MuseAttribute = extern struct {
    vtable: *const IInspectable.VTable,
    pub const NAME: []const u8 = "Windows.Foundation.Metadata.MuseAttribute";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
};
pub const NoExceptionAttribute = extern struct {
    vtable: *const IInspectable.VTable,
    pub const NAME: []const u8 = "Windows.Foundation.Metadata.NoExceptionAttribute";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
};
pub const OverloadAttribute = extern struct {
    vtable: *const IInspectable.VTable,
    pub const NAME: []const u8 = "Windows.Foundation.Metadata.OverloadAttribute";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
};
pub const OverridableAttribute = extern struct {
    vtable: *const IInspectable.VTable,
    pub const NAME: []const u8 = "Windows.Foundation.Metadata.OverridableAttribute";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
};
pub const Platform = enum(i32) {
    Windows = 0,
    WindowsPhone = 1,
};
pub const PlatformAttribute = extern struct {
    vtable: *const IInspectable.VTable,
    pub const NAME: []const u8 = "Windows.Foundation.Metadata.PlatformAttribute";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
};
pub const PreviousContractVersionAttribute = extern struct {
    vtable: *const IInspectable.VTable,
    pub const NAME: []const u8 = "Windows.Foundation.Metadata.PreviousContractVersionAttribute";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
};
pub const ProtectedAttribute = extern struct {
    vtable: *const IInspectable.VTable,
    pub const NAME: []const u8 = "Windows.Foundation.Metadata.ProtectedAttribute";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
};
pub const RangeAttribute = extern struct {
    vtable: *const IInspectable.VTable,
    pub const NAME: []const u8 = "Windows.Foundation.Metadata.RangeAttribute";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
};
pub const RemoteAsyncAttribute = extern struct {
    vtable: *const IInspectable.VTable,
    pub const NAME: []const u8 = "Windows.Foundation.Metadata.RemoteAsyncAttribute";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
};
pub const StaticAttribute = extern struct {
    vtable: *const IInspectable.VTable,
    pub const NAME: []const u8 = "Windows.Foundation.Metadata.StaticAttribute";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
};
pub const ThreadingAttribute = extern struct {
    vtable: *const IInspectable.VTable,
    pub const NAME: []const u8 = "Windows.Foundation.Metadata.ThreadingAttribute";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
};
pub const ThreadingModel = enum(i32) {
    STA = 1,
    MTA = 2,
    Both = 3,
    InvalidThreading = 0,
};
pub const VariantAttribute = extern struct {
    vtable: *const IInspectable.VTable,
    pub const NAME: []const u8 = "Windows.Foundation.Metadata.VariantAttribute";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
};
pub const VersionAttribute = extern struct {
    vtable: *const IInspectable.VTable,
    pub const NAME: []const u8 = "Windows.Foundation.Metadata.VersionAttribute";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
};
pub const WebHostHiddenAttribute = extern struct {
    vtable: *const IInspectable.VTable,
    pub const NAME: []const u8 = "Windows.Foundation.Metadata.WebHostHiddenAttribute";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
};
pub const CreateFromStringAttribute = extern struct {
    vtable: *const IInspectable.VTable,
    pub const NAME: []const u8 = "Windows.Foundation.Metadata.CreateFromStringAttribute";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
};
const IUnknown = @import("../root.zig").IUnknown;
const Guid = @import("../root.zig").Guid;
const HRESULT = @import("../root.zig").HRESULT;
const core = @import("../root.zig").core;
const FactoryCache = @import("../core.zig").FactoryCache;
const IInspectable = @import("../Foundation.zig").IInspectable;
const TrustLevel = @import("../root.zig").TrustLevel;
const HSTRING = @import("../root.zig").HSTRING;
