pub const ICredentialFactory = extern struct {
    vtable: *const VTable,
    pub fn CreatePasswordCredential(self: *@This(), resource: HSTRING, userName: HSTRING, password: HSTRING) core.HResult!*PasswordCredential {
        var _r: *PasswordCredential = undefined;
        const _c = self.vtable.CreatePasswordCredential(@ptrCast(self), resource, userName, password, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Security.Credentials.ICredentialFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "54ef13a1-bf26-47b5-97dd-de779b7cad58";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreatePasswordCredential: *const fn(self: *anyopaque, resource: HSTRING, userName: HSTRING, password: HSTRING, _r: **PasswordCredential) callconv(.winapi) HRESULT,
    };
};
pub const IKeyCredential = extern struct {
    vtable: *const VTable,
    pub fn getName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Name(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RetrievePublicKey(self: *@This()) core.HResult!*IBuffer {
        var _r: *IBuffer = undefined;
        const _c = self.vtable.RetrievePublicKey(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RetrievePublicKey(self: *@This(), blobType: CryptographicPublicKeyBlobType) core.HResult!*IBuffer {
        var _r: *IBuffer = undefined;
        const _c = self.vtable.RetrievePublicKey(@ptrCast(self), blobType, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RequestSignAsync(self: *@This(), data: *IBuffer) core.HResult!*IAsyncOperation(KeyCredentialOperationResult) {
        var _r: *IAsyncOperation(KeyCredentialOperationResult) = undefined;
        const _c = self.vtable.RequestSignAsync(@ptrCast(self), data, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetAttestationAsync(self: *@This()) core.HResult!*IAsyncOperation(KeyCredentialAttestationResult) {
        var _r: *IAsyncOperation(KeyCredentialAttestationResult) = undefined;
        const _c = self.vtable.GetAttestationAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Security.Credentials.IKeyCredential";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "9585ef8d-457b-4847-b11a-fa960bbdb138";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Name: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        RetrievePublicKey: *const fn(self: *anyopaque, _r: **IBuffer) callconv(.winapi) HRESULT,
        RetrievePublicKey: *const fn(self: *anyopaque, blobType: CryptographicPublicKeyBlobType, _r: **IBuffer) callconv(.winapi) HRESULT,
        RequestSignAsync: *const fn(self: *anyopaque, data: *IBuffer, _r: **IAsyncOperation(KeyCredentialOperationResult)) callconv(.winapi) HRESULT,
        GetAttestationAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(KeyCredentialAttestationResult)) callconv(.winapi) HRESULT,
    };
};
pub const IKeyCredentialAttestationResult = extern struct {
    vtable: *const VTable,
    pub fn getCertificateChainBuffer(self: *@This()) core.HResult!*IBuffer {
        var _r: *IBuffer = undefined;
        const _c = self.vtable.get_CertificateChainBuffer(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAttestationBuffer(self: *@This()) core.HResult!*IBuffer {
        var _r: *IBuffer = undefined;
        const _c = self.vtable.get_AttestationBuffer(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getStatus(self: *@This()) core.HResult!KeyCredentialAttestationStatus {
        var _r: KeyCredentialAttestationStatus = undefined;
        const _c = self.vtable.get_Status(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Security.Credentials.IKeyCredentialAttestationResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "78aab3a1-a3c1-4103-b6cc-472c44171cbb";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_CertificateChainBuffer: *const fn(self: *anyopaque, _r: **IBuffer) callconv(.winapi) HRESULT,
        get_AttestationBuffer: *const fn(self: *anyopaque, _r: **IBuffer) callconv(.winapi) HRESULT,
        get_Status: *const fn(self: *anyopaque, _r: *KeyCredentialAttestationStatus) callconv(.winapi) HRESULT,
    };
};
pub const IKeyCredentialManagerStatics = extern struct {
    vtable: *const VTable,
    pub fn IsSupportedAsync(self: *@This()) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.IsSupportedAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RenewAttestationAsync(self: *@This()) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.RenewAttestationAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RequestCreateAsync(self: *@This(), name: HSTRING, option: KeyCredentialCreationOption) core.HResult!*IAsyncOperation(KeyCredentialRetrievalResult) {
        var _r: *IAsyncOperation(KeyCredentialRetrievalResult) = undefined;
        const _c = self.vtable.RequestCreateAsync(@ptrCast(self), name, option, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn OpenAsync(self: *@This(), name: HSTRING) core.HResult!*IAsyncOperation(KeyCredentialRetrievalResult) {
        var _r: *IAsyncOperation(KeyCredentialRetrievalResult) = undefined;
        const _c = self.vtable.OpenAsync(@ptrCast(self), name, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn DeleteAsync(self: *@This(), name: HSTRING) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.DeleteAsync(@ptrCast(self), name, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Security.Credentials.IKeyCredentialManagerStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "6aac468b-0ef1-4ce0-8290-4106da6a63b5";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        IsSupportedAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
        RenewAttestationAsync: *const fn(self: *anyopaque, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        RequestCreateAsync: *const fn(self: *anyopaque, name: HSTRING, option: KeyCredentialCreationOption, _r: **IAsyncOperation(KeyCredentialRetrievalResult)) callconv(.winapi) HRESULT,
        OpenAsync: *const fn(self: *anyopaque, name: HSTRING, _r: **IAsyncOperation(KeyCredentialRetrievalResult)) callconv(.winapi) HRESULT,
        DeleteAsync: *const fn(self: *anyopaque, name: HSTRING, _r: **IAsyncAction) callconv(.winapi) HRESULT,
    };
};
pub const IKeyCredentialOperationResult = extern struct {
    vtable: *const VTable,
    pub fn getResult(self: *@This()) core.HResult!*IBuffer {
        var _r: *IBuffer = undefined;
        const _c = self.vtable.get_Result(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getStatus(self: *@This()) core.HResult!KeyCredentialStatus {
        var _r: KeyCredentialStatus = undefined;
        const _c = self.vtable.get_Status(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Security.Credentials.IKeyCredentialOperationResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f53786c1-5261-4cdd-976d-cc909ac71620";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Result: *const fn(self: *anyopaque, _r: **IBuffer) callconv(.winapi) HRESULT,
        get_Status: *const fn(self: *anyopaque, _r: *KeyCredentialStatus) callconv(.winapi) HRESULT,
    };
};
pub const IKeyCredentialRetrievalResult = extern struct {
    vtable: *const VTable,
    pub fn getCredential(self: *@This()) core.HResult!*KeyCredential {
        var _r: *KeyCredential = undefined;
        const _c = self.vtable.get_Credential(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getStatus(self: *@This()) core.HResult!KeyCredentialStatus {
        var _r: KeyCredentialStatus = undefined;
        const _c = self.vtable.get_Status(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Security.Credentials.IKeyCredentialRetrievalResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "58cd7703-8d87-4249-9b58-f6598cc9644e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Credential: *const fn(self: *anyopaque, _r: **KeyCredential) callconv(.winapi) HRESULT,
        get_Status: *const fn(self: *anyopaque, _r: *KeyCredentialStatus) callconv(.winapi) HRESULT,
    };
};
pub const IPasswordCredential = extern struct {
    vtable: *const VTable,
    pub fn getResource(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Resource(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putResource(self: *@This(), resource: HSTRING) core.HResult!void {
        const _c = self.vtable.put_Resource(@ptrCast(self), resource);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getUserName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_UserName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putUserName(self: *@This(), userName: HSTRING) core.HResult!void {
        const _c = self.vtable.put_UserName(@ptrCast(self), userName);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getPassword(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Password(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putPassword(self: *@This(), password: HSTRING) core.HResult!void {
        const _c = self.vtable.put_Password(@ptrCast(self), password);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn RetrievePassword(self: *@This()) core.HResult!void {
        const _c = self.vtable.RetrievePassword(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getProperties(self: *@This()) core.HResult!*IPropertySet {
        var _r: *IPropertySet = undefined;
        const _c = self.vtable.get_Properties(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Security.Credentials.IPasswordCredential";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "6ab18989-c720-41a7-a6c1-feadb36329a0";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Resource: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_Resource: *const fn(self: *anyopaque, resource: HSTRING) callconv(.winapi) HRESULT,
        get_UserName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_UserName: *const fn(self: *anyopaque, userName: HSTRING) callconv(.winapi) HRESULT,
        get_Password: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_Password: *const fn(self: *anyopaque, password: HSTRING) callconv(.winapi) HRESULT,
        RetrievePassword: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        get_Properties: *const fn(self: *anyopaque, _r: **IPropertySet) callconv(.winapi) HRESULT,
    };
};
pub const IPasswordVault = extern struct {
    vtable: *const VTable,
    pub fn Add(self: *@This(), credential: *PasswordCredential) core.HResult!void {
        const _c = self.vtable.Add(@ptrCast(self), credential);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn Remove(self: *@This(), credential: *PasswordCredential) core.HResult!void {
        const _c = self.vtable.Remove(@ptrCast(self), credential);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn Retrieve(self: *@This(), resource: HSTRING, userName: HSTRING) core.HResult!*PasswordCredential {
        var _r: *PasswordCredential = undefined;
        const _c = self.vtable.Retrieve(@ptrCast(self), resource, userName, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FindAllByResource(self: *@This(), resource: HSTRING) core.HResult!*IVectorView(PasswordCredential) {
        var _r: *IVectorView(PasswordCredential) = undefined;
        const _c = self.vtable.FindAllByResource(@ptrCast(self), resource, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FindAllByUserName(self: *@This(), userName: HSTRING) core.HResult!*IVectorView(PasswordCredential) {
        var _r: *IVectorView(PasswordCredential) = undefined;
        const _c = self.vtable.FindAllByUserName(@ptrCast(self), userName, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RetrieveAll(self: *@This()) core.HResult!*IVectorView(PasswordCredential) {
        var _r: *IVectorView(PasswordCredential) = undefined;
        const _c = self.vtable.RetrieveAll(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Security.Credentials.IPasswordVault";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "61fd2c0b-c8d4-48c1-a54f-bc5a64205af2";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Add: *const fn(self: *anyopaque, credential: *PasswordCredential) callconv(.winapi) HRESULT,
        Remove: *const fn(self: *anyopaque, credential: *PasswordCredential) callconv(.winapi) HRESULT,
        Retrieve: *const fn(self: *anyopaque, resource: HSTRING, userName: HSTRING, _r: **PasswordCredential) callconv(.winapi) HRESULT,
        FindAllByResource: *const fn(self: *anyopaque, resource: HSTRING, _r: **IVectorView(PasswordCredential)) callconv(.winapi) HRESULT,
        FindAllByUserName: *const fn(self: *anyopaque, userName: HSTRING, _r: **IVectorView(PasswordCredential)) callconv(.winapi) HRESULT,
        RetrieveAll: *const fn(self: *anyopaque, _r: **IVectorView(PasswordCredential)) callconv(.winapi) HRESULT,
    };
};
pub const IWebAccount = extern struct {
    vtable: *const VTable,
    pub fn getWebAccountProvider(self: *@This()) core.HResult!*WebAccountProvider {
        var _r: *WebAccountProvider = undefined;
        const _c = self.vtable.get_WebAccountProvider(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getUserName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_UserName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getState(self: *@This()) core.HResult!WebAccountState {
        var _r: WebAccountState = undefined;
        const _c = self.vtable.get_State(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Security.Credentials.IWebAccount";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "69473eb2-8031-49be-80bb-96cb46d99aba";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_WebAccountProvider: *const fn(self: *anyopaque, _r: **WebAccountProvider) callconv(.winapi) HRESULT,
        get_UserName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_State: *const fn(self: *anyopaque, _r: *WebAccountState) callconv(.winapi) HRESULT,
    };
};
pub const IWebAccount2 = extern struct {
    vtable: *const VTable,
    pub fn getId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Id(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getProperties(self: *@This()) core.HResult!*IMapView(HSTRING,HSTRING) {
        var _r: *IMapView(HSTRING,HSTRING) = undefined;
        const _c = self.vtable.get_Properties(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetPictureAsync(self: *@This(), desizedSize: WebAccountPictureSize) core.HResult!*IAsyncOperation(IRandomAccessStream) {
        var _r: *IAsyncOperation(IRandomAccessStream) = undefined;
        const _c = self.vtable.GetPictureAsync(@ptrCast(self), desizedSize, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SignOutAsync(self: *@This()) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.SignOutAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SignOutAsync(self: *@This(), clientId: HSTRING) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.SignOutAsync(@ptrCast(self), clientId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Security.Credentials.IWebAccount2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7b56d6f8-990b-4eb5-94a7-5621f3a8b824";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Id: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Properties: *const fn(self: *anyopaque, _r: **IMapView(HSTRING,HSTRING)) callconv(.winapi) HRESULT,
        GetPictureAsync: *const fn(self: *anyopaque, desizedSize: WebAccountPictureSize, _r: **IAsyncOperation(IRandomAccessStream)) callconv(.winapi) HRESULT,
        SignOutAsync: *const fn(self: *anyopaque, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        SignOutAsync: *const fn(self: *anyopaque, clientId: HSTRING, _r: **IAsyncAction) callconv(.winapi) HRESULT,
    };
};
pub const IWebAccountFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateWebAccount(self: *@This(), webAccountProvider: *WebAccountProvider, userName: HSTRING, state: WebAccountState) core.HResult!*WebAccount {
        var _r: *WebAccount = undefined;
        const _c = self.vtable.CreateWebAccount(@ptrCast(self), webAccountProvider, userName, state, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Security.Credentials.IWebAccountFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ac9afb39-1de9-4e92-b78f-0581a87f6e5c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateWebAccount: *const fn(self: *anyopaque, webAccountProvider: *WebAccountProvider, userName: HSTRING, state: WebAccountState, _r: **WebAccount) callconv(.winapi) HRESULT,
    };
};
pub const IWebAccountProvider = extern struct {
    vtable: *const VTable,
    pub fn getId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Id(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDisplayName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DisplayName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIconUri(self: *@This()) core.HResult!*Uri {
        var _r: *Uri = undefined;
        const _c = self.vtable.get_IconUri(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Security.Credentials.IWebAccountProvider";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "29dcc8c3-7ab9-4a7c-a336-b942f9dbf7c7";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Id: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_DisplayName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_IconUri: *const fn(self: *anyopaque, _r: **Uri) callconv(.winapi) HRESULT,
    };
};
pub const IWebAccountProvider2 = extern struct {
    vtable: *const VTable,
    pub fn getDisplayPurpose(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DisplayPurpose(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAuthority(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Authority(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Security.Credentials.IWebAccountProvider2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "4a01eb05-4e42-41d4-b518-e008a5163614";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_DisplayPurpose: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Authority: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IWebAccountProvider3 = extern struct {
    vtable: *const VTable,
    pub fn getUser(self: *@This()) core.HResult!*User {
        var _r: *User = undefined;
        const _c = self.vtable.get_User(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Security.Credentials.IWebAccountProvider3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "da1c518b-970d-4d49-825c-f2706f8ca7fe";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_User: *const fn(self: *anyopaque, _r: **User) callconv(.winapi) HRESULT,
    };
};
pub const IWebAccountProvider4 = extern struct {
    vtable: *const VTable,
    pub fn getIsSystemProvider(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsSystemProvider(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Security.Credentials.IWebAccountProvider4";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "718fd8db-e796-4210-b74e-84d29894b080";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IsSystemProvider: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IWebAccountProviderFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateWebAccountProvider(self: *@This(), id: HSTRING, displayName: HSTRING, iconUri: *Uri) core.HResult!*WebAccountProvider {
        var _r: *WebAccountProvider = undefined;
        const _c = self.vtable.CreateWebAccountProvider(@ptrCast(self), id, displayName, iconUri, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Security.Credentials.IWebAccountProviderFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1d767df1-e1e1-4b9a-a774-5c7c7e3bf371";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateWebAccountProvider: *const fn(self: *anyopaque, id: HSTRING, displayName: HSTRING, iconUri: *Uri, _r: **WebAccountProvider) callconv(.winapi) HRESULT,
    };
};
pub const KeyCredential = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getName(self: *@This()) core.HResult!HSTRING {
        const this: *IKeyCredential = @ptrCast(self);
        return try this.getName();
    }
    pub fn RetrievePublicKey(self: *@This()) core.HResult!*IBuffer {
        const this: *IKeyCredential = @ptrCast(self);
        return try this.RetrievePublicKey();
    }
    pub fn RetrievePublicKey(self: *@This(), blobType: CryptographicPublicKeyBlobType) core.HResult!*IBuffer {
        const this: *IKeyCredential = @ptrCast(self);
        return try this.RetrievePublicKey(blobType);
    }
    pub fn RequestSignAsync(self: *@This(), data: *IBuffer) core.HResult!*IAsyncOperation(KeyCredentialOperationResult) {
        const this: *IKeyCredential = @ptrCast(self);
        return try this.RequestSignAsync(data);
    }
    pub fn GetAttestationAsync(self: *@This()) core.HResult!*IAsyncOperation(KeyCredentialAttestationResult) {
        const this: *IKeyCredential = @ptrCast(self);
        return try this.GetAttestationAsync();
    }
    pub const NAME: []const u8 = "Windows.Security.Credentials.KeyCredential";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IKeyCredential.GUID;
    pub const IID: Guid = IKeyCredential.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IKeyCredential.SIGNATURE);
};
pub const KeyCredentialAttestationResult = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getCertificateChainBuffer(self: *@This()) core.HResult!*IBuffer {
        const this: *IKeyCredentialAttestationResult = @ptrCast(self);
        return try this.getCertificateChainBuffer();
    }
    pub fn getAttestationBuffer(self: *@This()) core.HResult!*IBuffer {
        const this: *IKeyCredentialAttestationResult = @ptrCast(self);
        return try this.getAttestationBuffer();
    }
    pub fn getStatus(self: *@This()) core.HResult!KeyCredentialAttestationStatus {
        const this: *IKeyCredentialAttestationResult = @ptrCast(self);
        return try this.getStatus();
    }
    pub const NAME: []const u8 = "Windows.Security.Credentials.KeyCredentialAttestationResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IKeyCredentialAttestationResult.GUID;
    pub const IID: Guid = IKeyCredentialAttestationResult.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IKeyCredentialAttestationResult.SIGNATURE);
};
pub const KeyCredentialAttestationStatus = enum(i32) {
    Success = 0,
    UnknownError = 1,
    NotSupported = 2,
    TemporaryFailure = 3,
};
pub const KeyCredentialCreationOption = enum(i32) {
    ReplaceExisting = 0,
    FailIfExists = 1,
};
pub const KeyCredentialManager = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn IsSupportedAsync() core.HResult!*IAsyncOperation(bool) {
        const factory = @This().IKeyCredentialManagerStaticsCache.get();
        return try factory.IsSupportedAsync();
    }
    pub fn RenewAttestationAsync() core.HResult!*IAsyncAction {
        const factory = @This().IKeyCredentialManagerStaticsCache.get();
        return try factory.RenewAttestationAsync();
    }
    pub fn RequestCreateAsync(name: HSTRING, option: KeyCredentialCreationOption) core.HResult!*IAsyncOperation(KeyCredentialRetrievalResult) {
        const factory = @This().IKeyCredentialManagerStaticsCache.get();
        return try factory.RequestCreateAsync(name, option);
    }
    pub fn OpenAsync(name: HSTRING) core.HResult!*IAsyncOperation(KeyCredentialRetrievalResult) {
        const factory = @This().IKeyCredentialManagerStaticsCache.get();
        return try factory.OpenAsync(name);
    }
    pub fn DeleteAsync(name: HSTRING) core.HResult!*IAsyncAction {
        const factory = @This().IKeyCredentialManagerStaticsCache.get();
        return try factory.DeleteAsync(name);
    }
    pub const NAME: []const u8 = "Windows.Security.Credentials.KeyCredentialManager";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _IKeyCredentialManagerStaticsCache: FactoryCache(IKeyCredentialManagerStatics, RUNTIME_NAME) = .{};
};
pub const KeyCredentialOperationResult = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getResult(self: *@This()) core.HResult!*IBuffer {
        const this: *IKeyCredentialOperationResult = @ptrCast(self);
        return try this.getResult();
    }
    pub fn getStatus(self: *@This()) core.HResult!KeyCredentialStatus {
        const this: *IKeyCredentialOperationResult = @ptrCast(self);
        return try this.getStatus();
    }
    pub const NAME: []const u8 = "Windows.Security.Credentials.KeyCredentialOperationResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IKeyCredentialOperationResult.GUID;
    pub const IID: Guid = IKeyCredentialOperationResult.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IKeyCredentialOperationResult.SIGNATURE);
};
pub const KeyCredentialRetrievalResult = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getCredential(self: *@This()) core.HResult!*KeyCredential {
        const this: *IKeyCredentialRetrievalResult = @ptrCast(self);
        return try this.getCredential();
    }
    pub fn getStatus(self: *@This()) core.HResult!KeyCredentialStatus {
        const this: *IKeyCredentialRetrievalResult = @ptrCast(self);
        return try this.getStatus();
    }
    pub const NAME: []const u8 = "Windows.Security.Credentials.KeyCredentialRetrievalResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IKeyCredentialRetrievalResult.GUID;
    pub const IID: Guid = IKeyCredentialRetrievalResult.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IKeyCredentialRetrievalResult.SIGNATURE);
};
pub const KeyCredentialStatus = enum(i32) {
    Success = 0,
    UnknownError = 1,
    NotFound = 2,
    UserCanceled = 3,
    UserPrefersPassword = 4,
    CredentialAlreadyExists = 5,
    SecurityDeviceLocked = 6,
};
pub const PasswordCredential = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getResource(self: *@This()) core.HResult!HSTRING {
        const this: *IPasswordCredential = @ptrCast(self);
        return try this.getResource();
    }
    pub fn putResource(self: *@This(), resource: HSTRING) core.HResult!void {
        const this: *IPasswordCredential = @ptrCast(self);
        return try this.putResource(resource);
    }
    pub fn getUserName(self: *@This()) core.HResult!HSTRING {
        const this: *IPasswordCredential = @ptrCast(self);
        return try this.getUserName();
    }
    pub fn putUserName(self: *@This(), userName: HSTRING) core.HResult!void {
        const this: *IPasswordCredential = @ptrCast(self);
        return try this.putUserName(userName);
    }
    pub fn getPassword(self: *@This()) core.HResult!HSTRING {
        const this: *IPasswordCredential = @ptrCast(self);
        return try this.getPassword();
    }
    pub fn putPassword(self: *@This(), password: HSTRING) core.HResult!void {
        const this: *IPasswordCredential = @ptrCast(self);
        return try this.putPassword(password);
    }
    pub fn RetrievePassword(self: *@This()) core.HResult!void {
        const this: *IPasswordCredential = @ptrCast(self);
        return try this.RetrievePassword();
    }
    pub fn getProperties(self: *@This()) core.HResult!*IPropertySet {
        const this: *IPasswordCredential = @ptrCast(self);
        return try this.getProperties();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IPasswordCredential.IID)));
    }
    pub fn CreatePasswordCredential(resource: HSTRING, userName: HSTRING, password: HSTRING) core.HResult!*PasswordCredential {
        const factory = @This().ICredentialFactoryCache.get();
        return try factory.CreatePasswordCredential(resource, userName, password);
    }
    pub const NAME: []const u8 = "Windows.Security.Credentials.PasswordCredential";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPasswordCredential.GUID;
    pub const IID: Guid = IPasswordCredential.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPasswordCredential.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _ICredentialFactoryCache: FactoryCache(ICredentialFactory, RUNTIME_NAME) = .{};
};
pub const PasswordCredentialPropertyStore = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn addMapChanged(self: *@This(), vhnd: *MapChangedEventHandler(HSTRING,IInspectable)) core.HResult!EventRegistrationToken {
        var this: ?*IObservableMap = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IObservableMap.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addMapChanged(vhnd);
    }
    pub fn removeMapChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        var this: ?*IObservableMap = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IObservableMap.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removeMapChanged(token);
    }
    pub fn Lookup(self: *@This(), key: HSTRING) core.HResult!*IInspectable {
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
    pub fn GetView(self: *@This()) core.HResult!*IMapView(HSTRING,IInspectable) {
        var this: ?*IMap = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMap.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetView();
    }
    pub fn Insert(self: *@This(), key: HSTRING, value: *IInspectable) core.HResult!bool {
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
    pub fn First(self: *@This()) core.HResult!*IIterator(IKeyValuePair(HSTRING,IInspectable)) {
        var this: ?*IIterable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IIterable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.First();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IPropertySet.IID)));
    }
    pub const NAME: []const u8 = "Windows.Security.Credentials.PasswordCredentialPropertyStore";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPropertySet.GUID;
    pub const IID: Guid = IPropertySet.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPropertySet.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const PasswordVault = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn Add(self: *@This(), credential: *PasswordCredential) core.HResult!void {
        const this: *IPasswordVault = @ptrCast(self);
        return try this.Add(credential);
    }
    pub fn Remove(self: *@This(), credential: *PasswordCredential) core.HResult!void {
        const this: *IPasswordVault = @ptrCast(self);
        return try this.Remove(credential);
    }
    pub fn Retrieve(self: *@This(), resource: HSTRING, userName: HSTRING) core.HResult!*PasswordCredential {
        const this: *IPasswordVault = @ptrCast(self);
        return try this.Retrieve(resource, userName);
    }
    pub fn FindAllByResource(self: *@This(), resource: HSTRING) core.HResult!*IVectorView(PasswordCredential) {
        const this: *IPasswordVault = @ptrCast(self);
        return try this.FindAllByResource(resource);
    }
    pub fn FindAllByUserName(self: *@This(), userName: HSTRING) core.HResult!*IVectorView(PasswordCredential) {
        const this: *IPasswordVault = @ptrCast(self);
        return try this.FindAllByUserName(userName);
    }
    pub fn RetrieveAll(self: *@This()) core.HResult!*IVectorView(PasswordCredential) {
        const this: *IPasswordVault = @ptrCast(self);
        return try this.RetrieveAll();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IPasswordVault.IID)));
    }
    pub const NAME: []const u8 = "Windows.Security.Credentials.PasswordVault";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPasswordVault.GUID;
    pub const IID: Guid = IPasswordVault.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPasswordVault.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const WebAccount = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getWebAccountProvider(self: *@This()) core.HResult!*WebAccountProvider {
        const this: *IWebAccount = @ptrCast(self);
        return try this.getWebAccountProvider();
    }
    pub fn getUserName(self: *@This()) core.HResult!HSTRING {
        const this: *IWebAccount = @ptrCast(self);
        return try this.getUserName();
    }
    pub fn getState(self: *@This()) core.HResult!WebAccountState {
        const this: *IWebAccount = @ptrCast(self);
        return try this.getState();
    }
    pub fn getId(self: *@This()) core.HResult!HSTRING {
        var this: ?*IWebAccount2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IWebAccount2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getId();
    }
    pub fn getProperties(self: *@This()) core.HResult!*IMapView(HSTRING,HSTRING) {
        var this: ?*IWebAccount2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IWebAccount2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getProperties();
    }
    pub fn GetPictureAsync(self: *@This(), desizedSize: WebAccountPictureSize) core.HResult!*IAsyncOperation(IRandomAccessStream) {
        var this: ?*IWebAccount2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IWebAccount2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetPictureAsync(desizedSize);
    }
    pub fn SignOutAsync(self: *@This()) core.HResult!*IAsyncAction {
        var this: ?*IWebAccount2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IWebAccount2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.SignOutAsync();
    }
    pub fn SignOutAsync(self: *@This(), clientId: HSTRING) core.HResult!*IAsyncAction {
        var this: ?*IWebAccount2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IWebAccount2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.SignOutAsync(clientId);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateWebAccount(webAccountProvider: *WebAccountProvider, userName: HSTRING, state: WebAccountState) core.HResult!*WebAccount {
        const factory = @This().IWebAccountFactoryCache.get();
        return try factory.CreateWebAccount(webAccountProvider, userName, state);
    }
    pub const NAME: []const u8 = "Windows.Security.Credentials.WebAccount";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IWebAccount.GUID;
    pub const IID: Guid = IWebAccount.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IWebAccount.SIGNATURE);
    var _IWebAccountFactoryCache: FactoryCache(IWebAccountFactory, RUNTIME_NAME) = .{};
};
pub const WebAccountPictureSize = enum(i32) {
    Size64x64 = 64,
    Size208x208 = 208,
    Size424x424 = 424,
    Size1080x1080 = 1080,
};
pub const WebAccountProvider = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getId(self: *@This()) core.HResult!HSTRING {
        const this: *IWebAccountProvider = @ptrCast(self);
        return try this.getId();
    }
    pub fn getDisplayName(self: *@This()) core.HResult!HSTRING {
        const this: *IWebAccountProvider = @ptrCast(self);
        return try this.getDisplayName();
    }
    pub fn getIconUri(self: *@This()) core.HResult!*Uri {
        const this: *IWebAccountProvider = @ptrCast(self);
        return try this.getIconUri();
    }
    pub fn getDisplayPurpose(self: *@This()) core.HResult!HSTRING {
        var this: ?*IWebAccountProvider2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IWebAccountProvider2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getDisplayPurpose();
    }
    pub fn getAuthority(self: *@This()) core.HResult!HSTRING {
        var this: ?*IWebAccountProvider2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IWebAccountProvider2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getAuthority();
    }
    pub fn getUser(self: *@This()) core.HResult!*User {
        var this: ?*IWebAccountProvider3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IWebAccountProvider3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getUser();
    }
    pub fn getIsSystemProvider(self: *@This()) core.HResult!bool {
        var this: ?*IWebAccountProvider4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IWebAccountProvider4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsSystemProvider();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateWebAccountProvider(id: HSTRING, displayName: HSTRING, iconUri: *Uri) core.HResult!*WebAccountProvider {
        const factory = @This().IWebAccountProviderFactoryCache.get();
        return try factory.CreateWebAccountProvider(id, displayName, iconUri);
    }
    pub const NAME: []const u8 = "Windows.Security.Credentials.WebAccountProvider";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IWebAccountProvider.GUID;
    pub const IID: Guid = IWebAccountProvider.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IWebAccountProvider.SIGNATURE);
    var _IWebAccountProviderFactoryCache: FactoryCache(IWebAccountProviderFactory, RUNTIME_NAME) = .{};
};
pub const WebAccountState = enum(i32) {
    None = 0,
    Connected = 1,
    Error = 2,
};
const IUnknown = @import("../root.zig").IUnknown;
const IActivationFactory = @import("../Foundation.zig").IActivationFactory;
const Guid = @import("../root.zig").Guid;
const IVectorView = @import("../Foundation/Collections.zig").IVectorView;
const IMapView = @import("../Foundation/Collections.zig").IMapView;
const MapChangedEventHandler = @import("../Foundation/Collections.zig").MapChangedEventHandler;
const IBuffer = @import("../Storage/Streams.zig").IBuffer;
const IMap = @import("../Foundation/Collections.zig").IMap;
const IKeyValuePair = @import("../Foundation/Collections.zig").IKeyValuePair;
const IObservableMap = @import("../Foundation/Collections.zig").IObservableMap;
const IRandomAccessStream = @import("../Storage/Streams.zig").IRandomAccessStream;
const FactoryCache = @import("../core.zig").FactoryCache;
const IIterator = @import("../Foundation/Collections.zig").IIterator;
const TrustLevel = @import("../root.zig").TrustLevel;
const HSTRING = @import("../root.zig").HSTRING;
const IIterable = @import("../Foundation/Collections.zig").IIterable;
const IInspectable = @import("../Foundation.zig").IInspectable;
const Uri = @import("../Foundation.zig").Uri;
const HRESULT = @import("../root.zig").HRESULT;
const IAsyncOperation = @import("../Foundation.zig").IAsyncOperation;
const core = @import("../root.zig").core;
const EventRegistrationToken = @import("../Foundation.zig").EventRegistrationToken;
const IPropertySet = @import("../Foundation/Collections.zig").IPropertySet;
const IAsyncAction = @import("../Foundation.zig").IAsyncAction;
const CryptographicPublicKeyBlobType = @import("./Cryptography/Core.zig").CryptographicPublicKeyBlobType;
const User = @import("../System.zig").User;
pub const UI = @import("./Credentials/UI.zig");
