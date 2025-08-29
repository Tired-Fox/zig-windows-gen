pub const IIndexedResourceCandidate = extern struct {
    vtable: *const VTable,
    pub fn getType(self: *@This()) core.HResult!IndexedResourceType {
        var _r: IndexedResourceType = undefined;
        const _c = self.vtable.get_Type(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getUri(self: *@This()) core.HResult!*Uri {
        var _r: *Uri = undefined;
        const _c = self.vtable.get_Uri(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMetadata(self: *@This()) core.HResult!*IMapView(HSTRING,HSTRING) {
        var _r: *IMapView(HSTRING,HSTRING) = undefined;
        const _c = self.vtable.get_Metadata(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getQualifiers(self: *@This()) core.HResult!*IVectorView(IndexedResourceQualifier) {
        var _r: *IVectorView(IndexedResourceQualifier) = undefined;
        const _c = self.vtable.get_Qualifiers(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getValueAsString(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ValueAsString(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetQualifierValue(self: *@This(), qualifierName: HSTRING) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.GetQualifierValue(@ptrCast(self), qualifierName, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Resources.Management.IIndexedResourceCandidate";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "0e619ef3-faec-4414-a9d7-54acd5953f29";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Type: *const fn(self: *anyopaque, _r: *IndexedResourceType) callconv(.winapi) HRESULT,
        get_Uri: *const fn(self: *anyopaque, _r: **Uri) callconv(.winapi) HRESULT,
        get_Metadata: *const fn(self: *anyopaque, _r: **IMapView(HSTRING,HSTRING)) callconv(.winapi) HRESULT,
        get_Qualifiers: *const fn(self: *anyopaque, _r: **IVectorView(IndexedResourceQualifier)) callconv(.winapi) HRESULT,
        get_ValueAsString: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        GetQualifierValue: *const fn(self: *anyopaque, qualifierName: HSTRING, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IIndexedResourceQualifier = extern struct {
    vtable: *const VTable,
    pub fn getQualifierName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_QualifierName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getQualifierValue(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_QualifierValue(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Resources.Management.IIndexedResourceQualifier";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "dae3bb9b-d304-497f-a168-a340042c8adb";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_QualifierName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_QualifierValue: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IResourceIndexer = extern struct {
    vtable: *const VTable,
    pub fn IndexFilePath(self: *@This(), filePath: *Uri) core.HResult!*IndexedResourceCandidate {
        var _r: *IndexedResourceCandidate = undefined;
        const _c = self.vtable.IndexFilePath(@ptrCast(self), filePath, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn IndexFileContentsAsync(self: *@This(), file: *Uri) core.HResult!*IAsyncOperation(IVectorView(IndexedResourceCandidate)) {
        var _r: *IAsyncOperation(IVectorView(IndexedResourceCandidate)) = undefined;
        const _c = self.vtable.IndexFileContentsAsync(@ptrCast(self), file, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Resources.Management.IResourceIndexer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2d4cf9a5-e32f-4ab2-8748-96350a016da3";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        IndexFilePath: *const fn(self: *anyopaque, filePath: *Uri, _r: **IndexedResourceCandidate) callconv(.winapi) HRESULT,
        IndexFileContentsAsync: *const fn(self: *anyopaque, file: *Uri, _r: **IAsyncOperation(IVectorView(IndexedResourceCandidate))) callconv(.winapi) HRESULT,
    };
};
pub const IResourceIndexerFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateResourceIndexer(self: *@This(), projectRoot: *Uri) core.HResult!*ResourceIndexer {
        var _r: *ResourceIndexer = undefined;
        const _c = self.vtable.CreateResourceIndexer(@ptrCast(self), projectRoot, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Resources.Management.IResourceIndexerFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b8de3f09-31cd-4d97-bd30-8d39f742bc61";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateResourceIndexer: *const fn(self: *anyopaque, projectRoot: *Uri, _r: **ResourceIndexer) callconv(.winapi) HRESULT,
    };
};
pub const IResourceIndexerFactory2 = extern struct {
    vtable: *const VTable,
    pub fn CreateResourceIndexerWithExtension(self: *@This(), projectRoot: *Uri, extensionDllPath: *Uri) core.HResult!*ResourceIndexer {
        var _r: *ResourceIndexer = undefined;
        const _c = self.vtable.CreateResourceIndexerWithExtension(@ptrCast(self), projectRoot, extensionDllPath, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Resources.Management.IResourceIndexerFactory2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "6040f18d-d5e5-4b60-9201-cd279cbcfed9";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateResourceIndexerWithExtension: *const fn(self: *anyopaque, projectRoot: *Uri, extensionDllPath: *Uri, _r: **ResourceIndexer) callconv(.winapi) HRESULT,
    };
};
pub const IndexedResourceCandidate = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getType(self: *@This()) core.HResult!IndexedResourceType {
        const this: *IIndexedResourceCandidate = @ptrCast(self);
        return try this.getType();
    }
    pub fn getUri(self: *@This()) core.HResult!*Uri {
        const this: *IIndexedResourceCandidate = @ptrCast(self);
        return try this.getUri();
    }
    pub fn getMetadata(self: *@This()) core.HResult!*IMapView(HSTRING,HSTRING) {
        const this: *IIndexedResourceCandidate = @ptrCast(self);
        return try this.getMetadata();
    }
    pub fn getQualifiers(self: *@This()) core.HResult!*IVectorView(IndexedResourceQualifier) {
        const this: *IIndexedResourceCandidate = @ptrCast(self);
        return try this.getQualifiers();
    }
    pub fn getValueAsString(self: *@This()) core.HResult!HSTRING {
        const this: *IIndexedResourceCandidate = @ptrCast(self);
        return try this.getValueAsString();
    }
    pub fn GetQualifierValue(self: *@This(), qualifierName: HSTRING) core.HResult!HSTRING {
        const this: *IIndexedResourceCandidate = @ptrCast(self);
        return try this.GetQualifierValue(qualifierName);
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Resources.Management.IndexedResourceCandidate";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IIndexedResourceCandidate.GUID;
    pub const IID: Guid = IIndexedResourceCandidate.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IIndexedResourceCandidate.SIGNATURE);
};
pub const IndexedResourceQualifier = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getQualifierName(self: *@This()) core.HResult!HSTRING {
        const this: *IIndexedResourceQualifier = @ptrCast(self);
        return try this.getQualifierName();
    }
    pub fn getQualifierValue(self: *@This()) core.HResult!HSTRING {
        const this: *IIndexedResourceQualifier = @ptrCast(self);
        return try this.getQualifierValue();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Resources.Management.IndexedResourceQualifier";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IIndexedResourceQualifier.GUID;
    pub const IID: Guid = IIndexedResourceQualifier.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IIndexedResourceQualifier.SIGNATURE);
};
pub const IndexedResourceType = enum(i32) {
    String = 0,
    Path = 1,
    EmbeddedData = 2,
};
pub const ResourceIndexer = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn IndexFilePath(self: *@This(), filePath: *Uri) core.HResult!*IndexedResourceCandidate {
        const this: *IResourceIndexer = @ptrCast(self);
        return try this.IndexFilePath(filePath);
    }
    pub fn IndexFileContentsAsync(self: *@This(), file: *Uri) core.HResult!*IAsyncOperation(IVectorView(IndexedResourceCandidate)) {
        const this: *IResourceIndexer = @ptrCast(self);
        return try this.IndexFileContentsAsync(file);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateResourceIndexer(projectRoot: *Uri) core.HResult!*ResourceIndexer {
        const factory = @This().IResourceIndexerFactoryCache.get();
        return try factory.CreateResourceIndexer(projectRoot);
    }
    pub fn CreateResourceIndexerWithExtension(projectRoot: *Uri, extensionDllPath: *Uri) core.HResult!*ResourceIndexer {
        const factory = @This().IResourceIndexerFactory2Cache.get();
        return try factory.CreateResourceIndexerWithExtension(projectRoot, extensionDllPath);
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Resources.Management.ResourceIndexer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IResourceIndexer.GUID;
    pub const IID: Guid = IResourceIndexer.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IResourceIndexer.SIGNATURE);
    var _IResourceIndexerFactoryCache: FactoryCache(IResourceIndexerFactory, RUNTIME_NAME) = .{};
    var _IResourceIndexerFactory2Cache: FactoryCache(IResourceIndexerFactory2, RUNTIME_NAME) = .{};
};
const IUnknown = @import("../../root.zig").IUnknown;
const Guid = @import("../../root.zig").Guid;
const HRESULT = @import("../../root.zig").HRESULT;
const core = @import("../../root.zig").core;
const IVectorView = @import("../../Foundation/Collections.zig").IVectorView;
const IAsyncOperation = @import("../../Foundation.zig").IAsyncOperation;
const IInspectable = @import("../../Foundation.zig").IInspectable;
const FactoryCache = @import("../../core.zig").FactoryCache;
const IMapView = @import("../../Foundation/Collections.zig").IMapView;
const TrustLevel = @import("../../root.zig").TrustLevel;
const Uri = @import("../../Foundation.zig").Uri;
const HSTRING = @import("../../root.zig").HSTRING;
