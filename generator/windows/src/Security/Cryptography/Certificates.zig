pub const Certificate = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn BuildChainAsync(self: *@This(), certificates: *IIterable(Certificate)) core.HResult!*IAsyncOperation(CertificateChain) {
        const this: *ICertificate = @ptrCast(self);
        return try this.BuildChainAsync(certificates);
    }
    pub fn BuildChainAsyncWithParameters(self: *@This(), certificates: *IIterable(Certificate), parameters: *ChainBuildingParameters) core.HResult!*IAsyncOperation(CertificateChain) {
        const this: *ICertificate = @ptrCast(self);
        return try this.BuildChainAsyncWithParameters(certificates, parameters);
    }
    pub fn getSerialNumber(self: *@This()) core.HResult![*]u8 {
        const this: *ICertificate = @ptrCast(self);
        return try this.getSerialNumber();
    }
    pub fn GetHashValue(self: *@This()) core.HResult![*]u8 {
        const this: *ICertificate = @ptrCast(self);
        return try this.GetHashValue();
    }
    pub fn GetHashValue(self: *@This(), hashAlgorithmName: HSTRING) core.HResult![*]u8 {
        const this: *ICertificate = @ptrCast(self);
        return try this.GetHashValue(hashAlgorithmName);
    }
    pub fn GetCertificateBlob(self: *@This()) core.HResult!*IBuffer {
        const this: *ICertificate = @ptrCast(self);
        return try this.GetCertificateBlob();
    }
    pub fn getSubject(self: *@This()) core.HResult!HSTRING {
        const this: *ICertificate = @ptrCast(self);
        return try this.getSubject();
    }
    pub fn getIssuer(self: *@This()) core.HResult!HSTRING {
        const this: *ICertificate = @ptrCast(self);
        return try this.getIssuer();
    }
    pub fn getHasPrivateKey(self: *@This()) core.HResult!bool {
        const this: *ICertificate = @ptrCast(self);
        return try this.getHasPrivateKey();
    }
    pub fn getIsStronglyProtected(self: *@This()) core.HResult!bool {
        const this: *ICertificate = @ptrCast(self);
        return try this.getIsStronglyProtected();
    }
    pub fn getValidFrom(self: *@This()) core.HResult!DateTime {
        const this: *ICertificate = @ptrCast(self);
        return try this.getValidFrom();
    }
    pub fn getValidTo(self: *@This()) core.HResult!DateTime {
        const this: *ICertificate = @ptrCast(self);
        return try this.getValidTo();
    }
    pub fn getEnhancedKeyUsages(self: *@This()) core.HResult!*IVectorView(HSTRING) {
        const this: *ICertificate = @ptrCast(self);
        return try this.getEnhancedKeyUsages();
    }
    pub fn putFriendlyName(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *ICertificate = @ptrCast(self);
        return try this.putFriendlyName(value);
    }
    pub fn getFriendlyName(self: *@This()) core.HResult!HSTRING {
        const this: *ICertificate = @ptrCast(self);
        return try this.getFriendlyName();
    }
    pub fn getIsSecurityDeviceBound(self: *@This()) core.HResult!bool {
        var this: ?*ICertificate2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICertificate2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsSecurityDeviceBound();
    }
    pub fn getKeyUsages(self: *@This()) core.HResult!*CertificateKeyUsages {
        var this: ?*ICertificate2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICertificate2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getKeyUsages();
    }
    pub fn getKeyAlgorithmName(self: *@This()) core.HResult!HSTRING {
        var this: ?*ICertificate2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICertificate2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getKeyAlgorithmName();
    }
    pub fn getSignatureAlgorithmName(self: *@This()) core.HResult!HSTRING {
        var this: ?*ICertificate2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICertificate2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSignatureAlgorithmName();
    }
    pub fn getSignatureHashAlgorithmName(self: *@This()) core.HResult!HSTRING {
        var this: ?*ICertificate2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICertificate2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSignatureHashAlgorithmName();
    }
    pub fn getSubjectAlternativeName(self: *@This()) core.HResult!*SubjectAlternativeNameInfo {
        var this: ?*ICertificate2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICertificate2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSubjectAlternativeName();
    }
    pub fn getIsPerUser(self: *@This()) core.HResult!bool {
        var this: ?*ICertificate3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICertificate3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsPerUser();
    }
    pub fn getStoreName(self: *@This()) core.HResult!HSTRING {
        var this: ?*ICertificate3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICertificate3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getStoreName();
    }
    pub fn getKeyStorageProviderName(self: *@This()) core.HResult!HSTRING {
        var this: ?*ICertificate3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICertificate3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getKeyStorageProviderName();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateCertificate(certBlob: *IBuffer) core.HResult!*Certificate {
        const factory = @This().ICertificateFactoryCache.get();
        return try factory.CreateCertificate(certBlob);
    }
    pub const NAME: []const u8 = "Windows.Security.Cryptography.Certificates.Certificate";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICertificate.GUID;
    pub const IID: Guid = ICertificate.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICertificate.SIGNATURE);
    var _ICertificateFactoryCache: FactoryCache(ICertificateFactory, RUNTIME_NAME) = .{};
};
pub const CertificateChain = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn Validate(self: *@This()) core.HResult!ChainValidationResult {
        const this: *ICertificateChain = @ptrCast(self);
        return try this.Validate();
    }
    pub fn Validate(self: *@This(), parameter: *ChainValidationParameters) core.HResult!ChainValidationResult {
        const this: *ICertificateChain = @ptrCast(self);
        return try this.Validate(parameter);
    }
    pub fn GetCertificates(self: *@This(), includeRoot: bool) core.HResult!*IVectorView(Certificate) {
        const this: *ICertificateChain = @ptrCast(self);
        return try this.GetCertificates(includeRoot);
    }
    pub const NAME: []const u8 = "Windows.Security.Cryptography.Certificates.CertificateChain";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICertificateChain.GUID;
    pub const IID: Guid = ICertificateChain.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICertificateChain.SIGNATURE);
};
pub const CertificateChainPolicy = enum(i32) {
    Base = 0,
    Ssl = 1,
    NTAuthentication = 2,
    MicrosoftRoot = 3,
};
pub const CertificateEnrollmentManager = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateRequestAsync(request: *CertificateRequestProperties) core.HResult!*IAsyncOperation(HSTRING) {
        const factory = @This().ICertificateEnrollmentManagerStaticsCache.get();
        return try factory.CreateRequestAsync(request);
    }
    pub fn InstallCertificateAsync(certificate: HSTRING, installOption: InstallOptions) core.HResult!*IAsyncAction {
        const factory = @This().ICertificateEnrollmentManagerStaticsCache.get();
        return try factory.InstallCertificateAsync(certificate, installOption);
    }
    pub fn ImportPfxDataAsyncWithKeyProtectionLevelWithInstallOptionWithFriendlyName(pfxData: HSTRING, password: HSTRING, exportable: ExportOption, keyProtectionLevel: KeyProtectionLevel, installOption: InstallOptions, friendlyName: HSTRING) core.HResult!*IAsyncAction {
        const factory = @This().ICertificateEnrollmentManagerStaticsCache.get();
        return try factory.ImportPfxDataAsync(pfxData, password, exportable, keyProtectionLevel, installOption, friendlyName);
    }
    pub fn ImportPfxDataAsync(pfxData: HSTRING, password: HSTRING, pfxImportParameters: *PfxImportParameters) core.HResult!*IAsyncAction {
        const factory = @This().ICertificateEnrollmentManagerStatics3Cache.get();
        return try factory.ImportPfxDataAsync(pfxData, password, pfxImportParameters);
    }
    pub fn get_UserCertificateEnrollmentManager() core.HResult!*UserCertificateEnrollmentManager {
        const factory = @This().ICertificateEnrollmentManagerStatics2Cache.get();
        return try factory.getUserCertificateEnrollmentManager();
    }
    pub fn ImportPfxDataAsyncWithKeyProtectionLevelWithInstallOptionWithFriendlyNameWithKeyStorageProvider(pfxData: HSTRING, password: HSTRING, exportable: ExportOption, keyProtectionLevel: KeyProtectionLevel, installOption: InstallOptions, friendlyName: HSTRING, keyStorageProvider: HSTRING) core.HResult!*IAsyncAction {
        const factory = @This().ICertificateEnrollmentManagerStatics2Cache.get();
        return try factory.ImportPfxDataAsync(pfxData, password, exportable, keyProtectionLevel, installOption, friendlyName, keyStorageProvider);
    }
    pub const NAME: []const u8 = "Windows.Security.Cryptography.Certificates.CertificateEnrollmentManager";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _ICertificateEnrollmentManagerStaticsCache: FactoryCache(ICertificateEnrollmentManagerStatics, RUNTIME_NAME) = .{};
    var _ICertificateEnrollmentManagerStatics3Cache: FactoryCache(ICertificateEnrollmentManagerStatics3, RUNTIME_NAME) = .{};
    var _ICertificateEnrollmentManagerStatics2Cache: FactoryCache(ICertificateEnrollmentManagerStatics2, RUNTIME_NAME) = .{};
};
pub const CertificateExtension = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getObjectId(self: *@This()) core.HResult!HSTRING {
        const this: *ICertificateExtension = @ptrCast(self);
        return try this.getObjectId();
    }
    pub fn putObjectId(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *ICertificateExtension = @ptrCast(self);
        return try this.putObjectId(value);
    }
    pub fn getIsCritical(self: *@This()) core.HResult!bool {
        const this: *ICertificateExtension = @ptrCast(self);
        return try this.getIsCritical();
    }
    pub fn putIsCritical(self: *@This(), value: bool) core.HResult!void {
        const this: *ICertificateExtension = @ptrCast(self);
        return try this.putIsCritical(value);
    }
    pub fn EncodeValue(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *ICertificateExtension = @ptrCast(self);
        return try this.EncodeValue(value);
    }
    pub fn getValue(self: *@This()) core.HResult![*]u8 {
        const this: *ICertificateExtension = @ptrCast(self);
        return try this.getValue();
    }
    pub fn putValue(self: *@This(), value: [*]u8) core.HResult!void {
        const this: *ICertificateExtension = @ptrCast(self);
        return try this.putValue(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&ICertificateExtension.IID)));
    }
    pub const NAME: []const u8 = "Windows.Security.Cryptography.Certificates.CertificateExtension";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICertificateExtension.GUID;
    pub const IID: Guid = ICertificateExtension.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICertificateExtension.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const CertificateKeyUsages = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getEncipherOnly(self: *@This()) core.HResult!bool {
        const this: *ICertificateKeyUsages = @ptrCast(self);
        return try this.getEncipherOnly();
    }
    pub fn putEncipherOnly(self: *@This(), value: bool) core.HResult!void {
        const this: *ICertificateKeyUsages = @ptrCast(self);
        return try this.putEncipherOnly(value);
    }
    pub fn getCrlSign(self: *@This()) core.HResult!bool {
        const this: *ICertificateKeyUsages = @ptrCast(self);
        return try this.getCrlSign();
    }
    pub fn putCrlSign(self: *@This(), value: bool) core.HResult!void {
        const this: *ICertificateKeyUsages = @ptrCast(self);
        return try this.putCrlSign(value);
    }
    pub fn getKeyCertificateSign(self: *@This()) core.HResult!bool {
        const this: *ICertificateKeyUsages = @ptrCast(self);
        return try this.getKeyCertificateSign();
    }
    pub fn putKeyCertificateSign(self: *@This(), value: bool) core.HResult!void {
        const this: *ICertificateKeyUsages = @ptrCast(self);
        return try this.putKeyCertificateSign(value);
    }
    pub fn getKeyAgreement(self: *@This()) core.HResult!bool {
        const this: *ICertificateKeyUsages = @ptrCast(self);
        return try this.getKeyAgreement();
    }
    pub fn putKeyAgreement(self: *@This(), value: bool) core.HResult!void {
        const this: *ICertificateKeyUsages = @ptrCast(self);
        return try this.putKeyAgreement(value);
    }
    pub fn getDataEncipherment(self: *@This()) core.HResult!bool {
        const this: *ICertificateKeyUsages = @ptrCast(self);
        return try this.getDataEncipherment();
    }
    pub fn putDataEncipherment(self: *@This(), value: bool) core.HResult!void {
        const this: *ICertificateKeyUsages = @ptrCast(self);
        return try this.putDataEncipherment(value);
    }
    pub fn getKeyEncipherment(self: *@This()) core.HResult!bool {
        const this: *ICertificateKeyUsages = @ptrCast(self);
        return try this.getKeyEncipherment();
    }
    pub fn putKeyEncipherment(self: *@This(), value: bool) core.HResult!void {
        const this: *ICertificateKeyUsages = @ptrCast(self);
        return try this.putKeyEncipherment(value);
    }
    pub fn getNonRepudiation(self: *@This()) core.HResult!bool {
        const this: *ICertificateKeyUsages = @ptrCast(self);
        return try this.getNonRepudiation();
    }
    pub fn putNonRepudiation(self: *@This(), value: bool) core.HResult!void {
        const this: *ICertificateKeyUsages = @ptrCast(self);
        return try this.putNonRepudiation(value);
    }
    pub fn getDigitalSignature(self: *@This()) core.HResult!bool {
        const this: *ICertificateKeyUsages = @ptrCast(self);
        return try this.getDigitalSignature();
    }
    pub fn putDigitalSignature(self: *@This(), value: bool) core.HResult!void {
        const this: *ICertificateKeyUsages = @ptrCast(self);
        return try this.putDigitalSignature(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&ICertificateKeyUsages.IID)));
    }
    pub const NAME: []const u8 = "Windows.Security.Cryptography.Certificates.CertificateKeyUsages";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICertificateKeyUsages.GUID;
    pub const IID: Guid = ICertificateKeyUsages.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICertificateKeyUsages.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const CertificateQuery = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getEnhancedKeyUsages(self: *@This()) core.HResult!*IVector(HSTRING) {
        const this: *ICertificateQuery = @ptrCast(self);
        return try this.getEnhancedKeyUsages();
    }
    pub fn getIssuerName(self: *@This()) core.HResult!HSTRING {
        const this: *ICertificateQuery = @ptrCast(self);
        return try this.getIssuerName();
    }
    pub fn putIssuerName(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *ICertificateQuery = @ptrCast(self);
        return try this.putIssuerName(value);
    }
    pub fn getFriendlyName(self: *@This()) core.HResult!HSTRING {
        const this: *ICertificateQuery = @ptrCast(self);
        return try this.getFriendlyName();
    }
    pub fn putFriendlyName(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *ICertificateQuery = @ptrCast(self);
        return try this.putFriendlyName(value);
    }
    pub fn getThumbprint(self: *@This()) core.HResult![*]u8 {
        const this: *ICertificateQuery = @ptrCast(self);
        return try this.getThumbprint();
    }
    pub fn putThumbprint(self: *@This(), value: [*]u8) core.HResult!void {
        const this: *ICertificateQuery = @ptrCast(self);
        return try this.putThumbprint(value);
    }
    pub fn getHardwareOnly(self: *@This()) core.HResult!bool {
        const this: *ICertificateQuery = @ptrCast(self);
        return try this.getHardwareOnly();
    }
    pub fn putHardwareOnly(self: *@This(), value: bool) core.HResult!void {
        const this: *ICertificateQuery = @ptrCast(self);
        return try this.putHardwareOnly(value);
    }
    pub fn getIncludeDuplicates(self: *@This()) core.HResult!bool {
        var this: ?*ICertificateQuery2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICertificateQuery2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIncludeDuplicates();
    }
    pub fn putIncludeDuplicates(self: *@This(), value: bool) core.HResult!void {
        var this: ?*ICertificateQuery2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICertificateQuery2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putIncludeDuplicates(value);
    }
    pub fn getIncludeExpiredCertificates(self: *@This()) core.HResult!bool {
        var this: ?*ICertificateQuery2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICertificateQuery2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIncludeExpiredCertificates();
    }
    pub fn putIncludeExpiredCertificates(self: *@This(), value: bool) core.HResult!void {
        var this: ?*ICertificateQuery2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICertificateQuery2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putIncludeExpiredCertificates(value);
    }
    pub fn getStoreName(self: *@This()) core.HResult!HSTRING {
        var this: ?*ICertificateQuery2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICertificateQuery2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getStoreName();
    }
    pub fn putStoreName(self: *@This(), value: HSTRING) core.HResult!void {
        var this: ?*ICertificateQuery2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICertificateQuery2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putStoreName(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&ICertificateQuery.IID)));
    }
    pub const NAME: []const u8 = "Windows.Security.Cryptography.Certificates.CertificateQuery";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICertificateQuery.GUID;
    pub const IID: Guid = ICertificateQuery.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICertificateQuery.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const CertificateRequestProperties = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getSubject(self: *@This()) core.HResult!HSTRING {
        const this: *ICertificateRequestProperties = @ptrCast(self);
        return try this.getSubject();
    }
    pub fn putSubject(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *ICertificateRequestProperties = @ptrCast(self);
        return try this.putSubject(value);
    }
    pub fn getKeyAlgorithmName(self: *@This()) core.HResult!HSTRING {
        const this: *ICertificateRequestProperties = @ptrCast(self);
        return try this.getKeyAlgorithmName();
    }
    pub fn putKeyAlgorithmName(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *ICertificateRequestProperties = @ptrCast(self);
        return try this.putKeyAlgorithmName(value);
    }
    pub fn getKeySize(self: *@This()) core.HResult!u32 {
        const this: *ICertificateRequestProperties = @ptrCast(self);
        return try this.getKeySize();
    }
    pub fn putKeySize(self: *@This(), value: u32) core.HResult!void {
        const this: *ICertificateRequestProperties = @ptrCast(self);
        return try this.putKeySize(value);
    }
    pub fn getFriendlyName(self: *@This()) core.HResult!HSTRING {
        const this: *ICertificateRequestProperties = @ptrCast(self);
        return try this.getFriendlyName();
    }
    pub fn putFriendlyName(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *ICertificateRequestProperties = @ptrCast(self);
        return try this.putFriendlyName(value);
    }
    pub fn getHashAlgorithmName(self: *@This()) core.HResult!HSTRING {
        const this: *ICertificateRequestProperties = @ptrCast(self);
        return try this.getHashAlgorithmName();
    }
    pub fn putHashAlgorithmName(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *ICertificateRequestProperties = @ptrCast(self);
        return try this.putHashAlgorithmName(value);
    }
    pub fn getExportable(self: *@This()) core.HResult!ExportOption {
        const this: *ICertificateRequestProperties = @ptrCast(self);
        return try this.getExportable();
    }
    pub fn putExportable(self: *@This(), value: ExportOption) core.HResult!void {
        const this: *ICertificateRequestProperties = @ptrCast(self);
        return try this.putExportable(value);
    }
    pub fn getKeyUsages(self: *@This()) core.HResult!EnrollKeyUsages {
        const this: *ICertificateRequestProperties = @ptrCast(self);
        return try this.getKeyUsages();
    }
    pub fn putKeyUsages(self: *@This(), value: EnrollKeyUsages) core.HResult!void {
        const this: *ICertificateRequestProperties = @ptrCast(self);
        return try this.putKeyUsages(value);
    }
    pub fn getKeyProtectionLevel(self: *@This()) core.HResult!KeyProtectionLevel {
        const this: *ICertificateRequestProperties = @ptrCast(self);
        return try this.getKeyProtectionLevel();
    }
    pub fn putKeyProtectionLevel(self: *@This(), value: KeyProtectionLevel) core.HResult!void {
        const this: *ICertificateRequestProperties = @ptrCast(self);
        return try this.putKeyProtectionLevel(value);
    }
    pub fn getKeyStorageProviderName(self: *@This()) core.HResult!HSTRING {
        const this: *ICertificateRequestProperties = @ptrCast(self);
        return try this.getKeyStorageProviderName();
    }
    pub fn putKeyStorageProviderName(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *ICertificateRequestProperties = @ptrCast(self);
        return try this.putKeyStorageProviderName(value);
    }
    pub fn getSmartcardReaderName(self: *@This()) core.HResult!HSTRING {
        var this: ?*ICertificateRequestProperties2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICertificateRequestProperties2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSmartcardReaderName();
    }
    pub fn putSmartcardReaderName(self: *@This(), value: HSTRING) core.HResult!void {
        var this: ?*ICertificateRequestProperties2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICertificateRequestProperties2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putSmartcardReaderName(value);
    }
    pub fn getSigningCertificate(self: *@This()) core.HResult!*Certificate {
        var this: ?*ICertificateRequestProperties2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICertificateRequestProperties2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSigningCertificate();
    }
    pub fn putSigningCertificate(self: *@This(), value: *Certificate) core.HResult!void {
        var this: ?*ICertificateRequestProperties2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICertificateRequestProperties2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putSigningCertificate(value);
    }
    pub fn getAttestationCredentialCertificate(self: *@This()) core.HResult!*Certificate {
        var this: ?*ICertificateRequestProperties2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICertificateRequestProperties2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getAttestationCredentialCertificate();
    }
    pub fn putAttestationCredentialCertificate(self: *@This(), value: *Certificate) core.HResult!void {
        var this: ?*ICertificateRequestProperties2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICertificateRequestProperties2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putAttestationCredentialCertificate(value);
    }
    pub fn getCurveName(self: *@This()) core.HResult!HSTRING {
        var this: ?*ICertificateRequestProperties3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICertificateRequestProperties3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getCurveName();
    }
    pub fn putCurveName(self: *@This(), value: HSTRING) core.HResult!void {
        var this: ?*ICertificateRequestProperties3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICertificateRequestProperties3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putCurveName(value);
    }
    pub fn getCurveParameters(self: *@This()) core.HResult![*]u8 {
        var this: ?*ICertificateRequestProperties3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICertificateRequestProperties3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getCurveParameters();
    }
    pub fn putCurveParameters(self: *@This(), value: [*]u8) core.HResult!void {
        var this: ?*ICertificateRequestProperties3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICertificateRequestProperties3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putCurveParameters(value);
    }
    pub fn getContainerNamePrefix(self: *@This()) core.HResult!HSTRING {
        var this: ?*ICertificateRequestProperties3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICertificateRequestProperties3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getContainerNamePrefix();
    }
    pub fn putContainerNamePrefix(self: *@This(), value: HSTRING) core.HResult!void {
        var this: ?*ICertificateRequestProperties3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICertificateRequestProperties3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putContainerNamePrefix(value);
    }
    pub fn getContainerName(self: *@This()) core.HResult!HSTRING {
        var this: ?*ICertificateRequestProperties3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICertificateRequestProperties3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getContainerName();
    }
    pub fn putContainerName(self: *@This(), value: HSTRING) core.HResult!void {
        var this: ?*ICertificateRequestProperties3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICertificateRequestProperties3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putContainerName(value);
    }
    pub fn getUseExistingKey(self: *@This()) core.HResult!bool {
        var this: ?*ICertificateRequestProperties3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICertificateRequestProperties3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getUseExistingKey();
    }
    pub fn putUseExistingKey(self: *@This(), value: bool) core.HResult!void {
        var this: ?*ICertificateRequestProperties3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICertificateRequestProperties3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putUseExistingKey(value);
    }
    pub fn getSuppressedDefaults(self: *@This()) core.HResult!*IVector(HSTRING) {
        var this: ?*ICertificateRequestProperties4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICertificateRequestProperties4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSuppressedDefaults();
    }
    pub fn getSubjectAlternativeName(self: *@This()) core.HResult!*SubjectAlternativeNameInfo {
        var this: ?*ICertificateRequestProperties4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICertificateRequestProperties4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSubjectAlternativeName();
    }
    pub fn getExtensions(self: *@This()) core.HResult!*IVector(CertificateExtension) {
        var this: ?*ICertificateRequestProperties4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICertificateRequestProperties4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getExtensions();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&ICertificateRequestProperties.IID)));
    }
    pub const NAME: []const u8 = "Windows.Security.Cryptography.Certificates.CertificateRequestProperties";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICertificateRequestProperties.GUID;
    pub const IID: Guid = ICertificateRequestProperties.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICertificateRequestProperties.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const CertificateStore = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn Add(self: *@This(), certificate: *Certificate) core.HResult!void {
        const this: *ICertificateStore = @ptrCast(self);
        return try this.Add(certificate);
    }
    pub fn Delete(self: *@This(), certificate: *Certificate) core.HResult!void {
        const this: *ICertificateStore = @ptrCast(self);
        return try this.Delete(certificate);
    }
    pub fn getName(self: *@This()) core.HResult!HSTRING {
        var this: ?*ICertificateStore2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICertificateStore2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getName();
    }
    pub const NAME: []const u8 = "Windows.Security.Cryptography.Certificates.CertificateStore";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICertificateStore.GUID;
    pub const IID: Guid = ICertificateStore.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICertificateStore.SIGNATURE);
};
pub const CertificateStores = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn GetUserStoreByName(storeName: HSTRING) core.HResult!*UserCertificateStore {
        const factory = @This().ICertificateStoresStatics2Cache.get();
        return try factory.GetUserStoreByName(storeName);
    }
    pub fn FindAllAsync() core.HResult!*IAsyncOperation(IVectorView(Certificate)) {
        const factory = @This().ICertificateStoresStaticsCache.get();
        return try factory.FindAllAsync();
    }
    pub fn FindAllAsyncWithQuery(query: *CertificateQuery) core.HResult!*IAsyncOperation(IVectorView(Certificate)) {
        const factory = @This().ICertificateStoresStaticsCache.get();
        return try factory.FindAllAsyncWithQuery(query);
    }
    pub fn get_TrustedRootCertificationAuthorities() core.HResult!*CertificateStore {
        const factory = @This().ICertificateStoresStaticsCache.get();
        return try factory.getTrustedRootCertificationAuthorities();
    }
    pub fn get_IntermediateCertificationAuthorities() core.HResult!*CertificateStore {
        const factory = @This().ICertificateStoresStaticsCache.get();
        return try factory.getIntermediateCertificationAuthorities();
    }
    pub fn GetStoreByName(storeName: HSTRING) core.HResult!*CertificateStore {
        const factory = @This().ICertificateStoresStaticsCache.get();
        return try factory.GetStoreByName(storeName);
    }
    pub const NAME: []const u8 = "Windows.Security.Cryptography.Certificates.CertificateStores";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _ICertificateStoresStatics2Cache: FactoryCache(ICertificateStoresStatics2, RUNTIME_NAME) = .{};
    var _ICertificateStoresStaticsCache: FactoryCache(ICertificateStoresStatics, RUNTIME_NAME) = .{};
};
pub const ChainBuildingParameters = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getEnhancedKeyUsages(self: *@This()) core.HResult!*IVector(HSTRING) {
        const this: *IChainBuildingParameters = @ptrCast(self);
        return try this.getEnhancedKeyUsages();
    }
    pub fn getValidationTimestamp(self: *@This()) core.HResult!DateTime {
        const this: *IChainBuildingParameters = @ptrCast(self);
        return try this.getValidationTimestamp();
    }
    pub fn putValidationTimestamp(self: *@This(), value: DateTime) core.HResult!void {
        const this: *IChainBuildingParameters = @ptrCast(self);
        return try this.putValidationTimestamp(value);
    }
    pub fn getRevocationCheckEnabled(self: *@This()) core.HResult!bool {
        const this: *IChainBuildingParameters = @ptrCast(self);
        return try this.getRevocationCheckEnabled();
    }
    pub fn putRevocationCheckEnabled(self: *@This(), value: bool) core.HResult!void {
        const this: *IChainBuildingParameters = @ptrCast(self);
        return try this.putRevocationCheckEnabled(value);
    }
    pub fn getNetworkRetrievalEnabled(self: *@This()) core.HResult!bool {
        const this: *IChainBuildingParameters = @ptrCast(self);
        return try this.getNetworkRetrievalEnabled();
    }
    pub fn putNetworkRetrievalEnabled(self: *@This(), value: bool) core.HResult!void {
        const this: *IChainBuildingParameters = @ptrCast(self);
        return try this.putNetworkRetrievalEnabled(value);
    }
    pub fn getAuthorityInformationAccessEnabled(self: *@This()) core.HResult!bool {
        const this: *IChainBuildingParameters = @ptrCast(self);
        return try this.getAuthorityInformationAccessEnabled();
    }
    pub fn putAuthorityInformationAccessEnabled(self: *@This(), value: bool) core.HResult!void {
        const this: *IChainBuildingParameters = @ptrCast(self);
        return try this.putAuthorityInformationAccessEnabled(value);
    }
    pub fn getCurrentTimeValidationEnabled(self: *@This()) core.HResult!bool {
        const this: *IChainBuildingParameters = @ptrCast(self);
        return try this.getCurrentTimeValidationEnabled();
    }
    pub fn putCurrentTimeValidationEnabled(self: *@This(), value: bool) core.HResult!void {
        const this: *IChainBuildingParameters = @ptrCast(self);
        return try this.putCurrentTimeValidationEnabled(value);
    }
    pub fn getExclusiveTrustRoots(self: *@This()) core.HResult!*IVector(Certificate) {
        const this: *IChainBuildingParameters = @ptrCast(self);
        return try this.getExclusiveTrustRoots();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IChainBuildingParameters.IID)));
    }
    pub const NAME: []const u8 = "Windows.Security.Cryptography.Certificates.ChainBuildingParameters";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IChainBuildingParameters.GUID;
    pub const IID: Guid = IChainBuildingParameters.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IChainBuildingParameters.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const ChainValidationParameters = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getCertificateChainPolicy(self: *@This()) core.HResult!CertificateChainPolicy {
        const this: *IChainValidationParameters = @ptrCast(self);
        return try this.getCertificateChainPolicy();
    }
    pub fn putCertificateChainPolicy(self: *@This(), value: CertificateChainPolicy) core.HResult!void {
        const this: *IChainValidationParameters = @ptrCast(self);
        return try this.putCertificateChainPolicy(value);
    }
    pub fn getServerDnsName(self: *@This()) core.HResult!*HostName {
        const this: *IChainValidationParameters = @ptrCast(self);
        return try this.getServerDnsName();
    }
    pub fn putServerDnsName(self: *@This(), value: *HostName) core.HResult!void {
        const this: *IChainValidationParameters = @ptrCast(self);
        return try this.putServerDnsName(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IChainValidationParameters.IID)));
    }
    pub const NAME: []const u8 = "Windows.Security.Cryptography.Certificates.ChainValidationParameters";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IChainValidationParameters.GUID;
    pub const IID: Guid = IChainValidationParameters.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IChainValidationParameters.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const ChainValidationResult = enum(i32) {
    Success = 0,
    Untrusted = 1,
    Revoked = 2,
    Expired = 3,
    IncompleteChain = 4,
    InvalidSignature = 5,
    WrongUsage = 6,
    InvalidName = 7,
    InvalidCertificateAuthorityPolicy = 8,
    BasicConstraintsError = 9,
    UnknownCriticalExtension = 10,
    RevocationInformationMissing = 11,
    RevocationFailure = 12,
    OtherErrors = 13,
};
pub const CmsAttachedSignature = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getCertificates(self: *@This()) core.HResult!*IVectorView(Certificate) {
        const this: *ICmsAttachedSignature = @ptrCast(self);
        return try this.getCertificates();
    }
    pub fn getContent(self: *@This()) core.HResult![*]u8 {
        const this: *ICmsAttachedSignature = @ptrCast(self);
        return try this.getContent();
    }
    pub fn getSigners(self: *@This()) core.HResult!*IVectorView(CmsSignerInfo) {
        const this: *ICmsAttachedSignature = @ptrCast(self);
        return try this.getSigners();
    }
    pub fn VerifySignature(self: *@This()) core.HResult!SignatureValidationResult {
        const this: *ICmsAttachedSignature = @ptrCast(self);
        return try this.VerifySignature();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateCmsAttachedSignature(inputBlob: *IBuffer) core.HResult!*CmsAttachedSignature {
        const factory = @This().ICmsAttachedSignatureFactoryCache.get();
        return try factory.CreateCmsAttachedSignature(inputBlob);
    }
    pub fn GenerateSignatureAsync(data: *IBuffer, signers: *IIterable(CmsSignerInfo), certificates: *IIterable(Certificate)) core.HResult!*IAsyncOperation(IBuffer) {
        const factory = @This().ICmsAttachedSignatureStaticsCache.get();
        return try factory.GenerateSignatureAsync(data, signers, certificates);
    }
    pub const NAME: []const u8 = "Windows.Security.Cryptography.Certificates.CmsAttachedSignature";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICmsAttachedSignature.GUID;
    pub const IID: Guid = ICmsAttachedSignature.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICmsAttachedSignature.SIGNATURE);
    var _ICmsAttachedSignatureFactoryCache: FactoryCache(ICmsAttachedSignatureFactory, RUNTIME_NAME) = .{};
    var _ICmsAttachedSignatureStaticsCache: FactoryCache(ICmsAttachedSignatureStatics, RUNTIME_NAME) = .{};
};
pub const CmsDetachedSignature = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getCertificates(self: *@This()) core.HResult!*IVectorView(Certificate) {
        const this: *ICmsDetachedSignature = @ptrCast(self);
        return try this.getCertificates();
    }
    pub fn getSigners(self: *@This()) core.HResult!*IVectorView(CmsSignerInfo) {
        const this: *ICmsDetachedSignature = @ptrCast(self);
        return try this.getSigners();
    }
    pub fn VerifySignatureAsync(self: *@This(), data: *IInputStream) core.HResult!*IAsyncOperation(SignatureValidationResult) {
        const this: *ICmsDetachedSignature = @ptrCast(self);
        return try this.VerifySignatureAsync(data);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateCmsDetachedSignature(inputBlob: *IBuffer) core.HResult!*CmsDetachedSignature {
        const factory = @This().ICmsDetachedSignatureFactoryCache.get();
        return try factory.CreateCmsDetachedSignature(inputBlob);
    }
    pub fn GenerateSignatureAsync(data: *IInputStream, signers: *IIterable(CmsSignerInfo), certificates: *IIterable(Certificate)) core.HResult!*IAsyncOperation(IBuffer) {
        const factory = @This().ICmsDetachedSignatureStaticsCache.get();
        return try factory.GenerateSignatureAsync(data, signers, certificates);
    }
    pub const NAME: []const u8 = "Windows.Security.Cryptography.Certificates.CmsDetachedSignature";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICmsDetachedSignature.GUID;
    pub const IID: Guid = ICmsDetachedSignature.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICmsDetachedSignature.SIGNATURE);
    var _ICmsDetachedSignatureFactoryCache: FactoryCache(ICmsDetachedSignatureFactory, RUNTIME_NAME) = .{};
    var _ICmsDetachedSignatureStaticsCache: FactoryCache(ICmsDetachedSignatureStatics, RUNTIME_NAME) = .{};
};
pub const CmsSignerInfo = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getCertificate(self: *@This()) core.HResult!*Certificate {
        const this: *ICmsSignerInfo = @ptrCast(self);
        return try this.getCertificate();
    }
    pub fn putCertificate(self: *@This(), value: *Certificate) core.HResult!void {
        const this: *ICmsSignerInfo = @ptrCast(self);
        return try this.putCertificate(value);
    }
    pub fn getHashAlgorithmName(self: *@This()) core.HResult!HSTRING {
        const this: *ICmsSignerInfo = @ptrCast(self);
        return try this.getHashAlgorithmName();
    }
    pub fn putHashAlgorithmName(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *ICmsSignerInfo = @ptrCast(self);
        return try this.putHashAlgorithmName(value);
    }
    pub fn getTimestampInfo(self: *@This()) core.HResult!*CmsTimestampInfo {
        const this: *ICmsSignerInfo = @ptrCast(self);
        return try this.getTimestampInfo();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&ICmsSignerInfo.IID)));
    }
    pub const NAME: []const u8 = "Windows.Security.Cryptography.Certificates.CmsSignerInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICmsSignerInfo.GUID;
    pub const IID: Guid = ICmsSignerInfo.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICmsSignerInfo.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const CmsTimestampInfo = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getSigningCertificate(self: *@This()) core.HResult!*Certificate {
        const this: *ICmsTimestampInfo = @ptrCast(self);
        return try this.getSigningCertificate();
    }
    pub fn getCertificates(self: *@This()) core.HResult!*IVectorView(Certificate) {
        const this: *ICmsTimestampInfo = @ptrCast(self);
        return try this.getCertificates();
    }
    pub fn getTimestamp(self: *@This()) core.HResult!DateTime {
        const this: *ICmsTimestampInfo = @ptrCast(self);
        return try this.getTimestamp();
    }
    pub const NAME: []const u8 = "Windows.Security.Cryptography.Certificates.CmsTimestampInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICmsTimestampInfo.GUID;
    pub const IID: Guid = ICmsTimestampInfo.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICmsTimestampInfo.SIGNATURE);
};
pub const EnrollKeyUsages = enum(i32) {
    None = 0,
    Decryption = 1,
    Signing = 2,
    KeyAgreement = 4,
    All = 16777215,
};
pub const ExportOption = enum(i32) {
    NotExportable = 0,
    Exportable = 1,
};
pub const ICertificate = extern struct {
    vtable: *const VTable,
    pub fn BuildChainAsync(self: *@This(), certificates: *IIterable(Certificate)) core.HResult!*IAsyncOperation(CertificateChain) {
        var _r: *IAsyncOperation(CertificateChain) = undefined;
        const _c = self.vtable.BuildChainAsync(@ptrCast(self), certificates, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn BuildChainAsyncWithParameters(self: *@This(), certificates: *IIterable(Certificate), parameters: *ChainBuildingParameters) core.HResult!*IAsyncOperation(CertificateChain) {
        var _r: *IAsyncOperation(CertificateChain) = undefined;
        const _c = self.vtable.BuildChainAsyncWithParameters(@ptrCast(self), certificates, parameters, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSerialNumber(self: *@This()) core.HResult![*]u8 {
        var _r: [*]u8 = undefined;
        const _c = self.vtable.get_SerialNumber(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetHashValue(self: *@This()) core.HResult![*]u8 {
        var _r: [*]u8 = undefined;
        const _c = self.vtable.GetHashValue(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetHashValue(self: *@This(), hashAlgorithmName: HSTRING) core.HResult![*]u8 {
        var _r: [*]u8 = undefined;
        const _c = self.vtable.GetHashValue(@ptrCast(self), hashAlgorithmName, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetCertificateBlob(self: *@This()) core.HResult!*IBuffer {
        var _r: *IBuffer = undefined;
        const _c = self.vtable.GetCertificateBlob(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSubject(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Subject(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIssuer(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Issuer(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getHasPrivateKey(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_HasPrivateKey(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsStronglyProtected(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsStronglyProtected(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getValidFrom(self: *@This()) core.HResult!DateTime {
        var _r: DateTime = undefined;
        const _c = self.vtable.get_ValidFrom(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getValidTo(self: *@This()) core.HResult!DateTime {
        var _r: DateTime = undefined;
        const _c = self.vtable.get_ValidTo(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getEnhancedKeyUsages(self: *@This()) core.HResult!*IVectorView(HSTRING) {
        var _r: *IVectorView(HSTRING) = undefined;
        const _c = self.vtable.get_EnhancedKeyUsages(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putFriendlyName(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_FriendlyName(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getFriendlyName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_FriendlyName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Security.Cryptography.Certificates.ICertificate";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "333f740c-04d8-43b3-b278-8c5fcc9be5a0";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        BuildChainAsync: *const fn(self: *anyopaque, certificates: *IIterable(Certificate), _r: **IAsyncOperation(CertificateChain)) callconv(.winapi) HRESULT,
        BuildChainAsyncWithParameters: *const fn(self: *anyopaque, certificates: *IIterable(Certificate), parameters: *ChainBuildingParameters, _r: **IAsyncOperation(CertificateChain)) callconv(.winapi) HRESULT,
        get_SerialNumber: *const fn(self: *anyopaque, _r: *[*]u8) callconv(.winapi) HRESULT,
        GetHashValue: *const fn(self: *anyopaque, _r: *[*]u8) callconv(.winapi) HRESULT,
        GetHashValue: *const fn(self: *anyopaque, hashAlgorithmName: HSTRING, _r: *[*]u8) callconv(.winapi) HRESULT,
        GetCertificateBlob: *const fn(self: *anyopaque, _r: **IBuffer) callconv(.winapi) HRESULT,
        get_Subject: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Issuer: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_HasPrivateKey: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsStronglyProtected: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_ValidFrom: *const fn(self: *anyopaque, _r: *DateTime) callconv(.winapi) HRESULT,
        get_ValidTo: *const fn(self: *anyopaque, _r: *DateTime) callconv(.winapi) HRESULT,
        get_EnhancedKeyUsages: *const fn(self: *anyopaque, _r: **IVectorView(HSTRING)) callconv(.winapi) HRESULT,
        put_FriendlyName: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_FriendlyName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const ICertificate2 = extern struct {
    vtable: *const VTable,
    pub fn getIsSecurityDeviceBound(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsSecurityDeviceBound(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getKeyUsages(self: *@This()) core.HResult!*CertificateKeyUsages {
        var _r: *CertificateKeyUsages = undefined;
        const _c = self.vtable.get_KeyUsages(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getKeyAlgorithmName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_KeyAlgorithmName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSignatureAlgorithmName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_SignatureAlgorithmName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSignatureHashAlgorithmName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_SignatureHashAlgorithmName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSubjectAlternativeName(self: *@This()) core.HResult!*SubjectAlternativeNameInfo {
        var _r: *SubjectAlternativeNameInfo = undefined;
        const _c = self.vtable.get_SubjectAlternativeName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Security.Cryptography.Certificates.ICertificate2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "17b8374c-8a25-4d96-a492-8fc29ac4fda6";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IsSecurityDeviceBound: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_KeyUsages: *const fn(self: *anyopaque, _r: **CertificateKeyUsages) callconv(.winapi) HRESULT,
        get_KeyAlgorithmName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_SignatureAlgorithmName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_SignatureHashAlgorithmName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_SubjectAlternativeName: *const fn(self: *anyopaque, _r: **SubjectAlternativeNameInfo) callconv(.winapi) HRESULT,
    };
};
pub const ICertificate3 = extern struct {
    vtable: *const VTable,
    pub fn getIsPerUser(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsPerUser(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getStoreName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_StoreName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getKeyStorageProviderName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_KeyStorageProviderName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Security.Cryptography.Certificates.ICertificate3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "be51a966-ae5f-4652-ace7-c6d7e7724cf3";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IsPerUser: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_StoreName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_KeyStorageProviderName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const ICertificateChain = extern struct {
    vtable: *const VTable,
    pub fn Validate(self: *@This()) core.HResult!ChainValidationResult {
        var _r: ChainValidationResult = undefined;
        const _c = self.vtable.Validate(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn Validate(self: *@This(), parameter: *ChainValidationParameters) core.HResult!ChainValidationResult {
        var _r: ChainValidationResult = undefined;
        const _c = self.vtable.Validate(@ptrCast(self), parameter, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetCertificates(self: *@This(), includeRoot: bool) core.HResult!*IVectorView(Certificate) {
        var _r: *IVectorView(Certificate) = undefined;
        const _c = self.vtable.GetCertificates(@ptrCast(self), includeRoot, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Security.Cryptography.Certificates.ICertificateChain";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "20bf5385-3691-4501-a62c-fd97278b31ee";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Validate: *const fn(self: *anyopaque, _r: *ChainValidationResult) callconv(.winapi) HRESULT,
        Validate: *const fn(self: *anyopaque, parameter: *ChainValidationParameters, _r: *ChainValidationResult) callconv(.winapi) HRESULT,
        GetCertificates: *const fn(self: *anyopaque, includeRoot: bool, _r: **IVectorView(Certificate)) callconv(.winapi) HRESULT,
    };
};
pub const ICertificateEnrollmentManagerStatics = extern struct {
    vtable: *const VTable,
    pub fn CreateRequestAsync(self: *@This(), request: *CertificateRequestProperties) core.HResult!*IAsyncOperation(HSTRING) {
        var _r: *IAsyncOperation(HSTRING) = undefined;
        const _c = self.vtable.CreateRequestAsync(@ptrCast(self), request, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn InstallCertificateAsync(self: *@This(), certificate: HSTRING, installOption: InstallOptions) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.InstallCertificateAsync(@ptrCast(self), certificate, installOption, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ImportPfxDataAsync(self: *@This(), pfxData: HSTRING, password: HSTRING, exportable: ExportOption, keyProtectionLevel: KeyProtectionLevel, installOption: InstallOptions, friendlyName: HSTRING) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.ImportPfxDataAsync(@ptrCast(self), pfxData, password, exportable, keyProtectionLevel, installOption, friendlyName, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Security.Cryptography.Certificates.ICertificateEnrollmentManagerStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "8846ef3f-a986-48fb-9fd7-9aec06935bf1";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateRequestAsync: *const fn(self: *anyopaque, request: *CertificateRequestProperties, _r: **IAsyncOperation(HSTRING)) callconv(.winapi) HRESULT,
        InstallCertificateAsync: *const fn(self: *anyopaque, certificate: HSTRING, installOption: InstallOptions, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        ImportPfxDataAsync: *const fn(self: *anyopaque, pfxData: HSTRING, password: HSTRING, exportable: ExportOption, keyProtectionLevel: KeyProtectionLevel, installOption: InstallOptions, friendlyName: HSTRING, _r: **IAsyncAction) callconv(.winapi) HRESULT,
    };
};
pub const ICertificateEnrollmentManagerStatics2 = extern struct {
    vtable: *const VTable,
    pub fn getUserCertificateEnrollmentManager(self: *@This()) core.HResult!*UserCertificateEnrollmentManager {
        var _r: *UserCertificateEnrollmentManager = undefined;
        const _c = self.vtable.get_UserCertificateEnrollmentManager(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ImportPfxDataAsync(self: *@This(), pfxData: HSTRING, password: HSTRING, exportable: ExportOption, keyProtectionLevel: KeyProtectionLevel, installOption: InstallOptions, friendlyName: HSTRING, keyStorageProvider: HSTRING) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.ImportPfxDataAsync(@ptrCast(self), pfxData, password, exportable, keyProtectionLevel, installOption, friendlyName, keyStorageProvider, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Security.Cryptography.Certificates.ICertificateEnrollmentManagerStatics2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "dc5b1c33-6429-4014-999c-5d9735802d1d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_UserCertificateEnrollmentManager: *const fn(self: *anyopaque, _r: **UserCertificateEnrollmentManager) callconv(.winapi) HRESULT,
        ImportPfxDataAsync: *const fn(self: *anyopaque, pfxData: HSTRING, password: HSTRING, exportable: ExportOption, keyProtectionLevel: KeyProtectionLevel, installOption: InstallOptions, friendlyName: HSTRING, keyStorageProvider: HSTRING, _r: **IAsyncAction) callconv(.winapi) HRESULT,
    };
};
pub const ICertificateEnrollmentManagerStatics3 = extern struct {
    vtable: *const VTable,
    pub fn ImportPfxDataAsync(self: *@This(), pfxData: HSTRING, password: HSTRING, pfxImportParameters: *PfxImportParameters) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.ImportPfxDataAsync(@ptrCast(self), pfxData, password, pfxImportParameters, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Security.Cryptography.Certificates.ICertificateEnrollmentManagerStatics3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "fdec82be-617c-425a-b72d-398b26ac7264";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        ImportPfxDataAsync: *const fn(self: *anyopaque, pfxData: HSTRING, password: HSTRING, pfxImportParameters: *PfxImportParameters, _r: **IAsyncAction) callconv(.winapi) HRESULT,
    };
};
pub const ICertificateExtension = extern struct {
    vtable: *const VTable,
    pub fn getObjectId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ObjectId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putObjectId(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_ObjectId(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIsCritical(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsCritical(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIsCritical(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsCritical(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn EncodeValue(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.EncodeValue(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getValue(self: *@This()) core.HResult![*]u8 {
        var _r: [*]u8 = undefined;
        const _c = self.vtable.get_Value(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putValue(self: *@This(), value: [*]u8) core.HResult!void {
        const _c = self.vtable.put_Value(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Security.Cryptography.Certificates.ICertificateExtension";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "84cf0656-a9e6-454d-8e45-2ea7c4bcd53b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ObjectId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_ObjectId: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_IsCritical: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IsCritical: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        EncodeValue: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_Value: *const fn(self: *anyopaque, _r: *[*]u8) callconv(.winapi) HRESULT,
        put_Value: *const fn(self: *anyopaque, value: [*]u8) callconv(.winapi) HRESULT,
    };
};
pub const ICertificateFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateCertificate(self: *@This(), certBlob: *IBuffer) core.HResult!*Certificate {
        var _r: *Certificate = undefined;
        const _c = self.vtable.CreateCertificate(@ptrCast(self), certBlob, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Security.Cryptography.Certificates.ICertificateFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "17b4221c-4baf-44a2-9608-04fb62b16942";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateCertificate: *const fn(self: *anyopaque, certBlob: *IBuffer, _r: **Certificate) callconv(.winapi) HRESULT,
    };
};
pub const ICertificateKeyUsages = extern struct {
    vtable: *const VTable,
    pub fn getEncipherOnly(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_EncipherOnly(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putEncipherOnly(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_EncipherOnly(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getCrlSign(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_CrlSign(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putCrlSign(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_CrlSign(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getKeyCertificateSign(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_KeyCertificateSign(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putKeyCertificateSign(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_KeyCertificateSign(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getKeyAgreement(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_KeyAgreement(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putKeyAgreement(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_KeyAgreement(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getDataEncipherment(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_DataEncipherment(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDataEncipherment(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_DataEncipherment(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getKeyEncipherment(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_KeyEncipherment(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putKeyEncipherment(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_KeyEncipherment(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getNonRepudiation(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_NonRepudiation(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putNonRepudiation(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_NonRepudiation(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getDigitalSignature(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_DigitalSignature(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDigitalSignature(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_DigitalSignature(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Security.Cryptography.Certificates.ICertificateKeyUsages";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "6ac6206f-e1cf-486a-b485-a69c83e46fd1";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_EncipherOnly: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_EncipherOnly: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_CrlSign: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_CrlSign: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_KeyCertificateSign: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_KeyCertificateSign: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_KeyAgreement: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_KeyAgreement: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_DataEncipherment: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_DataEncipherment: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_KeyEncipherment: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_KeyEncipherment: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_NonRepudiation: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_NonRepudiation: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_DigitalSignature: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_DigitalSignature: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
    };
};
pub const ICertificateQuery = extern struct {
    vtable: *const VTable,
    pub fn getEnhancedKeyUsages(self: *@This()) core.HResult!*IVector(HSTRING) {
        var _r: *IVector(HSTRING) = undefined;
        const _c = self.vtable.get_EnhancedKeyUsages(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIssuerName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_IssuerName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIssuerName(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_IssuerName(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getFriendlyName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_FriendlyName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putFriendlyName(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_FriendlyName(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getThumbprint(self: *@This()) core.HResult![*]u8 {
        var _r: [*]u8 = undefined;
        const _c = self.vtable.get_Thumbprint(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putThumbprint(self: *@This(), value: [*]u8) core.HResult!void {
        const _c = self.vtable.put_Thumbprint(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getHardwareOnly(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_HardwareOnly(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putHardwareOnly(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_HardwareOnly(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Security.Cryptography.Certificates.ICertificateQuery";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5b082a31-a728-4916-b5ee-ffcb8acf2417";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_EnhancedKeyUsages: *const fn(self: *anyopaque, _r: **IVector(HSTRING)) callconv(.winapi) HRESULT,
        get_IssuerName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_IssuerName: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_FriendlyName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_FriendlyName: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_Thumbprint: *const fn(self: *anyopaque, _r: *[*]u8) callconv(.winapi) HRESULT,
        put_Thumbprint: *const fn(self: *anyopaque, value: [*]u8) callconv(.winapi) HRESULT,
        get_HardwareOnly: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_HardwareOnly: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
    };
};
pub const ICertificateQuery2 = extern struct {
    vtable: *const VTable,
    pub fn getIncludeDuplicates(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IncludeDuplicates(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIncludeDuplicates(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IncludeDuplicates(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIncludeExpiredCertificates(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IncludeExpiredCertificates(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIncludeExpiredCertificates(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IncludeExpiredCertificates(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getStoreName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_StoreName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putStoreName(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_StoreName(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Security.Cryptography.Certificates.ICertificateQuery2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "935a0af7-0bd9-4f75-b8c2-e27a7f74eecd";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IncludeDuplicates: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IncludeDuplicates: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_IncludeExpiredCertificates: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IncludeExpiredCertificates: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_StoreName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_StoreName: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const ICertificateRequestProperties = extern struct {
    vtable: *const VTable,
    pub fn getSubject(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Subject(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSubject(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_Subject(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getKeyAlgorithmName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_KeyAlgorithmName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putKeyAlgorithmName(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_KeyAlgorithmName(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getKeySize(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_KeySize(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putKeySize(self: *@This(), value: u32) core.HResult!void {
        const _c = self.vtable.put_KeySize(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getFriendlyName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_FriendlyName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putFriendlyName(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_FriendlyName(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getHashAlgorithmName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_HashAlgorithmName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putHashAlgorithmName(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_HashAlgorithmName(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getExportable(self: *@This()) core.HResult!ExportOption {
        var _r: ExportOption = undefined;
        const _c = self.vtable.get_Exportable(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putExportable(self: *@This(), value: ExportOption) core.HResult!void {
        const _c = self.vtable.put_Exportable(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getKeyUsages(self: *@This()) core.HResult!EnrollKeyUsages {
        var _r: EnrollKeyUsages = undefined;
        const _c = self.vtable.get_KeyUsages(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putKeyUsages(self: *@This(), value: EnrollKeyUsages) core.HResult!void {
        const _c = self.vtable.put_KeyUsages(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getKeyProtectionLevel(self: *@This()) core.HResult!KeyProtectionLevel {
        var _r: KeyProtectionLevel = undefined;
        const _c = self.vtable.get_KeyProtectionLevel(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putKeyProtectionLevel(self: *@This(), value: KeyProtectionLevel) core.HResult!void {
        const _c = self.vtable.put_KeyProtectionLevel(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getKeyStorageProviderName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_KeyStorageProviderName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putKeyStorageProviderName(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_KeyStorageProviderName(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Security.Cryptography.Certificates.ICertificateRequestProperties";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "487e84f6-94e2-4dce-8833-1a700a37a29a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Subject: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_Subject: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_KeyAlgorithmName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_KeyAlgorithmName: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_KeySize: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        put_KeySize: *const fn(self: *anyopaque, value: u32) callconv(.winapi) HRESULT,
        get_FriendlyName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_FriendlyName: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_HashAlgorithmName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_HashAlgorithmName: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_Exportable: *const fn(self: *anyopaque, _r: *ExportOption) callconv(.winapi) HRESULT,
        put_Exportable: *const fn(self: *anyopaque, value: ExportOption) callconv(.winapi) HRESULT,
        get_KeyUsages: *const fn(self: *anyopaque, _r: *EnrollKeyUsages) callconv(.winapi) HRESULT,
        put_KeyUsages: *const fn(self: *anyopaque, value: EnrollKeyUsages) callconv(.winapi) HRESULT,
        get_KeyProtectionLevel: *const fn(self: *anyopaque, _r: *KeyProtectionLevel) callconv(.winapi) HRESULT,
        put_KeyProtectionLevel: *const fn(self: *anyopaque, value: KeyProtectionLevel) callconv(.winapi) HRESULT,
        get_KeyStorageProviderName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_KeyStorageProviderName: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const ICertificateRequestProperties2 = extern struct {
    vtable: *const VTable,
    pub fn getSmartcardReaderName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_SmartcardReaderName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSmartcardReaderName(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_SmartcardReaderName(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getSigningCertificate(self: *@This()) core.HResult!*Certificate {
        var _r: *Certificate = undefined;
        const _c = self.vtable.get_SigningCertificate(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSigningCertificate(self: *@This(), value: *Certificate) core.HResult!void {
        const _c = self.vtable.put_SigningCertificate(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getAttestationCredentialCertificate(self: *@This()) core.HResult!*Certificate {
        var _r: *Certificate = undefined;
        const _c = self.vtable.get_AttestationCredentialCertificate(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putAttestationCredentialCertificate(self: *@This(), value: *Certificate) core.HResult!void {
        const _c = self.vtable.put_AttestationCredentialCertificate(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Security.Cryptography.Certificates.ICertificateRequestProperties2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3da0c954-d73f-4ff3-a0a6-0677c0ada05b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_SmartcardReaderName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_SmartcardReaderName: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_SigningCertificate: *const fn(self: *anyopaque, _r: **Certificate) callconv(.winapi) HRESULT,
        put_SigningCertificate: *const fn(self: *anyopaque, value: *Certificate) callconv(.winapi) HRESULT,
        get_AttestationCredentialCertificate: *const fn(self: *anyopaque, _r: **Certificate) callconv(.winapi) HRESULT,
        put_AttestationCredentialCertificate: *const fn(self: *anyopaque, value: *Certificate) callconv(.winapi) HRESULT,
    };
};
pub const ICertificateRequestProperties3 = extern struct {
    vtable: *const VTable,
    pub fn getCurveName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_CurveName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putCurveName(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_CurveName(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getCurveParameters(self: *@This()) core.HResult![*]u8 {
        var _r: [*]u8 = undefined;
        const _c = self.vtable.get_CurveParameters(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putCurveParameters(self: *@This(), value: [*]u8) core.HResult!void {
        const _c = self.vtable.put_CurveParameters(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getContainerNamePrefix(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ContainerNamePrefix(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putContainerNamePrefix(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_ContainerNamePrefix(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getContainerName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ContainerName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putContainerName(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_ContainerName(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getUseExistingKey(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_UseExistingKey(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putUseExistingKey(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_UseExistingKey(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Security.Cryptography.Certificates.ICertificateRequestProperties3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e687f616-734d-46b1-9d4c-6edfdbfc845b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_CurveName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_CurveName: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_CurveParameters: *const fn(self: *anyopaque, _r: *[*]u8) callconv(.winapi) HRESULT,
        put_CurveParameters: *const fn(self: *anyopaque, value: [*]u8) callconv(.winapi) HRESULT,
        get_ContainerNamePrefix: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_ContainerNamePrefix: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_ContainerName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_ContainerName: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_UseExistingKey: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_UseExistingKey: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
    };
};
pub const ICertificateRequestProperties4 = extern struct {
    vtable: *const VTable,
    pub fn getSuppressedDefaults(self: *@This()) core.HResult!*IVector(HSTRING) {
        var _r: *IVector(HSTRING) = undefined;
        const _c = self.vtable.get_SuppressedDefaults(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSubjectAlternativeName(self: *@This()) core.HResult!*SubjectAlternativeNameInfo {
        var _r: *SubjectAlternativeNameInfo = undefined;
        const _c = self.vtable.get_SubjectAlternativeName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getExtensions(self: *@This()) core.HResult!*IVector(CertificateExtension) {
        var _r: *IVector(CertificateExtension) = undefined;
        const _c = self.vtable.get_Extensions(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Security.Cryptography.Certificates.ICertificateRequestProperties4";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "4e429ad2-1c61-4fea-b8fe-135fb19cdce4";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_SuppressedDefaults: *const fn(self: *anyopaque, _r: **IVector(HSTRING)) callconv(.winapi) HRESULT,
        get_SubjectAlternativeName: *const fn(self: *anyopaque, _r: **SubjectAlternativeNameInfo) callconv(.winapi) HRESULT,
        get_Extensions: *const fn(self: *anyopaque, _r: **IVector(CertificateExtension)) callconv(.winapi) HRESULT,
    };
};
pub const ICertificateStore = extern struct {
    vtable: *const VTable,
    pub fn Add(self: *@This(), certificate: *Certificate) core.HResult!void {
        const _c = self.vtable.Add(@ptrCast(self), certificate);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn Delete(self: *@This(), certificate: *Certificate) core.HResult!void {
        const _c = self.vtable.Delete(@ptrCast(self), certificate);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Security.Cryptography.Certificates.ICertificateStore";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b0bff720-344e-4331-af14-a7f7a7ebc93a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Add: *const fn(self: *anyopaque, certificate: *Certificate) callconv(.winapi) HRESULT,
        Delete: *const fn(self: *anyopaque, certificate: *Certificate) callconv(.winapi) HRESULT,
    };
};
pub const ICertificateStore2 = extern struct {
    vtable: *const VTable,
    pub fn getName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Name(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Security.Cryptography.Certificates.ICertificateStore2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c7e68e4a-417d-4d1a-babd-15687e549974";
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
    };
};
pub const ICertificateStoresStatics = extern struct {
    vtable: *const VTable,
    pub fn FindAllAsync(self: *@This()) core.HResult!*IAsyncOperation(IVectorView(Certificate)) {
        var _r: *IAsyncOperation(IVectorView(Certificate)) = undefined;
        const _c = self.vtable.FindAllAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FindAllAsync(self: *@This(), query: *CertificateQuery) core.HResult!*IAsyncOperation(IVectorView(Certificate)) {
        var _r: *IAsyncOperation(IVectorView(Certificate)) = undefined;
        const _c = self.vtable.FindAllAsync(@ptrCast(self), query, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTrustedRootCertificationAuthorities(self: *@This()) core.HResult!*CertificateStore {
        var _r: *CertificateStore = undefined;
        const _c = self.vtable.get_TrustedRootCertificationAuthorities(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIntermediateCertificationAuthorities(self: *@This()) core.HResult!*CertificateStore {
        var _r: *CertificateStore = undefined;
        const _c = self.vtable.get_IntermediateCertificationAuthorities(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetStoreByName(self: *@This(), storeName: HSTRING) core.HResult!*CertificateStore {
        var _r: *CertificateStore = undefined;
        const _c = self.vtable.GetStoreByName(@ptrCast(self), storeName, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Security.Cryptography.Certificates.ICertificateStoresStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "fbecc739-c6fe-4de7-99cf-74c3e596e032";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        FindAllAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(IVectorView(Certificate))) callconv(.winapi) HRESULT,
        FindAllAsync: *const fn(self: *anyopaque, query: *CertificateQuery, _r: **IAsyncOperation(IVectorView(Certificate))) callconv(.winapi) HRESULT,
        get_TrustedRootCertificationAuthorities: *const fn(self: *anyopaque, _r: **CertificateStore) callconv(.winapi) HRESULT,
        get_IntermediateCertificationAuthorities: *const fn(self: *anyopaque, _r: **CertificateStore) callconv(.winapi) HRESULT,
        GetStoreByName: *const fn(self: *anyopaque, storeName: HSTRING, _r: **CertificateStore) callconv(.winapi) HRESULT,
    };
};
pub const ICertificateStoresStatics2 = extern struct {
    vtable: *const VTable,
    pub fn GetUserStoreByName(self: *@This(), storeName: HSTRING) core.HResult!*UserCertificateStore {
        var _r: *UserCertificateStore = undefined;
        const _c = self.vtable.GetUserStoreByName(@ptrCast(self), storeName, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Security.Cryptography.Certificates.ICertificateStoresStatics2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "fa900b79-a0d4-4b8c-bc55-c0a37eb141ed";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetUserStoreByName: *const fn(self: *anyopaque, storeName: HSTRING, _r: **UserCertificateStore) callconv(.winapi) HRESULT,
    };
};
pub const IChainBuildingParameters = extern struct {
    vtable: *const VTable,
    pub fn getEnhancedKeyUsages(self: *@This()) core.HResult!*IVector(HSTRING) {
        var _r: *IVector(HSTRING) = undefined;
        const _c = self.vtable.get_EnhancedKeyUsages(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getValidationTimestamp(self: *@This()) core.HResult!DateTime {
        var _r: DateTime = undefined;
        const _c = self.vtable.get_ValidationTimestamp(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putValidationTimestamp(self: *@This(), value: DateTime) core.HResult!void {
        const _c = self.vtable.put_ValidationTimestamp(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getRevocationCheckEnabled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_RevocationCheckEnabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putRevocationCheckEnabled(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_RevocationCheckEnabled(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getNetworkRetrievalEnabled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_NetworkRetrievalEnabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putNetworkRetrievalEnabled(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_NetworkRetrievalEnabled(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getAuthorityInformationAccessEnabled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_AuthorityInformationAccessEnabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putAuthorityInformationAccessEnabled(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_AuthorityInformationAccessEnabled(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getCurrentTimeValidationEnabled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_CurrentTimeValidationEnabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putCurrentTimeValidationEnabled(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_CurrentTimeValidationEnabled(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getExclusiveTrustRoots(self: *@This()) core.HResult!*IVector(Certificate) {
        var _r: *IVector(Certificate) = undefined;
        const _c = self.vtable.get_ExclusiveTrustRoots(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Security.Cryptography.Certificates.IChainBuildingParameters";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "422ba922-7c8d-47b7-b59b-b12703733ac3";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_EnhancedKeyUsages: *const fn(self: *anyopaque, _r: **IVector(HSTRING)) callconv(.winapi) HRESULT,
        get_ValidationTimestamp: *const fn(self: *anyopaque, _r: *DateTime) callconv(.winapi) HRESULT,
        put_ValidationTimestamp: *const fn(self: *anyopaque, value: DateTime) callconv(.winapi) HRESULT,
        get_RevocationCheckEnabled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_RevocationCheckEnabled: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_NetworkRetrievalEnabled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_NetworkRetrievalEnabled: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_AuthorityInformationAccessEnabled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_AuthorityInformationAccessEnabled: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_CurrentTimeValidationEnabled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_CurrentTimeValidationEnabled: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_ExclusiveTrustRoots: *const fn(self: *anyopaque, _r: **IVector(Certificate)) callconv(.winapi) HRESULT,
    };
};
pub const IChainValidationParameters = extern struct {
    vtable: *const VTable,
    pub fn getCertificateChainPolicy(self: *@This()) core.HResult!CertificateChainPolicy {
        var _r: CertificateChainPolicy = undefined;
        const _c = self.vtable.get_CertificateChainPolicy(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putCertificateChainPolicy(self: *@This(), value: CertificateChainPolicy) core.HResult!void {
        const _c = self.vtable.put_CertificateChainPolicy(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getServerDnsName(self: *@This()) core.HResult!*HostName {
        var _r: *HostName = undefined;
        const _c = self.vtable.get_ServerDnsName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putServerDnsName(self: *@This(), value: *HostName) core.HResult!void {
        const _c = self.vtable.put_ServerDnsName(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Security.Cryptography.Certificates.IChainValidationParameters";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c4743b4a-7eb0-4b56-a040-b9c8e655ddf3";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_CertificateChainPolicy: *const fn(self: *anyopaque, _r: *CertificateChainPolicy) callconv(.winapi) HRESULT,
        put_CertificateChainPolicy: *const fn(self: *anyopaque, value: CertificateChainPolicy) callconv(.winapi) HRESULT,
        get_ServerDnsName: *const fn(self: *anyopaque, _r: **HostName) callconv(.winapi) HRESULT,
        put_ServerDnsName: *const fn(self: *anyopaque, value: *HostName) callconv(.winapi) HRESULT,
    };
};
pub const ICmsAttachedSignature = extern struct {
    vtable: *const VTable,
    pub fn getCertificates(self: *@This()) core.HResult!*IVectorView(Certificate) {
        var _r: *IVectorView(Certificate) = undefined;
        const _c = self.vtable.get_Certificates(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getContent(self: *@This()) core.HResult![*]u8 {
        var _r: [*]u8 = undefined;
        const _c = self.vtable.get_Content(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSigners(self: *@This()) core.HResult!*IVectorView(CmsSignerInfo) {
        var _r: *IVectorView(CmsSignerInfo) = undefined;
        const _c = self.vtable.get_Signers(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn VerifySignature(self: *@This()) core.HResult!SignatureValidationResult {
        var _r: SignatureValidationResult = undefined;
        const _c = self.vtable.VerifySignature(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Security.Cryptography.Certificates.ICmsAttachedSignature";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "61899d9d-3757-4ecb-bddc-0ca357d7a936";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Certificates: *const fn(self: *anyopaque, _r: **IVectorView(Certificate)) callconv(.winapi) HRESULT,
        get_Content: *const fn(self: *anyopaque, _r: *[*]u8) callconv(.winapi) HRESULT,
        get_Signers: *const fn(self: *anyopaque, _r: **IVectorView(CmsSignerInfo)) callconv(.winapi) HRESULT,
        VerifySignature: *const fn(self: *anyopaque, _r: *SignatureValidationResult) callconv(.winapi) HRESULT,
    };
};
pub const ICmsAttachedSignatureFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateCmsAttachedSignature(self: *@This(), inputBlob: *IBuffer) core.HResult!*CmsAttachedSignature {
        var _r: *CmsAttachedSignature = undefined;
        const _c = self.vtable.CreateCmsAttachedSignature(@ptrCast(self), inputBlob, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Security.Cryptography.Certificates.ICmsAttachedSignatureFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d0c8fc15-f757-4c64-a362-52cc1c77cffb";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateCmsAttachedSignature: *const fn(self: *anyopaque, inputBlob: *IBuffer, _r: **CmsAttachedSignature) callconv(.winapi) HRESULT,
    };
};
pub const ICmsAttachedSignatureStatics = extern struct {
    vtable: *const VTable,
    pub fn GenerateSignatureAsync(self: *@This(), data: *IBuffer, signers: *IIterable(CmsSignerInfo), certificates: *IIterable(Certificate)) core.HResult!*IAsyncOperation(IBuffer) {
        var _r: *IAsyncOperation(IBuffer) = undefined;
        const _c = self.vtable.GenerateSignatureAsync(@ptrCast(self), data, signers, certificates, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Security.Cryptography.Certificates.ICmsAttachedSignatureStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "87989c8e-b0ad-498d-a7f5-78b59bce4b36";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GenerateSignatureAsync: *const fn(self: *anyopaque, data: *IBuffer, signers: *IIterable(CmsSignerInfo), certificates: *IIterable(Certificate), _r: **IAsyncOperation(IBuffer)) callconv(.winapi) HRESULT,
    };
};
pub const ICmsDetachedSignature = extern struct {
    vtable: *const VTable,
    pub fn getCertificates(self: *@This()) core.HResult!*IVectorView(Certificate) {
        var _r: *IVectorView(Certificate) = undefined;
        const _c = self.vtable.get_Certificates(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSigners(self: *@This()) core.HResult!*IVectorView(CmsSignerInfo) {
        var _r: *IVectorView(CmsSignerInfo) = undefined;
        const _c = self.vtable.get_Signers(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn VerifySignatureAsync(self: *@This(), data: *IInputStream) core.HResult!*IAsyncOperation(SignatureValidationResult) {
        var _r: *IAsyncOperation(SignatureValidationResult) = undefined;
        const _c = self.vtable.VerifySignatureAsync(@ptrCast(self), data, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Security.Cryptography.Certificates.ICmsDetachedSignature";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "0f1ef154-f65e-4536-8339-5944081db2ca";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Certificates: *const fn(self: *anyopaque, _r: **IVectorView(Certificate)) callconv(.winapi) HRESULT,
        get_Signers: *const fn(self: *anyopaque, _r: **IVectorView(CmsSignerInfo)) callconv(.winapi) HRESULT,
        VerifySignatureAsync: *const fn(self: *anyopaque, data: *IInputStream, _r: **IAsyncOperation(SignatureValidationResult)) callconv(.winapi) HRESULT,
    };
};
pub const ICmsDetachedSignatureFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateCmsDetachedSignature(self: *@This(), inputBlob: *IBuffer) core.HResult!*CmsDetachedSignature {
        var _r: *CmsDetachedSignature = undefined;
        const _c = self.vtable.CreateCmsDetachedSignature(@ptrCast(self), inputBlob, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Security.Cryptography.Certificates.ICmsDetachedSignatureFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c4ab3503-ae7f-4387-ad19-00f150e48ebb";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateCmsDetachedSignature: *const fn(self: *anyopaque, inputBlob: *IBuffer, _r: **CmsDetachedSignature) callconv(.winapi) HRESULT,
    };
};
pub const ICmsDetachedSignatureStatics = extern struct {
    vtable: *const VTable,
    pub fn GenerateSignatureAsync(self: *@This(), data: *IInputStream, signers: *IIterable(CmsSignerInfo), certificates: *IIterable(Certificate)) core.HResult!*IAsyncOperation(IBuffer) {
        var _r: *IAsyncOperation(IBuffer) = undefined;
        const _c = self.vtable.GenerateSignatureAsync(@ptrCast(self), data, signers, certificates, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Security.Cryptography.Certificates.ICmsDetachedSignatureStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3d114cfd-bf9b-4682-9be6-91f57c053808";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GenerateSignatureAsync: *const fn(self: *anyopaque, data: *IInputStream, signers: *IIterable(CmsSignerInfo), certificates: *IIterable(Certificate), _r: **IAsyncOperation(IBuffer)) callconv(.winapi) HRESULT,
    };
};
pub const ICmsSignerInfo = extern struct {
    vtable: *const VTable,
    pub fn getCertificate(self: *@This()) core.HResult!*Certificate {
        var _r: *Certificate = undefined;
        const _c = self.vtable.get_Certificate(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putCertificate(self: *@This(), value: *Certificate) core.HResult!void {
        const _c = self.vtable.put_Certificate(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getHashAlgorithmName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_HashAlgorithmName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putHashAlgorithmName(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_HashAlgorithmName(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getTimestampInfo(self: *@This()) core.HResult!*CmsTimestampInfo {
        var _r: *CmsTimestampInfo = undefined;
        const _c = self.vtable.get_TimestampInfo(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Security.Cryptography.Certificates.ICmsSignerInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "50d020db-1d2f-4c1a-b5c5-d0188ff91f47";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Certificate: *const fn(self: *anyopaque, _r: **Certificate) callconv(.winapi) HRESULT,
        put_Certificate: *const fn(self: *anyopaque, value: *Certificate) callconv(.winapi) HRESULT,
        get_HashAlgorithmName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_HashAlgorithmName: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_TimestampInfo: *const fn(self: *anyopaque, _r: **CmsTimestampInfo) callconv(.winapi) HRESULT,
    };
};
pub const ICmsTimestampInfo = extern struct {
    vtable: *const VTable,
    pub fn getSigningCertificate(self: *@This()) core.HResult!*Certificate {
        var _r: *Certificate = undefined;
        const _c = self.vtable.get_SigningCertificate(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCertificates(self: *@This()) core.HResult!*IVectorView(Certificate) {
        var _r: *IVectorView(Certificate) = undefined;
        const _c = self.vtable.get_Certificates(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTimestamp(self: *@This()) core.HResult!DateTime {
        var _r: DateTime = undefined;
        const _c = self.vtable.get_Timestamp(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Security.Cryptography.Certificates.ICmsTimestampInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2f5f00f2-2c18-4f88-8435-c534086076f5";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_SigningCertificate: *const fn(self: *anyopaque, _r: **Certificate) callconv(.winapi) HRESULT,
        get_Certificates: *const fn(self: *anyopaque, _r: **IVectorView(Certificate)) callconv(.winapi) HRESULT,
        get_Timestamp: *const fn(self: *anyopaque, _r: *DateTime) callconv(.winapi) HRESULT,
    };
};
pub const IKeyAlgorithmNamesStatics = extern struct {
    vtable: *const VTable,
    pub fn getRsa(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Rsa(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDsa(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Dsa(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getEcdh256(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Ecdh256(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getEcdh384(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Ecdh384(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getEcdh521(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Ecdh521(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getEcdsa256(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Ecdsa256(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getEcdsa384(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Ecdsa384(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getEcdsa521(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Ecdsa521(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Security.Cryptography.Certificates.IKeyAlgorithmNamesStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "479065d7-7ac7-4581-8c3b-d07027140448";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Rsa: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Dsa: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Ecdh256: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Ecdh384: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Ecdh521: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Ecdsa256: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Ecdsa384: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Ecdsa521: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IKeyAlgorithmNamesStatics2 = extern struct {
    vtable: *const VTable,
    pub fn getEcdsa(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Ecdsa(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getEcdh(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Ecdh(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Security.Cryptography.Certificates.IKeyAlgorithmNamesStatics2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c99b5686-e1fd-4a4a-893d-a26f33dd8bb4";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Ecdsa: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Ecdh: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IKeyAttestationHelperStatics = extern struct {
    vtable: *const VTable,
    pub fn DecryptTpmAttestationCredentialAsync(self: *@This(), credential: HSTRING) core.HResult!*IAsyncOperation(HSTRING) {
        var _r: *IAsyncOperation(HSTRING) = undefined;
        const _c = self.vtable.DecryptTpmAttestationCredentialAsync(@ptrCast(self), credential, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetTpmAttestationCredentialId(self: *@This(), credential: HSTRING) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.GetTpmAttestationCredentialId(@ptrCast(self), credential, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Security.Cryptography.Certificates.IKeyAttestationHelperStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1648e246-f644-4326-88be-3af102d30e0c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        DecryptTpmAttestationCredentialAsync: *const fn(self: *anyopaque, credential: HSTRING, _r: **IAsyncOperation(HSTRING)) callconv(.winapi) HRESULT,
        GetTpmAttestationCredentialId: *const fn(self: *anyopaque, credential: HSTRING, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IKeyAttestationHelperStatics2 = extern struct {
    vtable: *const VTable,
    pub fn DecryptTpmAttestationCredentialAsync(self: *@This(), credential: HSTRING, containerName: HSTRING) core.HResult!*IAsyncOperation(HSTRING) {
        var _r: *IAsyncOperation(HSTRING) = undefined;
        const _c = self.vtable.DecryptTpmAttestationCredentialAsync(@ptrCast(self), credential, containerName, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Security.Cryptography.Certificates.IKeyAttestationHelperStatics2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "9c590b2c-a6c6-4a5e-9e64-e85d5279df97";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        DecryptTpmAttestationCredentialAsync: *const fn(self: *anyopaque, credential: HSTRING, containerName: HSTRING, _r: **IAsyncOperation(HSTRING)) callconv(.winapi) HRESULT,
    };
};
pub const IKeyStorageProviderNamesStatics = extern struct {
    vtable: *const VTable,
    pub fn getSoftwareKeyStorageProvider(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_SoftwareKeyStorageProvider(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSmartcardKeyStorageProvider(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_SmartcardKeyStorageProvider(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPlatformKeyStorageProvider(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_PlatformKeyStorageProvider(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Security.Cryptography.Certificates.IKeyStorageProviderNamesStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "af186ae0-5529-4602-bd94-0aab91957b5c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_SoftwareKeyStorageProvider: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_SmartcardKeyStorageProvider: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_PlatformKeyStorageProvider: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IKeyStorageProviderNamesStatics2 = extern struct {
    vtable: *const VTable,
    pub fn getPassportKeyStorageProvider(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_PassportKeyStorageProvider(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Security.Cryptography.Certificates.IKeyStorageProviderNamesStatics2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "262d743d-9c2e-41cc-8812-c4d971dd7c60";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_PassportKeyStorageProvider: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IPfxImportParameters = extern struct {
    vtable: *const VTable,
    pub fn getExportable(self: *@This()) core.HResult!ExportOption {
        var _r: ExportOption = undefined;
        const _c = self.vtable.get_Exportable(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putExportable(self: *@This(), value: ExportOption) core.HResult!void {
        const _c = self.vtable.put_Exportable(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getKeyProtectionLevel(self: *@This()) core.HResult!KeyProtectionLevel {
        var _r: KeyProtectionLevel = undefined;
        const _c = self.vtable.get_KeyProtectionLevel(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putKeyProtectionLevel(self: *@This(), value: KeyProtectionLevel) core.HResult!void {
        const _c = self.vtable.put_KeyProtectionLevel(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getInstallOptions(self: *@This()) core.HResult!InstallOptions {
        var _r: InstallOptions = undefined;
        const _c = self.vtable.get_InstallOptions(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putInstallOptions(self: *@This(), value: InstallOptions) core.HResult!void {
        const _c = self.vtable.put_InstallOptions(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getFriendlyName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_FriendlyName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putFriendlyName(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_FriendlyName(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getKeyStorageProviderName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_KeyStorageProviderName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putKeyStorageProviderName(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_KeyStorageProviderName(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getContainerNamePrefix(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ContainerNamePrefix(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putContainerNamePrefix(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_ContainerNamePrefix(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getReaderName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ReaderName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putReaderName(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_ReaderName(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Security.Cryptography.Certificates.IPfxImportParameters";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "680d3511-9a08-47c8-864a-2edd4d8eb46c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Exportable: *const fn(self: *anyopaque, _r: *ExportOption) callconv(.winapi) HRESULT,
        put_Exportable: *const fn(self: *anyopaque, value: ExportOption) callconv(.winapi) HRESULT,
        get_KeyProtectionLevel: *const fn(self: *anyopaque, _r: *KeyProtectionLevel) callconv(.winapi) HRESULT,
        put_KeyProtectionLevel: *const fn(self: *anyopaque, value: KeyProtectionLevel) callconv(.winapi) HRESULT,
        get_InstallOptions: *const fn(self: *anyopaque, _r: *InstallOptions) callconv(.winapi) HRESULT,
        put_InstallOptions: *const fn(self: *anyopaque, value: InstallOptions) callconv(.winapi) HRESULT,
        get_FriendlyName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_FriendlyName: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_KeyStorageProviderName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_KeyStorageProviderName: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_ContainerNamePrefix: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_ContainerNamePrefix: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_ReaderName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_ReaderName: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IStandardCertificateStoreNamesStatics = extern struct {
    vtable: *const VTable,
    pub fn getPersonal(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Personal(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTrustedRootCertificationAuthorities(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_TrustedRootCertificationAuthorities(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIntermediateCertificationAuthorities(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_IntermediateCertificationAuthorities(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Security.Cryptography.Certificates.IStandardCertificateStoreNamesStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "0c154adb-a496-41f8-8fe5-9e96f36efbf8";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Personal: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_TrustedRootCertificationAuthorities: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_IntermediateCertificationAuthorities: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const ISubjectAlternativeNameInfo = extern struct {
    vtable: *const VTable,
    pub fn getEmailName(self: *@This()) core.HResult!*IVectorView(HSTRING) {
        var _r: *IVectorView(HSTRING) = undefined;
        const _c = self.vtable.get_EmailName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIPAddress(self: *@This()) core.HResult!*IVectorView(HSTRING) {
        var _r: *IVectorView(HSTRING) = undefined;
        const _c = self.vtable.get_IPAddress(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getUrl(self: *@This()) core.HResult!*IVectorView(HSTRING) {
        var _r: *IVectorView(HSTRING) = undefined;
        const _c = self.vtable.get_Url(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDnsName(self: *@This()) core.HResult!*IVectorView(HSTRING) {
        var _r: *IVectorView(HSTRING) = undefined;
        const _c = self.vtable.get_DnsName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDistinguishedName(self: *@This()) core.HResult!*IVectorView(HSTRING) {
        var _r: *IVectorView(HSTRING) = undefined;
        const _c = self.vtable.get_DistinguishedName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPrincipalName(self: *@This()) core.HResult!*IVectorView(HSTRING) {
        var _r: *IVectorView(HSTRING) = undefined;
        const _c = self.vtable.get_PrincipalName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Security.Cryptography.Certificates.ISubjectAlternativeNameInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "582859f1-569d-4c20-be7b-4e1c9a0bc52b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_EmailName: *const fn(self: *anyopaque, _r: **IVectorView(HSTRING)) callconv(.winapi) HRESULT,
        get_IPAddress: *const fn(self: *anyopaque, _r: **IVectorView(HSTRING)) callconv(.winapi) HRESULT,
        get_Url: *const fn(self: *anyopaque, _r: **IVectorView(HSTRING)) callconv(.winapi) HRESULT,
        get_DnsName: *const fn(self: *anyopaque, _r: **IVectorView(HSTRING)) callconv(.winapi) HRESULT,
        get_DistinguishedName: *const fn(self: *anyopaque, _r: **IVectorView(HSTRING)) callconv(.winapi) HRESULT,
        get_PrincipalName: *const fn(self: *anyopaque, _r: **IVectorView(HSTRING)) callconv(.winapi) HRESULT,
    };
};
pub const ISubjectAlternativeNameInfo2 = extern struct {
    vtable: *const VTable,
    pub fn getEmailNames(self: *@This()) core.HResult!*IVector(HSTRING) {
        var _r: *IVector(HSTRING) = undefined;
        const _c = self.vtable.get_EmailNames(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIPAddresses(self: *@This()) core.HResult!*IVector(HSTRING) {
        var _r: *IVector(HSTRING) = undefined;
        const _c = self.vtable.get_IPAddresses(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getUrls(self: *@This()) core.HResult!*IVector(HSTRING) {
        var _r: *IVector(HSTRING) = undefined;
        const _c = self.vtable.get_Urls(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDnsNames(self: *@This()) core.HResult!*IVector(HSTRING) {
        var _r: *IVector(HSTRING) = undefined;
        const _c = self.vtable.get_DnsNames(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDistinguishedNames(self: *@This()) core.HResult!*IVector(HSTRING) {
        var _r: *IVector(HSTRING) = undefined;
        const _c = self.vtable.get_DistinguishedNames(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPrincipalNames(self: *@This()) core.HResult!*IVector(HSTRING) {
        var _r: *IVector(HSTRING) = undefined;
        const _c = self.vtable.get_PrincipalNames(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getExtension(self: *@This()) core.HResult!*CertificateExtension {
        var _r: *CertificateExtension = undefined;
        const _c = self.vtable.get_Extension(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Security.Cryptography.Certificates.ISubjectAlternativeNameInfo2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "437a78c6-1c51-41ea-b34a-3d654398a370";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_EmailNames: *const fn(self: *anyopaque, _r: **IVector(HSTRING)) callconv(.winapi) HRESULT,
        get_IPAddresses: *const fn(self: *anyopaque, _r: **IVector(HSTRING)) callconv(.winapi) HRESULT,
        get_Urls: *const fn(self: *anyopaque, _r: **IVector(HSTRING)) callconv(.winapi) HRESULT,
        get_DnsNames: *const fn(self: *anyopaque, _r: **IVector(HSTRING)) callconv(.winapi) HRESULT,
        get_DistinguishedNames: *const fn(self: *anyopaque, _r: **IVector(HSTRING)) callconv(.winapi) HRESULT,
        get_PrincipalNames: *const fn(self: *anyopaque, _r: **IVector(HSTRING)) callconv(.winapi) HRESULT,
        get_Extension: *const fn(self: *anyopaque, _r: **CertificateExtension) callconv(.winapi) HRESULT,
    };
};
pub const IUserCertificateEnrollmentManager = extern struct {
    vtable: *const VTable,
    pub fn CreateRequestAsync(self: *@This(), request: *CertificateRequestProperties) core.HResult!*IAsyncOperation(HSTRING) {
        var _r: *IAsyncOperation(HSTRING) = undefined;
        const _c = self.vtable.CreateRequestAsync(@ptrCast(self), request, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn InstallCertificateAsync(self: *@This(), certificate: HSTRING, installOption: InstallOptions) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.InstallCertificateAsync(@ptrCast(self), certificate, installOption, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ImportPfxDataAsync(self: *@This(), pfxData: HSTRING, password: HSTRING, exportable: ExportOption, keyProtectionLevel: KeyProtectionLevel, installOption: InstallOptions, friendlyName: HSTRING) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.ImportPfxDataAsync(@ptrCast(self), pfxData, password, exportable, keyProtectionLevel, installOption, friendlyName, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ImportPfxDataAsyncWithPasswordWithExportableWithKeyProtectionLevelWithInstallOptionWithFriendlyNameWithKeyStorageProvider(self: *@This(), pfxData: HSTRING, password: HSTRING, exportable: ExportOption, keyProtectionLevel: KeyProtectionLevel, installOption: InstallOptions, friendlyName: HSTRING, keyStorageProvider: HSTRING) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.ImportPfxDataAsyncWithPasswordWithExportableWithKeyProtectionLevelWithInstallOptionWithFriendlyNameWithKeyStorageProvider(@ptrCast(self), pfxData, password, exportable, keyProtectionLevel, installOption, friendlyName, keyStorageProvider, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Security.Cryptography.Certificates.IUserCertificateEnrollmentManager";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "96313718-22e1-4819-b20b-ab46a6eca06e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateRequestAsync: *const fn(self: *anyopaque, request: *CertificateRequestProperties, _r: **IAsyncOperation(HSTRING)) callconv(.winapi) HRESULT,
        InstallCertificateAsync: *const fn(self: *anyopaque, certificate: HSTRING, installOption: InstallOptions, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        ImportPfxDataAsync: *const fn(self: *anyopaque, pfxData: HSTRING, password: HSTRING, exportable: ExportOption, keyProtectionLevel: KeyProtectionLevel, installOption: InstallOptions, friendlyName: HSTRING, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        ImportPfxDataAsyncWithPasswordWithExportableWithKeyProtectionLevelWithInstallOptionWithFriendlyNameWithKeyStorageProvider: *const fn(self: *anyopaque, pfxData: HSTRING, password: HSTRING, exportable: ExportOption, keyProtectionLevel: KeyProtectionLevel, installOption: InstallOptions, friendlyName: HSTRING, keyStorageProvider: HSTRING, _r: **IAsyncAction) callconv(.winapi) HRESULT,
    };
};
pub const IUserCertificateEnrollmentManager2 = extern struct {
    vtable: *const VTable,
    pub fn ImportPfxDataAsync(self: *@This(), pfxData: HSTRING, password: HSTRING, pfxImportParameters: *PfxImportParameters) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.ImportPfxDataAsync(@ptrCast(self), pfxData, password, pfxImportParameters, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Security.Cryptography.Certificates.IUserCertificateEnrollmentManager2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "0dad9cb1-65de-492a-b86d-fc5c482c3747";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        ImportPfxDataAsync: *const fn(self: *anyopaque, pfxData: HSTRING, password: HSTRING, pfxImportParameters: *PfxImportParameters, _r: **IAsyncAction) callconv(.winapi) HRESULT,
    };
};
pub const IUserCertificateStore = extern struct {
    vtable: *const VTable,
    pub fn RequestAddAsync(self: *@This(), certificate: *Certificate) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.RequestAddAsync(@ptrCast(self), certificate, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RequestDeleteAsync(self: *@This(), certificate: *Certificate) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.RequestDeleteAsync(@ptrCast(self), certificate, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Name(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Security.Cryptography.Certificates.IUserCertificateStore";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c9fb1d83-789f-4b4e-9180-045a757aac6d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        RequestAddAsync: *const fn(self: *anyopaque, certificate: *Certificate, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
        RequestDeleteAsync: *const fn(self: *anyopaque, certificate: *Certificate, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
        get_Name: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const InstallOptions = enum(i32) {
    None = 0,
    DeleteExpired = 1,
};
pub const KeyAlgorithmNames = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn get_Rsa() core.HResult!HSTRING {
        const factory = @This().IKeyAlgorithmNamesStaticsCache.get();
        return try factory.getRsa();
    }
    pub fn get_Dsa() core.HResult!HSTRING {
        const factory = @This().IKeyAlgorithmNamesStaticsCache.get();
        return try factory.getDsa();
    }
    pub fn get_Ecdh256() core.HResult!HSTRING {
        const factory = @This().IKeyAlgorithmNamesStaticsCache.get();
        return try factory.getEcdh256();
    }
    pub fn get_Ecdh384() core.HResult!HSTRING {
        const factory = @This().IKeyAlgorithmNamesStaticsCache.get();
        return try factory.getEcdh384();
    }
    pub fn get_Ecdh521() core.HResult!HSTRING {
        const factory = @This().IKeyAlgorithmNamesStaticsCache.get();
        return try factory.getEcdh521();
    }
    pub fn get_Ecdsa256() core.HResult!HSTRING {
        const factory = @This().IKeyAlgorithmNamesStaticsCache.get();
        return try factory.getEcdsa256();
    }
    pub fn get_Ecdsa384() core.HResult!HSTRING {
        const factory = @This().IKeyAlgorithmNamesStaticsCache.get();
        return try factory.getEcdsa384();
    }
    pub fn get_Ecdsa521() core.HResult!HSTRING {
        const factory = @This().IKeyAlgorithmNamesStaticsCache.get();
        return try factory.getEcdsa521();
    }
    pub fn get_Ecdsa() core.HResult!HSTRING {
        const factory = @This().IKeyAlgorithmNamesStatics2Cache.get();
        return try factory.getEcdsa();
    }
    pub fn get_Ecdh() core.HResult!HSTRING {
        const factory = @This().IKeyAlgorithmNamesStatics2Cache.get();
        return try factory.getEcdh();
    }
    pub const NAME: []const u8 = "Windows.Security.Cryptography.Certificates.KeyAlgorithmNames";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _IKeyAlgorithmNamesStaticsCache: FactoryCache(IKeyAlgorithmNamesStatics, RUNTIME_NAME) = .{};
    var _IKeyAlgorithmNamesStatics2Cache: FactoryCache(IKeyAlgorithmNamesStatics2, RUNTIME_NAME) = .{};
};
pub const KeyAttestationHelper = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn DecryptTpmAttestationCredentialAsyncWithContainerName(credential: HSTRING, containerName: HSTRING) core.HResult!*IAsyncOperation(HSTRING) {
        const factory = @This().IKeyAttestationHelperStatics2Cache.get();
        return try factory.DecryptTpmAttestationCredentialAsync(credential, containerName);
    }
    pub fn DecryptTpmAttestationCredentialAsync(credential: HSTRING) core.HResult!*IAsyncOperation(HSTRING) {
        const factory = @This().IKeyAttestationHelperStaticsCache.get();
        return try factory.DecryptTpmAttestationCredentialAsync(credential);
    }
    pub fn GetTpmAttestationCredentialId(credential: HSTRING) core.HResult!HSTRING {
        const factory = @This().IKeyAttestationHelperStaticsCache.get();
        return try factory.GetTpmAttestationCredentialId(credential);
    }
    pub const NAME: []const u8 = "Windows.Security.Cryptography.Certificates.KeyAttestationHelper";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _IKeyAttestationHelperStatics2Cache: FactoryCache(IKeyAttestationHelperStatics2, RUNTIME_NAME) = .{};
    var _IKeyAttestationHelperStaticsCache: FactoryCache(IKeyAttestationHelperStatics, RUNTIME_NAME) = .{};
};
pub const KeyProtectionLevel = enum(i32) {
    NoConsent = 0,
    ConsentOnly = 1,
    ConsentWithPassword = 2,
    ConsentWithFingerprint = 3,
};
pub const KeySize = enum(i32) {
    Invalid = 0,
    Rsa2048 = 2048,
    Rsa4096 = 4096,
};
pub const KeyStorageProviderNames = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn get_PassportKeyStorageProvider() core.HResult!HSTRING {
        const factory = @This().IKeyStorageProviderNamesStatics2Cache.get();
        return try factory.getPassportKeyStorageProvider();
    }
    pub fn get_SoftwareKeyStorageProvider() core.HResult!HSTRING {
        const factory = @This().IKeyStorageProviderNamesStaticsCache.get();
        return try factory.getSoftwareKeyStorageProvider();
    }
    pub fn get_SmartcardKeyStorageProvider() core.HResult!HSTRING {
        const factory = @This().IKeyStorageProviderNamesStaticsCache.get();
        return try factory.getSmartcardKeyStorageProvider();
    }
    pub fn get_PlatformKeyStorageProvider() core.HResult!HSTRING {
        const factory = @This().IKeyStorageProviderNamesStaticsCache.get();
        return try factory.getPlatformKeyStorageProvider();
    }
    pub const NAME: []const u8 = "Windows.Security.Cryptography.Certificates.KeyStorageProviderNames";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _IKeyStorageProviderNamesStatics2Cache: FactoryCache(IKeyStorageProviderNamesStatics2, RUNTIME_NAME) = .{};
    var _IKeyStorageProviderNamesStaticsCache: FactoryCache(IKeyStorageProviderNamesStatics, RUNTIME_NAME) = .{};
};
pub const PfxImportParameters = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getExportable(self: *@This()) core.HResult!ExportOption {
        const this: *IPfxImportParameters = @ptrCast(self);
        return try this.getExportable();
    }
    pub fn putExportable(self: *@This(), value: ExportOption) core.HResult!void {
        const this: *IPfxImportParameters = @ptrCast(self);
        return try this.putExportable(value);
    }
    pub fn getKeyProtectionLevel(self: *@This()) core.HResult!KeyProtectionLevel {
        const this: *IPfxImportParameters = @ptrCast(self);
        return try this.getKeyProtectionLevel();
    }
    pub fn putKeyProtectionLevel(self: *@This(), value: KeyProtectionLevel) core.HResult!void {
        const this: *IPfxImportParameters = @ptrCast(self);
        return try this.putKeyProtectionLevel(value);
    }
    pub fn getInstallOptions(self: *@This()) core.HResult!InstallOptions {
        const this: *IPfxImportParameters = @ptrCast(self);
        return try this.getInstallOptions();
    }
    pub fn putInstallOptions(self: *@This(), value: InstallOptions) core.HResult!void {
        const this: *IPfxImportParameters = @ptrCast(self);
        return try this.putInstallOptions(value);
    }
    pub fn getFriendlyName(self: *@This()) core.HResult!HSTRING {
        const this: *IPfxImportParameters = @ptrCast(self);
        return try this.getFriendlyName();
    }
    pub fn putFriendlyName(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IPfxImportParameters = @ptrCast(self);
        return try this.putFriendlyName(value);
    }
    pub fn getKeyStorageProviderName(self: *@This()) core.HResult!HSTRING {
        const this: *IPfxImportParameters = @ptrCast(self);
        return try this.getKeyStorageProviderName();
    }
    pub fn putKeyStorageProviderName(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IPfxImportParameters = @ptrCast(self);
        return try this.putKeyStorageProviderName(value);
    }
    pub fn getContainerNamePrefix(self: *@This()) core.HResult!HSTRING {
        const this: *IPfxImportParameters = @ptrCast(self);
        return try this.getContainerNamePrefix();
    }
    pub fn putContainerNamePrefix(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IPfxImportParameters = @ptrCast(self);
        return try this.putContainerNamePrefix(value);
    }
    pub fn getReaderName(self: *@This()) core.HResult!HSTRING {
        const this: *IPfxImportParameters = @ptrCast(self);
        return try this.getReaderName();
    }
    pub fn putReaderName(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IPfxImportParameters = @ptrCast(self);
        return try this.putReaderName(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IPfxImportParameters.IID)));
    }
    pub const NAME: []const u8 = "Windows.Security.Cryptography.Certificates.PfxImportParameters";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPfxImportParameters.GUID;
    pub const IID: Guid = IPfxImportParameters.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPfxImportParameters.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const SignatureValidationResult = enum(i32) {
    Success = 0,
    InvalidParameter = 1,
    BadMessage = 2,
    InvalidSignature = 3,
    OtherErrors = 4,
};
pub const StandardCertificateStoreNames = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn get_Personal() core.HResult!HSTRING {
        const factory = @This().IStandardCertificateStoreNamesStaticsCache.get();
        return try factory.getPersonal();
    }
    pub fn get_TrustedRootCertificationAuthorities() core.HResult!HSTRING {
        const factory = @This().IStandardCertificateStoreNamesStaticsCache.get();
        return try factory.getTrustedRootCertificationAuthorities();
    }
    pub fn get_IntermediateCertificationAuthorities() core.HResult!HSTRING {
        const factory = @This().IStandardCertificateStoreNamesStaticsCache.get();
        return try factory.getIntermediateCertificationAuthorities();
    }
    pub const NAME: []const u8 = "Windows.Security.Cryptography.Certificates.StandardCertificateStoreNames";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _IStandardCertificateStoreNamesStaticsCache: FactoryCache(IStandardCertificateStoreNamesStatics, RUNTIME_NAME) = .{};
};
pub const SubjectAlternativeNameInfo = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getEmailName(self: *@This()) core.HResult!*IVectorView(HSTRING) {
        const this: *ISubjectAlternativeNameInfo = @ptrCast(self);
        return try this.getEmailName();
    }
    pub fn getIPAddress(self: *@This()) core.HResult!*IVectorView(HSTRING) {
        const this: *ISubjectAlternativeNameInfo = @ptrCast(self);
        return try this.getIPAddress();
    }
    pub fn getUrl(self: *@This()) core.HResult!*IVectorView(HSTRING) {
        const this: *ISubjectAlternativeNameInfo = @ptrCast(self);
        return try this.getUrl();
    }
    pub fn getDnsName(self: *@This()) core.HResult!*IVectorView(HSTRING) {
        const this: *ISubjectAlternativeNameInfo = @ptrCast(self);
        return try this.getDnsName();
    }
    pub fn getDistinguishedName(self: *@This()) core.HResult!*IVectorView(HSTRING) {
        const this: *ISubjectAlternativeNameInfo = @ptrCast(self);
        return try this.getDistinguishedName();
    }
    pub fn getPrincipalName(self: *@This()) core.HResult!*IVectorView(HSTRING) {
        const this: *ISubjectAlternativeNameInfo = @ptrCast(self);
        return try this.getPrincipalName();
    }
    pub fn getEmailNames(self: *@This()) core.HResult!*IVector(HSTRING) {
        var this: ?*ISubjectAlternativeNameInfo2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISubjectAlternativeNameInfo2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getEmailNames();
    }
    pub fn getIPAddresses(self: *@This()) core.HResult!*IVector(HSTRING) {
        var this: ?*ISubjectAlternativeNameInfo2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISubjectAlternativeNameInfo2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIPAddresses();
    }
    pub fn getUrls(self: *@This()) core.HResult!*IVector(HSTRING) {
        var this: ?*ISubjectAlternativeNameInfo2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISubjectAlternativeNameInfo2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getUrls();
    }
    pub fn getDnsNames(self: *@This()) core.HResult!*IVector(HSTRING) {
        var this: ?*ISubjectAlternativeNameInfo2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISubjectAlternativeNameInfo2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getDnsNames();
    }
    pub fn getDistinguishedNames(self: *@This()) core.HResult!*IVector(HSTRING) {
        var this: ?*ISubjectAlternativeNameInfo2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISubjectAlternativeNameInfo2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getDistinguishedNames();
    }
    pub fn getPrincipalNames(self: *@This()) core.HResult!*IVector(HSTRING) {
        var this: ?*ISubjectAlternativeNameInfo2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISubjectAlternativeNameInfo2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getPrincipalNames();
    }
    pub fn getExtension(self: *@This()) core.HResult!*CertificateExtension {
        var this: ?*ISubjectAlternativeNameInfo2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISubjectAlternativeNameInfo2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getExtension();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&ISubjectAlternativeNameInfo.IID)));
    }
    pub const NAME: []const u8 = "Windows.Security.Cryptography.Certificates.SubjectAlternativeNameInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISubjectAlternativeNameInfo.GUID;
    pub const IID: Guid = ISubjectAlternativeNameInfo.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISubjectAlternativeNameInfo.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const UserCertificateEnrollmentManager = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn CreateRequestAsync(self: *@This(), request: *CertificateRequestProperties) core.HResult!*IAsyncOperation(HSTRING) {
        const this: *IUserCertificateEnrollmentManager = @ptrCast(self);
        return try this.CreateRequestAsync(request);
    }
    pub fn InstallCertificateAsync(self: *@This(), certificate: HSTRING, installOption: InstallOptions) core.HResult!*IAsyncAction {
        const this: *IUserCertificateEnrollmentManager = @ptrCast(self);
        return try this.InstallCertificateAsync(certificate, installOption);
    }
    pub fn ImportPfxDataAsyncWithKeyProtectionLevelWithInstallOptionWithFriendlyName(self: *@This(), pfxData: HSTRING, password: HSTRING, exportable: ExportOption, keyProtectionLevel: KeyProtectionLevel, installOption: InstallOptions, friendlyName: HSTRING) core.HResult!*IAsyncAction {
        var this: ?*IUserCertificateEnrollmentManager2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IUserCertificateEnrollmentManager2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ImportPfxDataAsyncWithKeyProtectionLevelWithInstallOptionWithFriendlyName(pfxData, password, exportable, keyProtectionLevel, installOption, friendlyName);
    }
    pub fn ImportPfxDataAsyncWithInstallOptionWithFriendlyNameWithKeyStorageProvider(self: *@This(), pfxData: HSTRING, password: HSTRING, exportable: ExportOption, keyProtectionLevel: KeyProtectionLevel, installOption: InstallOptions, friendlyName: HSTRING, keyStorageProvider: HSTRING) core.HResult!*IAsyncAction {
        var this: ?*IUserCertificateEnrollmentManager2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IUserCertificateEnrollmentManager2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ImportPfxDataAsyncWithInstallOptionWithFriendlyNameWithKeyStorageProvider(pfxData, password, exportable, keyProtectionLevel, installOption, friendlyName, keyStorageProvider);
    }
    pub fn ImportPfxDataAsync(self: *@This(), pfxData: HSTRING, password: HSTRING, pfxImportParameters: *PfxImportParameters) core.HResult!*IAsyncAction {
        var this: ?*IUserCertificateEnrollmentManager2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IUserCertificateEnrollmentManager2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ImportPfxDataAsync(pfxData, password, pfxImportParameters);
    }
    pub const NAME: []const u8 = "Windows.Security.Cryptography.Certificates.UserCertificateEnrollmentManager";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IUserCertificateEnrollmentManager.GUID;
    pub const IID: Guid = IUserCertificateEnrollmentManager.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IUserCertificateEnrollmentManager.SIGNATURE);
};
pub const UserCertificateStore = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn RequestAddAsync(self: *@This(), certificate: *Certificate) core.HResult!*IAsyncOperation(bool) {
        const this: *IUserCertificateStore = @ptrCast(self);
        return try this.RequestAddAsync(certificate);
    }
    pub fn RequestDeleteAsync(self: *@This(), certificate: *Certificate) core.HResult!*IAsyncOperation(bool) {
        const this: *IUserCertificateStore = @ptrCast(self);
        return try this.RequestDeleteAsync(certificate);
    }
    pub fn getName(self: *@This()) core.HResult!HSTRING {
        const this: *IUserCertificateStore = @ptrCast(self);
        return try this.getName();
    }
    pub const NAME: []const u8 = "Windows.Security.Cryptography.Certificates.UserCertificateStore";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IUserCertificateStore.GUID;
    pub const IID: Guid = IUserCertificateStore.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IUserCertificateStore.SIGNATURE);
};
const IUnknown = @import("../../root.zig").IUnknown;
const IActivationFactory = @import("../../Foundation.zig").IActivationFactory;
const Guid = @import("../../root.zig").Guid;
const IVectorView = @import("../../Foundation/Collections.zig").IVectorView;
const IVector = @import("../../Foundation/Collections.zig").IVector;
const IBuffer = @import("../../Storage/Streams.zig").IBuffer;
const IInputStream = @import("../../Storage/Streams.zig").IInputStream;
const DateTime = @import("../../Foundation.zig").DateTime;
const FactoryCache = @import("../../core.zig").FactoryCache;
const TrustLevel = @import("../../root.zig").TrustLevel;
const HSTRING = @import("../../root.zig").HSTRING;
const IIterable = @import("../../Foundation/Collections.zig").IIterable;
const IInspectable = @import("../../Foundation.zig").IInspectable;
const HRESULT = @import("../../root.zig").HRESULT;
const IAsyncOperation = @import("../../Foundation.zig").IAsyncOperation;
const core = @import("../../root.zig").core;
const HostName = @import("../../Networking.zig").HostName;
const IAsyncAction = @import("../../Foundation.zig").IAsyncAction;
