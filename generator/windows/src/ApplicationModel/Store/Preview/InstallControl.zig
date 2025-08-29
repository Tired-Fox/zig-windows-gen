pub const AppInstallItem = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getProductId(self: *@This()) core.HResult!HSTRING {
        const this: *IAppInstallItem = @ptrCast(self);
        return try this.getProductId();
    }
    pub fn getPackageFamilyName(self: *@This()) core.HResult!HSTRING {
        const this: *IAppInstallItem = @ptrCast(self);
        return try this.getPackageFamilyName();
    }
    pub fn getInstallType(self: *@This()) core.HResult!AppInstallType {
        const this: *IAppInstallItem = @ptrCast(self);
        return try this.getInstallType();
    }
    pub fn getIsUserInitiated(self: *@This()) core.HResult!bool {
        const this: *IAppInstallItem = @ptrCast(self);
        return try this.getIsUserInitiated();
    }
    pub fn GetCurrentStatus(self: *@This()) core.HResult!*AppInstallStatus {
        const this: *IAppInstallItem = @ptrCast(self);
        return try this.GetCurrentStatus();
    }
    pub fn Cancel(self: *@This()) core.HResult!void {
        var this: ?*IAppInstallItem2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppInstallItem2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Cancel();
    }
    pub fn Pause(self: *@This()) core.HResult!void {
        var this: ?*IAppInstallItem2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppInstallItem2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Pause();
    }
    pub fn Restart(self: *@This()) core.HResult!void {
        var this: ?*IAppInstallItem2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppInstallItem2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Restart();
    }
    pub fn addCompleted(self: *@This(), handler: *TypedEventHandler(AppInstallItem,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *IAppInstallItem = @ptrCast(self);
        return try this.addCompleted(handler);
    }
    pub fn removeCompleted(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IAppInstallItem = @ptrCast(self);
        return try this.removeCompleted(token);
    }
    pub fn addStatusChanged(self: *@This(), handler: *TypedEventHandler(AppInstallItem,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *IAppInstallItem = @ptrCast(self);
        return try this.addStatusChanged(handler);
    }
    pub fn removeStatusChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IAppInstallItem = @ptrCast(self);
        return try this.removeStatusChanged(token);
    }
    pub fn Cancel(self: *@This(), correlationVector: HSTRING) core.HResult!void {
        var this: ?*IAppInstallItem2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppInstallItem2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Cancel(correlationVector);
    }
    pub fn Pause(self: *@This(), correlationVector: HSTRING) core.HResult!void {
        var this: ?*IAppInstallItem2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppInstallItem2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Pause(correlationVector);
    }
    pub fn Restart(self: *@This(), correlationVector: HSTRING) core.HResult!void {
        var this: ?*IAppInstallItem2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppInstallItem2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Restart(correlationVector);
    }
    pub fn getChildren(self: *@This()) core.HResult!*IVectorView(AppInstallItem) {
        var this: ?*IAppInstallItem3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppInstallItem3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getChildren();
    }
    pub fn getItemOperationsMightAffectOtherItems(self: *@This()) core.HResult!bool {
        var this: ?*IAppInstallItem3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppInstallItem3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getItemOperationsMightAffectOtherItems();
    }
    pub fn getLaunchAfterInstall(self: *@This()) core.HResult!bool {
        var this: ?*IAppInstallItem4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppInstallItem4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getLaunchAfterInstall();
    }
    pub fn putLaunchAfterInstall(self: *@This(), value: bool) core.HResult!void {
        var this: ?*IAppInstallItem4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppInstallItem4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putLaunchAfterInstall(value);
    }
    pub fn getPinToDesktopAfterInstall(self: *@This()) core.HResult!bool {
        var this: ?*IAppInstallItem5 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppInstallItem5.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getPinToDesktopAfterInstall();
    }
    pub fn putPinToDesktopAfterInstall(self: *@This(), value: bool) core.HResult!void {
        var this: ?*IAppInstallItem5 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppInstallItem5.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putPinToDesktopAfterInstall(value);
    }
    pub fn getPinToStartAfterInstall(self: *@This()) core.HResult!bool {
        var this: ?*IAppInstallItem5 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppInstallItem5.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getPinToStartAfterInstall();
    }
    pub fn putPinToStartAfterInstall(self: *@This(), value: bool) core.HResult!void {
        var this: ?*IAppInstallItem5 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppInstallItem5.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putPinToStartAfterInstall(value);
    }
    pub fn getPinToTaskbarAfterInstall(self: *@This()) core.HResult!bool {
        var this: ?*IAppInstallItem5 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppInstallItem5.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getPinToTaskbarAfterInstall();
    }
    pub fn putPinToTaskbarAfterInstall(self: *@This(), value: bool) core.HResult!void {
        var this: ?*IAppInstallItem5 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppInstallItem5.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putPinToTaskbarAfterInstall(value);
    }
    pub fn getCompletedInstallToastNotificationMode(self: *@This()) core.HResult!AppInstallationToastNotificationMode {
        var this: ?*IAppInstallItem5 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppInstallItem5.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getCompletedInstallToastNotificationMode();
    }
    pub fn putCompletedInstallToastNotificationMode(self: *@This(), value: AppInstallationToastNotificationMode) core.HResult!void {
        var this: ?*IAppInstallItem5 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppInstallItem5.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putCompletedInstallToastNotificationMode(value);
    }
    pub fn getInstallInProgressToastNotificationMode(self: *@This()) core.HResult!AppInstallationToastNotificationMode {
        var this: ?*IAppInstallItem5 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppInstallItem5.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getInstallInProgressToastNotificationMode();
    }
    pub fn putInstallInProgressToastNotificationMode(self: *@This(), value: AppInstallationToastNotificationMode) core.HResult!void {
        var this: ?*IAppInstallItem5 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppInstallItem5.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putInstallInProgressToastNotificationMode(value);
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Store.Preview.InstallControl.AppInstallItem";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAppInstallItem.GUID;
    pub const IID: Guid = IAppInstallItem.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAppInstallItem.SIGNATURE);
};
pub const AppInstallManager = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getAppInstallItems(self: *@This()) core.HResult!*IVectorView(AppInstallItem) {
        const this: *IAppInstallManager = @ptrCast(self);
        return try this.getAppInstallItems();
    }
    pub fn Cancel(self: *@This(), productId: HSTRING) core.HResult!void {
        var this: ?*IAppInstallManager2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppInstallManager2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Cancel(productId);
    }
    pub fn Pause(self: *@This(), productId: HSTRING) core.HResult!void {
        var this: ?*IAppInstallManager2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppInstallManager2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Pause(productId);
    }
    pub fn Restart(self: *@This(), productId: HSTRING) core.HResult!void {
        var this: ?*IAppInstallManager2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppInstallManager2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Restart(productId);
    }
    pub fn addItemCompleted(self: *@This(), handler: *TypedEventHandler(AppInstallManager,AppInstallManagerItemEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IAppInstallManager = @ptrCast(self);
        return try this.addItemCompleted(handler);
    }
    pub fn removeItemCompleted(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IAppInstallManager = @ptrCast(self);
        return try this.removeItemCompleted(token);
    }
    pub fn addItemStatusChanged(self: *@This(), handler: *TypedEventHandler(AppInstallManager,AppInstallManagerItemEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IAppInstallManager = @ptrCast(self);
        return try this.addItemStatusChanged(handler);
    }
    pub fn removeItemStatusChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IAppInstallManager = @ptrCast(self);
        return try this.removeItemStatusChanged(token);
    }
    pub fn getAutoUpdateSetting(self: *@This()) core.HResult!AutoUpdateSetting {
        const this: *IAppInstallManager = @ptrCast(self);
        return try this.getAutoUpdateSetting();
    }
    pub fn putAutoUpdateSetting(self: *@This(), value: AutoUpdateSetting) core.HResult!void {
        const this: *IAppInstallManager = @ptrCast(self);
        return try this.putAutoUpdateSetting(value);
    }
    pub fn getAcquisitionIdentity(self: *@This()) core.HResult!HSTRING {
        const this: *IAppInstallManager = @ptrCast(self);
        return try this.getAcquisitionIdentity();
    }
    pub fn putAcquisitionIdentity(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IAppInstallManager = @ptrCast(self);
        return try this.putAcquisitionIdentity(value);
    }
    pub fn GetIsApplicableAsync(self: *@This(), productId: HSTRING, skuId: HSTRING) core.HResult!*IAsyncOperation(bool) {
        const this: *IAppInstallManager = @ptrCast(self);
        return try this.GetIsApplicableAsync(productId, skuId);
    }
    pub fn StartAppInstallAsync(self: *@This(), productId: HSTRING, skuId: HSTRING, repair: bool, forceUseOfNonRemovableStorage: bool) core.HResult!*IAsyncOperation(AppInstallItem) {
        var this: ?*IAppInstallManager2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppInstallManager2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.StartAppInstallAsync(productId, skuId, repair, forceUseOfNonRemovableStorage);
    }
    pub fn UpdateAppByPackageFamilyNameAsync(self: *@This(), packageFamilyName: HSTRING) core.HResult!*IAsyncOperation(AppInstallItem) {
        var this: ?*IAppInstallManager2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppInstallManager2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.UpdateAppByPackageFamilyNameAsync(packageFamilyName);
    }
    pub fn SearchForUpdatesAsync(self: *@This(), productId: HSTRING, skuId: HSTRING) core.HResult!*IAsyncOperation(AppInstallItem) {
        var this: ?*IAppInstallManager6 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppInstallManager6.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.SearchForUpdatesAsync(productId, skuId);
    }
    pub fn SearchForAllUpdatesAsync(self: *@This()) core.HResult!*IAsyncOperation(IVectorView(AppInstallItem)) {
        var this: ?*IAppInstallManager6 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppInstallManager6.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.SearchForAllUpdatesAsync();
    }
    pub fn IsStoreBlockedByPolicyAsync(self: *@This(), storeClientName: HSTRING, storeClientPublisher: HSTRING) core.HResult!*IAsyncOperation(bool) {
        const this: *IAppInstallManager = @ptrCast(self);
        return try this.IsStoreBlockedByPolicyAsync(storeClientName, storeClientPublisher);
    }
    pub fn GetIsAppAllowedToInstallAsync(self: *@This(), productId: HSTRING) core.HResult!*IAsyncOperation(bool) {
        var this: ?*IAppInstallManager2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppInstallManager2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetIsAppAllowedToInstallAsync(productId);
    }
    pub fn StartAppInstallAsyncWithForceUseOfNonRemovableStorageWithCatalogIdWithBundleIdWithCorrelationVector(self: *@This(), productId: HSTRING, skuId: HSTRING, repair: bool, forceUseOfNonRemovableStorage: bool, catalogId: HSTRING, bundleId: HSTRING, correlationVector: HSTRING) core.HResult!*IAsyncOperation(AppInstallItem) {
        var this: ?*IAppInstallManager2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppInstallManager2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.StartAppInstallAsyncWithForceUseOfNonRemovableStorageWithCatalogIdWithBundleIdWithCorrelationVector(productId, skuId, repair, forceUseOfNonRemovableStorage, catalogId, bundleId, correlationVector);
    }
    pub fn UpdateAppByPackageFamilyNameAsyncWithCorrelationVector(self: *@This(), packageFamilyName: HSTRING, correlationVector: HSTRING) core.HResult!*IAsyncOperation(AppInstallItem) {
        var this: ?*IAppInstallManager2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppInstallManager2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.UpdateAppByPackageFamilyNameAsyncWithCorrelationVector(packageFamilyName, correlationVector);
    }
    pub fn SearchForUpdatesAsyncWithCatalogIdWithCorrelationVector(self: *@This(), productId: HSTRING, skuId: HSTRING, catalogId: HSTRING, correlationVector: HSTRING) core.HResult!*IAsyncOperation(AppInstallItem) {
        var this: ?*IAppInstallManager6 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppInstallManager6.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.SearchForUpdatesAsyncWithCatalogIdWithCorrelationVector(productId, skuId, catalogId, correlationVector);
    }
    pub fn SearchForAllUpdatesAsync(self: *@This(), correlationVector: HSTRING) core.HResult!*IAsyncOperation(IVectorView(AppInstallItem)) {
        var this: ?*IAppInstallManager6 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppInstallManager6.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.SearchForAllUpdatesAsync(correlationVector);
    }
    pub fn GetIsAppAllowedToInstallAsyncWithCorrelationVector(self: *@This(), productId: HSTRING, skuId: HSTRING, catalogId: HSTRING, correlationVector: HSTRING) core.HResult!*IAsyncOperation(bool) {
        var this: ?*IAppInstallManager2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppInstallManager2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetIsAppAllowedToInstallAsyncWithCorrelationVector(productId, skuId, catalogId, correlationVector);
    }
    pub fn CancelWithCorrelationVector(self: *@This(), productId: HSTRING, correlationVector: HSTRING) core.HResult!void {
        var this: ?*IAppInstallManager2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppInstallManager2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.CancelWithCorrelationVector(productId, correlationVector);
    }
    pub fn PauseWithCorrelationVector(self: *@This(), productId: HSTRING, correlationVector: HSTRING) core.HResult!void {
        var this: ?*IAppInstallManager2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppInstallManager2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.PauseWithCorrelationVector(productId, correlationVector);
    }
    pub fn RestartWithCorrelationVector(self: *@This(), productId: HSTRING, correlationVector: HSTRING) core.HResult!void {
        var this: ?*IAppInstallManager2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppInstallManager2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.RestartWithCorrelationVector(productId, correlationVector);
    }
    pub fn StartProductInstallAsyncWithClientIdWithRepairWithForceUseOfNonRemovableStorageWithCorrelationVectorWithTargetVolume(self: *@This(), productId: HSTRING, catalogId: HSTRING, flightId: HSTRING, clientId: HSTRING, repair: bool, forceUseOfNonRemovableStorage: bool, correlationVector: HSTRING, targetVolume: *PackageVolume) core.HResult!*IAsyncOperation(IVectorView(AppInstallItem)) {
        var this: ?*IAppInstallManager6 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppInstallManager6.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.StartProductInstallAsyncWithClientIdWithRepairWithForceUseOfNonRemovableStorageWithCorrelationVectorWithTargetVolume(productId, catalogId, flightId, clientId, repair, forceUseOfNonRemovableStorage, correlationVector, targetVolume);
    }
    pub fn StartProductInstallForUserAsyncWithFlightIdWithClientIdWithRepairWithForceUseOfNonRemovableStorageWithCorrelationVectorWithTargetVolume(self: *@This(), user: *User, productId: HSTRING, catalogId: HSTRING, flightId: HSTRING, clientId: HSTRING, repair: bool, forceUseOfNonRemovableStorage: bool, correlationVector: HSTRING, targetVolume: *PackageVolume) core.HResult!*IAsyncOperation(IVectorView(AppInstallItem)) {
        var this: ?*IAppInstallManager6 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppInstallManager6.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.StartProductInstallForUserAsyncWithFlightIdWithClientIdWithRepairWithForceUseOfNonRemovableStorageWithCorrelationVectorWithTargetVolume(user, productId, catalogId, flightId, clientId, repair, forceUseOfNonRemovableStorage, correlationVector, targetVolume);
    }
    pub fn UpdateAppByPackageFamilyNameForUserAsync(self: *@This(), user: *User, packageFamilyName: HSTRING, correlationVector: HSTRING) core.HResult!*IAsyncOperation(AppInstallItem) {
        var this: ?*IAppInstallManager3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppInstallManager3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.UpdateAppByPackageFamilyNameForUserAsync(user, packageFamilyName, correlationVector);
    }
    pub fn SearchForUpdatesForUserAsync(self: *@This(), user: *User, productId: HSTRING, skuId: HSTRING, catalogId: HSTRING, correlationVector: HSTRING) core.HResult!*IAsyncOperation(AppInstallItem) {
        var this: ?*IAppInstallManager6 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppInstallManager6.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.SearchForUpdatesForUserAsync(user, productId, skuId, catalogId, correlationVector);
    }
    pub fn SearchForAllUpdatesForUserAsync(self: *@This(), user: *User, correlationVector: HSTRING) core.HResult!*IAsyncOperation(IVectorView(AppInstallItem)) {
        var this: ?*IAppInstallManager6 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppInstallManager6.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.SearchForAllUpdatesForUserAsync(user, correlationVector);
    }
    pub fn GetIsAppAllowedToInstallForUserAsync(self: *@This(), user: *User, productId: HSTRING, skuId: HSTRING, catalogId: HSTRING, correlationVector: HSTRING) core.HResult!*IAsyncOperation(bool) {
        var this: ?*IAppInstallManager3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppInstallManager3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetIsAppAllowedToInstallForUserAsync(user, productId, skuId, catalogId, correlationVector);
    }
    pub fn GetIsApplicableForUserAsync(self: *@This(), user: *User, productId: HSTRING, skuId: HSTRING) core.HResult!*IAsyncOperation(bool) {
        var this: ?*IAppInstallManager3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppInstallManager3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetIsApplicableForUserAsync(user, productId, skuId);
    }
    pub fn MoveToFrontOfDownloadQueue(self: *@This(), productId: HSTRING, correlationVector: HSTRING) core.HResult!void {
        var this: ?*IAppInstallManager3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppInstallManager3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.MoveToFrontOfDownloadQueue(productId, correlationVector);
    }
    pub fn GetFreeUserEntitlementAsync(self: *@This(), storeId: HSTRING, campaignId: HSTRING, correlationVector: HSTRING) core.HResult!*IAsyncOperation(GetEntitlementResult) {
        var this: ?*IAppInstallManager4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppInstallManager4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetFreeUserEntitlementAsync(storeId, campaignId, correlationVector);
    }
    pub fn GetFreeUserEntitlementForUserAsync(self: *@This(), user: *User, storeId: HSTRING, campaignId: HSTRING, correlationVector: HSTRING) core.HResult!*IAsyncOperation(GetEntitlementResult) {
        var this: ?*IAppInstallManager4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppInstallManager4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetFreeUserEntitlementForUserAsync(user, storeId, campaignId, correlationVector);
    }
    pub fn GetFreeDeviceEntitlementAsync(self: *@This(), storeId: HSTRING, campaignId: HSTRING, correlationVector: HSTRING) core.HResult!*IAsyncOperation(GetEntitlementResult) {
        var this: ?*IAppInstallManager4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppInstallManager4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetFreeDeviceEntitlementAsync(storeId, campaignId, correlationVector);
    }
    pub fn getAppInstallItemsWithGroupSupport(self: *@This()) core.HResult!*IVectorView(AppInstallItem) {
        var this: ?*IAppInstallManager5 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppInstallManager5.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getAppInstallItemsWithGroupSupport();
    }
    pub fn SearchForAllUpdatesAsync(self: *@This(), correlationVector: HSTRING, clientId: HSTRING, updateOptions: *AppUpdateOptions) core.HResult!*IAsyncOperation(IVectorView(AppInstallItem)) {
        var this: ?*IAppInstallManager6 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppInstallManager6.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.SearchForAllUpdatesAsync(correlationVector, clientId, updateOptions);
    }
    pub fn SearchForAllUpdatesForUserAsyncWithClientIdWithUpdateOptions(self: *@This(), user: *User, correlationVector: HSTRING, clientId: HSTRING, updateOptions: *AppUpdateOptions) core.HResult!*IAsyncOperation(IVectorView(AppInstallItem)) {
        var this: ?*IAppInstallManager6 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppInstallManager6.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.SearchForAllUpdatesForUserAsyncWithClientIdWithUpdateOptions(user, correlationVector, clientId, updateOptions);
    }
    pub fn SearchForUpdatesAsyncWithClientIdWithUpdateOptions(self: *@This(), productId: HSTRING, skuId: HSTRING, correlationVector: HSTRING, clientId: HSTRING, updateOptions: *AppUpdateOptions) core.HResult!*IAsyncOperation(AppInstallItem) {
        var this: ?*IAppInstallManager6 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppInstallManager6.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.SearchForUpdatesAsyncWithClientIdWithUpdateOptions(productId, skuId, correlationVector, clientId, updateOptions);
    }
    pub fn SearchForUpdatesForUserAsyncWithProductIdWithSkuIdWithCorrelationVectorWithClientIdWithUpdateOptions(self: *@This(), user: *User, productId: HSTRING, skuId: HSTRING, correlationVector: HSTRING, clientId: HSTRING, updateOptions: *AppUpdateOptions) core.HResult!*IAsyncOperation(AppInstallItem) {
        var this: ?*IAppInstallManager6 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppInstallManager6.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.SearchForUpdatesForUserAsyncWithProductIdWithSkuIdWithCorrelationVectorWithClientIdWithUpdateOptions(user, productId, skuId, correlationVector, clientId, updateOptions);
    }
    pub fn StartProductInstallAsync(self: *@This(), productId: HSTRING, flightId: HSTRING, clientId: HSTRING, correlationVector: HSTRING, installOptions: *AppInstallOptions) core.HResult!*IAsyncOperation(IVectorView(AppInstallItem)) {
        var this: ?*IAppInstallManager6 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppInstallManager6.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.StartProductInstallAsync(productId, flightId, clientId, correlationVector, installOptions);
    }
    pub fn StartProductInstallForUserAsync(self: *@This(), user: *User, productId: HSTRING, flightId: HSTRING, clientId: HSTRING, correlationVector: HSTRING, installOptions: *AppInstallOptions) core.HResult!*IAsyncOperation(IVectorView(AppInstallItem)) {
        var this: ?*IAppInstallManager6 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppInstallManager6.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.StartProductInstallForUserAsync(user, productId, flightId, clientId, correlationVector, installOptions);
    }
    pub fn GetIsPackageIdentityAllowedToInstallAsync(self: *@This(), correlationVector: HSTRING, packageIdentityName: HSTRING, publisherCertificateName: HSTRING) core.HResult!*IAsyncOperation(bool) {
        var this: ?*IAppInstallManager6 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppInstallManager6.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetIsPackageIdentityAllowedToInstallAsync(correlationVector, packageIdentityName, publisherCertificateName);
    }
    pub fn GetIsPackageIdentityAllowedToInstallForUserAsync(self: *@This(), user: *User, correlationVector: HSTRING, packageIdentityName: HSTRING, publisherCertificateName: HSTRING) core.HResult!*IAsyncOperation(bool) {
        var this: ?*IAppInstallManager6 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppInstallManager6.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetIsPackageIdentityAllowedToInstallForUserAsync(user, correlationVector, packageIdentityName, publisherCertificateName);
    }
    pub fn getCanInstallForAllUsers(self: *@This()) core.HResult!bool {
        var this: ?*IAppInstallManager7 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppInstallManager7.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getCanInstallForAllUsers();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IAppInstallManager.IID)));
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Store.Preview.InstallControl.AppInstallManager";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAppInstallManager.GUID;
    pub const IID: Guid = IAppInstallManager.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAppInstallManager.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const AppInstallManagerItemEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getItem(self: *@This()) core.HResult!*AppInstallItem {
        const this: *IAppInstallManagerItemEventArgs = @ptrCast(self);
        return try this.getItem();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Store.Preview.InstallControl.AppInstallManagerItemEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAppInstallManagerItemEventArgs.GUID;
    pub const IID: Guid = IAppInstallManagerItemEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAppInstallManagerItemEventArgs.SIGNATURE);
};
pub const AppInstallOptions = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getCatalogId(self: *@This()) core.HResult!HSTRING {
        const this: *IAppInstallOptions = @ptrCast(self);
        return try this.getCatalogId();
    }
    pub fn putCatalogId(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IAppInstallOptions = @ptrCast(self);
        return try this.putCatalogId(value);
    }
    pub fn getForceUseOfNonRemovableStorage(self: *@This()) core.HResult!bool {
        const this: *IAppInstallOptions = @ptrCast(self);
        return try this.getForceUseOfNonRemovableStorage();
    }
    pub fn putForceUseOfNonRemovableStorage(self: *@This(), value: bool) core.HResult!void {
        const this: *IAppInstallOptions = @ptrCast(self);
        return try this.putForceUseOfNonRemovableStorage(value);
    }
    pub fn getAllowForcedAppRestart(self: *@This()) core.HResult!bool {
        const this: *IAppInstallOptions = @ptrCast(self);
        return try this.getAllowForcedAppRestart();
    }
    pub fn putAllowForcedAppRestart(self: *@This(), value: bool) core.HResult!void {
        const this: *IAppInstallOptions = @ptrCast(self);
        return try this.putAllowForcedAppRestart(value);
    }
    pub fn getRepair(self: *@This()) core.HResult!bool {
        const this: *IAppInstallOptions = @ptrCast(self);
        return try this.getRepair();
    }
    pub fn putRepair(self: *@This(), value: bool) core.HResult!void {
        const this: *IAppInstallOptions = @ptrCast(self);
        return try this.putRepair(value);
    }
    pub fn getTargetVolume(self: *@This()) core.HResult!*PackageVolume {
        const this: *IAppInstallOptions = @ptrCast(self);
        return try this.getTargetVolume();
    }
    pub fn putTargetVolume(self: *@This(), value: *PackageVolume) core.HResult!void {
        const this: *IAppInstallOptions = @ptrCast(self);
        return try this.putTargetVolume(value);
    }
    pub fn getLaunchAfterInstall(self: *@This()) core.HResult!bool {
        const this: *IAppInstallOptions = @ptrCast(self);
        return try this.getLaunchAfterInstall();
    }
    pub fn putLaunchAfterInstall(self: *@This(), value: bool) core.HResult!void {
        const this: *IAppInstallOptions = @ptrCast(self);
        return try this.putLaunchAfterInstall(value);
    }
    pub fn getPinToDesktopAfterInstall(self: *@This()) core.HResult!bool {
        var this: ?*IAppInstallOptions2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppInstallOptions2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getPinToDesktopAfterInstall();
    }
    pub fn putPinToDesktopAfterInstall(self: *@This(), value: bool) core.HResult!void {
        var this: ?*IAppInstallOptions2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppInstallOptions2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putPinToDesktopAfterInstall(value);
    }
    pub fn getPinToStartAfterInstall(self: *@This()) core.HResult!bool {
        var this: ?*IAppInstallOptions2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppInstallOptions2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getPinToStartAfterInstall();
    }
    pub fn putPinToStartAfterInstall(self: *@This(), value: bool) core.HResult!void {
        var this: ?*IAppInstallOptions2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppInstallOptions2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putPinToStartAfterInstall(value);
    }
    pub fn getPinToTaskbarAfterInstall(self: *@This()) core.HResult!bool {
        var this: ?*IAppInstallOptions2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppInstallOptions2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getPinToTaskbarAfterInstall();
    }
    pub fn putPinToTaskbarAfterInstall(self: *@This(), value: bool) core.HResult!void {
        var this: ?*IAppInstallOptions2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppInstallOptions2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putPinToTaskbarAfterInstall(value);
    }
    pub fn getCompletedInstallToastNotificationMode(self: *@This()) core.HResult!AppInstallationToastNotificationMode {
        var this: ?*IAppInstallOptions2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppInstallOptions2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getCompletedInstallToastNotificationMode();
    }
    pub fn putCompletedInstallToastNotificationMode(self: *@This(), value: AppInstallationToastNotificationMode) core.HResult!void {
        var this: ?*IAppInstallOptions2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppInstallOptions2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putCompletedInstallToastNotificationMode(value);
    }
    pub fn getInstallInProgressToastNotificationMode(self: *@This()) core.HResult!AppInstallationToastNotificationMode {
        var this: ?*IAppInstallOptions2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppInstallOptions2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getInstallInProgressToastNotificationMode();
    }
    pub fn putInstallInProgressToastNotificationMode(self: *@This(), value: AppInstallationToastNotificationMode) core.HResult!void {
        var this: ?*IAppInstallOptions2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppInstallOptions2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putInstallInProgressToastNotificationMode(value);
    }
    pub fn getInstallForAllUsers(self: *@This()) core.HResult!bool {
        var this: ?*IAppInstallOptions2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppInstallOptions2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getInstallForAllUsers();
    }
    pub fn putInstallForAllUsers(self: *@This(), value: bool) core.HResult!void {
        var this: ?*IAppInstallOptions2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppInstallOptions2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putInstallForAllUsers(value);
    }
    pub fn getStageButDoNotInstall(self: *@This()) core.HResult!bool {
        var this: ?*IAppInstallOptions2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppInstallOptions2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getStageButDoNotInstall();
    }
    pub fn putStageButDoNotInstall(self: *@This(), value: bool) core.HResult!void {
        var this: ?*IAppInstallOptions2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppInstallOptions2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putStageButDoNotInstall(value);
    }
    pub fn getCampaignId(self: *@This()) core.HResult!HSTRING {
        var this: ?*IAppInstallOptions2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppInstallOptions2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getCampaignId();
    }
    pub fn putCampaignId(self: *@This(), value: HSTRING) core.HResult!void {
        var this: ?*IAppInstallOptions2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppInstallOptions2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putCampaignId(value);
    }
    pub fn getExtendedCampaignId(self: *@This()) core.HResult!HSTRING {
        var this: ?*IAppInstallOptions2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppInstallOptions2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getExtendedCampaignId();
    }
    pub fn putExtendedCampaignId(self: *@This(), value: HSTRING) core.HResult!void {
        var this: ?*IAppInstallOptions2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppInstallOptions2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putExtendedCampaignId(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IAppInstallOptions.IID)));
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Store.Preview.InstallControl.AppInstallOptions";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAppInstallOptions.GUID;
    pub const IID: Guid = IAppInstallOptions.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAppInstallOptions.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const AppInstallState = enum(i32) {
    Pending = 0,
    Starting = 1,
    AcquiringLicense = 2,
    Downloading = 3,
    RestoringData = 4,
    Installing = 5,
    Completed = 6,
    Canceled = 7,
    Paused = 8,
    Error = 9,
    PausedLowBattery = 10,
    PausedWiFiRecommended = 11,
    PausedWiFiRequired = 12,
    ReadyToDownload = 13,
};
pub const AppInstallStatus = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getInstallState(self: *@This()) core.HResult!AppInstallState {
        const this: *IAppInstallStatus = @ptrCast(self);
        return try this.getInstallState();
    }
    pub fn getDownloadSizeInBytes(self: *@This()) core.HResult!u64 {
        const this: *IAppInstallStatus = @ptrCast(self);
        return try this.getDownloadSizeInBytes();
    }
    pub fn getBytesDownloaded(self: *@This()) core.HResult!u64 {
        const this: *IAppInstallStatus = @ptrCast(self);
        return try this.getBytesDownloaded();
    }
    pub fn getPercentComplete(self: *@This()) core.HResult!f64 {
        const this: *IAppInstallStatus = @ptrCast(self);
        return try this.getPercentComplete();
    }
    pub fn getErrorCode(self: *@This()) core.HResult!HResult {
        const this: *IAppInstallStatus = @ptrCast(self);
        return try this.getErrorCode();
    }
    pub fn getUser(self: *@This()) core.HResult!*User {
        var this: ?*IAppInstallStatus2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppInstallStatus2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getUser();
    }
    pub fn getReadyForLaunch(self: *@This()) core.HResult!bool {
        var this: ?*IAppInstallStatus2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppInstallStatus2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getReadyForLaunch();
    }
    pub fn getIsStaged(self: *@This()) core.HResult!bool {
        var this: ?*IAppInstallStatus3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppInstallStatus3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsStaged();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Store.Preview.InstallControl.AppInstallStatus";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAppInstallStatus.GUID;
    pub const IID: Guid = IAppInstallStatus.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAppInstallStatus.SIGNATURE);
};
pub const AppInstallType = enum(i32) {
    Install = 0,
    Update = 1,
    Repair = 2,
};
pub const AppInstallationToastNotificationMode = enum(i32) {
    Default = 0,
    Toast = 1,
    ToastWithoutPopup = 2,
    NoToast = 3,
};
pub const AppUpdateOptions = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getCatalogId(self: *@This()) core.HResult!HSTRING {
        const this: *IAppUpdateOptions = @ptrCast(self);
        return try this.getCatalogId();
    }
    pub fn putCatalogId(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IAppUpdateOptions = @ptrCast(self);
        return try this.putCatalogId(value);
    }
    pub fn getAllowForcedAppRestart(self: *@This()) core.HResult!bool {
        const this: *IAppUpdateOptions = @ptrCast(self);
        return try this.getAllowForcedAppRestart();
    }
    pub fn putAllowForcedAppRestart(self: *@This(), value: bool) core.HResult!void {
        const this: *IAppUpdateOptions = @ptrCast(self);
        return try this.putAllowForcedAppRestart(value);
    }
    pub fn getAutomaticallyDownloadAndInstallUpdateIfFound(self: *@This()) core.HResult!bool {
        var this: ?*IAppUpdateOptions2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppUpdateOptions2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getAutomaticallyDownloadAndInstallUpdateIfFound();
    }
    pub fn putAutomaticallyDownloadAndInstallUpdateIfFound(self: *@This(), value: bool) core.HResult!void {
        var this: ?*IAppUpdateOptions2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppUpdateOptions2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putAutomaticallyDownloadAndInstallUpdateIfFound(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IAppUpdateOptions.IID)));
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Store.Preview.InstallControl.AppUpdateOptions";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAppUpdateOptions.GUID;
    pub const IID: Guid = IAppUpdateOptions.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAppUpdateOptions.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const AutoUpdateSetting = enum(i32) {
    Disabled = 0,
    Enabled = 1,
    DisabledByPolicy = 2,
    EnabledByPolicy = 3,
};
pub const GetEntitlementResult = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getStatus(self: *@This()) core.HResult!GetEntitlementStatus {
        const this: *IGetEntitlementResult = @ptrCast(self);
        return try this.getStatus();
    }
    pub fn getIsAlreadyOwned(self: *@This()) core.HResult!bool {
        var this: ?*IGetEntitlementResult2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IGetEntitlementResult2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsAlreadyOwned();
    }
    pub fn getOrderId(self: *@This()) core.HResult!HSTRING {
        var this: ?*IGetEntitlementResult2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IGetEntitlementResult2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getOrderId();
    }
    pub fn getSkuId(self: *@This()) core.HResult!HSTRING {
        var this: ?*IGetEntitlementResult2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IGetEntitlementResult2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSkuId();
    }
    pub fn getAvailabilityId(self: *@This()) core.HResult!HSTRING {
        var this: ?*IGetEntitlementResult2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IGetEntitlementResult2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getAvailabilityId();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Store.Preview.InstallControl.GetEntitlementResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IGetEntitlementResult.GUID;
    pub const IID: Guid = IGetEntitlementResult.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IGetEntitlementResult.SIGNATURE);
};
pub const GetEntitlementStatus = enum(i32) {
    Succeeded = 0,
    NoStoreAccount = 1,
    NetworkError = 2,
    ServerError = 3,
};
pub const IAppInstallItem = extern struct {
    vtable: *const VTable,
    pub fn getProductId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ProductId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPackageFamilyName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_PackageFamilyName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getInstallType(self: *@This()) core.HResult!AppInstallType {
        var _r: AppInstallType = undefined;
        const _c = self.vtable.get_InstallType(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsUserInitiated(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsUserInitiated(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetCurrentStatus(self: *@This()) core.HResult!*AppInstallStatus {
        var _r: *AppInstallStatus = undefined;
        const _c = self.vtable.GetCurrentStatus(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn Cancel(self: *@This()) core.HResult!void {
        const _c = self.vtable.Cancel(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn Pause(self: *@This()) core.HResult!void {
        const _c = self.vtable.Pause(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn Restart(self: *@This()) core.HResult!void {
        const _c = self.vtable.Restart(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addCompleted(self: *@This(), handler: *TypedEventHandler(AppInstallItem,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_Completed(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeCompleted(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_Completed(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addStatusChanged(self: *@This(), handler: *TypedEventHandler(AppInstallItem,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_StatusChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeStatusChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_StatusChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Store.Preview.InstallControl.IAppInstallItem";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "49d3dfab-168a-4cbf-a93a-9e448c82737d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ProductId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_PackageFamilyName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_InstallType: *const fn(self: *anyopaque, _r: *AppInstallType) callconv(.winapi) HRESULT,
        get_IsUserInitiated: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        GetCurrentStatus: *const fn(self: *anyopaque, _r: **AppInstallStatus) callconv(.winapi) HRESULT,
        Cancel: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        Pause: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        Restart: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        add_Completed: *const fn(self: *anyopaque, handler: *TypedEventHandler(AppInstallItem,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_Completed: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_StatusChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(AppInstallItem,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_StatusChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IAppInstallItem2 = extern struct {
    vtable: *const VTable,
    pub fn Cancel(self: *@This(), correlationVector: HSTRING) core.HResult!void {
        const _c = self.vtable.Cancel(@ptrCast(self), correlationVector);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn Pause(self: *@This(), correlationVector: HSTRING) core.HResult!void {
        const _c = self.vtable.Pause(@ptrCast(self), correlationVector);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn Restart(self: *@This(), correlationVector: HSTRING) core.HResult!void {
        const _c = self.vtable.Restart(@ptrCast(self), correlationVector);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Store.Preview.InstallControl.IAppInstallItem2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d3972af8-40c0-4fd7-aa6c-0aa13ca6188c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Cancel: *const fn(self: *anyopaque, correlationVector: HSTRING) callconv(.winapi) HRESULT,
        Pause: *const fn(self: *anyopaque, correlationVector: HSTRING) callconv(.winapi) HRESULT,
        Restart: *const fn(self: *anyopaque, correlationVector: HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IAppInstallItem3 = extern struct {
    vtable: *const VTable,
    pub fn getChildren(self: *@This()) core.HResult!*IVectorView(AppInstallItem) {
        var _r: *IVectorView(AppInstallItem) = undefined;
        const _c = self.vtable.get_Children(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getItemOperationsMightAffectOtherItems(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_ItemOperationsMightAffectOtherItems(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Store.Preview.InstallControl.IAppInstallItem3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "6f3dc998-dd47-433c-9234-560172d67a45";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Children: *const fn(self: *anyopaque, _r: **IVectorView(AppInstallItem)) callconv(.winapi) HRESULT,
        get_ItemOperationsMightAffectOtherItems: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IAppInstallItem4 = extern struct {
    vtable: *const VTable,
    pub fn getLaunchAfterInstall(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_LaunchAfterInstall(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putLaunchAfterInstall(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_LaunchAfterInstall(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Store.Preview.InstallControl.IAppInstallItem4";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c2d1ce12-71ff-4fc8-b540-453d4b37e1d1";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_LaunchAfterInstall: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_LaunchAfterInstall: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
    };
};
pub const IAppInstallItem5 = extern struct {
    vtable: *const VTable,
    pub fn getPinToDesktopAfterInstall(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_PinToDesktopAfterInstall(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putPinToDesktopAfterInstall(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_PinToDesktopAfterInstall(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getPinToStartAfterInstall(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_PinToStartAfterInstall(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putPinToStartAfterInstall(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_PinToStartAfterInstall(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getPinToTaskbarAfterInstall(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_PinToTaskbarAfterInstall(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putPinToTaskbarAfterInstall(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_PinToTaskbarAfterInstall(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getCompletedInstallToastNotificationMode(self: *@This()) core.HResult!AppInstallationToastNotificationMode {
        var _r: AppInstallationToastNotificationMode = undefined;
        const _c = self.vtable.get_CompletedInstallToastNotificationMode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putCompletedInstallToastNotificationMode(self: *@This(), value: AppInstallationToastNotificationMode) core.HResult!void {
        const _c = self.vtable.put_CompletedInstallToastNotificationMode(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getInstallInProgressToastNotificationMode(self: *@This()) core.HResult!AppInstallationToastNotificationMode {
        var _r: AppInstallationToastNotificationMode = undefined;
        const _c = self.vtable.get_InstallInProgressToastNotificationMode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putInstallInProgressToastNotificationMode(self: *@This(), value: AppInstallationToastNotificationMode) core.HResult!void {
        const _c = self.vtable.put_InstallInProgressToastNotificationMode(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Store.Preview.InstallControl.IAppInstallItem5";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5510e7cc-4076-4a0b-9472-c21d9d380e55";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_PinToDesktopAfterInstall: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_PinToDesktopAfterInstall: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_PinToStartAfterInstall: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_PinToStartAfterInstall: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_PinToTaskbarAfterInstall: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_PinToTaskbarAfterInstall: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_CompletedInstallToastNotificationMode: *const fn(self: *anyopaque, _r: *AppInstallationToastNotificationMode) callconv(.winapi) HRESULT,
        put_CompletedInstallToastNotificationMode: *const fn(self: *anyopaque, value: AppInstallationToastNotificationMode) callconv(.winapi) HRESULT,
        get_InstallInProgressToastNotificationMode: *const fn(self: *anyopaque, _r: *AppInstallationToastNotificationMode) callconv(.winapi) HRESULT,
        put_InstallInProgressToastNotificationMode: *const fn(self: *anyopaque, value: AppInstallationToastNotificationMode) callconv(.winapi) HRESULT,
    };
};
pub const IAppInstallManager = extern struct {
    vtable: *const VTable,
    pub fn getAppInstallItems(self: *@This()) core.HResult!*IVectorView(AppInstallItem) {
        var _r: *IVectorView(AppInstallItem) = undefined;
        const _c = self.vtable.get_AppInstallItems(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn Cancel(self: *@This(), productId: HSTRING) core.HResult!void {
        const _c = self.vtable.Cancel(@ptrCast(self), productId);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn Pause(self: *@This(), productId: HSTRING) core.HResult!void {
        const _c = self.vtable.Pause(@ptrCast(self), productId);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn Restart(self: *@This(), productId: HSTRING) core.HResult!void {
        const _c = self.vtable.Restart(@ptrCast(self), productId);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addItemCompleted(self: *@This(), handler: *TypedEventHandler(AppInstallManager,AppInstallManagerItemEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_ItemCompleted(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeItemCompleted(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_ItemCompleted(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addItemStatusChanged(self: *@This(), handler: *TypedEventHandler(AppInstallManager,AppInstallManagerItemEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_ItemStatusChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeItemStatusChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_ItemStatusChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getAutoUpdateSetting(self: *@This()) core.HResult!AutoUpdateSetting {
        var _r: AutoUpdateSetting = undefined;
        const _c = self.vtable.get_AutoUpdateSetting(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putAutoUpdateSetting(self: *@This(), value: AutoUpdateSetting) core.HResult!void {
        const _c = self.vtable.put_AutoUpdateSetting(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getAcquisitionIdentity(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_AcquisitionIdentity(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putAcquisitionIdentity(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_AcquisitionIdentity(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn GetIsApplicableAsync(self: *@This(), productId: HSTRING, skuId: HSTRING) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.GetIsApplicableAsync(@ptrCast(self), productId, skuId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn StartAppInstallAsync(self: *@This(), productId: HSTRING, skuId: HSTRING, repair: bool, forceUseOfNonRemovableStorage: bool) core.HResult!*IAsyncOperation(AppInstallItem) {
        var _r: *IAsyncOperation(AppInstallItem) = undefined;
        const _c = self.vtable.StartAppInstallAsync(@ptrCast(self), productId, skuId, repair, forceUseOfNonRemovableStorage, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn UpdateAppByPackageFamilyNameAsync(self: *@This(), packageFamilyName: HSTRING) core.HResult!*IAsyncOperation(AppInstallItem) {
        var _r: *IAsyncOperation(AppInstallItem) = undefined;
        const _c = self.vtable.UpdateAppByPackageFamilyNameAsync(@ptrCast(self), packageFamilyName, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SearchForUpdatesAsync(self: *@This(), productId: HSTRING, skuId: HSTRING) core.HResult!*IAsyncOperation(AppInstallItem) {
        var _r: *IAsyncOperation(AppInstallItem) = undefined;
        const _c = self.vtable.SearchForUpdatesAsync(@ptrCast(self), productId, skuId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SearchForAllUpdatesAsync(self: *@This()) core.HResult!*IAsyncOperation(IVectorView(AppInstallItem)) {
        var _r: *IAsyncOperation(IVectorView(AppInstallItem)) = undefined;
        const _c = self.vtable.SearchForAllUpdatesAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn IsStoreBlockedByPolicyAsync(self: *@This(), storeClientName: HSTRING, storeClientPublisher: HSTRING) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.IsStoreBlockedByPolicyAsync(@ptrCast(self), storeClientName, storeClientPublisher, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetIsAppAllowedToInstallAsync(self: *@This(), productId: HSTRING) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.GetIsAppAllowedToInstallAsync(@ptrCast(self), productId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Store.Preview.InstallControl.IAppInstallManager";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "9353e170-8441-4b45-bd72-7c2fa925beee";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_AppInstallItems: *const fn(self: *anyopaque, _r: **IVectorView(AppInstallItem)) callconv(.winapi) HRESULT,
        Cancel: *const fn(self: *anyopaque, productId: HSTRING) callconv(.winapi) HRESULT,
        Pause: *const fn(self: *anyopaque, productId: HSTRING) callconv(.winapi) HRESULT,
        Restart: *const fn(self: *anyopaque, productId: HSTRING) callconv(.winapi) HRESULT,
        add_ItemCompleted: *const fn(self: *anyopaque, handler: *TypedEventHandler(AppInstallManager,AppInstallManagerItemEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_ItemCompleted: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_ItemStatusChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(AppInstallManager,AppInstallManagerItemEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_ItemStatusChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        get_AutoUpdateSetting: *const fn(self: *anyopaque, _r: *AutoUpdateSetting) callconv(.winapi) HRESULT,
        put_AutoUpdateSetting: *const fn(self: *anyopaque, value: AutoUpdateSetting) callconv(.winapi) HRESULT,
        get_AcquisitionIdentity: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_AcquisitionIdentity: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        GetIsApplicableAsync: *const fn(self: *anyopaque, productId: HSTRING, skuId: HSTRING, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
        StartAppInstallAsync: *const fn(self: *anyopaque, productId: HSTRING, skuId: HSTRING, repair: bool, forceUseOfNonRemovableStorage: bool, _r: **IAsyncOperation(AppInstallItem)) callconv(.winapi) HRESULT,
        UpdateAppByPackageFamilyNameAsync: *const fn(self: *anyopaque, packageFamilyName: HSTRING, _r: **IAsyncOperation(AppInstallItem)) callconv(.winapi) HRESULT,
        SearchForUpdatesAsync: *const fn(self: *anyopaque, productId: HSTRING, skuId: HSTRING, _r: **IAsyncOperation(AppInstallItem)) callconv(.winapi) HRESULT,
        SearchForAllUpdatesAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(IVectorView(AppInstallItem))) callconv(.winapi) HRESULT,
        IsStoreBlockedByPolicyAsync: *const fn(self: *anyopaque, storeClientName: HSTRING, storeClientPublisher: HSTRING, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
        GetIsAppAllowedToInstallAsync: *const fn(self: *anyopaque, productId: HSTRING, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
    };
};
pub const IAppInstallManager2 = extern struct {
    vtable: *const VTable,
    pub fn StartAppInstallAsync(self: *@This(), productId: HSTRING, skuId: HSTRING, repair: bool, forceUseOfNonRemovableStorage: bool, catalogId: HSTRING, bundleId: HSTRING, correlationVector: HSTRING) core.HResult!*IAsyncOperation(AppInstallItem) {
        var _r: *IAsyncOperation(AppInstallItem) = undefined;
        const _c = self.vtable.StartAppInstallAsync(@ptrCast(self), productId, skuId, repair, forceUseOfNonRemovableStorage, catalogId, bundleId, correlationVector, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn UpdateAppByPackageFamilyNameAsync(self: *@This(), packageFamilyName: HSTRING, correlationVector: HSTRING) core.HResult!*IAsyncOperation(AppInstallItem) {
        var _r: *IAsyncOperation(AppInstallItem) = undefined;
        const _c = self.vtable.UpdateAppByPackageFamilyNameAsync(@ptrCast(self), packageFamilyName, correlationVector, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SearchForUpdatesAsync(self: *@This(), productId: HSTRING, skuId: HSTRING, catalogId: HSTRING, correlationVector: HSTRING) core.HResult!*IAsyncOperation(AppInstallItem) {
        var _r: *IAsyncOperation(AppInstallItem) = undefined;
        const _c = self.vtable.SearchForUpdatesAsync(@ptrCast(self), productId, skuId, catalogId, correlationVector, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SearchForAllUpdatesAsync(self: *@This(), correlationVector: HSTRING) core.HResult!*IAsyncOperation(IVectorView(AppInstallItem)) {
        var _r: *IAsyncOperation(IVectorView(AppInstallItem)) = undefined;
        const _c = self.vtable.SearchForAllUpdatesAsync(@ptrCast(self), correlationVector, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetIsAppAllowedToInstallAsync(self: *@This(), productId: HSTRING, skuId: HSTRING, catalogId: HSTRING, correlationVector: HSTRING) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.GetIsAppAllowedToInstallAsync(@ptrCast(self), productId, skuId, catalogId, correlationVector, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn Cancel(self: *@This(), productId: HSTRING, correlationVector: HSTRING) core.HResult!void {
        const _c = self.vtable.Cancel(@ptrCast(self), productId, correlationVector);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn Pause(self: *@This(), productId: HSTRING, correlationVector: HSTRING) core.HResult!void {
        const _c = self.vtable.Pause(@ptrCast(self), productId, correlationVector);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn Restart(self: *@This(), productId: HSTRING, correlationVector: HSTRING) core.HResult!void {
        const _c = self.vtable.Restart(@ptrCast(self), productId, correlationVector);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Store.Preview.InstallControl.IAppInstallManager2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "16937851-ed37-480d-8314-52e27c03f04a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        StartAppInstallAsync: *const fn(self: *anyopaque, productId: HSTRING, skuId: HSTRING, repair: bool, forceUseOfNonRemovableStorage: bool, catalogId: HSTRING, bundleId: HSTRING, correlationVector: HSTRING, _r: **IAsyncOperation(AppInstallItem)) callconv(.winapi) HRESULT,
        UpdateAppByPackageFamilyNameAsync: *const fn(self: *anyopaque, packageFamilyName: HSTRING, correlationVector: HSTRING, _r: **IAsyncOperation(AppInstallItem)) callconv(.winapi) HRESULT,
        SearchForUpdatesAsync: *const fn(self: *anyopaque, productId: HSTRING, skuId: HSTRING, catalogId: HSTRING, correlationVector: HSTRING, _r: **IAsyncOperation(AppInstallItem)) callconv(.winapi) HRESULT,
        SearchForAllUpdatesAsync: *const fn(self: *anyopaque, correlationVector: HSTRING, _r: **IAsyncOperation(IVectorView(AppInstallItem))) callconv(.winapi) HRESULT,
        GetIsAppAllowedToInstallAsync: *const fn(self: *anyopaque, productId: HSTRING, skuId: HSTRING, catalogId: HSTRING, correlationVector: HSTRING, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
        Cancel: *const fn(self: *anyopaque, productId: HSTRING, correlationVector: HSTRING) callconv(.winapi) HRESULT,
        Pause: *const fn(self: *anyopaque, productId: HSTRING, correlationVector: HSTRING) callconv(.winapi) HRESULT,
        Restart: *const fn(self: *anyopaque, productId: HSTRING, correlationVector: HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IAppInstallManager3 = extern struct {
    vtable: *const VTable,
    pub fn StartProductInstallAsync(self: *@This(), productId: HSTRING, catalogId: HSTRING, flightId: HSTRING, clientId: HSTRING, repair: bool, forceUseOfNonRemovableStorage: bool, correlationVector: HSTRING, targetVolume: *PackageVolume) core.HResult!*IAsyncOperation(IVectorView(AppInstallItem)) {
        var _r: *IAsyncOperation(IVectorView(AppInstallItem)) = undefined;
        const _c = self.vtable.StartProductInstallAsync(@ptrCast(self), productId, catalogId, flightId, clientId, repair, forceUseOfNonRemovableStorage, correlationVector, targetVolume, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn StartProductInstallForUserAsync(self: *@This(), user: *User, productId: HSTRING, catalogId: HSTRING, flightId: HSTRING, clientId: HSTRING, repair: bool, forceUseOfNonRemovableStorage: bool, correlationVector: HSTRING, targetVolume: *PackageVolume) core.HResult!*IAsyncOperation(IVectorView(AppInstallItem)) {
        var _r: *IAsyncOperation(IVectorView(AppInstallItem)) = undefined;
        const _c = self.vtable.StartProductInstallForUserAsync(@ptrCast(self), user, productId, catalogId, flightId, clientId, repair, forceUseOfNonRemovableStorage, correlationVector, targetVolume, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn UpdateAppByPackageFamilyNameForUserAsync(self: *@This(), user: *User, packageFamilyName: HSTRING, correlationVector: HSTRING) core.HResult!*IAsyncOperation(AppInstallItem) {
        var _r: *IAsyncOperation(AppInstallItem) = undefined;
        const _c = self.vtable.UpdateAppByPackageFamilyNameForUserAsync(@ptrCast(self), user, packageFamilyName, correlationVector, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SearchForUpdatesForUserAsync(self: *@This(), user: *User, productId: HSTRING, skuId: HSTRING, catalogId: HSTRING, correlationVector: HSTRING) core.HResult!*IAsyncOperation(AppInstallItem) {
        var _r: *IAsyncOperation(AppInstallItem) = undefined;
        const _c = self.vtable.SearchForUpdatesForUserAsync(@ptrCast(self), user, productId, skuId, catalogId, correlationVector, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SearchForAllUpdatesForUserAsync(self: *@This(), user: *User, correlationVector: HSTRING) core.HResult!*IAsyncOperation(IVectorView(AppInstallItem)) {
        var _r: *IAsyncOperation(IVectorView(AppInstallItem)) = undefined;
        const _c = self.vtable.SearchForAllUpdatesForUserAsync(@ptrCast(self), user, correlationVector, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetIsAppAllowedToInstallForUserAsync(self: *@This(), user: *User, productId: HSTRING, skuId: HSTRING, catalogId: HSTRING, correlationVector: HSTRING) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.GetIsAppAllowedToInstallForUserAsync(@ptrCast(self), user, productId, skuId, catalogId, correlationVector, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetIsApplicableForUserAsync(self: *@This(), user: *User, productId: HSTRING, skuId: HSTRING) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.GetIsApplicableForUserAsync(@ptrCast(self), user, productId, skuId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn MoveToFrontOfDownloadQueue(self: *@This(), productId: HSTRING, correlationVector: HSTRING) core.HResult!void {
        const _c = self.vtable.MoveToFrontOfDownloadQueue(@ptrCast(self), productId, correlationVector);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Store.Preview.InstallControl.IAppInstallManager3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "95b24b17-e96a-4d0e-84e1-c8cb417a0178";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        StartProductInstallAsync: *const fn(self: *anyopaque, productId: HSTRING, catalogId: HSTRING, flightId: HSTRING, clientId: HSTRING, repair: bool, forceUseOfNonRemovableStorage: bool, correlationVector: HSTRING, targetVolume: *PackageVolume, _r: **IAsyncOperation(IVectorView(AppInstallItem))) callconv(.winapi) HRESULT,
        StartProductInstallForUserAsync: *const fn(self: *anyopaque, user: *User, productId: HSTRING, catalogId: HSTRING, flightId: HSTRING, clientId: HSTRING, repair: bool, forceUseOfNonRemovableStorage: bool, correlationVector: HSTRING, targetVolume: *PackageVolume, _r: **IAsyncOperation(IVectorView(AppInstallItem))) callconv(.winapi) HRESULT,
        UpdateAppByPackageFamilyNameForUserAsync: *const fn(self: *anyopaque, user: *User, packageFamilyName: HSTRING, correlationVector: HSTRING, _r: **IAsyncOperation(AppInstallItem)) callconv(.winapi) HRESULT,
        SearchForUpdatesForUserAsync: *const fn(self: *anyopaque, user: *User, productId: HSTRING, skuId: HSTRING, catalogId: HSTRING, correlationVector: HSTRING, _r: **IAsyncOperation(AppInstallItem)) callconv(.winapi) HRESULT,
        SearchForAllUpdatesForUserAsync: *const fn(self: *anyopaque, user: *User, correlationVector: HSTRING, _r: **IAsyncOperation(IVectorView(AppInstallItem))) callconv(.winapi) HRESULT,
        GetIsAppAllowedToInstallForUserAsync: *const fn(self: *anyopaque, user: *User, productId: HSTRING, skuId: HSTRING, catalogId: HSTRING, correlationVector: HSTRING, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
        GetIsApplicableForUserAsync: *const fn(self: *anyopaque, user: *User, productId: HSTRING, skuId: HSTRING, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
        MoveToFrontOfDownloadQueue: *const fn(self: *anyopaque, productId: HSTRING, correlationVector: HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IAppInstallManager4 = extern struct {
    vtable: *const VTable,
    pub fn GetFreeUserEntitlementAsync(self: *@This(), storeId: HSTRING, campaignId: HSTRING, correlationVector: HSTRING) core.HResult!*IAsyncOperation(GetEntitlementResult) {
        var _r: *IAsyncOperation(GetEntitlementResult) = undefined;
        const _c = self.vtable.GetFreeUserEntitlementAsync(@ptrCast(self), storeId, campaignId, correlationVector, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetFreeUserEntitlementForUserAsync(self: *@This(), user: *User, storeId: HSTRING, campaignId: HSTRING, correlationVector: HSTRING) core.HResult!*IAsyncOperation(GetEntitlementResult) {
        var _r: *IAsyncOperation(GetEntitlementResult) = undefined;
        const _c = self.vtable.GetFreeUserEntitlementForUserAsync(@ptrCast(self), user, storeId, campaignId, correlationVector, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetFreeDeviceEntitlementAsync(self: *@This(), storeId: HSTRING, campaignId: HSTRING, correlationVector: HSTRING) core.HResult!*IAsyncOperation(GetEntitlementResult) {
        var _r: *IAsyncOperation(GetEntitlementResult) = undefined;
        const _c = self.vtable.GetFreeDeviceEntitlementAsync(@ptrCast(self), storeId, campaignId, correlationVector, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Store.Preview.InstallControl.IAppInstallManager4";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "260a2a16-5a9e-4ebd-b944-f2ba75c31159";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetFreeUserEntitlementAsync: *const fn(self: *anyopaque, storeId: HSTRING, campaignId: HSTRING, correlationVector: HSTRING, _r: **IAsyncOperation(GetEntitlementResult)) callconv(.winapi) HRESULT,
        GetFreeUserEntitlementForUserAsync: *const fn(self: *anyopaque, user: *User, storeId: HSTRING, campaignId: HSTRING, correlationVector: HSTRING, _r: **IAsyncOperation(GetEntitlementResult)) callconv(.winapi) HRESULT,
        GetFreeDeviceEntitlementAsync: *const fn(self: *anyopaque, storeId: HSTRING, campaignId: HSTRING, correlationVector: HSTRING, _r: **IAsyncOperation(GetEntitlementResult)) callconv(.winapi) HRESULT,
    };
};
pub const IAppInstallManager5 = extern struct {
    vtable: *const VTable,
    pub fn getAppInstallItemsWithGroupSupport(self: *@This()) core.HResult!*IVectorView(AppInstallItem) {
        var _r: *IVectorView(AppInstallItem) = undefined;
        const _c = self.vtable.get_AppInstallItemsWithGroupSupport(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Store.Preview.InstallControl.IAppInstallManager5";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3cd7be4c-1be9-4f7f-b675-aa1d64a529b2";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_AppInstallItemsWithGroupSupport: *const fn(self: *anyopaque, _r: **IVectorView(AppInstallItem)) callconv(.winapi) HRESULT,
    };
};
pub const IAppInstallManager6 = extern struct {
    vtable: *const VTable,
    pub fn SearchForAllUpdatesAsync(self: *@This(), correlationVector: HSTRING, clientId: HSTRING, updateOptions: *AppUpdateOptions) core.HResult!*IAsyncOperation(IVectorView(AppInstallItem)) {
        var _r: *IAsyncOperation(IVectorView(AppInstallItem)) = undefined;
        const _c = self.vtable.SearchForAllUpdatesAsync(@ptrCast(self), correlationVector, clientId, updateOptions, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SearchForAllUpdatesForUserAsync(self: *@This(), user: *User, correlationVector: HSTRING, clientId: HSTRING, updateOptions: *AppUpdateOptions) core.HResult!*IAsyncOperation(IVectorView(AppInstallItem)) {
        var _r: *IAsyncOperation(IVectorView(AppInstallItem)) = undefined;
        const _c = self.vtable.SearchForAllUpdatesForUserAsync(@ptrCast(self), user, correlationVector, clientId, updateOptions, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SearchForUpdatesAsync(self: *@This(), productId: HSTRING, skuId: HSTRING, correlationVector: HSTRING, clientId: HSTRING, updateOptions: *AppUpdateOptions) core.HResult!*IAsyncOperation(AppInstallItem) {
        var _r: *IAsyncOperation(AppInstallItem) = undefined;
        const _c = self.vtable.SearchForUpdatesAsync(@ptrCast(self), productId, skuId, correlationVector, clientId, updateOptions, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SearchForUpdatesForUserAsync(self: *@This(), user: *User, productId: HSTRING, skuId: HSTRING, correlationVector: HSTRING, clientId: HSTRING, updateOptions: *AppUpdateOptions) core.HResult!*IAsyncOperation(AppInstallItem) {
        var _r: *IAsyncOperation(AppInstallItem) = undefined;
        const _c = self.vtable.SearchForUpdatesForUserAsync(@ptrCast(self), user, productId, skuId, correlationVector, clientId, updateOptions, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn StartProductInstallAsync(self: *@This(), productId: HSTRING, flightId: HSTRING, clientId: HSTRING, correlationVector: HSTRING, installOptions: *AppInstallOptions) core.HResult!*IAsyncOperation(IVectorView(AppInstallItem)) {
        var _r: *IAsyncOperation(IVectorView(AppInstallItem)) = undefined;
        const _c = self.vtable.StartProductInstallAsync(@ptrCast(self), productId, flightId, clientId, correlationVector, installOptions, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn StartProductInstallForUserAsync(self: *@This(), user: *User, productId: HSTRING, flightId: HSTRING, clientId: HSTRING, correlationVector: HSTRING, installOptions: *AppInstallOptions) core.HResult!*IAsyncOperation(IVectorView(AppInstallItem)) {
        var _r: *IAsyncOperation(IVectorView(AppInstallItem)) = undefined;
        const _c = self.vtable.StartProductInstallForUserAsync(@ptrCast(self), user, productId, flightId, clientId, correlationVector, installOptions, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetIsPackageIdentityAllowedToInstallAsync(self: *@This(), correlationVector: HSTRING, packageIdentityName: HSTRING, publisherCertificateName: HSTRING) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.GetIsPackageIdentityAllowedToInstallAsync(@ptrCast(self), correlationVector, packageIdentityName, publisherCertificateName, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetIsPackageIdentityAllowedToInstallForUserAsync(self: *@This(), user: *User, correlationVector: HSTRING, packageIdentityName: HSTRING, publisherCertificateName: HSTRING) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.GetIsPackageIdentityAllowedToInstallForUserAsync(@ptrCast(self), user, correlationVector, packageIdentityName, publisherCertificateName, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Store.Preview.InstallControl.IAppInstallManager6";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c9e7d408-f27a-4471-b2f4-e76efcbebcca";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        SearchForAllUpdatesAsync: *const fn(self: *anyopaque, correlationVector: HSTRING, clientId: HSTRING, updateOptions: *AppUpdateOptions, _r: **IAsyncOperation(IVectorView(AppInstallItem))) callconv(.winapi) HRESULT,
        SearchForAllUpdatesForUserAsync: *const fn(self: *anyopaque, user: *User, correlationVector: HSTRING, clientId: HSTRING, updateOptions: *AppUpdateOptions, _r: **IAsyncOperation(IVectorView(AppInstallItem))) callconv(.winapi) HRESULT,
        SearchForUpdatesAsync: *const fn(self: *anyopaque, productId: HSTRING, skuId: HSTRING, correlationVector: HSTRING, clientId: HSTRING, updateOptions: *AppUpdateOptions, _r: **IAsyncOperation(AppInstallItem)) callconv(.winapi) HRESULT,
        SearchForUpdatesForUserAsync: *const fn(self: *anyopaque, user: *User, productId: HSTRING, skuId: HSTRING, correlationVector: HSTRING, clientId: HSTRING, updateOptions: *AppUpdateOptions, _r: **IAsyncOperation(AppInstallItem)) callconv(.winapi) HRESULT,
        StartProductInstallAsync: *const fn(self: *anyopaque, productId: HSTRING, flightId: HSTRING, clientId: HSTRING, correlationVector: HSTRING, installOptions: *AppInstallOptions, _r: **IAsyncOperation(IVectorView(AppInstallItem))) callconv(.winapi) HRESULT,
        StartProductInstallForUserAsync: *const fn(self: *anyopaque, user: *User, productId: HSTRING, flightId: HSTRING, clientId: HSTRING, correlationVector: HSTRING, installOptions: *AppInstallOptions, _r: **IAsyncOperation(IVectorView(AppInstallItem))) callconv(.winapi) HRESULT,
        GetIsPackageIdentityAllowedToInstallAsync: *const fn(self: *anyopaque, correlationVector: HSTRING, packageIdentityName: HSTRING, publisherCertificateName: HSTRING, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
        GetIsPackageIdentityAllowedToInstallForUserAsync: *const fn(self: *anyopaque, user: *User, correlationVector: HSTRING, packageIdentityName: HSTRING, publisherCertificateName: HSTRING, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
    };
};
pub const IAppInstallManager7 = extern struct {
    vtable: *const VTable,
    pub fn getCanInstallForAllUsers(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_CanInstallForAllUsers(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Store.Preview.InstallControl.IAppInstallManager7";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a5ee7b30-d5e4-49a3-9853-3db03203321d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_CanInstallForAllUsers: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IAppInstallManagerItemEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getItem(self: *@This()) core.HResult!*AppInstallItem {
        var _r: *AppInstallItem = undefined;
        const _c = self.vtable.get_Item(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Store.Preview.InstallControl.IAppInstallManagerItemEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "bc505743-4674-4dd1-957e-c25682086a14";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Item: *const fn(self: *anyopaque, _r: **AppInstallItem) callconv(.winapi) HRESULT,
    };
};
pub const IAppInstallOptions = extern struct {
    vtable: *const VTable,
    pub fn getCatalogId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_CatalogId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putCatalogId(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_CatalogId(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getForceUseOfNonRemovableStorage(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_ForceUseOfNonRemovableStorage(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putForceUseOfNonRemovableStorage(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_ForceUseOfNonRemovableStorage(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getAllowForcedAppRestart(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_AllowForcedAppRestart(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putAllowForcedAppRestart(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_AllowForcedAppRestart(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getRepair(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_Repair(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putRepair(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_Repair(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getTargetVolume(self: *@This()) core.HResult!*PackageVolume {
        var _r: *PackageVolume = undefined;
        const _c = self.vtable.get_TargetVolume(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putTargetVolume(self: *@This(), value: *PackageVolume) core.HResult!void {
        const _c = self.vtable.put_TargetVolume(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getLaunchAfterInstall(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_LaunchAfterInstall(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putLaunchAfterInstall(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_LaunchAfterInstall(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Store.Preview.InstallControl.IAppInstallOptions";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c9808300-1cb8-4eb6-8c9f-6a30c64a5b51";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_CatalogId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_CatalogId: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_ForceUseOfNonRemovableStorage: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_ForceUseOfNonRemovableStorage: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_AllowForcedAppRestart: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_AllowForcedAppRestart: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_Repair: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_Repair: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_TargetVolume: *const fn(self: *anyopaque, _r: **PackageVolume) callconv(.winapi) HRESULT,
        put_TargetVolume: *const fn(self: *anyopaque, value: *PackageVolume) callconv(.winapi) HRESULT,
        get_LaunchAfterInstall: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_LaunchAfterInstall: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
    };
};
pub const IAppInstallOptions2 = extern struct {
    vtable: *const VTable,
    pub fn getPinToDesktopAfterInstall(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_PinToDesktopAfterInstall(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putPinToDesktopAfterInstall(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_PinToDesktopAfterInstall(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getPinToStartAfterInstall(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_PinToStartAfterInstall(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putPinToStartAfterInstall(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_PinToStartAfterInstall(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getPinToTaskbarAfterInstall(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_PinToTaskbarAfterInstall(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putPinToTaskbarAfterInstall(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_PinToTaskbarAfterInstall(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getCompletedInstallToastNotificationMode(self: *@This()) core.HResult!AppInstallationToastNotificationMode {
        var _r: AppInstallationToastNotificationMode = undefined;
        const _c = self.vtable.get_CompletedInstallToastNotificationMode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putCompletedInstallToastNotificationMode(self: *@This(), value: AppInstallationToastNotificationMode) core.HResult!void {
        const _c = self.vtable.put_CompletedInstallToastNotificationMode(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getInstallInProgressToastNotificationMode(self: *@This()) core.HResult!AppInstallationToastNotificationMode {
        var _r: AppInstallationToastNotificationMode = undefined;
        const _c = self.vtable.get_InstallInProgressToastNotificationMode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putInstallInProgressToastNotificationMode(self: *@This(), value: AppInstallationToastNotificationMode) core.HResult!void {
        const _c = self.vtable.put_InstallInProgressToastNotificationMode(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getInstallForAllUsers(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_InstallForAllUsers(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putInstallForAllUsers(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_InstallForAllUsers(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getStageButDoNotInstall(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_StageButDoNotInstall(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putStageButDoNotInstall(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_StageButDoNotInstall(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getCampaignId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_CampaignId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putCampaignId(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_CampaignId(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getExtendedCampaignId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ExtendedCampaignId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putExtendedCampaignId(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_ExtendedCampaignId(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Store.Preview.InstallControl.IAppInstallOptions2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "8a04c0d7-c94b-425e-95b4-bf27faeaee89";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_PinToDesktopAfterInstall: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_PinToDesktopAfterInstall: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_PinToStartAfterInstall: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_PinToStartAfterInstall: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_PinToTaskbarAfterInstall: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_PinToTaskbarAfterInstall: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_CompletedInstallToastNotificationMode: *const fn(self: *anyopaque, _r: *AppInstallationToastNotificationMode) callconv(.winapi) HRESULT,
        put_CompletedInstallToastNotificationMode: *const fn(self: *anyopaque, value: AppInstallationToastNotificationMode) callconv(.winapi) HRESULT,
        get_InstallInProgressToastNotificationMode: *const fn(self: *anyopaque, _r: *AppInstallationToastNotificationMode) callconv(.winapi) HRESULT,
        put_InstallInProgressToastNotificationMode: *const fn(self: *anyopaque, value: AppInstallationToastNotificationMode) callconv(.winapi) HRESULT,
        get_InstallForAllUsers: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_InstallForAllUsers: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_StageButDoNotInstall: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_StageButDoNotInstall: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_CampaignId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_CampaignId: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_ExtendedCampaignId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_ExtendedCampaignId: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IAppInstallStatus = extern struct {
    vtable: *const VTable,
    pub fn getInstallState(self: *@This()) core.HResult!AppInstallState {
        var _r: AppInstallState = undefined;
        const _c = self.vtable.get_InstallState(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDownloadSizeInBytes(self: *@This()) core.HResult!u64 {
        var _r: u64 = undefined;
        const _c = self.vtable.get_DownloadSizeInBytes(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getBytesDownloaded(self: *@This()) core.HResult!u64 {
        var _r: u64 = undefined;
        const _c = self.vtable.get_BytesDownloaded(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPercentComplete(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_PercentComplete(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getErrorCode(self: *@This()) core.HResult!HResult {
        var _r: HResult = undefined;
        const _c = self.vtable.get_ErrorCode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Store.Preview.InstallControl.IAppInstallStatus";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "936dccfa-2450-4126-88b1-6127a644dd5c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_InstallState: *const fn(self: *anyopaque, _r: *AppInstallState) callconv(.winapi) HRESULT,
        get_DownloadSizeInBytes: *const fn(self: *anyopaque, _r: *u64) callconv(.winapi) HRESULT,
        get_BytesDownloaded: *const fn(self: *anyopaque, _r: *u64) callconv(.winapi) HRESULT,
        get_PercentComplete: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        get_ErrorCode: *const fn(self: *anyopaque, _r: *HResult) callconv(.winapi) HRESULT,
    };
};
pub const IAppInstallStatus2 = extern struct {
    vtable: *const VTable,
    pub fn getUser(self: *@This()) core.HResult!*User {
        var _r: *User = undefined;
        const _c = self.vtable.get_User(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getReadyForLaunch(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_ReadyForLaunch(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Store.Preview.InstallControl.IAppInstallStatus2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "96e7818a-5e92-4aa9-8edc-58fed4b87e00";
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
        get_ReadyForLaunch: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IAppInstallStatus3 = extern struct {
    vtable: *const VTable,
    pub fn getIsStaged(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsStaged(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Store.Preview.InstallControl.IAppInstallStatus3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "cb880c56-837b-4b4c-9ebb-6d44a0a96307";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IsStaged: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IAppUpdateOptions = extern struct {
    vtable: *const VTable,
    pub fn getCatalogId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_CatalogId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putCatalogId(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_CatalogId(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getAllowForcedAppRestart(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_AllowForcedAppRestart(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putAllowForcedAppRestart(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_AllowForcedAppRestart(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Store.Preview.InstallControl.IAppUpdateOptions";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "26f0b02f-c2f3-4aea-af8c-6308dd9db85f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_CatalogId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_CatalogId: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_AllowForcedAppRestart: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_AllowForcedAppRestart: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
    };
};
pub const IAppUpdateOptions2 = extern struct {
    vtable: *const VTable,
    pub fn getAutomaticallyDownloadAndInstallUpdateIfFound(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_AutomaticallyDownloadAndInstallUpdateIfFound(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putAutomaticallyDownloadAndInstallUpdateIfFound(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_AutomaticallyDownloadAndInstallUpdateIfFound(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Store.Preview.InstallControl.IAppUpdateOptions2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f4646e08-ed26-4bf9-9679-48f628e53df8";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_AutomaticallyDownloadAndInstallUpdateIfFound: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_AutomaticallyDownloadAndInstallUpdateIfFound: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
    };
};
pub const IGetEntitlementResult = extern struct {
    vtable: *const VTable,
    pub fn getStatus(self: *@This()) core.HResult!GetEntitlementStatus {
        var _r: GetEntitlementStatus = undefined;
        const _c = self.vtable.get_Status(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Store.Preview.InstallControl.IGetEntitlementResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "74fc843f-1a9e-4609-8e4d-819086d08a3d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Status: *const fn(self: *anyopaque, _r: *GetEntitlementStatus) callconv(.winapi) HRESULT,
    };
};
pub const IGetEntitlementResult2 = extern struct {
    vtable: *const VTable,
    pub fn getIsAlreadyOwned(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsAlreadyOwned(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getOrderId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_OrderId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSkuId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_SkuId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAvailabilityId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_AvailabilityId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Store.Preview.InstallControl.IGetEntitlementResult2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e3906641-a981-4302-8c68-ff836666bb3b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IsAlreadyOwned: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_OrderId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_SkuId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_AvailabilityId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
const IUnknown = @import("../../../root.zig").IUnknown;
const User = @import("../../../System.zig").User;
const IActivationFactory = @import("../../../Foundation.zig").IActivationFactory;
const Guid = @import("../../../root.zig").Guid;
const IVectorView = @import("../../../Foundation/Collections.zig").IVectorView;
const IInspectable = @import("../../../Foundation.zig").IInspectable;
const HResult = @import("../../../Foundation.zig").HResult;
const HRESULT = @import("../../../root.zig").HRESULT;
const IAsyncOperation = @import("../../../Foundation.zig").IAsyncOperation;
const core = @import("../../../root.zig").core;
const PackageVolume = @import("../../../Management/Deployment.zig").PackageVolume;
const FactoryCache = @import("../../../core.zig").FactoryCache;
const EventRegistrationToken = @import("../../../Foundation.zig").EventRegistrationToken;
const TrustLevel = @import("../../../root.zig").TrustLevel;
const TypedEventHandler = @import("../../../Foundation.zig").TypedEventHandler;
const HSTRING = @import("../../../root.zig").HSTRING;
