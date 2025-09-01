pub const ISceneBoundingBox = extern struct {
    vtable: *const VTable,
    pub fn getCenter(self: *@This()) core.HResult!Vector3 {
        var _r: Vector3 = undefined;
        const _c = self.vtable.get_Center(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getExtents(self: *@This()) core.HResult!Vector3 {
        var _r: Vector3 = undefined;
        const _c = self.vtable.get_Extents(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMax(self: *@This()) core.HResult!Vector3 {
        var _r: Vector3 = undefined;
        const _c = self.vtable.get_Max(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMin(self: *@This()) core.HResult!Vector3 {
        var _r: Vector3 = undefined;
        const _c = self.vtable.get_Min(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSize(self: *@This()) core.HResult!Vector3 {
        var _r: Vector3 = undefined;
        const _c = self.vtable.get_Size(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.Scenes.ISceneBoundingBox";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5d8ffc70-c618-4083-8251-9962593114aa";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Center: *const fn(self: *anyopaque, _r: *Vector3) callconv(.winapi) HRESULT,
        get_Extents: *const fn(self: *anyopaque, _r: *Vector3) callconv(.winapi) HRESULT,
        get_Max: *const fn(self: *anyopaque, _r: *Vector3) callconv(.winapi) HRESULT,
        get_Min: *const fn(self: *anyopaque, _r: *Vector3) callconv(.winapi) HRESULT,
        get_Size: *const fn(self: *anyopaque, _r: *Vector3) callconv(.winapi) HRESULT,
    };
};
pub const ISceneComponent = extern struct {
    vtable: *const VTable,
    pub fn getComponentType(self: *@This()) core.HResult!SceneComponentType {
        var _r: SceneComponentType = undefined;
        const _c = self.vtable.get_ComponentType(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.Scenes.ISceneComponent";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ae20fc96-226c-44bd-95cb-dd5ed9ebe9a5";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ComponentType: *const fn(self: *anyopaque, _r: *SceneComponentType) callconv(.winapi) HRESULT,
    };
};
pub const ISceneComponentCollection = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Composition.Scenes.ISceneComponentCollection";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c483791c-5f46-45e4-b666-a3d2259f9b2e";
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
pub const ISceneComponentFactory = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Composition.Scenes.ISceneComponentFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5fbc5574-ddd8-5889-ab5b-d8fa716e7c9e";
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
pub const ISceneMaterial = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Composition.Scenes.ISceneMaterial";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "8ca74b7c-30df-4e07-9490-37875af1a123";
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
pub const ISceneMaterialFactory = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Composition.Scenes.ISceneMaterialFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "67536c19-a707-5254-a495-7fdc799893b9";
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
pub const ISceneMaterialInput = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Composition.Scenes.ISceneMaterialInput";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "422a1642-1ef1-485c-97e9-ae6f95ad812f";
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
pub const ISceneMaterialInputFactory = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Composition.Scenes.ISceneMaterialInputFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a88feb74-7d0a-5e4c-a748-1015af9ca74f";
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
pub const ISceneMesh = extern struct {
    vtable: *const VTable,
    pub fn getBounds(self: *@This()) core.HResult!*SceneBoundingBox {
        var _r: *SceneBoundingBox = undefined;
        const _c = self.vtable.get_Bounds(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPrimitiveTopology(self: *@This()) core.HResult!DirectXPrimitiveTopology {
        var _r: DirectXPrimitiveTopology = undefined;
        const _c = self.vtable.get_PrimitiveTopology(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putPrimitiveTopology(self: *@This(), value: DirectXPrimitiveTopology) core.HResult!void {
        const _c = self.vtable.put_PrimitiveTopology(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn FillMeshAttribute(self: *@This(), semantic: SceneAttributeSemantic, format: DirectXPixelFormat, memory: *MemoryBuffer) core.HResult!void {
        const _c = self.vtable.FillMeshAttribute(@ptrCast(self), semantic, format, memory);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.Scenes.ISceneMesh";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ee9a1530-1155-4c0c-92bd-40020cf78347";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Bounds: *const fn(self: *anyopaque, _r: **SceneBoundingBox) callconv(.winapi) HRESULT,
        get_PrimitiveTopology: *const fn(self: *anyopaque, _r: *DirectXPrimitiveTopology) callconv(.winapi) HRESULT,
        put_PrimitiveTopology: *const fn(self: *anyopaque, value: DirectXPrimitiveTopology) callconv(.winapi) HRESULT,
        FillMeshAttribute: *const fn(self: *anyopaque, semantic: SceneAttributeSemantic, format: DirectXPixelFormat, memory: *MemoryBuffer) callconv(.winapi) HRESULT,
    };
};
pub const ISceneMeshMaterialAttributeMap = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Composition.Scenes.ISceneMeshMaterialAttributeMap";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ce843171-3d43-4855-aa69-31ff988d049d";
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
pub const ISceneMeshRendererComponent = extern struct {
    vtable: *const VTable,
    pub fn getMaterial(self: *@This()) core.HResult!*SceneMaterial {
        var _r: *SceneMaterial = undefined;
        const _c = self.vtable.get_Material(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putMaterial(self: *@This(), value: *SceneMaterial) core.HResult!void {
        const _c = self.vtable.put_Material(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getMesh(self: *@This()) core.HResult!*SceneMesh {
        var _r: *SceneMesh = undefined;
        const _c = self.vtable.get_Mesh(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putMesh(self: *@This(), value: *SceneMesh) core.HResult!void {
        const _c = self.vtable.put_Mesh(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getUVMappings(self: *@This()) core.HResult!*SceneMeshMaterialAttributeMap {
        var _r: *SceneMeshMaterialAttributeMap = undefined;
        const _c = self.vtable.get_UVMappings(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.Scenes.ISceneMeshRendererComponent";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "9929f7e3-6364-477e-98fe-74ed9fd4c2de";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Material: *const fn(self: *anyopaque, _r: **SceneMaterial) callconv(.winapi) HRESULT,
        put_Material: *const fn(self: *anyopaque, value: *SceneMaterial) callconv(.winapi) HRESULT,
        get_Mesh: *const fn(self: *anyopaque, _r: **SceneMesh) callconv(.winapi) HRESULT,
        put_Mesh: *const fn(self: *anyopaque, value: *SceneMesh) callconv(.winapi) HRESULT,
        get_UVMappings: *const fn(self: *anyopaque, _r: **SceneMeshMaterialAttributeMap) callconv(.winapi) HRESULT,
    };
};
pub const ISceneMeshRendererComponentStatics = extern struct {
    vtable: *const VTable,
    pub fn Create(self: *@This(), compositor: *Compositor) core.HResult!*SceneMeshRendererComponent {
        var _r: *SceneMeshRendererComponent = undefined;
        const _c = self.vtable.Create(@ptrCast(self), compositor, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.Scenes.ISceneMeshRendererComponentStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "4954f37a-4459-4521-bd6e-2b38b8d711ea";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Create: *const fn(self: *anyopaque, compositor: *Compositor, _r: **SceneMeshRendererComponent) callconv(.winapi) HRESULT,
    };
};
pub const ISceneMeshStatics = extern struct {
    vtable: *const VTable,
    pub fn Create(self: *@This(), compositor: *Compositor) core.HResult!*SceneMesh {
        var _r: *SceneMesh = undefined;
        const _c = self.vtable.Create(@ptrCast(self), compositor, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.Scenes.ISceneMeshStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "8412316c-7b57-473f-966b-81dc277b1751";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Create: *const fn(self: *anyopaque, compositor: *Compositor, _r: **SceneMesh) callconv(.winapi) HRESULT,
    };
};
pub const ISceneMetallicRoughnessMaterial = extern struct {
    vtable: *const VTable,
    pub fn getBaseColorInput(self: *@This()) core.HResult!*SceneMaterialInput {
        var _r: *SceneMaterialInput = undefined;
        const _c = self.vtable.get_BaseColorInput(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putBaseColorInput(self: *@This(), value: *SceneMaterialInput) core.HResult!void {
        const _c = self.vtable.put_BaseColorInput(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getBaseColorFactor(self: *@This()) core.HResult!Vector4 {
        var _r: Vector4 = undefined;
        const _c = self.vtable.get_BaseColorFactor(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putBaseColorFactor(self: *@This(), value: Vector4) core.HResult!void {
        const _c = self.vtable.put_BaseColorFactor(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getMetallicFactor(self: *@This()) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.get_MetallicFactor(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putMetallicFactor(self: *@This(), value: f32) core.HResult!void {
        const _c = self.vtable.put_MetallicFactor(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getMetallicRoughnessInput(self: *@This()) core.HResult!*SceneMaterialInput {
        var _r: *SceneMaterialInput = undefined;
        const _c = self.vtable.get_MetallicRoughnessInput(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putMetallicRoughnessInput(self: *@This(), value: *SceneMaterialInput) core.HResult!void {
        const _c = self.vtable.put_MetallicRoughnessInput(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getRoughnessFactor(self: *@This()) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.get_RoughnessFactor(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putRoughnessFactor(self: *@This(), value: f32) core.HResult!void {
        const _c = self.vtable.put_RoughnessFactor(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.Scenes.ISceneMetallicRoughnessMaterial";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c1d91446-799c-429e-a4e4-5da645f18e61";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_BaseColorInput: *const fn(self: *anyopaque, _r: **SceneMaterialInput) callconv(.winapi) HRESULT,
        put_BaseColorInput: *const fn(self: *anyopaque, value: *SceneMaterialInput) callconv(.winapi) HRESULT,
        get_BaseColorFactor: *const fn(self: *anyopaque, _r: *Vector4) callconv(.winapi) HRESULT,
        put_BaseColorFactor: *const fn(self: *anyopaque, value: Vector4) callconv(.winapi) HRESULT,
        get_MetallicFactor: *const fn(self: *anyopaque, _r: *f32) callconv(.winapi) HRESULT,
        put_MetallicFactor: *const fn(self: *anyopaque, value: f32) callconv(.winapi) HRESULT,
        get_MetallicRoughnessInput: *const fn(self: *anyopaque, _r: **SceneMaterialInput) callconv(.winapi) HRESULT,
        put_MetallicRoughnessInput: *const fn(self: *anyopaque, value: *SceneMaterialInput) callconv(.winapi) HRESULT,
        get_RoughnessFactor: *const fn(self: *anyopaque, _r: *f32) callconv(.winapi) HRESULT,
        put_RoughnessFactor: *const fn(self: *anyopaque, value: f32) callconv(.winapi) HRESULT,
    };
};
pub const ISceneMetallicRoughnessMaterialStatics = extern struct {
    vtable: *const VTable,
    pub fn Create(self: *@This(), compositor: *Compositor) core.HResult!*SceneMetallicRoughnessMaterial {
        var _r: *SceneMetallicRoughnessMaterial = undefined;
        const _c = self.vtable.Create(@ptrCast(self), compositor, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.Scenes.ISceneMetallicRoughnessMaterialStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3bddca50-6d9d-4531-8dc4-b27e3e49b7ab";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Create: *const fn(self: *anyopaque, compositor: *Compositor, _r: **SceneMetallicRoughnessMaterial) callconv(.winapi) HRESULT,
    };
};
pub const ISceneModelTransform = extern struct {
    vtable: *const VTable,
    pub fn getOrientation(self: *@This()) core.HResult!Quaternion {
        var _r: Quaternion = undefined;
        const _c = self.vtable.get_Orientation(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putOrientation(self: *@This(), value: Quaternion) core.HResult!void {
        const _c = self.vtable.put_Orientation(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getRotationAngle(self: *@This()) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.get_RotationAngle(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putRotationAngle(self: *@This(), value: f32) core.HResult!void {
        const _c = self.vtable.put_RotationAngle(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getRotationAngleInDegrees(self: *@This()) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.get_RotationAngleInDegrees(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putRotationAngleInDegrees(self: *@This(), value: f32) core.HResult!void {
        const _c = self.vtable.put_RotationAngleInDegrees(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getRotationAxis(self: *@This()) core.HResult!Vector3 {
        var _r: Vector3 = undefined;
        const _c = self.vtable.get_RotationAxis(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putRotationAxis(self: *@This(), value: Vector3) core.HResult!void {
        const _c = self.vtable.put_RotationAxis(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getScale(self: *@This()) core.HResult!Vector3 {
        var _r: Vector3 = undefined;
        const _c = self.vtable.get_Scale(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putScale(self: *@This(), value: Vector3) core.HResult!void {
        const _c = self.vtable.put_Scale(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getTranslation(self: *@This()) core.HResult!Vector3 {
        var _r: Vector3 = undefined;
        const _c = self.vtable.get_Translation(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putTranslation(self: *@This(), value: Vector3) core.HResult!void {
        const _c = self.vtable.put_Translation(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.Scenes.ISceneModelTransform";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c05576c2-32b1-4269-980d-b98537100ae4";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Orientation: *const fn(self: *anyopaque, _r: *Quaternion) callconv(.winapi) HRESULT,
        put_Orientation: *const fn(self: *anyopaque, value: Quaternion) callconv(.winapi) HRESULT,
        get_RotationAngle: *const fn(self: *anyopaque, _r: *f32) callconv(.winapi) HRESULT,
        put_RotationAngle: *const fn(self: *anyopaque, value: f32) callconv(.winapi) HRESULT,
        get_RotationAngleInDegrees: *const fn(self: *anyopaque, _r: *f32) callconv(.winapi) HRESULT,
        put_RotationAngleInDegrees: *const fn(self: *anyopaque, value: f32) callconv(.winapi) HRESULT,
        get_RotationAxis: *const fn(self: *anyopaque, _r: *Vector3) callconv(.winapi) HRESULT,
        put_RotationAxis: *const fn(self: *anyopaque, value: Vector3) callconv(.winapi) HRESULT,
        get_Scale: *const fn(self: *anyopaque, _r: *Vector3) callconv(.winapi) HRESULT,
        put_Scale: *const fn(self: *anyopaque, value: Vector3) callconv(.winapi) HRESULT,
        get_Translation: *const fn(self: *anyopaque, _r: *Vector3) callconv(.winapi) HRESULT,
        put_Translation: *const fn(self: *anyopaque, value: Vector3) callconv(.winapi) HRESULT,
    };
};
pub const ISceneNode = extern struct {
    vtable: *const VTable,
    pub fn getChildren(self: *@This()) core.HResult!*SceneNodeCollection {
        var _r: *SceneNodeCollection = undefined;
        const _c = self.vtable.get_Children(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getComponents(self: *@This()) core.HResult!*SceneComponentCollection {
        var _r: *SceneComponentCollection = undefined;
        const _c = self.vtable.get_Components(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getParent(self: *@This()) core.HResult!*SceneNode {
        var _r: *SceneNode = undefined;
        const _c = self.vtable.get_Parent(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTransform(self: *@This()) core.HResult!*SceneModelTransform {
        var _r: *SceneModelTransform = undefined;
        const _c = self.vtable.get_Transform(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FindFirstComponentOfType(self: *@This(), value: SceneComponentType) core.HResult!*SceneComponent {
        var _r: *SceneComponent = undefined;
        const _c = self.vtable.FindFirstComponentOfType(@ptrCast(self), value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.Scenes.ISceneNode";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "acf2c247-f307-4581-9c41-af2e29c3b016";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Children: *const fn(self: *anyopaque, _r: **SceneNodeCollection) callconv(.winapi) HRESULT,
        get_Components: *const fn(self: *anyopaque, _r: **SceneComponentCollection) callconv(.winapi) HRESULT,
        get_Parent: *const fn(self: *anyopaque, _r: **SceneNode) callconv(.winapi) HRESULT,
        get_Transform: *const fn(self: *anyopaque, _r: **SceneModelTransform) callconv(.winapi) HRESULT,
        FindFirstComponentOfType: *const fn(self: *anyopaque, value: SceneComponentType, _r: **SceneComponent) callconv(.winapi) HRESULT,
    };
};
pub const ISceneNodeCollection = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Composition.Scenes.ISceneNodeCollection";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "29ada101-2dd9-4332-be63-60d2cf4269f2";
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
pub const ISceneNodeStatics = extern struct {
    vtable: *const VTable,
    pub fn Create(self: *@This(), compositor: *Compositor) core.HResult!*SceneNode {
        var _r: *SceneNode = undefined;
        const _c = self.vtable.Create(@ptrCast(self), compositor, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.Scenes.ISceneNodeStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "579a0faa-be9d-4210-908c-93d15feed0b7";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Create: *const fn(self: *anyopaque, compositor: *Compositor, _r: **SceneNode) callconv(.winapi) HRESULT,
    };
};
pub const ISceneObject = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Composition.Scenes.ISceneObject";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1e94249b-0f1b-49eb-a819-877d8450005b";
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
pub const ISceneObjectFactory = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Composition.Scenes.ISceneObjectFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "14fe799a-33e4-52ef-956c-44229d21f2c1";
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
pub const IScenePbrMaterial = extern struct {
    vtable: *const VTable,
    pub fn getAlphaCutoff(self: *@This()) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.get_AlphaCutoff(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putAlphaCutoff(self: *@This(), value: f32) core.HResult!void {
        const _c = self.vtable.put_AlphaCutoff(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getAlphaMode(self: *@This()) core.HResult!SceneAlphaMode {
        var _r: SceneAlphaMode = undefined;
        const _c = self.vtable.get_AlphaMode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putAlphaMode(self: *@This(), value: SceneAlphaMode) core.HResult!void {
        const _c = self.vtable.put_AlphaMode(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getEmissiveInput(self: *@This()) core.HResult!*SceneMaterialInput {
        var _r: *SceneMaterialInput = undefined;
        const _c = self.vtable.get_EmissiveInput(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putEmissiveInput(self: *@This(), value: *SceneMaterialInput) core.HResult!void {
        const _c = self.vtable.put_EmissiveInput(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getEmissiveFactor(self: *@This()) core.HResult!Vector3 {
        var _r: Vector3 = undefined;
        const _c = self.vtable.get_EmissiveFactor(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putEmissiveFactor(self: *@This(), value: Vector3) core.HResult!void {
        const _c = self.vtable.put_EmissiveFactor(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIsDoubleSided(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsDoubleSided(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIsDoubleSided(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsDoubleSided(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getNormalInput(self: *@This()) core.HResult!*SceneMaterialInput {
        var _r: *SceneMaterialInput = undefined;
        const _c = self.vtable.get_NormalInput(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putNormalInput(self: *@This(), value: *SceneMaterialInput) core.HResult!void {
        const _c = self.vtable.put_NormalInput(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getNormalScale(self: *@This()) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.get_NormalScale(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putNormalScale(self: *@This(), value: f32) core.HResult!void {
        const _c = self.vtable.put_NormalScale(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getOcclusionInput(self: *@This()) core.HResult!*SceneMaterialInput {
        var _r: *SceneMaterialInput = undefined;
        const _c = self.vtable.get_OcclusionInput(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putOcclusionInput(self: *@This(), value: *SceneMaterialInput) core.HResult!void {
        const _c = self.vtable.put_OcclusionInput(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getOcclusionStrength(self: *@This()) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.get_OcclusionStrength(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putOcclusionStrength(self: *@This(), value: f32) core.HResult!void {
        const _c = self.vtable.put_OcclusionStrength(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.Scenes.IScenePbrMaterial";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "aab6ebbe-d680-46df-8294-b6800a9f95e7";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_AlphaCutoff: *const fn(self: *anyopaque, _r: *f32) callconv(.winapi) HRESULT,
        put_AlphaCutoff: *const fn(self: *anyopaque, value: f32) callconv(.winapi) HRESULT,
        get_AlphaMode: *const fn(self: *anyopaque, _r: *SceneAlphaMode) callconv(.winapi) HRESULT,
        put_AlphaMode: *const fn(self: *anyopaque, value: SceneAlphaMode) callconv(.winapi) HRESULT,
        get_EmissiveInput: *const fn(self: *anyopaque, _r: **SceneMaterialInput) callconv(.winapi) HRESULT,
        put_EmissiveInput: *const fn(self: *anyopaque, value: *SceneMaterialInput) callconv(.winapi) HRESULT,
        get_EmissiveFactor: *const fn(self: *anyopaque, _r: *Vector3) callconv(.winapi) HRESULT,
        put_EmissiveFactor: *const fn(self: *anyopaque, value: Vector3) callconv(.winapi) HRESULT,
        get_IsDoubleSided: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IsDoubleSided: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_NormalInput: *const fn(self: *anyopaque, _r: **SceneMaterialInput) callconv(.winapi) HRESULT,
        put_NormalInput: *const fn(self: *anyopaque, value: *SceneMaterialInput) callconv(.winapi) HRESULT,
        get_NormalScale: *const fn(self: *anyopaque, _r: *f32) callconv(.winapi) HRESULT,
        put_NormalScale: *const fn(self: *anyopaque, value: f32) callconv(.winapi) HRESULT,
        get_OcclusionInput: *const fn(self: *anyopaque, _r: **SceneMaterialInput) callconv(.winapi) HRESULT,
        put_OcclusionInput: *const fn(self: *anyopaque, value: *SceneMaterialInput) callconv(.winapi) HRESULT,
        get_OcclusionStrength: *const fn(self: *anyopaque, _r: *f32) callconv(.winapi) HRESULT,
        put_OcclusionStrength: *const fn(self: *anyopaque, value: f32) callconv(.winapi) HRESULT,
    };
};
pub const IScenePbrMaterialFactory = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Composition.Scenes.IScenePbrMaterialFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2e3f3dfe-0b85-5727-b5be-b7d3cbac37fa";
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
pub const ISceneRendererComponent = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Composition.Scenes.ISceneRendererComponent";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f1acb857-cf4f-4025-9b25-a2d1944cf507";
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
pub const ISceneRendererComponentFactory = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Composition.Scenes.ISceneRendererComponentFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1db6ed6c-aa2c-5967-9035-56352dc69658";
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
pub const ISceneSurfaceMaterialInput = extern struct {
    vtable: *const VTable,
    pub fn getBitmapInterpolationMode(self: *@This()) core.HResult!CompositionBitmapInterpolationMode {
        var _r: CompositionBitmapInterpolationMode = undefined;
        const _c = self.vtable.get_BitmapInterpolationMode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putBitmapInterpolationMode(self: *@This(), value: CompositionBitmapInterpolationMode) core.HResult!void {
        const _c = self.vtable.put_BitmapInterpolationMode(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getSurface(self: *@This()) core.HResult!*ICompositionSurface {
        var _r: *ICompositionSurface = undefined;
        const _c = self.vtable.get_Surface(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSurface(self: *@This(), value: *ICompositionSurface) core.HResult!void {
        const _c = self.vtable.put_Surface(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getWrappingUMode(self: *@This()) core.HResult!SceneWrappingMode {
        var _r: SceneWrappingMode = undefined;
        const _c = self.vtable.get_WrappingUMode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putWrappingUMode(self: *@This(), value: SceneWrappingMode) core.HResult!void {
        const _c = self.vtable.put_WrappingUMode(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getWrappingVMode(self: *@This()) core.HResult!SceneWrappingMode {
        var _r: SceneWrappingMode = undefined;
        const _c = self.vtable.get_WrappingVMode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putWrappingVMode(self: *@This(), value: SceneWrappingMode) core.HResult!void {
        const _c = self.vtable.put_WrappingVMode(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.Scenes.ISceneSurfaceMaterialInput";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "9937da5c-a9ca-4cfc-b3aa-088356518742";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_BitmapInterpolationMode: *const fn(self: *anyopaque, _r: *CompositionBitmapInterpolationMode) callconv(.winapi) HRESULT,
        put_BitmapInterpolationMode: *const fn(self: *anyopaque, value: CompositionBitmapInterpolationMode) callconv(.winapi) HRESULT,
        get_Surface: *const fn(self: *anyopaque, _r: **ICompositionSurface) callconv(.winapi) HRESULT,
        put_Surface: *const fn(self: *anyopaque, value: *ICompositionSurface) callconv(.winapi) HRESULT,
        get_WrappingUMode: *const fn(self: *anyopaque, _r: *SceneWrappingMode) callconv(.winapi) HRESULT,
        put_WrappingUMode: *const fn(self: *anyopaque, value: SceneWrappingMode) callconv(.winapi) HRESULT,
        get_WrappingVMode: *const fn(self: *anyopaque, _r: *SceneWrappingMode) callconv(.winapi) HRESULT,
        put_WrappingVMode: *const fn(self: *anyopaque, value: SceneWrappingMode) callconv(.winapi) HRESULT,
    };
};
pub const ISceneSurfaceMaterialInputStatics = extern struct {
    vtable: *const VTable,
    pub fn Create(self: *@This(), compositor: *Compositor) core.HResult!*SceneSurfaceMaterialInput {
        var _r: *SceneSurfaceMaterialInput = undefined;
        const _c = self.vtable.Create(@ptrCast(self), compositor, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.Scenes.ISceneSurfaceMaterialInputStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5a2394d3-6429-4589-bbcf-b84f4f3cfbfe";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Create: *const fn(self: *anyopaque, compositor: *Compositor, _r: **SceneSurfaceMaterialInput) callconv(.winapi) HRESULT,
    };
};
pub const ISceneVisual = extern struct {
    vtable: *const VTable,
    pub fn getRoot(self: *@This()) core.HResult!*SceneNode {
        var _r: *SceneNode = undefined;
        const _c = self.vtable.get_Root(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putRoot(self: *@This(), value: *SceneNode) core.HResult!void {
        const _c = self.vtable.put_Root(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.Scenes.ISceneVisual";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "8e672c1e-d734-47b1-be14-3d694ffa4301";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Root: *const fn(self: *anyopaque, _r: **SceneNode) callconv(.winapi) HRESULT,
        put_Root: *const fn(self: *anyopaque, value: *SceneNode) callconv(.winapi) HRESULT,
    };
};
pub const ISceneVisualStatics = extern struct {
    vtable: *const VTable,
    pub fn Create(self: *@This(), compositor: *Compositor) core.HResult!*SceneVisual {
        var _r: *SceneVisual = undefined;
        const _c = self.vtable.Create(@ptrCast(self), compositor, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.Scenes.ISceneVisualStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b8347e9a-50aa-4527-8d34-de4cb8ea88b4";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Create: *const fn(self: *anyopaque, compositor: *Compositor, _r: **SceneVisual) callconv(.winapi) HRESULT,
    };
};
pub const SceneAlphaMode = enum(i32) {
    Opaque = 0,
    AlphaTest = 1,
    Blend = 2,
};
pub const SceneAttributeSemantic = enum(i32) {
    Index = 0,
    Vertex = 1,
    Normal = 2,
    TexCoord0 = 3,
    TexCoord1 = 4,
    Color = 5,
    Tangent = 6,
};
pub const SceneObject = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.Scenes.SceneObject";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISceneObject.GUID;
    pub const IID: Guid = ISceneObject.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISceneObject.SIGNATURE);
    var _ISceneObjectFactoryCache: FactoryCache(ISceneObjectFactory, RUNTIME_NAME) = .{};
};
pub const SceneBoundingBox = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getCenter(self: *@This()) core.HResult!Vector3 {
        const this: *ISceneBoundingBox = @ptrCast(self);
        return try this.getCenter();
    }
    pub fn getExtents(self: *@This()) core.HResult!Vector3 {
        const this: *ISceneBoundingBox = @ptrCast(self);
        return try this.getExtents();
    }
    pub fn getMax(self: *@This()) core.HResult!Vector3 {
        const this: *ISceneBoundingBox = @ptrCast(self);
        return try this.getMax();
    }
    pub fn getMin(self: *@This()) core.HResult!Vector3 {
        const this: *ISceneBoundingBox = @ptrCast(self);
        return try this.getMin();
    }
    pub fn getSize(self: *@This()) core.HResult!Vector3 {
        const this: *ISceneBoundingBox = @ptrCast(self);
        return try this.getSize();
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.Scenes.SceneBoundingBox";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISceneBoundingBox.GUID;
    pub const IID: Guid = ISceneBoundingBox.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISceneBoundingBox.SIGNATURE);
};
pub const SceneComponent = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getComponentType(self: *@This()) core.HResult!SceneComponentType {
        const this: *ISceneComponent = @ptrCast(self);
        return try this.getComponentType();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.Scenes.SceneComponent";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISceneComponent.GUID;
    pub const IID: Guid = ISceneComponent.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISceneComponent.SIGNATURE);
    var _ISceneComponentFactoryCache: FactoryCache(ISceneComponentFactory, RUNTIME_NAME) = .{};
};
pub const SceneComponentCollection = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getSize(self: *@This()) core.HResult!u32 {
        const this: *IVector(SceneComponent) = @ptrCast(self);
        return try this.getSize();
    }
    pub fn GetView(self: *@This()) core.HResult!*IVectorView(SceneComponent) {
        const this: *IVector(SceneComponent) = @ptrCast(self);
        return try this.GetView();
    }
    pub fn RemoveAt(self: *@This(), index: u32) core.HResult!void {
        const this: *IVector(SceneComponent) = @ptrCast(self);
        return try this.RemoveAt(index);
    }
    pub fn RemoveAtEnd(self: *@This()) core.HResult!void {
        const this: *IVector(SceneComponent) = @ptrCast(self);
        return try this.RemoveAtEnd();
    }
    pub fn Clear(self: *@This()) core.HResult!void {
        const this: *IVector(SceneComponent) = @ptrCast(self);
        return try this.Clear();
    }
    pub fn First(self: *@This()) core.HResult!*IIterator(SceneComponent) {
        var this: ?*IIterable(SceneComponent) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IIterable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.First();
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.Scenes.SceneComponentCollection";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IVector.GUID;
    pub const IID: Guid = IVector.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IVector.SIGNATURE);
};
pub const SceneComponentType = enum(i32) {
    MeshRendererComponent = 0,
};
pub const SceneMaterial = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.Scenes.SceneMaterial";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISceneMaterial.GUID;
    pub const IID: Guid = ISceneMaterial.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISceneMaterial.SIGNATURE);
    var _ISceneMaterialFactoryCache: FactoryCache(ISceneMaterialFactory, RUNTIME_NAME) = .{};
};
pub const SceneMaterialInput = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.Scenes.SceneMaterialInput";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISceneMaterialInput.GUID;
    pub const IID: Guid = ISceneMaterialInput.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISceneMaterialInput.SIGNATURE);
    var _ISceneMaterialInputFactoryCache: FactoryCache(ISceneMaterialInputFactory, RUNTIME_NAME) = .{};
};
pub const SceneMesh = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getBounds(self: *@This()) core.HResult!*SceneBoundingBox {
        const this: *ISceneMesh = @ptrCast(self);
        return try this.getBounds();
    }
    pub fn getPrimitiveTopology(self: *@This()) core.HResult!DirectXPrimitiveTopology {
        const this: *ISceneMesh = @ptrCast(self);
        return try this.getPrimitiveTopology();
    }
    pub fn putPrimitiveTopology(self: *@This(), value: DirectXPrimitiveTopology) core.HResult!void {
        const this: *ISceneMesh = @ptrCast(self);
        return try this.putPrimitiveTopology(value);
    }
    pub fn FillMeshAttribute(self: *@This(), semantic: SceneAttributeSemantic, format: DirectXPixelFormat, memory: *MemoryBuffer) core.HResult!void {
        const this: *ISceneMesh = @ptrCast(self);
        return try this.FillMeshAttribute(semantic, format, memory);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn Create(compositor: *Compositor) core.HResult!*SceneMesh {
        const _f = @This().ISceneMeshStaticsCache.get();
        return try _f.Create(compositor);
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.Scenes.SceneMesh";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISceneMesh.GUID;
    pub const IID: Guid = ISceneMesh.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISceneMesh.SIGNATURE);
    var _ISceneMeshStaticsCache: FactoryCache(ISceneMeshStatics, RUNTIME_NAME) = .{};
};
pub const SceneMeshMaterialAttributeMap = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getSize(self: *@This()) core.HResult!u32 {
        var this: ?*IMap(HSTRING,SceneAttributeSemantic) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMap.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSize();
    }
    pub fn GetView(self: *@This()) core.HResult!*IMapView(HSTRING,SceneAttributeSemantic) {
        var this: ?*IMap(HSTRING,SceneAttributeSemantic) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMap.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetView();
    }
    pub fn Clear(self: *@This()) core.HResult!void {
        var this: ?*IMap(HSTRING,SceneAttributeSemantic) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMap.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Clear();
    }
    pub fn First(self: *@This()) core.HResult!*IIterator(IKeyValuePair(HSTRING,SceneAttributeSemantic)) {
        var this: ?*IIterable(IKeyValuePair(HSTRING,SceneAttributeSemantic)) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IIterable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.First();
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.Scenes.SceneMeshMaterialAttributeMap";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISceneMeshMaterialAttributeMap.GUID;
    pub const IID: Guid = ISceneMeshMaterialAttributeMap.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISceneMeshMaterialAttributeMap.SIGNATURE);
};
pub const SceneRendererComponent = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.Scenes.SceneRendererComponent";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISceneRendererComponent.GUID;
    pub const IID: Guid = ISceneRendererComponent.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISceneRendererComponent.SIGNATURE);
    var _ISceneRendererComponentFactoryCache: FactoryCache(ISceneRendererComponentFactory, RUNTIME_NAME) = .{};
};
pub const SceneMeshRendererComponent = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getMaterial(self: *@This()) core.HResult!*SceneMaterial {
        const this: *ISceneMeshRendererComponent = @ptrCast(self);
        return try this.getMaterial();
    }
    pub fn putMaterial(self: *@This(), value: *SceneMaterial) core.HResult!void {
        const this: *ISceneMeshRendererComponent = @ptrCast(self);
        return try this.putMaterial(value);
    }
    pub fn getMesh(self: *@This()) core.HResult!*SceneMesh {
        const this: *ISceneMeshRendererComponent = @ptrCast(self);
        return try this.getMesh();
    }
    pub fn putMesh(self: *@This(), value: *SceneMesh) core.HResult!void {
        const this: *ISceneMeshRendererComponent = @ptrCast(self);
        return try this.putMesh(value);
    }
    pub fn getUVMappings(self: *@This()) core.HResult!*SceneMeshMaterialAttributeMap {
        const this: *ISceneMeshRendererComponent = @ptrCast(self);
        return try this.getUVMappings();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn Create(compositor: *Compositor) core.HResult!*SceneMeshRendererComponent {
        const _f = @This().ISceneMeshRendererComponentStaticsCache.get();
        return try _f.Create(compositor);
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.Scenes.SceneMeshRendererComponent";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISceneMeshRendererComponent.GUID;
    pub const IID: Guid = ISceneMeshRendererComponent.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISceneMeshRendererComponent.SIGNATURE);
    var _ISceneMeshRendererComponentStaticsCache: FactoryCache(ISceneMeshRendererComponentStatics, RUNTIME_NAME) = .{};
};
pub const ScenePbrMaterial = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getAlphaCutoff(self: *@This()) core.HResult!f32 {
        const this: *IScenePbrMaterial = @ptrCast(self);
        return try this.getAlphaCutoff();
    }
    pub fn putAlphaCutoff(self: *@This(), value: f32) core.HResult!void {
        const this: *IScenePbrMaterial = @ptrCast(self);
        return try this.putAlphaCutoff(value);
    }
    pub fn getAlphaMode(self: *@This()) core.HResult!SceneAlphaMode {
        const this: *IScenePbrMaterial = @ptrCast(self);
        return try this.getAlphaMode();
    }
    pub fn putAlphaMode(self: *@This(), value: SceneAlphaMode) core.HResult!void {
        const this: *IScenePbrMaterial = @ptrCast(self);
        return try this.putAlphaMode(value);
    }
    pub fn getEmissiveInput(self: *@This()) core.HResult!*SceneMaterialInput {
        const this: *IScenePbrMaterial = @ptrCast(self);
        return try this.getEmissiveInput();
    }
    pub fn putEmissiveInput(self: *@This(), value: *SceneMaterialInput) core.HResult!void {
        const this: *IScenePbrMaterial = @ptrCast(self);
        return try this.putEmissiveInput(value);
    }
    pub fn getEmissiveFactor(self: *@This()) core.HResult!Vector3 {
        const this: *IScenePbrMaterial = @ptrCast(self);
        return try this.getEmissiveFactor();
    }
    pub fn putEmissiveFactor(self: *@This(), value: Vector3) core.HResult!void {
        const this: *IScenePbrMaterial = @ptrCast(self);
        return try this.putEmissiveFactor(value);
    }
    pub fn getIsDoubleSided(self: *@This()) core.HResult!bool {
        const this: *IScenePbrMaterial = @ptrCast(self);
        return try this.getIsDoubleSided();
    }
    pub fn putIsDoubleSided(self: *@This(), value: bool) core.HResult!void {
        const this: *IScenePbrMaterial = @ptrCast(self);
        return try this.putIsDoubleSided(value);
    }
    pub fn getNormalInput(self: *@This()) core.HResult!*SceneMaterialInput {
        const this: *IScenePbrMaterial = @ptrCast(self);
        return try this.getNormalInput();
    }
    pub fn putNormalInput(self: *@This(), value: *SceneMaterialInput) core.HResult!void {
        const this: *IScenePbrMaterial = @ptrCast(self);
        return try this.putNormalInput(value);
    }
    pub fn getNormalScale(self: *@This()) core.HResult!f32 {
        const this: *IScenePbrMaterial = @ptrCast(self);
        return try this.getNormalScale();
    }
    pub fn putNormalScale(self: *@This(), value: f32) core.HResult!void {
        const this: *IScenePbrMaterial = @ptrCast(self);
        return try this.putNormalScale(value);
    }
    pub fn getOcclusionInput(self: *@This()) core.HResult!*SceneMaterialInput {
        const this: *IScenePbrMaterial = @ptrCast(self);
        return try this.getOcclusionInput();
    }
    pub fn putOcclusionInput(self: *@This(), value: *SceneMaterialInput) core.HResult!void {
        const this: *IScenePbrMaterial = @ptrCast(self);
        return try this.putOcclusionInput(value);
    }
    pub fn getOcclusionStrength(self: *@This()) core.HResult!f32 {
        const this: *IScenePbrMaterial = @ptrCast(self);
        return try this.getOcclusionStrength();
    }
    pub fn putOcclusionStrength(self: *@This(), value: f32) core.HResult!void {
        const this: *IScenePbrMaterial = @ptrCast(self);
        return try this.putOcclusionStrength(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.Scenes.ScenePbrMaterial";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IScenePbrMaterial.GUID;
    pub const IID: Guid = IScenePbrMaterial.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IScenePbrMaterial.SIGNATURE);
    var _IScenePbrMaterialFactoryCache: FactoryCache(IScenePbrMaterialFactory, RUNTIME_NAME) = .{};
};
pub const SceneMetallicRoughnessMaterial = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getBaseColorInput(self: *@This()) core.HResult!*SceneMaterialInput {
        const this: *ISceneMetallicRoughnessMaterial = @ptrCast(self);
        return try this.getBaseColorInput();
    }
    pub fn putBaseColorInput(self: *@This(), value: *SceneMaterialInput) core.HResult!void {
        const this: *ISceneMetallicRoughnessMaterial = @ptrCast(self);
        return try this.putBaseColorInput(value);
    }
    pub fn getBaseColorFactor(self: *@This()) core.HResult!Vector4 {
        const this: *ISceneMetallicRoughnessMaterial = @ptrCast(self);
        return try this.getBaseColorFactor();
    }
    pub fn putBaseColorFactor(self: *@This(), value: Vector4) core.HResult!void {
        const this: *ISceneMetallicRoughnessMaterial = @ptrCast(self);
        return try this.putBaseColorFactor(value);
    }
    pub fn getMetallicFactor(self: *@This()) core.HResult!f32 {
        const this: *ISceneMetallicRoughnessMaterial = @ptrCast(self);
        return try this.getMetallicFactor();
    }
    pub fn putMetallicFactor(self: *@This(), value: f32) core.HResult!void {
        const this: *ISceneMetallicRoughnessMaterial = @ptrCast(self);
        return try this.putMetallicFactor(value);
    }
    pub fn getMetallicRoughnessInput(self: *@This()) core.HResult!*SceneMaterialInput {
        const this: *ISceneMetallicRoughnessMaterial = @ptrCast(self);
        return try this.getMetallicRoughnessInput();
    }
    pub fn putMetallicRoughnessInput(self: *@This(), value: *SceneMaterialInput) core.HResult!void {
        const this: *ISceneMetallicRoughnessMaterial = @ptrCast(self);
        return try this.putMetallicRoughnessInput(value);
    }
    pub fn getRoughnessFactor(self: *@This()) core.HResult!f32 {
        const this: *ISceneMetallicRoughnessMaterial = @ptrCast(self);
        return try this.getRoughnessFactor();
    }
    pub fn putRoughnessFactor(self: *@This(), value: f32) core.HResult!void {
        const this: *ISceneMetallicRoughnessMaterial = @ptrCast(self);
        return try this.putRoughnessFactor(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn Create(compositor: *Compositor) core.HResult!*SceneMetallicRoughnessMaterial {
        const _f = @This().ISceneMetallicRoughnessMaterialStaticsCache.get();
        return try _f.Create(compositor);
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.Scenes.SceneMetallicRoughnessMaterial";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISceneMetallicRoughnessMaterial.GUID;
    pub const IID: Guid = ISceneMetallicRoughnessMaterial.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISceneMetallicRoughnessMaterial.SIGNATURE);
    var _ISceneMetallicRoughnessMaterialStaticsCache: FactoryCache(ISceneMetallicRoughnessMaterialStatics, RUNTIME_NAME) = .{};
};
pub const SceneModelTransform = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getOrientation(self: *@This()) core.HResult!Quaternion {
        const this: *ISceneModelTransform = @ptrCast(self);
        return try this.getOrientation();
    }
    pub fn putOrientation(self: *@This(), value: Quaternion) core.HResult!void {
        const this: *ISceneModelTransform = @ptrCast(self);
        return try this.putOrientation(value);
    }
    pub fn getRotationAngle(self: *@This()) core.HResult!f32 {
        const this: *ISceneModelTransform = @ptrCast(self);
        return try this.getRotationAngle();
    }
    pub fn putRotationAngle(self: *@This(), value: f32) core.HResult!void {
        const this: *ISceneModelTransform = @ptrCast(self);
        return try this.putRotationAngle(value);
    }
    pub fn getRotationAngleInDegrees(self: *@This()) core.HResult!f32 {
        const this: *ISceneModelTransform = @ptrCast(self);
        return try this.getRotationAngleInDegrees();
    }
    pub fn putRotationAngleInDegrees(self: *@This(), value: f32) core.HResult!void {
        const this: *ISceneModelTransform = @ptrCast(self);
        return try this.putRotationAngleInDegrees(value);
    }
    pub fn getRotationAxis(self: *@This()) core.HResult!Vector3 {
        const this: *ISceneModelTransform = @ptrCast(self);
        return try this.getRotationAxis();
    }
    pub fn putRotationAxis(self: *@This(), value: Vector3) core.HResult!void {
        const this: *ISceneModelTransform = @ptrCast(self);
        return try this.putRotationAxis(value);
    }
    pub fn getScale(self: *@This()) core.HResult!Vector3 {
        const this: *ISceneModelTransform = @ptrCast(self);
        return try this.getScale();
    }
    pub fn putScale(self: *@This(), value: Vector3) core.HResult!void {
        const this: *ISceneModelTransform = @ptrCast(self);
        return try this.putScale(value);
    }
    pub fn getTranslation(self: *@This()) core.HResult!Vector3 {
        const this: *ISceneModelTransform = @ptrCast(self);
        return try this.getTranslation();
    }
    pub fn putTranslation(self: *@This(), value: Vector3) core.HResult!void {
        const this: *ISceneModelTransform = @ptrCast(self);
        return try this.putTranslation(value);
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.Scenes.SceneModelTransform";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISceneModelTransform.GUID;
    pub const IID: Guid = ISceneModelTransform.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISceneModelTransform.SIGNATURE);
};
pub const SceneNode = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getChildren(self: *@This()) core.HResult!*SceneNodeCollection {
        const this: *ISceneNode = @ptrCast(self);
        return try this.getChildren();
    }
    pub fn getComponents(self: *@This()) core.HResult!*SceneComponentCollection {
        const this: *ISceneNode = @ptrCast(self);
        return try this.getComponents();
    }
    pub fn getParent(self: *@This()) core.HResult!*SceneNode {
        const this: *ISceneNode = @ptrCast(self);
        return try this.getParent();
    }
    pub fn getTransform(self: *@This()) core.HResult!*SceneModelTransform {
        const this: *ISceneNode = @ptrCast(self);
        return try this.getTransform();
    }
    pub fn FindFirstComponentOfType(self: *@This(), value: SceneComponentType) core.HResult!*SceneComponent {
        const this: *ISceneNode = @ptrCast(self);
        return try this.FindFirstComponentOfType(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn Create(compositor: *Compositor) core.HResult!*SceneNode {
        const _f = @This().ISceneNodeStaticsCache.get();
        return try _f.Create(compositor);
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.Scenes.SceneNode";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISceneNode.GUID;
    pub const IID: Guid = ISceneNode.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISceneNode.SIGNATURE);
    var _ISceneNodeStaticsCache: FactoryCache(ISceneNodeStatics, RUNTIME_NAME) = .{};
};
pub const SceneNodeCollection = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getSize(self: *@This()) core.HResult!u32 {
        const this: *IVector(SceneNode) = @ptrCast(self);
        return try this.getSize();
    }
    pub fn GetView(self: *@This()) core.HResult!*IVectorView(SceneNode) {
        const this: *IVector(SceneNode) = @ptrCast(self);
        return try this.GetView();
    }
    pub fn RemoveAt(self: *@This(), index: u32) core.HResult!void {
        const this: *IVector(SceneNode) = @ptrCast(self);
        return try this.RemoveAt(index);
    }
    pub fn RemoveAtEnd(self: *@This()) core.HResult!void {
        const this: *IVector(SceneNode) = @ptrCast(self);
        return try this.RemoveAtEnd();
    }
    pub fn Clear(self: *@This()) core.HResult!void {
        const this: *IVector(SceneNode) = @ptrCast(self);
        return try this.Clear();
    }
    pub fn First(self: *@This()) core.HResult!*IIterator(SceneNode) {
        var this: ?*IIterable(SceneNode) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IIterable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.First();
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.Scenes.SceneNodeCollection";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IVector.GUID;
    pub const IID: Guid = IVector.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IVector.SIGNATURE);
};
pub const SceneSurfaceMaterialInput = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getBitmapInterpolationMode(self: *@This()) core.HResult!CompositionBitmapInterpolationMode {
        const this: *ISceneSurfaceMaterialInput = @ptrCast(self);
        return try this.getBitmapInterpolationMode();
    }
    pub fn putBitmapInterpolationMode(self: *@This(), value: CompositionBitmapInterpolationMode) core.HResult!void {
        const this: *ISceneSurfaceMaterialInput = @ptrCast(self);
        return try this.putBitmapInterpolationMode(value);
    }
    pub fn getSurface(self: *@This()) core.HResult!*ICompositionSurface {
        const this: *ISceneSurfaceMaterialInput = @ptrCast(self);
        return try this.getSurface();
    }
    pub fn putSurface(self: *@This(), value: *ICompositionSurface) core.HResult!void {
        const this: *ISceneSurfaceMaterialInput = @ptrCast(self);
        return try this.putSurface(value);
    }
    pub fn getWrappingUMode(self: *@This()) core.HResult!SceneWrappingMode {
        const this: *ISceneSurfaceMaterialInput = @ptrCast(self);
        return try this.getWrappingUMode();
    }
    pub fn putWrappingUMode(self: *@This(), value: SceneWrappingMode) core.HResult!void {
        const this: *ISceneSurfaceMaterialInput = @ptrCast(self);
        return try this.putWrappingUMode(value);
    }
    pub fn getWrappingVMode(self: *@This()) core.HResult!SceneWrappingMode {
        const this: *ISceneSurfaceMaterialInput = @ptrCast(self);
        return try this.getWrappingVMode();
    }
    pub fn putWrappingVMode(self: *@This(), value: SceneWrappingMode) core.HResult!void {
        const this: *ISceneSurfaceMaterialInput = @ptrCast(self);
        return try this.putWrappingVMode(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn Create(compositor: *Compositor) core.HResult!*SceneSurfaceMaterialInput {
        const _f = @This().ISceneSurfaceMaterialInputStaticsCache.get();
        return try _f.Create(compositor);
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.Scenes.SceneSurfaceMaterialInput";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISceneSurfaceMaterialInput.GUID;
    pub const IID: Guid = ISceneSurfaceMaterialInput.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISceneSurfaceMaterialInput.SIGNATURE);
    var _ISceneSurfaceMaterialInputStaticsCache: FactoryCache(ISceneSurfaceMaterialInputStatics, RUNTIME_NAME) = .{};
};
pub const SceneVisual = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getRoot(self: *@This()) core.HResult!*SceneNode {
        const this: *ISceneVisual = @ptrCast(self);
        return try this.getRoot();
    }
    pub fn putRoot(self: *@This(), value: *SceneNode) core.HResult!void {
        const this: *ISceneVisual = @ptrCast(self);
        return try this.putRoot(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn Create(compositor: *Compositor) core.HResult!*SceneVisual {
        const _f = @This().ISceneVisualStaticsCache.get();
        return try _f.Create(compositor);
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.Scenes.SceneVisual";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISceneVisual.GUID;
    pub const IID: Guid = ISceneVisual.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISceneVisual.SIGNATURE);
    var _ISceneVisualStaticsCache: FactoryCache(ISceneVisualStatics, RUNTIME_NAME) = .{};
};
pub const SceneWrappingMode = enum(i32) {
    ClampToEdge = 0,
    MirroredRepeat = 1,
    Repeat = 2,
};
const IUnknown = @import("../../root.zig").IUnknown;
const Guid = @import("../../root.zig").Guid;
const IVectorView = @import("../../Foundation/Collections.zig").IVectorView;
const IMapView = @import("../../Foundation/Collections.zig").IMapView;
const DirectXPixelFormat = @import("../../Graphics/DirectX.zig").DirectXPixelFormat;
const IVector = @import("../../Foundation/Collections.zig").IVector;
const IMap = @import("../../Foundation/Collections.zig").IMap;
const IKeyValuePair = @import("../../Foundation/Collections.zig").IKeyValuePair;
const FactoryCache = @import("../../core.zig").FactoryCache;
const IIterator = @import("../../Foundation/Collections.zig").IIterator;
const CompositionBitmapInterpolationMode = @import("../Composition.zig").CompositionBitmapInterpolationMode;
const TrustLevel = @import("../../root.zig").TrustLevel;
const MemoryBuffer = @import("../../Foundation.zig").MemoryBuffer;
const HSTRING = @import("../../root.zig").HSTRING;
const Vector4 = @import("../../Foundation/Numerics.zig").Vector4;
const IIterable = @import("../../Foundation/Collections.zig").IIterable;
const IInspectable = @import("../../Foundation.zig").IInspectable;
const Vector3 = @import("../../Foundation/Numerics.zig").Vector3;
const Quaternion = @import("../../Foundation/Numerics.zig").Quaternion;
const DirectXPrimitiveTopology = @import("../../Graphics/DirectX.zig").DirectXPrimitiveTopology;
const HRESULT = @import("../../root.zig").HRESULT;
const core = @import("../../root.zig").core;
const ICompositionSurface = @import("../Composition.zig").ICompositionSurface;
const Compositor = @import("../Composition.zig").Compositor;
