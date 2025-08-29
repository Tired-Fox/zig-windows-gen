pub const AsymmetricAlgorithmNames = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn getEcdsaSha256() core.HResult!HSTRING {
        const factory = @This().IAsymmetricAlgorithmNamesStatics2Cache.get();
        return try factory.getEcdsaSha256();
    }
    pub fn getEcdsaSha384() core.HResult!HSTRING {
        const factory = @This().IAsymmetricAlgorithmNamesStatics2Cache.get();
        return try factory.getEcdsaSha384();
    }
    pub fn getEcdsaSha512() core.HResult!HSTRING {
        const factory = @This().IAsymmetricAlgorithmNamesStatics2Cache.get();
        return try factory.getEcdsaSha512();
    }
    pub fn getRsaPkcs1() core.HResult!HSTRING {
        const factory = @This().IAsymmetricAlgorithmNamesStaticsCache.get();
        return try factory.getRsaPkcs1();
    }
    pub fn getRsaOaepSha1() core.HResult!HSTRING {
        const factory = @This().IAsymmetricAlgorithmNamesStaticsCache.get();
        return try factory.getRsaOaepSha1();
    }
    pub fn getRsaOaepSha256() core.HResult!HSTRING {
        const factory = @This().IAsymmetricAlgorithmNamesStaticsCache.get();
        return try factory.getRsaOaepSha256();
    }
    pub fn getRsaOaepSha384() core.HResult!HSTRING {
        const factory = @This().IAsymmetricAlgorithmNamesStaticsCache.get();
        return try factory.getRsaOaepSha384();
    }
    pub fn getRsaOaepSha512() core.HResult!HSTRING {
        const factory = @This().IAsymmetricAlgorithmNamesStaticsCache.get();
        return try factory.getRsaOaepSha512();
    }
    pub fn getEcdsaP256Sha256() core.HResult!HSTRING {
        const factory = @This().IAsymmetricAlgorithmNamesStaticsCache.get();
        return try factory.getEcdsaP256Sha256();
    }
    pub fn getEcdsaP384Sha384() core.HResult!HSTRING {
        const factory = @This().IAsymmetricAlgorithmNamesStaticsCache.get();
        return try factory.getEcdsaP384Sha384();
    }
    pub fn getEcdsaP521Sha512() core.HResult!HSTRING {
        const factory = @This().IAsymmetricAlgorithmNamesStaticsCache.get();
        return try factory.getEcdsaP521Sha512();
    }
    pub fn getDsaSha1() core.HResult!HSTRING {
        const factory = @This().IAsymmetricAlgorithmNamesStaticsCache.get();
        return try factory.getDsaSha1();
    }
    pub fn getDsaSha256() core.HResult!HSTRING {
        const factory = @This().IAsymmetricAlgorithmNamesStaticsCache.get();
        return try factory.getDsaSha256();
    }
    pub fn getRsaSignPkcs1Sha1() core.HResult!HSTRING {
        const factory = @This().IAsymmetricAlgorithmNamesStaticsCache.get();
        return try factory.getRsaSignPkcs1Sha1();
    }
    pub fn getRsaSignPkcs1Sha256() core.HResult!HSTRING {
        const factory = @This().IAsymmetricAlgorithmNamesStaticsCache.get();
        return try factory.getRsaSignPkcs1Sha256();
    }
    pub fn getRsaSignPkcs1Sha384() core.HResult!HSTRING {
        const factory = @This().IAsymmetricAlgorithmNamesStaticsCache.get();
        return try factory.getRsaSignPkcs1Sha384();
    }
    pub fn getRsaSignPkcs1Sha512() core.HResult!HSTRING {
        const factory = @This().IAsymmetricAlgorithmNamesStaticsCache.get();
        return try factory.getRsaSignPkcs1Sha512();
    }
    pub fn getRsaSignPssSha1() core.HResult!HSTRING {
        const factory = @This().IAsymmetricAlgorithmNamesStaticsCache.get();
        return try factory.getRsaSignPssSha1();
    }
    pub fn getRsaSignPssSha256() core.HResult!HSTRING {
        const factory = @This().IAsymmetricAlgorithmNamesStaticsCache.get();
        return try factory.getRsaSignPssSha256();
    }
    pub fn getRsaSignPssSha384() core.HResult!HSTRING {
        const factory = @This().IAsymmetricAlgorithmNamesStaticsCache.get();
        return try factory.getRsaSignPssSha384();
    }
    pub fn getRsaSignPssSha512() core.HResult!HSTRING {
        const factory = @This().IAsymmetricAlgorithmNamesStaticsCache.get();
        return try factory.getRsaSignPssSha512();
    }
    pub const NAME: []const u8 = "Windows.Security.Cryptography.Core.AsymmetricAlgorithmNames";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _IAsymmetricAlgorithmNamesStatics2Cache: FactoryCache(IAsymmetricAlgorithmNamesStatics2, RUNTIME_NAME) = .{};
    var _IAsymmetricAlgorithmNamesStaticsCache: FactoryCache(IAsymmetricAlgorithmNamesStatics, RUNTIME_NAME) = .{};
};
pub const AsymmetricKeyAlgorithmProvider = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getAlgorithmName(self: *@This()) core.HResult!HSTRING {
        const this: *IAsymmetricKeyAlgorithmProvider = @ptrCast(self);
        return try this.getAlgorithmName();
    }
    pub fn CreateKeyPair(self: *@This(), keySize: u32) core.HResult!*CryptographicKey {
        const this: *IAsymmetricKeyAlgorithmProvider = @ptrCast(self);
        return try this.CreateKeyPair(keySize);
    }
    pub fn ImportKeyPair(self: *@This(), keyBlob: *IBuffer) core.HResult!*CryptographicKey {
        const this: *IAsymmetricKeyAlgorithmProvider = @ptrCast(self);
        return try this.ImportKeyPair(keyBlob);
    }
    pub fn ImportKeyPair(self: *@This(), keyBlob: *IBuffer, BlobType: CryptographicPrivateKeyBlobType) core.HResult!*CryptographicKey {
        const this: *IAsymmetricKeyAlgorithmProvider = @ptrCast(self);
        return try this.ImportKeyPair(keyBlob, BlobType);
    }
    pub fn ImportPublicKey(self: *@This(), keyBlob: *IBuffer) core.HResult!*CryptographicKey {
        const this: *IAsymmetricKeyAlgorithmProvider = @ptrCast(self);
        return try this.ImportPublicKey(keyBlob);
    }
    pub fn ImportPublicKey(self: *@This(), keyBlob: *IBuffer, BlobType: CryptographicPublicKeyBlobType) core.HResult!*CryptographicKey {
        const this: *IAsymmetricKeyAlgorithmProvider = @ptrCast(self);
        return try this.ImportPublicKey(keyBlob, BlobType);
    }
    pub fn CreateKeyPairWithCurveName(self: *@This(), curveName: HSTRING) core.HResult!*CryptographicKey {
        var this: ?*IAsymmetricKeyAlgorithmProvider2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAsymmetricKeyAlgorithmProvider2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.CreateKeyPairWithCurveName(curveName);
    }
    pub fn CreateKeyPairWithCurveParameters(self: *@This(), parameters: [*]u8) core.HResult!*CryptographicKey {
        var this: ?*IAsymmetricKeyAlgorithmProvider2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAsymmetricKeyAlgorithmProvider2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.CreateKeyPairWithCurveParameters(parameters);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn OpenAlgorithm(algorithm: HSTRING) core.HResult!*AsymmetricKeyAlgorithmProvider {
        const factory = @This().IAsymmetricKeyAlgorithmProviderStaticsCache.get();
        return try factory.OpenAlgorithm(algorithm);
    }
    pub const NAME: []const u8 = "Windows.Security.Cryptography.Core.AsymmetricKeyAlgorithmProvider";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAsymmetricKeyAlgorithmProvider.GUID;
    pub const IID: Guid = IAsymmetricKeyAlgorithmProvider.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAsymmetricKeyAlgorithmProvider.SIGNATURE);
    var _IAsymmetricKeyAlgorithmProviderStaticsCache: FactoryCache(IAsymmetricKeyAlgorithmProviderStatics, RUNTIME_NAME) = .{};
};
pub const Capi1KdfTargetAlgorithm = enum(i32) {
    NotAes = 0,
    Aes = 1,
};
pub const CryptographicEngine = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn Encrypt(key: *CryptographicKey, data: *IBuffer, iv: *IBuffer) core.HResult!*IBuffer {
        const factory = @This().ICryptographicEngineStaticsCache.get();
        return try factory.Encrypt(key, data, iv);
    }
    pub fn Decrypt(key: *CryptographicKey, data: *IBuffer, iv: *IBuffer) core.HResult!*IBuffer {
        const factory = @This().ICryptographicEngineStaticsCache.get();
        return try factory.Decrypt(key, data, iv);
    }
    pub fn EncryptAndAuthenticate(key: *CryptographicKey, data: *IBuffer, nonce: *IBuffer, authenticatedData: *IBuffer) core.HResult!*EncryptedAndAuthenticatedData {
        const factory = @This().ICryptographicEngineStaticsCache.get();
        return try factory.EncryptAndAuthenticate(key, data, nonce, authenticatedData);
    }
    pub fn DecryptAndAuthenticate(key: *CryptographicKey, data: *IBuffer, nonce: *IBuffer, authenticationTag: *IBuffer, authenticatedData: *IBuffer) core.HResult!*IBuffer {
        const factory = @This().ICryptographicEngineStaticsCache.get();
        return try factory.DecryptAndAuthenticate(key, data, nonce, authenticationTag, authenticatedData);
    }
    pub fn Sign(key: *CryptographicKey, data: *IBuffer) core.HResult!*IBuffer {
        const factory = @This().ICryptographicEngineStaticsCache.get();
        return try factory.Sign(key, data);
    }
    pub fn VerifySignature(key: *CryptographicKey, data: *IBuffer, signature: *IBuffer) core.HResult!bool {
        const factory = @This().ICryptographicEngineStaticsCache.get();
        return try factory.VerifySignature(key, data, signature);
    }
    pub fn DeriveKeyMaterial(key: *CryptographicKey, parameters: *KeyDerivationParameters, desiredKeySize: u32) core.HResult!*IBuffer {
        const factory = @This().ICryptographicEngineStaticsCache.get();
        return try factory.DeriveKeyMaterial(key, parameters, desiredKeySize);
    }
    pub fn SignHashedData(key: *CryptographicKey, data: *IBuffer) core.HResult!*IBuffer {
        const factory = @This().ICryptographicEngineStatics2Cache.get();
        return try factory.SignHashedData(key, data);
    }
    pub fn VerifySignatureWithHashInput(key: *CryptographicKey, data: *IBuffer, signature: *IBuffer) core.HResult!bool {
        const factory = @This().ICryptographicEngineStatics2Cache.get();
        return try factory.VerifySignatureWithHashInput(key, data, signature);
    }
    pub fn DecryptAsync(key: *CryptographicKey, data: *IBuffer, iv: *IBuffer) core.HResult!*IAsyncOperation(IBuffer) {
        const factory = @This().ICryptographicEngineStatics2Cache.get();
        return try factory.DecryptAsync(key, data, iv);
    }
    pub fn SignAsync(key: *CryptographicKey, data: *IBuffer) core.HResult!*IAsyncOperation(IBuffer) {
        const factory = @This().ICryptographicEngineStatics2Cache.get();
        return try factory.SignAsync(key, data);
    }
    pub fn SignHashedDataAsync(key: *CryptographicKey, data: *IBuffer) core.HResult!*IAsyncOperation(IBuffer) {
        const factory = @This().ICryptographicEngineStatics2Cache.get();
        return try factory.SignHashedDataAsync(key, data);
    }
    pub const NAME: []const u8 = "Windows.Security.Cryptography.Core.CryptographicEngine";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _ICryptographicEngineStaticsCache: FactoryCache(ICryptographicEngineStatics, RUNTIME_NAME) = .{};
    var _ICryptographicEngineStatics2Cache: FactoryCache(ICryptographicEngineStatics2, RUNTIME_NAME) = .{};
};
pub const CryptographicHash = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn Append(self: *@This(), data: *IBuffer) core.HResult!void {
        const this: *IHashComputation = @ptrCast(self);
        return try this.Append(data);
    }
    pub fn GetValueAndReset(self: *@This()) core.HResult!*IBuffer {
        const this: *IHashComputation = @ptrCast(self);
        return try this.GetValueAndReset();
    }
    pub const NAME: []const u8 = "Windows.Security.Cryptography.Core.CryptographicHash";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IHashComputation.GUID;
    pub const IID: Guid = IHashComputation.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IHashComputation.SIGNATURE);
};
pub const CryptographicKey = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getKeySize(self: *@This()) core.HResult!u32 {
        const this: *ICryptographicKey = @ptrCast(self);
        return try this.getKeySize();
    }
    pub fn Export(self: *@This()) core.HResult!*IBuffer {
        const this: *ICryptographicKey = @ptrCast(self);
        return try this.Export();
    }
    pub fn Export(self: *@This(), BlobType: CryptographicPrivateKeyBlobType) core.HResult!*IBuffer {
        const this: *ICryptographicKey = @ptrCast(self);
        return try this.Export(BlobType);
    }
    pub fn ExportPublicKey(self: *@This()) core.HResult!*IBuffer {
        const this: *ICryptographicKey = @ptrCast(self);
        return try this.ExportPublicKey();
    }
    pub fn ExportPublicKey(self: *@This(), BlobType: CryptographicPublicKeyBlobType) core.HResult!*IBuffer {
        const this: *ICryptographicKey = @ptrCast(self);
        return try this.ExportPublicKey(BlobType);
    }
    pub const NAME: []const u8 = "Windows.Security.Cryptography.Core.CryptographicKey";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICryptographicKey.GUID;
    pub const IID: Guid = ICryptographicKey.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICryptographicKey.SIGNATURE);
};
pub const CryptographicPadding = enum(i32) {
    None = 0,
    RsaOaep = 1,
    RsaPkcs1V15 = 2,
    RsaPss = 3,
};
pub const CryptographicPrivateKeyBlobType = enum(i32) {
    Pkcs8RawPrivateKeyInfo = 0,
    Pkcs1RsaPrivateKey = 1,
    BCryptPrivateKey = 2,
    Capi1PrivateKey = 3,
    BCryptEccFullPrivateKey = 4,
};
pub const CryptographicPublicKeyBlobType = enum(i32) {
    X509SubjectPublicKeyInfo = 0,
    Pkcs1RsaPublicKey = 1,
    BCryptPublicKey = 2,
    Capi1PublicKey = 3,
    BCryptEccFullPublicKey = 4,
};
pub const EccCurveNames = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn getBrainpoolP160r1() core.HResult!HSTRING {
        const factory = @This().IEccCurveNamesStaticsCache.get();
        return try factory.getBrainpoolP160r1();
    }
    pub fn getBrainpoolP160t1() core.HResult!HSTRING {
        const factory = @This().IEccCurveNamesStaticsCache.get();
        return try factory.getBrainpoolP160t1();
    }
    pub fn getBrainpoolP192r1() core.HResult!HSTRING {
        const factory = @This().IEccCurveNamesStaticsCache.get();
        return try factory.getBrainpoolP192r1();
    }
    pub fn getBrainpoolP192t1() core.HResult!HSTRING {
        const factory = @This().IEccCurveNamesStaticsCache.get();
        return try factory.getBrainpoolP192t1();
    }
    pub fn getBrainpoolP224r1() core.HResult!HSTRING {
        const factory = @This().IEccCurveNamesStaticsCache.get();
        return try factory.getBrainpoolP224r1();
    }
    pub fn getBrainpoolP224t1() core.HResult!HSTRING {
        const factory = @This().IEccCurveNamesStaticsCache.get();
        return try factory.getBrainpoolP224t1();
    }
    pub fn getBrainpoolP256r1() core.HResult!HSTRING {
        const factory = @This().IEccCurveNamesStaticsCache.get();
        return try factory.getBrainpoolP256r1();
    }
    pub fn getBrainpoolP256t1() core.HResult!HSTRING {
        const factory = @This().IEccCurveNamesStaticsCache.get();
        return try factory.getBrainpoolP256t1();
    }
    pub fn getBrainpoolP320r1() core.HResult!HSTRING {
        const factory = @This().IEccCurveNamesStaticsCache.get();
        return try factory.getBrainpoolP320r1();
    }
    pub fn getBrainpoolP320t1() core.HResult!HSTRING {
        const factory = @This().IEccCurveNamesStaticsCache.get();
        return try factory.getBrainpoolP320t1();
    }
    pub fn getBrainpoolP384r1() core.HResult!HSTRING {
        const factory = @This().IEccCurveNamesStaticsCache.get();
        return try factory.getBrainpoolP384r1();
    }
    pub fn getBrainpoolP384t1() core.HResult!HSTRING {
        const factory = @This().IEccCurveNamesStaticsCache.get();
        return try factory.getBrainpoolP384t1();
    }
    pub fn getBrainpoolP512r1() core.HResult!HSTRING {
        const factory = @This().IEccCurveNamesStaticsCache.get();
        return try factory.getBrainpoolP512r1();
    }
    pub fn getBrainpoolP512t1() core.HResult!HSTRING {
        const factory = @This().IEccCurveNamesStaticsCache.get();
        return try factory.getBrainpoolP512t1();
    }
    pub fn getCurve25519() core.HResult!HSTRING {
        const factory = @This().IEccCurveNamesStaticsCache.get();
        return try factory.getCurve25519();
    }
    pub fn getEc192wapi() core.HResult!HSTRING {
        const factory = @This().IEccCurveNamesStaticsCache.get();
        return try factory.getEc192wapi();
    }
    pub fn getNistP192() core.HResult!HSTRING {
        const factory = @This().IEccCurveNamesStaticsCache.get();
        return try factory.getNistP192();
    }
    pub fn getNistP224() core.HResult!HSTRING {
        const factory = @This().IEccCurveNamesStaticsCache.get();
        return try factory.getNistP224();
    }
    pub fn getNistP256() core.HResult!HSTRING {
        const factory = @This().IEccCurveNamesStaticsCache.get();
        return try factory.getNistP256();
    }
    pub fn getNistP384() core.HResult!HSTRING {
        const factory = @This().IEccCurveNamesStaticsCache.get();
        return try factory.getNistP384();
    }
    pub fn getNistP521() core.HResult!HSTRING {
        const factory = @This().IEccCurveNamesStaticsCache.get();
        return try factory.getNistP521();
    }
    pub fn getNumsP256t1() core.HResult!HSTRING {
        const factory = @This().IEccCurveNamesStaticsCache.get();
        return try factory.getNumsP256t1();
    }
    pub fn getNumsP384t1() core.HResult!HSTRING {
        const factory = @This().IEccCurveNamesStaticsCache.get();
        return try factory.getNumsP384t1();
    }
    pub fn getNumsP512t1() core.HResult!HSTRING {
        const factory = @This().IEccCurveNamesStaticsCache.get();
        return try factory.getNumsP512t1();
    }
    pub fn getSecP160k1() core.HResult!HSTRING {
        const factory = @This().IEccCurveNamesStaticsCache.get();
        return try factory.getSecP160k1();
    }
    pub fn getSecP160r1() core.HResult!HSTRING {
        const factory = @This().IEccCurveNamesStaticsCache.get();
        return try factory.getSecP160r1();
    }
    pub fn getSecP160r2() core.HResult!HSTRING {
        const factory = @This().IEccCurveNamesStaticsCache.get();
        return try factory.getSecP160r2();
    }
    pub fn getSecP192k1() core.HResult!HSTRING {
        const factory = @This().IEccCurveNamesStaticsCache.get();
        return try factory.getSecP192k1();
    }
    pub fn getSecP192r1() core.HResult!HSTRING {
        const factory = @This().IEccCurveNamesStaticsCache.get();
        return try factory.getSecP192r1();
    }
    pub fn getSecP224k1() core.HResult!HSTRING {
        const factory = @This().IEccCurveNamesStaticsCache.get();
        return try factory.getSecP224k1();
    }
    pub fn getSecP224r1() core.HResult!HSTRING {
        const factory = @This().IEccCurveNamesStaticsCache.get();
        return try factory.getSecP224r1();
    }
    pub fn getSecP256k1() core.HResult!HSTRING {
        const factory = @This().IEccCurveNamesStaticsCache.get();
        return try factory.getSecP256k1();
    }
    pub fn getSecP256r1() core.HResult!HSTRING {
        const factory = @This().IEccCurveNamesStaticsCache.get();
        return try factory.getSecP256r1();
    }
    pub fn getSecP384r1() core.HResult!HSTRING {
        const factory = @This().IEccCurveNamesStaticsCache.get();
        return try factory.getSecP384r1();
    }
    pub fn getSecP521r1() core.HResult!HSTRING {
        const factory = @This().IEccCurveNamesStaticsCache.get();
        return try factory.getSecP521r1();
    }
    pub fn getWtls7() core.HResult!HSTRING {
        const factory = @This().IEccCurveNamesStaticsCache.get();
        return try factory.getWtls7();
    }
    pub fn getWtls9() core.HResult!HSTRING {
        const factory = @This().IEccCurveNamesStaticsCache.get();
        return try factory.getWtls9();
    }
    pub fn getWtls12() core.HResult!HSTRING {
        const factory = @This().IEccCurveNamesStaticsCache.get();
        return try factory.getWtls12();
    }
    pub fn getX962P192v1() core.HResult!HSTRING {
        const factory = @This().IEccCurveNamesStaticsCache.get();
        return try factory.getX962P192v1();
    }
    pub fn getX962P192v2() core.HResult!HSTRING {
        const factory = @This().IEccCurveNamesStaticsCache.get();
        return try factory.getX962P192v2();
    }
    pub fn getX962P192v3() core.HResult!HSTRING {
        const factory = @This().IEccCurveNamesStaticsCache.get();
        return try factory.getX962P192v3();
    }
    pub fn getX962P239v1() core.HResult!HSTRING {
        const factory = @This().IEccCurveNamesStaticsCache.get();
        return try factory.getX962P239v1();
    }
    pub fn getX962P239v2() core.HResult!HSTRING {
        const factory = @This().IEccCurveNamesStaticsCache.get();
        return try factory.getX962P239v2();
    }
    pub fn getX962P239v3() core.HResult!HSTRING {
        const factory = @This().IEccCurveNamesStaticsCache.get();
        return try factory.getX962P239v3();
    }
    pub fn getX962P256v1() core.HResult!HSTRING {
        const factory = @This().IEccCurveNamesStaticsCache.get();
        return try factory.getX962P256v1();
    }
    pub fn getAllEccCurveNames() core.HResult!*IVectorView(HSTRING) {
        const factory = @This().IEccCurveNamesStaticsCache.get();
        return try factory.getAllEccCurveNames();
    }
    pub const NAME: []const u8 = "Windows.Security.Cryptography.Core.EccCurveNames";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _IEccCurveNamesStaticsCache: FactoryCache(IEccCurveNamesStatics, RUNTIME_NAME) = .{};
};
pub const EncryptedAndAuthenticatedData = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getEncryptedData(self: *@This()) core.HResult!*IBuffer {
        const this: *IEncryptedAndAuthenticatedData = @ptrCast(self);
        return try this.getEncryptedData();
    }
    pub fn getAuthenticationTag(self: *@This()) core.HResult!*IBuffer {
        const this: *IEncryptedAndAuthenticatedData = @ptrCast(self);
        return try this.getAuthenticationTag();
    }
    pub const NAME: []const u8 = "Windows.Security.Cryptography.Core.EncryptedAndAuthenticatedData";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IEncryptedAndAuthenticatedData.GUID;
    pub const IID: Guid = IEncryptedAndAuthenticatedData.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IEncryptedAndAuthenticatedData.SIGNATURE);
};
pub const HashAlgorithmNames = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn getMd5() core.HResult!HSTRING {
        const factory = @This().IHashAlgorithmNamesStaticsCache.get();
        return try factory.getMd5();
    }
    pub fn getSha1() core.HResult!HSTRING {
        const factory = @This().IHashAlgorithmNamesStaticsCache.get();
        return try factory.getSha1();
    }
    pub fn getSha256() core.HResult!HSTRING {
        const factory = @This().IHashAlgorithmNamesStaticsCache.get();
        return try factory.getSha256();
    }
    pub fn getSha384() core.HResult!HSTRING {
        const factory = @This().IHashAlgorithmNamesStaticsCache.get();
        return try factory.getSha384();
    }
    pub fn getSha512() core.HResult!HSTRING {
        const factory = @This().IHashAlgorithmNamesStaticsCache.get();
        return try factory.getSha512();
    }
    pub const NAME: []const u8 = "Windows.Security.Cryptography.Core.HashAlgorithmNames";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _IHashAlgorithmNamesStaticsCache: FactoryCache(IHashAlgorithmNamesStatics, RUNTIME_NAME) = .{};
};
pub const HashAlgorithmProvider = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getAlgorithmName(self: *@This()) core.HResult!HSTRING {
        const this: *IHashAlgorithmProvider = @ptrCast(self);
        return try this.getAlgorithmName();
    }
    pub fn getHashLength(self: *@This()) core.HResult!u32 {
        const this: *IHashAlgorithmProvider = @ptrCast(self);
        return try this.getHashLength();
    }
    pub fn HashData(self: *@This(), data: *IBuffer) core.HResult!*IBuffer {
        const this: *IHashAlgorithmProvider = @ptrCast(self);
        return try this.HashData(data);
    }
    pub fn CreateHash(self: *@This()) core.HResult!*CryptographicHash {
        const this: *IHashAlgorithmProvider = @ptrCast(self);
        return try this.CreateHash();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn OpenAlgorithm(algorithm: HSTRING) core.HResult!*HashAlgorithmProvider {
        const factory = @This().IHashAlgorithmProviderStaticsCache.get();
        return try factory.OpenAlgorithm(algorithm);
    }
    pub const NAME: []const u8 = "Windows.Security.Cryptography.Core.HashAlgorithmProvider";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IHashAlgorithmProvider.GUID;
    pub const IID: Guid = IHashAlgorithmProvider.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IHashAlgorithmProvider.SIGNATURE);
    var _IHashAlgorithmProviderStaticsCache: FactoryCache(IHashAlgorithmProviderStatics, RUNTIME_NAME) = .{};
};
pub const IAsymmetricAlgorithmNamesStatics = extern struct {
    vtable: *const VTable,
    pub fn getRsaPkcs1(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_RsaPkcs1(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRsaOaepSha1(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_RsaOaepSha1(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRsaOaepSha256(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_RsaOaepSha256(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRsaOaepSha384(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_RsaOaepSha384(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRsaOaepSha512(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_RsaOaepSha512(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getEcdsaP256Sha256(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_EcdsaP256Sha256(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getEcdsaP384Sha384(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_EcdsaP384Sha384(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getEcdsaP521Sha512(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_EcdsaP521Sha512(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDsaSha1(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DsaSha1(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDsaSha256(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DsaSha256(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRsaSignPkcs1Sha1(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_RsaSignPkcs1Sha1(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRsaSignPkcs1Sha256(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_RsaSignPkcs1Sha256(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRsaSignPkcs1Sha384(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_RsaSignPkcs1Sha384(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRsaSignPkcs1Sha512(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_RsaSignPkcs1Sha512(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRsaSignPssSha1(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_RsaSignPssSha1(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRsaSignPssSha256(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_RsaSignPssSha256(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRsaSignPssSha384(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_RsaSignPssSha384(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRsaSignPssSha512(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_RsaSignPssSha512(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Security.Cryptography.Core.IAsymmetricAlgorithmNamesStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "caf6fce4-67c0-46aa-84f9-752e77449f9b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_RsaPkcs1: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_RsaOaepSha1: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_RsaOaepSha256: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_RsaOaepSha384: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_RsaOaepSha512: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_EcdsaP256Sha256: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_EcdsaP384Sha384: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_EcdsaP521Sha512: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_DsaSha1: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_DsaSha256: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_RsaSignPkcs1Sha1: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_RsaSignPkcs1Sha256: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_RsaSignPkcs1Sha384: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_RsaSignPkcs1Sha512: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_RsaSignPssSha1: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_RsaSignPssSha256: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_RsaSignPssSha384: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_RsaSignPssSha512: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IAsymmetricAlgorithmNamesStatics2 = extern struct {
    vtable: *const VTable,
    pub fn getEcdsaSha256(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_EcdsaSha256(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getEcdsaSha384(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_EcdsaSha384(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getEcdsaSha512(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_EcdsaSha512(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Security.Cryptography.Core.IAsymmetricAlgorithmNamesStatics2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f141c0d6-4bff-4f23-ba66-6045b137d5df";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_EcdsaSha256: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_EcdsaSha384: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_EcdsaSha512: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IAsymmetricKeyAlgorithmProvider = extern struct {
    vtable: *const VTable,
    pub fn getAlgorithmName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_AlgorithmName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateKeyPair(self: *@This(), keySize: u32) core.HResult!*CryptographicKey {
        var _r: *CryptographicKey = undefined;
        const _c = self.vtable.CreateKeyPair(@ptrCast(self), keySize, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ImportKeyPair(self: *@This(), keyBlob: *IBuffer) core.HResult!*CryptographicKey {
        var _r: *CryptographicKey = undefined;
        const _c = self.vtable.ImportKeyPair(@ptrCast(self), keyBlob, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ImportKeyPair(self: *@This(), keyBlob: *IBuffer, BlobType: CryptographicPrivateKeyBlobType) core.HResult!*CryptographicKey {
        var _r: *CryptographicKey = undefined;
        const _c = self.vtable.ImportKeyPair(@ptrCast(self), keyBlob, BlobType, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ImportPublicKey(self: *@This(), keyBlob: *IBuffer) core.HResult!*CryptographicKey {
        var _r: *CryptographicKey = undefined;
        const _c = self.vtable.ImportPublicKey(@ptrCast(self), keyBlob, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ImportPublicKey(self: *@This(), keyBlob: *IBuffer, BlobType: CryptographicPublicKeyBlobType) core.HResult!*CryptographicKey {
        var _r: *CryptographicKey = undefined;
        const _c = self.vtable.ImportPublicKey(@ptrCast(self), keyBlob, BlobType, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Security.Cryptography.Core.IAsymmetricKeyAlgorithmProvider";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e8d2ff37-6259-4e88-b7e0-94191fde699e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_AlgorithmName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        CreateKeyPair: *const fn(self: *anyopaque, keySize: u32, _r: **CryptographicKey) callconv(.winapi) HRESULT,
        ImportKeyPair: *const fn(self: *anyopaque, keyBlob: *IBuffer, _r: **CryptographicKey) callconv(.winapi) HRESULT,
        ImportKeyPair: *const fn(self: *anyopaque, keyBlob: *IBuffer, BlobType: CryptographicPrivateKeyBlobType, _r: **CryptographicKey) callconv(.winapi) HRESULT,
        ImportPublicKey: *const fn(self: *anyopaque, keyBlob: *IBuffer, _r: **CryptographicKey) callconv(.winapi) HRESULT,
        ImportPublicKey: *const fn(self: *anyopaque, keyBlob: *IBuffer, BlobType: CryptographicPublicKeyBlobType, _r: **CryptographicKey) callconv(.winapi) HRESULT,
    };
};
pub const IAsymmetricKeyAlgorithmProvider2 = extern struct {
    vtable: *const VTable,
    pub fn CreateKeyPairWithCurveName(self: *@This(), curveName: HSTRING) core.HResult!*CryptographicKey {
        var _r: *CryptographicKey = undefined;
        const _c = self.vtable.CreateKeyPairWithCurveName(@ptrCast(self), curveName, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateKeyPairWithCurveParameters(self: *@This(), parameters: [*]u8) core.HResult!*CryptographicKey {
        var _r: *CryptographicKey = undefined;
        const _c = self.vtable.CreateKeyPairWithCurveParameters(@ptrCast(self), parameters, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Security.Cryptography.Core.IAsymmetricKeyAlgorithmProvider2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "4e322a7e-7c4d-4997-ac4f-1b848b36306e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateKeyPairWithCurveName: *const fn(self: *anyopaque, curveName: HSTRING, _r: **CryptographicKey) callconv(.winapi) HRESULT,
        CreateKeyPairWithCurveParameters: *const fn(self: *anyopaque, parameters: [*]u8, _r: **CryptographicKey) callconv(.winapi) HRESULT,
    };
};
pub const IAsymmetricKeyAlgorithmProviderStatics = extern struct {
    vtable: *const VTable,
    pub fn OpenAlgorithm(self: *@This(), algorithm: HSTRING) core.HResult!*AsymmetricKeyAlgorithmProvider {
        var _r: *AsymmetricKeyAlgorithmProvider = undefined;
        const _c = self.vtable.OpenAlgorithm(@ptrCast(self), algorithm, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Security.Cryptography.Core.IAsymmetricKeyAlgorithmProviderStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "425bde18-a7f3-47a6-a8d2-c48d6033a65c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        OpenAlgorithm: *const fn(self: *anyopaque, algorithm: HSTRING, _r: **AsymmetricKeyAlgorithmProvider) callconv(.winapi) HRESULT,
    };
};
pub const ICryptographicEngineStatics = extern struct {
    vtable: *const VTable,
    pub fn Encrypt(self: *@This(), key: *CryptographicKey, data: *IBuffer, iv: *IBuffer) core.HResult!*IBuffer {
        var _r: *IBuffer = undefined;
        const _c = self.vtable.Encrypt(@ptrCast(self), key, data, iv, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn Decrypt(self: *@This(), key: *CryptographicKey, data: *IBuffer, iv: *IBuffer) core.HResult!*IBuffer {
        var _r: *IBuffer = undefined;
        const _c = self.vtable.Decrypt(@ptrCast(self), key, data, iv, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn EncryptAndAuthenticate(self: *@This(), key: *CryptographicKey, data: *IBuffer, nonce: *IBuffer, authenticatedData: *IBuffer) core.HResult!*EncryptedAndAuthenticatedData {
        var _r: *EncryptedAndAuthenticatedData = undefined;
        const _c = self.vtable.EncryptAndAuthenticate(@ptrCast(self), key, data, nonce, authenticatedData, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn DecryptAndAuthenticate(self: *@This(), key: *CryptographicKey, data: *IBuffer, nonce: *IBuffer, authenticationTag: *IBuffer, authenticatedData: *IBuffer) core.HResult!*IBuffer {
        var _r: *IBuffer = undefined;
        const _c = self.vtable.DecryptAndAuthenticate(@ptrCast(self), key, data, nonce, authenticationTag, authenticatedData, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn Sign(self: *@This(), key: *CryptographicKey, data: *IBuffer) core.HResult!*IBuffer {
        var _r: *IBuffer = undefined;
        const _c = self.vtable.Sign(@ptrCast(self), key, data, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn VerifySignature(self: *@This(), key: *CryptographicKey, data: *IBuffer, signature: *IBuffer) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.VerifySignature(@ptrCast(self), key, data, signature, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn DeriveKeyMaterial(self: *@This(), key: *CryptographicKey, parameters: *KeyDerivationParameters, desiredKeySize: u32) core.HResult!*IBuffer {
        var _r: *IBuffer = undefined;
        const _c = self.vtable.DeriveKeyMaterial(@ptrCast(self), key, parameters, desiredKeySize, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Security.Cryptography.Core.ICryptographicEngineStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "9fea0639-6ff7-4c85-a095-95eb31715eb9";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Encrypt: *const fn(self: *anyopaque, key: *CryptographicKey, data: *IBuffer, iv: *IBuffer, _r: **IBuffer) callconv(.winapi) HRESULT,
        Decrypt: *const fn(self: *anyopaque, key: *CryptographicKey, data: *IBuffer, iv: *IBuffer, _r: **IBuffer) callconv(.winapi) HRESULT,
        EncryptAndAuthenticate: *const fn(self: *anyopaque, key: *CryptographicKey, data: *IBuffer, nonce: *IBuffer, authenticatedData: *IBuffer, _r: **EncryptedAndAuthenticatedData) callconv(.winapi) HRESULT,
        DecryptAndAuthenticate: *const fn(self: *anyopaque, key: *CryptographicKey, data: *IBuffer, nonce: *IBuffer, authenticationTag: *IBuffer, authenticatedData: *IBuffer, _r: **IBuffer) callconv(.winapi) HRESULT,
        Sign: *const fn(self: *anyopaque, key: *CryptographicKey, data: *IBuffer, _r: **IBuffer) callconv(.winapi) HRESULT,
        VerifySignature: *const fn(self: *anyopaque, key: *CryptographicKey, data: *IBuffer, signature: *IBuffer, _r: *bool) callconv(.winapi) HRESULT,
        DeriveKeyMaterial: *const fn(self: *anyopaque, key: *CryptographicKey, parameters: *KeyDerivationParameters, desiredKeySize: u32, _r: **IBuffer) callconv(.winapi) HRESULT,
    };
};
pub const ICryptographicEngineStatics2 = extern struct {
    vtable: *const VTable,
    pub fn SignHashedData(self: *@This(), key: *CryptographicKey, data: *IBuffer) core.HResult!*IBuffer {
        var _r: *IBuffer = undefined;
        const _c = self.vtable.SignHashedData(@ptrCast(self), key, data, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn VerifySignatureWithHashInput(self: *@This(), key: *CryptographicKey, data: *IBuffer, signature: *IBuffer) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.VerifySignatureWithHashInput(@ptrCast(self), key, data, signature, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn DecryptAsync(self: *@This(), key: *CryptographicKey, data: *IBuffer, iv: *IBuffer) core.HResult!*IAsyncOperation(IBuffer) {
        var _r: *IAsyncOperation(IBuffer) = undefined;
        const _c = self.vtable.DecryptAsync(@ptrCast(self), key, data, iv, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SignAsync(self: *@This(), key: *CryptographicKey, data: *IBuffer) core.HResult!*IAsyncOperation(IBuffer) {
        var _r: *IAsyncOperation(IBuffer) = undefined;
        const _c = self.vtable.SignAsync(@ptrCast(self), key, data, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SignHashedDataAsync(self: *@This(), key: *CryptographicKey, data: *IBuffer) core.HResult!*IAsyncOperation(IBuffer) {
        var _r: *IAsyncOperation(IBuffer) = undefined;
        const _c = self.vtable.SignHashedDataAsync(@ptrCast(self), key, data, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Security.Cryptography.Core.ICryptographicEngineStatics2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "675948fe-df9f-4191-92c7-6ce6f58420e0";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        SignHashedData: *const fn(self: *anyopaque, key: *CryptographicKey, data: *IBuffer, _r: **IBuffer) callconv(.winapi) HRESULT,
        VerifySignatureWithHashInput: *const fn(self: *anyopaque, key: *CryptographicKey, data: *IBuffer, signature: *IBuffer, _r: *bool) callconv(.winapi) HRESULT,
        DecryptAsync: *const fn(self: *anyopaque, key: *CryptographicKey, data: *IBuffer, iv: *IBuffer, _r: **IAsyncOperation(IBuffer)) callconv(.winapi) HRESULT,
        SignAsync: *const fn(self: *anyopaque, key: *CryptographicKey, data: *IBuffer, _r: **IAsyncOperation(IBuffer)) callconv(.winapi) HRESULT,
        SignHashedDataAsync: *const fn(self: *anyopaque, key: *CryptographicKey, data: *IBuffer, _r: **IAsyncOperation(IBuffer)) callconv(.winapi) HRESULT,
    };
};
pub const ICryptographicKey = extern struct {
    vtable: *const VTable,
    pub fn getKeySize(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_KeySize(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn Export(self: *@This()) core.HResult!*IBuffer {
        var _r: *IBuffer = undefined;
        const _c = self.vtable.Export(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn Export(self: *@This(), BlobType: CryptographicPrivateKeyBlobType) core.HResult!*IBuffer {
        var _r: *IBuffer = undefined;
        const _c = self.vtable.Export(@ptrCast(self), BlobType, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ExportPublicKey(self: *@This()) core.HResult!*IBuffer {
        var _r: *IBuffer = undefined;
        const _c = self.vtable.ExportPublicKey(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ExportPublicKey(self: *@This(), BlobType: CryptographicPublicKeyBlobType) core.HResult!*IBuffer {
        var _r: *IBuffer = undefined;
        const _c = self.vtable.ExportPublicKey(@ptrCast(self), BlobType, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Security.Cryptography.Core.ICryptographicKey";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ed2a3b70-8e7b-4009-8401-ffd1a62eeb27";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_KeySize: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        Export: *const fn(self: *anyopaque, _r: **IBuffer) callconv(.winapi) HRESULT,
        Export: *const fn(self: *anyopaque, BlobType: CryptographicPrivateKeyBlobType, _r: **IBuffer) callconv(.winapi) HRESULT,
        ExportPublicKey: *const fn(self: *anyopaque, _r: **IBuffer) callconv(.winapi) HRESULT,
        ExportPublicKey: *const fn(self: *anyopaque, BlobType: CryptographicPublicKeyBlobType, _r: **IBuffer) callconv(.winapi) HRESULT,
    };
};
pub const IEccCurveNamesStatics = extern struct {
    vtable: *const VTable,
    pub fn getBrainpoolP160r1(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_BrainpoolP160r1(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getBrainpoolP160t1(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_BrainpoolP160t1(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getBrainpoolP192r1(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_BrainpoolP192r1(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getBrainpoolP192t1(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_BrainpoolP192t1(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getBrainpoolP224r1(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_BrainpoolP224r1(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getBrainpoolP224t1(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_BrainpoolP224t1(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getBrainpoolP256r1(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_BrainpoolP256r1(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getBrainpoolP256t1(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_BrainpoolP256t1(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getBrainpoolP320r1(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_BrainpoolP320r1(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getBrainpoolP320t1(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_BrainpoolP320t1(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getBrainpoolP384r1(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_BrainpoolP384r1(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getBrainpoolP384t1(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_BrainpoolP384t1(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getBrainpoolP512r1(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_BrainpoolP512r1(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getBrainpoolP512t1(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_BrainpoolP512t1(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCurve25519(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Curve25519(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getEc192wapi(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Ec192wapi(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getNistP192(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_NistP192(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getNistP224(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_NistP224(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getNistP256(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_NistP256(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getNistP384(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_NistP384(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getNistP521(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_NistP521(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getNumsP256t1(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_NumsP256t1(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getNumsP384t1(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_NumsP384t1(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getNumsP512t1(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_NumsP512t1(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSecP160k1(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_SecP160k1(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSecP160r1(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_SecP160r1(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSecP160r2(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_SecP160r2(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSecP192k1(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_SecP192k1(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSecP192r1(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_SecP192r1(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSecP224k1(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_SecP224k1(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSecP224r1(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_SecP224r1(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSecP256k1(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_SecP256k1(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSecP256r1(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_SecP256r1(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSecP384r1(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_SecP384r1(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSecP521r1(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_SecP521r1(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getWtls7(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Wtls7(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getWtls9(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Wtls9(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getWtls12(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Wtls12(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getX962P192v1(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_X962P192v1(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getX962P192v2(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_X962P192v2(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getX962P192v3(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_X962P192v3(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getX962P239v1(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_X962P239v1(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getX962P239v2(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_X962P239v2(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getX962P239v3(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_X962P239v3(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getX962P256v1(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_X962P256v1(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAllEccCurveNames(self: *@This()) core.HResult!*IVectorView(HSTRING) {
        var _r: *IVectorView(HSTRING) = undefined;
        const _c = self.vtable.get_AllEccCurveNames(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Security.Cryptography.Core.IEccCurveNamesStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b3ff930c-aeeb-409e-b7d4-9b95295aaecf";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_BrainpoolP160r1: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_BrainpoolP160t1: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_BrainpoolP192r1: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_BrainpoolP192t1: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_BrainpoolP224r1: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_BrainpoolP224t1: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_BrainpoolP256r1: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_BrainpoolP256t1: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_BrainpoolP320r1: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_BrainpoolP320t1: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_BrainpoolP384r1: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_BrainpoolP384t1: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_BrainpoolP512r1: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_BrainpoolP512t1: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Curve25519: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Ec192wapi: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_NistP192: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_NistP224: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_NistP256: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_NistP384: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_NistP521: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_NumsP256t1: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_NumsP384t1: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_NumsP512t1: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_SecP160k1: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_SecP160r1: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_SecP160r2: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_SecP192k1: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_SecP192r1: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_SecP224k1: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_SecP224r1: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_SecP256k1: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_SecP256r1: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_SecP384r1: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_SecP521r1: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Wtls7: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Wtls9: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Wtls12: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_X962P192v1: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_X962P192v2: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_X962P192v3: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_X962P239v1: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_X962P239v2: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_X962P239v3: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_X962P256v1: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_AllEccCurveNames: *const fn(self: *anyopaque, _r: **IVectorView(HSTRING)) callconv(.winapi) HRESULT,
    };
};
pub const IEncryptedAndAuthenticatedData = extern struct {
    vtable: *const VTable,
    pub fn getEncryptedData(self: *@This()) core.HResult!*IBuffer {
        var _r: *IBuffer = undefined;
        const _c = self.vtable.get_EncryptedData(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAuthenticationTag(self: *@This()) core.HResult!*IBuffer {
        var _r: *IBuffer = undefined;
        const _c = self.vtable.get_AuthenticationTag(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Security.Cryptography.Core.IEncryptedAndAuthenticatedData";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "6fa42fe7-1ecb-4b00-bea5-60b83f862f17";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_EncryptedData: *const fn(self: *anyopaque, _r: **IBuffer) callconv(.winapi) HRESULT,
        get_AuthenticationTag: *const fn(self: *anyopaque, _r: **IBuffer) callconv(.winapi) HRESULT,
    };
};
pub const IHashAlgorithmNamesStatics = extern struct {
    vtable: *const VTable,
    pub fn getMd5(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Md5(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSha1(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Sha1(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSha256(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Sha256(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSha384(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Sha384(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSha512(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Sha512(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Security.Cryptography.Core.IHashAlgorithmNamesStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "6b5e0516-de96-4f0a-8d57-dcc9dae36c76";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Md5: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Sha1: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Sha256: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Sha384: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Sha512: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IHashAlgorithmProvider = extern struct {
    vtable: *const VTable,
    pub fn getAlgorithmName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_AlgorithmName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getHashLength(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_HashLength(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn HashData(self: *@This(), data: *IBuffer) core.HResult!*IBuffer {
        var _r: *IBuffer = undefined;
        const _c = self.vtable.HashData(@ptrCast(self), data, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateHash(self: *@This()) core.HResult!*CryptographicHash {
        var _r: *CryptographicHash = undefined;
        const _c = self.vtable.CreateHash(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Security.Cryptography.Core.IHashAlgorithmProvider";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "be9b3080-b2c3-422b-bce1-ec90efb5d7b5";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_AlgorithmName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_HashLength: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        HashData: *const fn(self: *anyopaque, data: *IBuffer, _r: **IBuffer) callconv(.winapi) HRESULT,
        CreateHash: *const fn(self: *anyopaque, _r: **CryptographicHash) callconv(.winapi) HRESULT,
    };
};
pub const IHashAlgorithmProviderStatics = extern struct {
    vtable: *const VTable,
    pub fn OpenAlgorithm(self: *@This(), algorithm: HSTRING) core.HResult!*HashAlgorithmProvider {
        var _r: *HashAlgorithmProvider = undefined;
        const _c = self.vtable.OpenAlgorithm(@ptrCast(self), algorithm, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Security.Cryptography.Core.IHashAlgorithmProviderStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "9fac9741-5cc4-4336-ae38-6212b75a915a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        OpenAlgorithm: *const fn(self: *anyopaque, algorithm: HSTRING, _r: **HashAlgorithmProvider) callconv(.winapi) HRESULT,
    };
};
pub const IHashComputation = extern struct {
    vtable: *const VTable,
    pub fn Append(self: *@This(), data: *IBuffer) core.HResult!void {
        const _c = self.vtable.Append(@ptrCast(self), data);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn GetValueAndReset(self: *@This()) core.HResult!*IBuffer {
        var _r: *IBuffer = undefined;
        const _c = self.vtable.GetValueAndReset(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Security.Cryptography.Core.IHashComputation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5904d1b6-ad31-4603-a3a4-b1bda98e2562";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Append: *const fn(self: *anyopaque, data: *IBuffer) callconv(.winapi) HRESULT,
        GetValueAndReset: *const fn(self: *anyopaque, _r: **IBuffer) callconv(.winapi) HRESULT,
    };
};
pub const IKeyDerivationAlgorithmNamesStatics = extern struct {
    vtable: *const VTable,
    pub fn getPbkdf2Md5(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Pbkdf2Md5(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPbkdf2Sha1(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Pbkdf2Sha1(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPbkdf2Sha256(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Pbkdf2Sha256(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPbkdf2Sha384(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Pbkdf2Sha384(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPbkdf2Sha512(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Pbkdf2Sha512(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSp800108CtrHmacMd5(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Sp800108CtrHmacMd5(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSp800108CtrHmacSha1(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Sp800108CtrHmacSha1(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSp800108CtrHmacSha256(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Sp800108CtrHmacSha256(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSp800108CtrHmacSha384(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Sp800108CtrHmacSha384(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSp800108CtrHmacSha512(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Sp800108CtrHmacSha512(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSp80056aConcatMd5(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Sp80056aConcatMd5(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSp80056aConcatSha1(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Sp80056aConcatSha1(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSp80056aConcatSha256(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Sp80056aConcatSha256(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSp80056aConcatSha384(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Sp80056aConcatSha384(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSp80056aConcatSha512(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Sp80056aConcatSha512(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Security.Cryptography.Core.IKeyDerivationAlgorithmNamesStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7b6e363e-94d2-4739-a57b-022e0c3a402a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Pbkdf2Md5: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Pbkdf2Sha1: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Pbkdf2Sha256: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Pbkdf2Sha384: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Pbkdf2Sha512: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Sp800108CtrHmacMd5: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Sp800108CtrHmacSha1: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Sp800108CtrHmacSha256: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Sp800108CtrHmacSha384: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Sp800108CtrHmacSha512: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Sp80056aConcatMd5: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Sp80056aConcatSha1: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Sp80056aConcatSha256: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Sp80056aConcatSha384: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Sp80056aConcatSha512: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IKeyDerivationAlgorithmNamesStatics2 = extern struct {
    vtable: *const VTable,
    pub fn getCapiKdfMd5(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_CapiKdfMd5(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCapiKdfSha1(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_CapiKdfSha1(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCapiKdfSha256(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_CapiKdfSha256(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCapiKdfSha384(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_CapiKdfSha384(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCapiKdfSha512(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_CapiKdfSha512(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Security.Cryptography.Core.IKeyDerivationAlgorithmNamesStatics2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "57953fab-6044-466f-97f4-337b7808384d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_CapiKdfMd5: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_CapiKdfSha1: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_CapiKdfSha256: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_CapiKdfSha384: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_CapiKdfSha512: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IKeyDerivationAlgorithmProvider = extern struct {
    vtable: *const VTable,
    pub fn getAlgorithmName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_AlgorithmName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateKey(self: *@This(), keyMaterial: *IBuffer) core.HResult!*CryptographicKey {
        var _r: *CryptographicKey = undefined;
        const _c = self.vtable.CreateKey(@ptrCast(self), keyMaterial, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Security.Cryptography.Core.IKeyDerivationAlgorithmProvider";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e1fba83b-4671-43b7-9158-763aaa98b6bf";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_AlgorithmName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        CreateKey: *const fn(self: *anyopaque, keyMaterial: *IBuffer, _r: **CryptographicKey) callconv(.winapi) HRESULT,
    };
};
pub const IKeyDerivationAlgorithmProviderStatics = extern struct {
    vtable: *const VTable,
    pub fn OpenAlgorithm(self: *@This(), algorithm: HSTRING) core.HResult!*KeyDerivationAlgorithmProvider {
        var _r: *KeyDerivationAlgorithmProvider = undefined;
        const _c = self.vtable.OpenAlgorithm(@ptrCast(self), algorithm, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Security.Cryptography.Core.IKeyDerivationAlgorithmProviderStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "0a22097a-0a1c-443b-9418-b9498aeb1603";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        OpenAlgorithm: *const fn(self: *anyopaque, algorithm: HSTRING, _r: **KeyDerivationAlgorithmProvider) callconv(.winapi) HRESULT,
    };
};
pub const IKeyDerivationParameters = extern struct {
    vtable: *const VTable,
    pub fn getKdfGenericBinary(self: *@This()) core.HResult!*IBuffer {
        var _r: *IBuffer = undefined;
        const _c = self.vtable.get_KdfGenericBinary(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putKdfGenericBinary(self: *@This(), value: *IBuffer) core.HResult!void {
        const _c = self.vtable.put_KdfGenericBinary(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIterationCount(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_IterationCount(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Security.Cryptography.Core.IKeyDerivationParameters";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7bf05967-047b-4a8c-964a-469ffd5522e2";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_KdfGenericBinary: *const fn(self: *anyopaque, _r: **IBuffer) callconv(.winapi) HRESULT,
        put_KdfGenericBinary: *const fn(self: *anyopaque, value: *IBuffer) callconv(.winapi) HRESULT,
        get_IterationCount: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
    };
};
pub const IKeyDerivationParameters2 = extern struct {
    vtable: *const VTable,
    pub fn getCapi1KdfTargetAlgorithm(self: *@This()) core.HResult!Capi1KdfTargetAlgorithm {
        var _r: Capi1KdfTargetAlgorithm = undefined;
        const _c = self.vtable.get_Capi1KdfTargetAlgorithm(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putCapi1KdfTargetAlgorithm(self: *@This(), value: Capi1KdfTargetAlgorithm) core.HResult!void {
        const _c = self.vtable.put_Capi1KdfTargetAlgorithm(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Security.Cryptography.Core.IKeyDerivationParameters2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "cd4166d1-417e-4f4c-b666-c0d879f3f8e0";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Capi1KdfTargetAlgorithm: *const fn(self: *anyopaque, _r: *Capi1KdfTargetAlgorithm) callconv(.winapi) HRESULT,
        put_Capi1KdfTargetAlgorithm: *const fn(self: *anyopaque, value: Capi1KdfTargetAlgorithm) callconv(.winapi) HRESULT,
    };
};
pub const IKeyDerivationParametersStatics = extern struct {
    vtable: *const VTable,
    pub fn BuildForPbkdf2(self: *@This(), pbkdf2Salt: *IBuffer, iterationCount: u32) core.HResult!*KeyDerivationParameters {
        var _r: *KeyDerivationParameters = undefined;
        const _c = self.vtable.BuildForPbkdf2(@ptrCast(self), pbkdf2Salt, iterationCount, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn BuildForSP800108(self: *@This(), label: *IBuffer, context: *IBuffer) core.HResult!*KeyDerivationParameters {
        var _r: *KeyDerivationParameters = undefined;
        const _c = self.vtable.BuildForSP800108(@ptrCast(self), label, context, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn BuildForSP80056a(self: *@This(), algorithmId: *IBuffer, partyUInfo: *IBuffer, partyVInfo: *IBuffer, suppPubInfo: *IBuffer, suppPrivInfo: *IBuffer) core.HResult!*KeyDerivationParameters {
        var _r: *KeyDerivationParameters = undefined;
        const _c = self.vtable.BuildForSP80056a(@ptrCast(self), algorithmId, partyUInfo, partyVInfo, suppPubInfo, suppPrivInfo, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Security.Cryptography.Core.IKeyDerivationParametersStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ea961fbe-f37f-4146-9dfe-a456f1735f4b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        BuildForPbkdf2: *const fn(self: *anyopaque, pbkdf2Salt: *IBuffer, iterationCount: u32, _r: **KeyDerivationParameters) callconv(.winapi) HRESULT,
        BuildForSP800108: *const fn(self: *anyopaque, label: *IBuffer, context: *IBuffer, _r: **KeyDerivationParameters) callconv(.winapi) HRESULT,
        BuildForSP80056a: *const fn(self: *anyopaque, algorithmId: *IBuffer, partyUInfo: *IBuffer, partyVInfo: *IBuffer, suppPubInfo: *IBuffer, suppPrivInfo: *IBuffer, _r: **KeyDerivationParameters) callconv(.winapi) HRESULT,
    };
};
pub const IKeyDerivationParametersStatics2 = extern struct {
    vtable: *const VTable,
    pub fn BuildForCapi1Kdf(self: *@This(), capi1KdfTargetAlgorithm: Capi1KdfTargetAlgorithm) core.HResult!*KeyDerivationParameters {
        var _r: *KeyDerivationParameters = undefined;
        const _c = self.vtable.BuildForCapi1Kdf(@ptrCast(self), capi1KdfTargetAlgorithm, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Security.Cryptography.Core.IKeyDerivationParametersStatics2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a5783dd5-58e3-4efb-b283-a1653126e1be";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        BuildForCapi1Kdf: *const fn(self: *anyopaque, capi1KdfTargetAlgorithm: Capi1KdfTargetAlgorithm, _r: **KeyDerivationParameters) callconv(.winapi) HRESULT,
    };
};
pub const IMacAlgorithmNamesStatics = extern struct {
    vtable: *const VTable,
    pub fn getHmacMd5(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_HmacMd5(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getHmacSha1(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_HmacSha1(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getHmacSha256(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_HmacSha256(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getHmacSha384(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_HmacSha384(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getHmacSha512(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_HmacSha512(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAesCmac(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_AesCmac(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Security.Cryptography.Core.IMacAlgorithmNamesStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "41412678-fb1e-43a4-895e-a9026e4390a3";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_HmacMd5: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_HmacSha1: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_HmacSha256: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_HmacSha384: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_HmacSha512: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_AesCmac: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IMacAlgorithmProvider = extern struct {
    vtable: *const VTable,
    pub fn getAlgorithmName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_AlgorithmName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMacLength(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_MacLength(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateKey(self: *@This(), keyMaterial: *IBuffer) core.HResult!*CryptographicKey {
        var _r: *CryptographicKey = undefined;
        const _c = self.vtable.CreateKey(@ptrCast(self), keyMaterial, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Security.Cryptography.Core.IMacAlgorithmProvider";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "4a3fc5c3-1cbd-41ce-a092-aa0bc5d2d2f5";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_AlgorithmName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_MacLength: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        CreateKey: *const fn(self: *anyopaque, keyMaterial: *IBuffer, _r: **CryptographicKey) callconv(.winapi) HRESULT,
    };
};
pub const IMacAlgorithmProvider2 = extern struct {
    vtable: *const VTable,
    pub fn CreateHash(self: *@This(), keyMaterial: *IBuffer) core.HResult!*CryptographicHash {
        var _r: *CryptographicHash = undefined;
        const _c = self.vtable.CreateHash(@ptrCast(self), keyMaterial, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Security.Cryptography.Core.IMacAlgorithmProvider2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "6da32a15-d931-42ed-8e7e-c301caee119c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateHash: *const fn(self: *anyopaque, keyMaterial: *IBuffer, _r: **CryptographicHash) callconv(.winapi) HRESULT,
    };
};
pub const IMacAlgorithmProviderStatics = extern struct {
    vtable: *const VTable,
    pub fn OpenAlgorithm(self: *@This(), algorithm: HSTRING) core.HResult!*MacAlgorithmProvider {
        var _r: *MacAlgorithmProvider = undefined;
        const _c = self.vtable.OpenAlgorithm(@ptrCast(self), algorithm, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Security.Cryptography.Core.IMacAlgorithmProviderStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c9bdc147-cc77-4df0-9e4e-b921e080644c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        OpenAlgorithm: *const fn(self: *anyopaque, algorithm: HSTRING, _r: **MacAlgorithmProvider) callconv(.winapi) HRESULT,
    };
};
pub const IPersistedKeyProviderStatics = extern struct {
    vtable: *const VTable,
    pub fn OpenKeyPairFromCertificateAsync(self: *@This(), certificate: *Certificate, hashAlgorithmName: HSTRING, padding: CryptographicPadding) core.HResult!*IAsyncOperation(CryptographicKey) {
        var _r: *IAsyncOperation(CryptographicKey) = undefined;
        const _c = self.vtable.OpenKeyPairFromCertificateAsync(@ptrCast(self), certificate, hashAlgorithmName, padding, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn OpenPublicKeyFromCertificate(self: *@This(), certificate: *Certificate, hashAlgorithmName: HSTRING, padding: CryptographicPadding) core.HResult!*CryptographicKey {
        var _r: *CryptographicKey = undefined;
        const _c = self.vtable.OpenPublicKeyFromCertificate(@ptrCast(self), certificate, hashAlgorithmName, padding, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Security.Cryptography.Core.IPersistedKeyProviderStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "77274814-d9d4-4cf5-b668-e0457df30894";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        OpenKeyPairFromCertificateAsync: *const fn(self: *anyopaque, certificate: *Certificate, hashAlgorithmName: HSTRING, padding: CryptographicPadding, _r: **IAsyncOperation(CryptographicKey)) callconv(.winapi) HRESULT,
        OpenPublicKeyFromCertificate: *const fn(self: *anyopaque, certificate: *Certificate, hashAlgorithmName: HSTRING, padding: CryptographicPadding, _r: **CryptographicKey) callconv(.winapi) HRESULT,
    };
};
pub const ISymmetricAlgorithmNamesStatics = extern struct {
    vtable: *const VTable,
    pub fn getDesCbc(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DesCbc(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDesEcb(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DesEcb(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTripleDesCbc(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_TripleDesCbc(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTripleDesEcb(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_TripleDesEcb(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRc2Cbc(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Rc2Cbc(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRc2Ecb(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Rc2Ecb(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAesCbc(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_AesCbc(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAesEcb(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_AesEcb(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAesGcm(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_AesGcm(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAesCcm(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_AesCcm(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAesCbcPkcs7(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_AesCbcPkcs7(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAesEcbPkcs7(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_AesEcbPkcs7(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDesCbcPkcs7(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DesCbcPkcs7(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDesEcbPkcs7(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DesEcbPkcs7(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTripleDesCbcPkcs7(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_TripleDesCbcPkcs7(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTripleDesEcbPkcs7(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_TripleDesEcbPkcs7(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRc2CbcPkcs7(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Rc2CbcPkcs7(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRc2EcbPkcs7(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Rc2EcbPkcs7(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRc4(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Rc4(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Security.Cryptography.Core.ISymmetricAlgorithmNamesStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "6870727b-c996-4eae-84d7-79b2aeb73b9c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_DesCbc: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_DesEcb: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_TripleDesCbc: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_TripleDesEcb: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Rc2Cbc: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Rc2Ecb: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_AesCbc: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_AesEcb: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_AesGcm: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_AesCcm: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_AesCbcPkcs7: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_AesEcbPkcs7: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_DesCbcPkcs7: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_DesEcbPkcs7: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_TripleDesCbcPkcs7: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_TripleDesEcbPkcs7: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Rc2CbcPkcs7: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Rc2EcbPkcs7: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Rc4: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const ISymmetricKeyAlgorithmProvider = extern struct {
    vtable: *const VTable,
    pub fn getAlgorithmName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_AlgorithmName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getBlockLength(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_BlockLength(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateSymmetricKey(self: *@This(), keyMaterial: *IBuffer) core.HResult!*CryptographicKey {
        var _r: *CryptographicKey = undefined;
        const _c = self.vtable.CreateSymmetricKey(@ptrCast(self), keyMaterial, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Security.Cryptography.Core.ISymmetricKeyAlgorithmProvider";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3d7e4a33-3bd0-4902-8ac8-470d50d21376";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_AlgorithmName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_BlockLength: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        CreateSymmetricKey: *const fn(self: *anyopaque, keyMaterial: *IBuffer, _r: **CryptographicKey) callconv(.winapi) HRESULT,
    };
};
pub const ISymmetricKeyAlgorithmProviderStatics = extern struct {
    vtable: *const VTable,
    pub fn OpenAlgorithm(self: *@This(), algorithm: HSTRING) core.HResult!*SymmetricKeyAlgorithmProvider {
        var _r: *SymmetricKeyAlgorithmProvider = undefined;
        const _c = self.vtable.OpenAlgorithm(@ptrCast(self), algorithm, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Security.Cryptography.Core.ISymmetricKeyAlgorithmProviderStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "8d3b2326-1f37-491f-b60e-f5431b26b483";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        OpenAlgorithm: *const fn(self: *anyopaque, algorithm: HSTRING, _r: **SymmetricKeyAlgorithmProvider) callconv(.winapi) HRESULT,
    };
};
pub const KeyDerivationAlgorithmNames = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn getPbkdf2Md5() core.HResult!HSTRING {
        const factory = @This().IKeyDerivationAlgorithmNamesStaticsCache.get();
        return try factory.getPbkdf2Md5();
    }
    pub fn getPbkdf2Sha1() core.HResult!HSTRING {
        const factory = @This().IKeyDerivationAlgorithmNamesStaticsCache.get();
        return try factory.getPbkdf2Sha1();
    }
    pub fn getPbkdf2Sha256() core.HResult!HSTRING {
        const factory = @This().IKeyDerivationAlgorithmNamesStaticsCache.get();
        return try factory.getPbkdf2Sha256();
    }
    pub fn getPbkdf2Sha384() core.HResult!HSTRING {
        const factory = @This().IKeyDerivationAlgorithmNamesStaticsCache.get();
        return try factory.getPbkdf2Sha384();
    }
    pub fn getPbkdf2Sha512() core.HResult!HSTRING {
        const factory = @This().IKeyDerivationAlgorithmNamesStaticsCache.get();
        return try factory.getPbkdf2Sha512();
    }
    pub fn getSp800108CtrHmacMd5() core.HResult!HSTRING {
        const factory = @This().IKeyDerivationAlgorithmNamesStaticsCache.get();
        return try factory.getSp800108CtrHmacMd5();
    }
    pub fn getSp800108CtrHmacSha1() core.HResult!HSTRING {
        const factory = @This().IKeyDerivationAlgorithmNamesStaticsCache.get();
        return try factory.getSp800108CtrHmacSha1();
    }
    pub fn getSp800108CtrHmacSha256() core.HResult!HSTRING {
        const factory = @This().IKeyDerivationAlgorithmNamesStaticsCache.get();
        return try factory.getSp800108CtrHmacSha256();
    }
    pub fn getSp800108CtrHmacSha384() core.HResult!HSTRING {
        const factory = @This().IKeyDerivationAlgorithmNamesStaticsCache.get();
        return try factory.getSp800108CtrHmacSha384();
    }
    pub fn getSp800108CtrHmacSha512() core.HResult!HSTRING {
        const factory = @This().IKeyDerivationAlgorithmNamesStaticsCache.get();
        return try factory.getSp800108CtrHmacSha512();
    }
    pub fn getSp80056aConcatMd5() core.HResult!HSTRING {
        const factory = @This().IKeyDerivationAlgorithmNamesStaticsCache.get();
        return try factory.getSp80056aConcatMd5();
    }
    pub fn getSp80056aConcatSha1() core.HResult!HSTRING {
        const factory = @This().IKeyDerivationAlgorithmNamesStaticsCache.get();
        return try factory.getSp80056aConcatSha1();
    }
    pub fn getSp80056aConcatSha256() core.HResult!HSTRING {
        const factory = @This().IKeyDerivationAlgorithmNamesStaticsCache.get();
        return try factory.getSp80056aConcatSha256();
    }
    pub fn getSp80056aConcatSha384() core.HResult!HSTRING {
        const factory = @This().IKeyDerivationAlgorithmNamesStaticsCache.get();
        return try factory.getSp80056aConcatSha384();
    }
    pub fn getSp80056aConcatSha512() core.HResult!HSTRING {
        const factory = @This().IKeyDerivationAlgorithmNamesStaticsCache.get();
        return try factory.getSp80056aConcatSha512();
    }
    pub fn getCapiKdfMd5() core.HResult!HSTRING {
        const factory = @This().IKeyDerivationAlgorithmNamesStatics2Cache.get();
        return try factory.getCapiKdfMd5();
    }
    pub fn getCapiKdfSha1() core.HResult!HSTRING {
        const factory = @This().IKeyDerivationAlgorithmNamesStatics2Cache.get();
        return try factory.getCapiKdfSha1();
    }
    pub fn getCapiKdfSha256() core.HResult!HSTRING {
        const factory = @This().IKeyDerivationAlgorithmNamesStatics2Cache.get();
        return try factory.getCapiKdfSha256();
    }
    pub fn getCapiKdfSha384() core.HResult!HSTRING {
        const factory = @This().IKeyDerivationAlgorithmNamesStatics2Cache.get();
        return try factory.getCapiKdfSha384();
    }
    pub fn getCapiKdfSha512() core.HResult!HSTRING {
        const factory = @This().IKeyDerivationAlgorithmNamesStatics2Cache.get();
        return try factory.getCapiKdfSha512();
    }
    pub const NAME: []const u8 = "Windows.Security.Cryptography.Core.KeyDerivationAlgorithmNames";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _IKeyDerivationAlgorithmNamesStaticsCache: FactoryCache(IKeyDerivationAlgorithmNamesStatics, RUNTIME_NAME) = .{};
    var _IKeyDerivationAlgorithmNamesStatics2Cache: FactoryCache(IKeyDerivationAlgorithmNamesStatics2, RUNTIME_NAME) = .{};
};
pub const KeyDerivationAlgorithmProvider = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getAlgorithmName(self: *@This()) core.HResult!HSTRING {
        const this: *IKeyDerivationAlgorithmProvider = @ptrCast(self);
        return try this.getAlgorithmName();
    }
    pub fn CreateKey(self: *@This(), keyMaterial: *IBuffer) core.HResult!*CryptographicKey {
        const this: *IKeyDerivationAlgorithmProvider = @ptrCast(self);
        return try this.CreateKey(keyMaterial);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn OpenAlgorithm(algorithm: HSTRING) core.HResult!*KeyDerivationAlgorithmProvider {
        const factory = @This().IKeyDerivationAlgorithmProviderStaticsCache.get();
        return try factory.OpenAlgorithm(algorithm);
    }
    pub const NAME: []const u8 = "Windows.Security.Cryptography.Core.KeyDerivationAlgorithmProvider";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IKeyDerivationAlgorithmProvider.GUID;
    pub const IID: Guid = IKeyDerivationAlgorithmProvider.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IKeyDerivationAlgorithmProvider.SIGNATURE);
    var _IKeyDerivationAlgorithmProviderStaticsCache: FactoryCache(IKeyDerivationAlgorithmProviderStatics, RUNTIME_NAME) = .{};
};
pub const KeyDerivationParameters = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getKdfGenericBinary(self: *@This()) core.HResult!*IBuffer {
        const this: *IKeyDerivationParameters = @ptrCast(self);
        return try this.getKdfGenericBinary();
    }
    pub fn putKdfGenericBinary(self: *@This(), value: *IBuffer) core.HResult!void {
        const this: *IKeyDerivationParameters = @ptrCast(self);
        return try this.putKdfGenericBinary(value);
    }
    pub fn getIterationCount(self: *@This()) core.HResult!u32 {
        const this: *IKeyDerivationParameters = @ptrCast(self);
        return try this.getIterationCount();
    }
    pub fn getCapi1KdfTargetAlgorithm(self: *@This()) core.HResult!Capi1KdfTargetAlgorithm {
        var this: ?*IKeyDerivationParameters2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IKeyDerivationParameters2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getCapi1KdfTargetAlgorithm();
    }
    pub fn putCapi1KdfTargetAlgorithm(self: *@This(), value: Capi1KdfTargetAlgorithm) core.HResult!void {
        var this: ?*IKeyDerivationParameters2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IKeyDerivationParameters2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putCapi1KdfTargetAlgorithm(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn BuildForCapi1Kdf(capi1KdfTargetAlgorithm: Capi1KdfTargetAlgorithm) core.HResult!*KeyDerivationParameters {
        const factory = @This().IKeyDerivationParametersStatics2Cache.get();
        return try factory.BuildForCapi1Kdf(capi1KdfTargetAlgorithm);
    }
    pub fn BuildForPbkdf2(pbkdf2Salt: *IBuffer, iterationCount: u32) core.HResult!*KeyDerivationParameters {
        const factory = @This().IKeyDerivationParametersStaticsCache.get();
        return try factory.BuildForPbkdf2(pbkdf2Salt, iterationCount);
    }
    pub fn BuildForSP800108(label: *IBuffer, context: *IBuffer) core.HResult!*KeyDerivationParameters {
        const factory = @This().IKeyDerivationParametersStaticsCache.get();
        return try factory.BuildForSP800108(label, context);
    }
    pub fn BuildForSP80056a(algorithmId: *IBuffer, partyUInfo: *IBuffer, partyVInfo: *IBuffer, suppPubInfo: *IBuffer, suppPrivInfo: *IBuffer) core.HResult!*KeyDerivationParameters {
        const factory = @This().IKeyDerivationParametersStaticsCache.get();
        return try factory.BuildForSP80056a(algorithmId, partyUInfo, partyVInfo, suppPubInfo, suppPrivInfo);
    }
    pub const NAME: []const u8 = "Windows.Security.Cryptography.Core.KeyDerivationParameters";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IKeyDerivationParameters.GUID;
    pub const IID: Guid = IKeyDerivationParameters.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IKeyDerivationParameters.SIGNATURE);
    var _IKeyDerivationParametersStatics2Cache: FactoryCache(IKeyDerivationParametersStatics2, RUNTIME_NAME) = .{};
    var _IKeyDerivationParametersStaticsCache: FactoryCache(IKeyDerivationParametersStatics, RUNTIME_NAME) = .{};
};
pub const MacAlgorithmNames = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn getHmacMd5() core.HResult!HSTRING {
        const factory = @This().IMacAlgorithmNamesStaticsCache.get();
        return try factory.getHmacMd5();
    }
    pub fn getHmacSha1() core.HResult!HSTRING {
        const factory = @This().IMacAlgorithmNamesStaticsCache.get();
        return try factory.getHmacSha1();
    }
    pub fn getHmacSha256() core.HResult!HSTRING {
        const factory = @This().IMacAlgorithmNamesStaticsCache.get();
        return try factory.getHmacSha256();
    }
    pub fn getHmacSha384() core.HResult!HSTRING {
        const factory = @This().IMacAlgorithmNamesStaticsCache.get();
        return try factory.getHmacSha384();
    }
    pub fn getHmacSha512() core.HResult!HSTRING {
        const factory = @This().IMacAlgorithmNamesStaticsCache.get();
        return try factory.getHmacSha512();
    }
    pub fn getAesCmac() core.HResult!HSTRING {
        const factory = @This().IMacAlgorithmNamesStaticsCache.get();
        return try factory.getAesCmac();
    }
    pub const NAME: []const u8 = "Windows.Security.Cryptography.Core.MacAlgorithmNames";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _IMacAlgorithmNamesStaticsCache: FactoryCache(IMacAlgorithmNamesStatics, RUNTIME_NAME) = .{};
};
pub const MacAlgorithmProvider = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getAlgorithmName(self: *@This()) core.HResult!HSTRING {
        const this: *IMacAlgorithmProvider = @ptrCast(self);
        return try this.getAlgorithmName();
    }
    pub fn getMacLength(self: *@This()) core.HResult!u32 {
        const this: *IMacAlgorithmProvider = @ptrCast(self);
        return try this.getMacLength();
    }
    pub fn CreateKey(self: *@This(), keyMaterial: *IBuffer) core.HResult!*CryptographicKey {
        const this: *IMacAlgorithmProvider = @ptrCast(self);
        return try this.CreateKey(keyMaterial);
    }
    pub fn CreateHash(self: *@This(), keyMaterial: *IBuffer) core.HResult!*CryptographicHash {
        var this: ?*IMacAlgorithmProvider2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMacAlgorithmProvider2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.CreateHash(keyMaterial);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn OpenAlgorithm(algorithm: HSTRING) core.HResult!*MacAlgorithmProvider {
        const factory = @This().IMacAlgorithmProviderStaticsCache.get();
        return try factory.OpenAlgorithm(algorithm);
    }
    pub const NAME: []const u8 = "Windows.Security.Cryptography.Core.MacAlgorithmProvider";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMacAlgorithmProvider.GUID;
    pub const IID: Guid = IMacAlgorithmProvider.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMacAlgorithmProvider.SIGNATURE);
    var _IMacAlgorithmProviderStaticsCache: FactoryCache(IMacAlgorithmProviderStatics, RUNTIME_NAME) = .{};
};
pub const PersistedKeyProvider = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn OpenKeyPairFromCertificateAsync(certificate: *Certificate, hashAlgorithmName: HSTRING, padding: CryptographicPadding) core.HResult!*IAsyncOperation(CryptographicKey) {
        const factory = @This().IPersistedKeyProviderStaticsCache.get();
        return try factory.OpenKeyPairFromCertificateAsync(certificate, hashAlgorithmName, padding);
    }
    pub fn OpenPublicKeyFromCertificate(certificate: *Certificate, hashAlgorithmName: HSTRING, padding: CryptographicPadding) core.HResult!*CryptographicKey {
        const factory = @This().IPersistedKeyProviderStaticsCache.get();
        return try factory.OpenPublicKeyFromCertificate(certificate, hashAlgorithmName, padding);
    }
    pub const NAME: []const u8 = "Windows.Security.Cryptography.Core.PersistedKeyProvider";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _IPersistedKeyProviderStaticsCache: FactoryCache(IPersistedKeyProviderStatics, RUNTIME_NAME) = .{};
};
pub const SymmetricAlgorithmNames = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn getDesCbc() core.HResult!HSTRING {
        const factory = @This().ISymmetricAlgorithmNamesStaticsCache.get();
        return try factory.getDesCbc();
    }
    pub fn getDesEcb() core.HResult!HSTRING {
        const factory = @This().ISymmetricAlgorithmNamesStaticsCache.get();
        return try factory.getDesEcb();
    }
    pub fn getTripleDesCbc() core.HResult!HSTRING {
        const factory = @This().ISymmetricAlgorithmNamesStaticsCache.get();
        return try factory.getTripleDesCbc();
    }
    pub fn getTripleDesEcb() core.HResult!HSTRING {
        const factory = @This().ISymmetricAlgorithmNamesStaticsCache.get();
        return try factory.getTripleDesEcb();
    }
    pub fn getRc2Cbc() core.HResult!HSTRING {
        const factory = @This().ISymmetricAlgorithmNamesStaticsCache.get();
        return try factory.getRc2Cbc();
    }
    pub fn getRc2Ecb() core.HResult!HSTRING {
        const factory = @This().ISymmetricAlgorithmNamesStaticsCache.get();
        return try factory.getRc2Ecb();
    }
    pub fn getAesCbc() core.HResult!HSTRING {
        const factory = @This().ISymmetricAlgorithmNamesStaticsCache.get();
        return try factory.getAesCbc();
    }
    pub fn getAesEcb() core.HResult!HSTRING {
        const factory = @This().ISymmetricAlgorithmNamesStaticsCache.get();
        return try factory.getAesEcb();
    }
    pub fn getAesGcm() core.HResult!HSTRING {
        const factory = @This().ISymmetricAlgorithmNamesStaticsCache.get();
        return try factory.getAesGcm();
    }
    pub fn getAesCcm() core.HResult!HSTRING {
        const factory = @This().ISymmetricAlgorithmNamesStaticsCache.get();
        return try factory.getAesCcm();
    }
    pub fn getAesCbcPkcs7() core.HResult!HSTRING {
        const factory = @This().ISymmetricAlgorithmNamesStaticsCache.get();
        return try factory.getAesCbcPkcs7();
    }
    pub fn getAesEcbPkcs7() core.HResult!HSTRING {
        const factory = @This().ISymmetricAlgorithmNamesStaticsCache.get();
        return try factory.getAesEcbPkcs7();
    }
    pub fn getDesCbcPkcs7() core.HResult!HSTRING {
        const factory = @This().ISymmetricAlgorithmNamesStaticsCache.get();
        return try factory.getDesCbcPkcs7();
    }
    pub fn getDesEcbPkcs7() core.HResult!HSTRING {
        const factory = @This().ISymmetricAlgorithmNamesStaticsCache.get();
        return try factory.getDesEcbPkcs7();
    }
    pub fn getTripleDesCbcPkcs7() core.HResult!HSTRING {
        const factory = @This().ISymmetricAlgorithmNamesStaticsCache.get();
        return try factory.getTripleDesCbcPkcs7();
    }
    pub fn getTripleDesEcbPkcs7() core.HResult!HSTRING {
        const factory = @This().ISymmetricAlgorithmNamesStaticsCache.get();
        return try factory.getTripleDesEcbPkcs7();
    }
    pub fn getRc2CbcPkcs7() core.HResult!HSTRING {
        const factory = @This().ISymmetricAlgorithmNamesStaticsCache.get();
        return try factory.getRc2CbcPkcs7();
    }
    pub fn getRc2EcbPkcs7() core.HResult!HSTRING {
        const factory = @This().ISymmetricAlgorithmNamesStaticsCache.get();
        return try factory.getRc2EcbPkcs7();
    }
    pub fn getRc4() core.HResult!HSTRING {
        const factory = @This().ISymmetricAlgorithmNamesStaticsCache.get();
        return try factory.getRc4();
    }
    pub const NAME: []const u8 = "Windows.Security.Cryptography.Core.SymmetricAlgorithmNames";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _ISymmetricAlgorithmNamesStaticsCache: FactoryCache(ISymmetricAlgorithmNamesStatics, RUNTIME_NAME) = .{};
};
pub const SymmetricKeyAlgorithmProvider = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getAlgorithmName(self: *@This()) core.HResult!HSTRING {
        const this: *ISymmetricKeyAlgorithmProvider = @ptrCast(self);
        return try this.getAlgorithmName();
    }
    pub fn getBlockLength(self: *@This()) core.HResult!u32 {
        const this: *ISymmetricKeyAlgorithmProvider = @ptrCast(self);
        return try this.getBlockLength();
    }
    pub fn CreateSymmetricKey(self: *@This(), keyMaterial: *IBuffer) core.HResult!*CryptographicKey {
        const this: *ISymmetricKeyAlgorithmProvider = @ptrCast(self);
        return try this.CreateSymmetricKey(keyMaterial);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn OpenAlgorithm(algorithm: HSTRING) core.HResult!*SymmetricKeyAlgorithmProvider {
        const factory = @This().ISymmetricKeyAlgorithmProviderStaticsCache.get();
        return try factory.OpenAlgorithm(algorithm);
    }
    pub const NAME: []const u8 = "Windows.Security.Cryptography.Core.SymmetricKeyAlgorithmProvider";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISymmetricKeyAlgorithmProvider.GUID;
    pub const IID: Guid = ISymmetricKeyAlgorithmProvider.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISymmetricKeyAlgorithmProvider.SIGNATURE);
    var _ISymmetricKeyAlgorithmProviderStaticsCache: FactoryCache(ISymmetricKeyAlgorithmProviderStatics, RUNTIME_NAME) = .{};
};
const IUnknown = @import("../../root.zig").IUnknown;
const Guid = @import("../../root.zig").Guid;
const IVectorView = @import("../../Foundation/Collections.zig").IVectorView;
const Certificate = @import("./Certificates.zig").Certificate;
const IBuffer = @import("../../Storage/Streams.zig").IBuffer;
const FactoryCache = @import("../../core.zig").FactoryCache;
const TrustLevel = @import("../../root.zig").TrustLevel;
const HSTRING = @import("../../root.zig").HSTRING;
const IInspectable = @import("../../Foundation.zig").IInspectable;
const HRESULT = @import("../../root.zig").HRESULT;
const IAsyncOperation = @import("../../Foundation.zig").IAsyncOperation;
const core = @import("../../root.zig").core;
