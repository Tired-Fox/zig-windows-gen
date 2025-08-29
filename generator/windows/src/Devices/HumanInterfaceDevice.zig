pub const HidBooleanControl = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getId(self: *@This()) core.HResult!u32 {
        const this: *IHidBooleanControl = @ptrCast(self);
        return try this.getId();
    }
    pub fn getUsagePage(self: *@This()) core.HResult!u16 {
        const this: *IHidBooleanControl = @ptrCast(self);
        return try this.getUsagePage();
    }
    pub fn getUsageId(self: *@This()) core.HResult!u16 {
        const this: *IHidBooleanControl = @ptrCast(self);
        return try this.getUsageId();
    }
    pub fn getIsActive(self: *@This()) core.HResult!bool {
        const this: *IHidBooleanControl = @ptrCast(self);
        return try this.getIsActive();
    }
    pub fn putIsActive(self: *@This(), value: bool) core.HResult!void {
        const this: *IHidBooleanControl = @ptrCast(self);
        return try this.putIsActive(value);
    }
    pub fn getControlDescription(self: *@This()) core.HResult!*HidBooleanControlDescription {
        const this: *IHidBooleanControl = @ptrCast(self);
        return try this.getControlDescription();
    }
    pub const NAME: []const u8 = "Windows.Devices.HumanInterfaceDevice.HidBooleanControl";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IHidBooleanControl.GUID;
    pub const IID: Guid = IHidBooleanControl.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IHidBooleanControl.SIGNATURE);
};
pub const HidBooleanControlDescription = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getId(self: *@This()) core.HResult!u32 {
        const this: *IHidBooleanControlDescription = @ptrCast(self);
        return try this.getId();
    }
    pub fn getReportId(self: *@This()) core.HResult!u16 {
        const this: *IHidBooleanControlDescription = @ptrCast(self);
        return try this.getReportId();
    }
    pub fn getReportType(self: *@This()) core.HResult!HidReportType {
        const this: *IHidBooleanControlDescription = @ptrCast(self);
        return try this.getReportType();
    }
    pub fn getUsagePage(self: *@This()) core.HResult!u16 {
        const this: *IHidBooleanControlDescription = @ptrCast(self);
        return try this.getUsagePage();
    }
    pub fn getUsageId(self: *@This()) core.HResult!u16 {
        const this: *IHidBooleanControlDescription = @ptrCast(self);
        return try this.getUsageId();
    }
    pub fn getParentCollections(self: *@This()) core.HResult!*IVectorView(HidCollection) {
        const this: *IHidBooleanControlDescription = @ptrCast(self);
        return try this.getParentCollections();
    }
    pub fn getIsAbsolute(self: *@This()) core.HResult!bool {
        var this: ?*IHidBooleanControlDescription2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IHidBooleanControlDescription2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsAbsolute();
    }
    pub const NAME: []const u8 = "Windows.Devices.HumanInterfaceDevice.HidBooleanControlDescription";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IHidBooleanControlDescription.GUID;
    pub const IID: Guid = IHidBooleanControlDescription.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IHidBooleanControlDescription.SIGNATURE);
};
pub const HidCollection = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getId(self: *@This()) core.HResult!u32 {
        const this: *IHidCollection = @ptrCast(self);
        return try this.getId();
    }
    pub fn getType(self: *@This()) core.HResult!HidCollectionType {
        const this: *IHidCollection = @ptrCast(self);
        return try this.getType();
    }
    pub fn getUsagePage(self: *@This()) core.HResult!u32 {
        const this: *IHidCollection = @ptrCast(self);
        return try this.getUsagePage();
    }
    pub fn getUsageId(self: *@This()) core.HResult!u32 {
        const this: *IHidCollection = @ptrCast(self);
        return try this.getUsageId();
    }
    pub const NAME: []const u8 = "Windows.Devices.HumanInterfaceDevice.HidCollection";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IHidCollection.GUID;
    pub const IID: Guid = IHidCollection.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IHidCollection.SIGNATURE);
};
pub const HidCollectionType = enum(i32) {
    Physical = 0,
    Application = 1,
    Logical = 2,
    Report = 3,
    NamedArray = 4,
    UsageSwitch = 5,
    UsageModifier = 6,
    Other = 7,
};
pub const HidDevice = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getVendorId(self: *@This()) core.HResult!u16 {
        const this: *IHidDevice = @ptrCast(self);
        return try this.getVendorId();
    }
    pub fn getProductId(self: *@This()) core.HResult!u16 {
        const this: *IHidDevice = @ptrCast(self);
        return try this.getProductId();
    }
    pub fn getVersion(self: *@This()) core.HResult!u16 {
        const this: *IHidDevice = @ptrCast(self);
        return try this.getVersion();
    }
    pub fn getUsagePage(self: *@This()) core.HResult!u16 {
        const this: *IHidDevice = @ptrCast(self);
        return try this.getUsagePage();
    }
    pub fn getUsageId(self: *@This()) core.HResult!u16 {
        const this: *IHidDevice = @ptrCast(self);
        return try this.getUsageId();
    }
    pub fn GetInputReportAsync(self: *@This()) core.HResult!*IAsyncOperation(HidInputReport) {
        const this: *IHidDevice = @ptrCast(self);
        return try this.GetInputReportAsync();
    }
    pub fn GetInputReportAsync(self: *@This(), reportId: u16) core.HResult!*IAsyncOperation(HidInputReport) {
        const this: *IHidDevice = @ptrCast(self);
        return try this.GetInputReportAsync(reportId);
    }
    pub fn GetFeatureReportAsync(self: *@This()) core.HResult!*IAsyncOperation(HidFeatureReport) {
        const this: *IHidDevice = @ptrCast(self);
        return try this.GetFeatureReportAsync();
    }
    pub fn GetFeatureReportAsync(self: *@This(), reportId: u16) core.HResult!*IAsyncOperation(HidFeatureReport) {
        const this: *IHidDevice = @ptrCast(self);
        return try this.GetFeatureReportAsync(reportId);
    }
    pub fn CreateOutputReport(self: *@This()) core.HResult!*HidOutputReport {
        const this: *IHidDevice = @ptrCast(self);
        return try this.CreateOutputReport();
    }
    pub fn CreateOutputReport(self: *@This(), reportId: u16) core.HResult!*HidOutputReport {
        const this: *IHidDevice = @ptrCast(self);
        return try this.CreateOutputReport(reportId);
    }
    pub fn CreateFeatureReport(self: *@This()) core.HResult!*HidFeatureReport {
        const this: *IHidDevice = @ptrCast(self);
        return try this.CreateFeatureReport();
    }
    pub fn CreateFeatureReport(self: *@This(), reportId: u16) core.HResult!*HidFeatureReport {
        const this: *IHidDevice = @ptrCast(self);
        return try this.CreateFeatureReport(reportId);
    }
    pub fn SendOutputReportAsync(self: *@This(), outputReport: *HidOutputReport) core.HResult!*IAsyncOperation(u32) {
        const this: *IHidDevice = @ptrCast(self);
        return try this.SendOutputReportAsync(outputReport);
    }
    pub fn SendFeatureReportAsync(self: *@This(), featureReport: *HidFeatureReport) core.HResult!*IAsyncOperation(u32) {
        const this: *IHidDevice = @ptrCast(self);
        return try this.SendFeatureReportAsync(featureReport);
    }
    pub fn GetBooleanControlDescriptions(self: *@This(), reportType: HidReportType, usagePage: u16, usageId: u16) core.HResult!*IVectorView(HidBooleanControlDescription) {
        const this: *IHidDevice = @ptrCast(self);
        return try this.GetBooleanControlDescriptions(reportType, usagePage, usageId);
    }
    pub fn GetNumericControlDescriptions(self: *@This(), reportType: HidReportType, usagePage: u16, usageId: u16) core.HResult!*IVectorView(HidNumericControlDescription) {
        const this: *IHidDevice = @ptrCast(self);
        return try this.GetNumericControlDescriptions(reportType, usagePage, usageId);
    }
    pub fn addInputReportReceived(self: *@This(), reportHandler: *TypedEventHandler(HidDevice,HidInputReportReceivedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IHidDevice = @ptrCast(self);
        return try this.addInputReportReceived(reportHandler);
    }
    pub fn removeInputReportReceived(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IHidDevice = @ptrCast(self);
        return try this.removeInputReportReceived(token);
    }
    pub fn Close(self: *@This()) core.HResult!void {
        var this: ?*IClosable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IClosable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Close();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn GetDeviceSelector(usagePage: u16, usageId: u16) core.HResult!HSTRING {
        const factory = @This().IHidDeviceStaticsCache.get();
        return try factory.GetDeviceSelector(usagePage, usageId);
    }
    pub fn GetDeviceSelectorWithVendorIdWithProductId(usagePage: u16, usageId: u16, vendorId: u16, productId: u16) core.HResult!HSTRING {
        const factory = @This().IHidDeviceStaticsCache.get();
        return try factory.GetDeviceSelectorWithVendorIdWithProductId(usagePage, usageId, vendorId, productId);
    }
    pub fn FromIdAsync(deviceId: HSTRING, accessMode: FileAccessMode) core.HResult!*IAsyncOperation(HidDevice) {
        const factory = @This().IHidDeviceStaticsCache.get();
        return try factory.FromIdAsync(deviceId, accessMode);
    }
    pub const NAME: []const u8 = "Windows.Devices.HumanInterfaceDevice.HidDevice";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IHidDevice.GUID;
    pub const IID: Guid = IHidDevice.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IHidDevice.SIGNATURE);
    var _IHidDeviceStaticsCache: FactoryCache(IHidDeviceStatics, RUNTIME_NAME) = .{};
};
pub const HidFeatureReport = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getId(self: *@This()) core.HResult!u16 {
        const this: *IHidFeatureReport = @ptrCast(self);
        return try this.getId();
    }
    pub fn getData(self: *@This()) core.HResult!*IBuffer {
        const this: *IHidFeatureReport = @ptrCast(self);
        return try this.getData();
    }
    pub fn putData(self: *@This(), value: *IBuffer) core.HResult!void {
        const this: *IHidFeatureReport = @ptrCast(self);
        return try this.putData(value);
    }
    pub fn GetBooleanControl(self: *@This(), usagePage: u16, usageId: u16) core.HResult!*HidBooleanControl {
        const this: *IHidFeatureReport = @ptrCast(self);
        return try this.GetBooleanControl(usagePage, usageId);
    }
    pub fn GetBooleanControlByDescription(self: *@This(), controlDescription: *HidBooleanControlDescription) core.HResult!*HidBooleanControl {
        const this: *IHidFeatureReport = @ptrCast(self);
        return try this.GetBooleanControlByDescription(controlDescription);
    }
    pub fn GetNumericControl(self: *@This(), usagePage: u16, usageId: u16) core.HResult!*HidNumericControl {
        const this: *IHidFeatureReport = @ptrCast(self);
        return try this.GetNumericControl(usagePage, usageId);
    }
    pub fn GetNumericControlByDescription(self: *@This(), controlDescription: *HidNumericControlDescription) core.HResult!*HidNumericControl {
        const this: *IHidFeatureReport = @ptrCast(self);
        return try this.GetNumericControlByDescription(controlDescription);
    }
    pub const NAME: []const u8 = "Windows.Devices.HumanInterfaceDevice.HidFeatureReport";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IHidFeatureReport.GUID;
    pub const IID: Guid = IHidFeatureReport.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IHidFeatureReport.SIGNATURE);
};
pub const HidInputReport = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getId(self: *@This()) core.HResult!u16 {
        const this: *IHidInputReport = @ptrCast(self);
        return try this.getId();
    }
    pub fn getData(self: *@This()) core.HResult!*IBuffer {
        const this: *IHidInputReport = @ptrCast(self);
        return try this.getData();
    }
    pub fn getActivatedBooleanControls(self: *@This()) core.HResult!*IVectorView(HidBooleanControl) {
        const this: *IHidInputReport = @ptrCast(self);
        return try this.getActivatedBooleanControls();
    }
    pub fn getTransitionedBooleanControls(self: *@This()) core.HResult!*IVectorView(HidBooleanControl) {
        const this: *IHidInputReport = @ptrCast(self);
        return try this.getTransitionedBooleanControls();
    }
    pub fn GetBooleanControl(self: *@This(), usagePage: u16, usageId: u16) core.HResult!*HidBooleanControl {
        const this: *IHidInputReport = @ptrCast(self);
        return try this.GetBooleanControl(usagePage, usageId);
    }
    pub fn GetBooleanControlByDescription(self: *@This(), controlDescription: *HidBooleanControlDescription) core.HResult!*HidBooleanControl {
        const this: *IHidInputReport = @ptrCast(self);
        return try this.GetBooleanControlByDescription(controlDescription);
    }
    pub fn GetNumericControl(self: *@This(), usagePage: u16, usageId: u16) core.HResult!*HidNumericControl {
        const this: *IHidInputReport = @ptrCast(self);
        return try this.GetNumericControl(usagePage, usageId);
    }
    pub fn GetNumericControlByDescription(self: *@This(), controlDescription: *HidNumericControlDescription) core.HResult!*HidNumericControl {
        const this: *IHidInputReport = @ptrCast(self);
        return try this.GetNumericControlByDescription(controlDescription);
    }
    pub const NAME: []const u8 = "Windows.Devices.HumanInterfaceDevice.HidInputReport";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IHidInputReport.GUID;
    pub const IID: Guid = IHidInputReport.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IHidInputReport.SIGNATURE);
};
pub const HidInputReportReceivedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getReport(self: *@This()) core.HResult!*HidInputReport {
        const this: *IHidInputReportReceivedEventArgs = @ptrCast(self);
        return try this.getReport();
    }
    pub const NAME: []const u8 = "Windows.Devices.HumanInterfaceDevice.HidInputReportReceivedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IHidInputReportReceivedEventArgs.GUID;
    pub const IID: Guid = IHidInputReportReceivedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IHidInputReportReceivedEventArgs.SIGNATURE);
};
pub const HidNumericControl = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getId(self: *@This()) core.HResult!u32 {
        const this: *IHidNumericControl = @ptrCast(self);
        return try this.getId();
    }
    pub fn getIsGrouped(self: *@This()) core.HResult!bool {
        const this: *IHidNumericControl = @ptrCast(self);
        return try this.getIsGrouped();
    }
    pub fn getUsagePage(self: *@This()) core.HResult!u16 {
        const this: *IHidNumericControl = @ptrCast(self);
        return try this.getUsagePage();
    }
    pub fn getUsageId(self: *@This()) core.HResult!u16 {
        const this: *IHidNumericControl = @ptrCast(self);
        return try this.getUsageId();
    }
    pub fn getValue(self: *@This()) core.HResult!i64 {
        const this: *IHidNumericControl = @ptrCast(self);
        return try this.getValue();
    }
    pub fn putValue(self: *@This(), value: i64) core.HResult!void {
        const this: *IHidNumericControl = @ptrCast(self);
        return try this.putValue(value);
    }
    pub fn getScaledValue(self: *@This()) core.HResult!i64 {
        const this: *IHidNumericControl = @ptrCast(self);
        return try this.getScaledValue();
    }
    pub fn putScaledValue(self: *@This(), value: i64) core.HResult!void {
        const this: *IHidNumericControl = @ptrCast(self);
        return try this.putScaledValue(value);
    }
    pub fn getControlDescription(self: *@This()) core.HResult!*HidNumericControlDescription {
        const this: *IHidNumericControl = @ptrCast(self);
        return try this.getControlDescription();
    }
    pub const NAME: []const u8 = "Windows.Devices.HumanInterfaceDevice.HidNumericControl";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IHidNumericControl.GUID;
    pub const IID: Guid = IHidNumericControl.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IHidNumericControl.SIGNATURE);
};
pub const HidNumericControlDescription = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getId(self: *@This()) core.HResult!u32 {
        const this: *IHidNumericControlDescription = @ptrCast(self);
        return try this.getId();
    }
    pub fn getReportId(self: *@This()) core.HResult!u16 {
        const this: *IHidNumericControlDescription = @ptrCast(self);
        return try this.getReportId();
    }
    pub fn getReportType(self: *@This()) core.HResult!HidReportType {
        const this: *IHidNumericControlDescription = @ptrCast(self);
        return try this.getReportType();
    }
    pub fn getReportSize(self: *@This()) core.HResult!u32 {
        const this: *IHidNumericControlDescription = @ptrCast(self);
        return try this.getReportSize();
    }
    pub fn getReportCount(self: *@This()) core.HResult!u32 {
        const this: *IHidNumericControlDescription = @ptrCast(self);
        return try this.getReportCount();
    }
    pub fn getUsagePage(self: *@This()) core.HResult!u16 {
        const this: *IHidNumericControlDescription = @ptrCast(self);
        return try this.getUsagePage();
    }
    pub fn getUsageId(self: *@This()) core.HResult!u16 {
        const this: *IHidNumericControlDescription = @ptrCast(self);
        return try this.getUsageId();
    }
    pub fn getLogicalMinimum(self: *@This()) core.HResult!i32 {
        const this: *IHidNumericControlDescription = @ptrCast(self);
        return try this.getLogicalMinimum();
    }
    pub fn getLogicalMaximum(self: *@This()) core.HResult!i32 {
        const this: *IHidNumericControlDescription = @ptrCast(self);
        return try this.getLogicalMaximum();
    }
    pub fn getPhysicalMinimum(self: *@This()) core.HResult!i32 {
        const this: *IHidNumericControlDescription = @ptrCast(self);
        return try this.getPhysicalMinimum();
    }
    pub fn getPhysicalMaximum(self: *@This()) core.HResult!i32 {
        const this: *IHidNumericControlDescription = @ptrCast(self);
        return try this.getPhysicalMaximum();
    }
    pub fn getUnitExponent(self: *@This()) core.HResult!u32 {
        const this: *IHidNumericControlDescription = @ptrCast(self);
        return try this.getUnitExponent();
    }
    pub fn getUnit(self: *@This()) core.HResult!u32 {
        const this: *IHidNumericControlDescription = @ptrCast(self);
        return try this.getUnit();
    }
    pub fn getIsAbsolute(self: *@This()) core.HResult!bool {
        const this: *IHidNumericControlDescription = @ptrCast(self);
        return try this.getIsAbsolute();
    }
    pub fn getHasNull(self: *@This()) core.HResult!bool {
        const this: *IHidNumericControlDescription = @ptrCast(self);
        return try this.getHasNull();
    }
    pub fn getParentCollections(self: *@This()) core.HResult!*IVectorView(HidCollection) {
        const this: *IHidNumericControlDescription = @ptrCast(self);
        return try this.getParentCollections();
    }
    pub const NAME: []const u8 = "Windows.Devices.HumanInterfaceDevice.HidNumericControlDescription";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IHidNumericControlDescription.GUID;
    pub const IID: Guid = IHidNumericControlDescription.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IHidNumericControlDescription.SIGNATURE);
};
pub const HidOutputReport = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getId(self: *@This()) core.HResult!u16 {
        const this: *IHidOutputReport = @ptrCast(self);
        return try this.getId();
    }
    pub fn getData(self: *@This()) core.HResult!*IBuffer {
        const this: *IHidOutputReport = @ptrCast(self);
        return try this.getData();
    }
    pub fn putData(self: *@This(), value: *IBuffer) core.HResult!void {
        const this: *IHidOutputReport = @ptrCast(self);
        return try this.putData(value);
    }
    pub fn GetBooleanControl(self: *@This(), usagePage: u16, usageId: u16) core.HResult!*HidBooleanControl {
        const this: *IHidOutputReport = @ptrCast(self);
        return try this.GetBooleanControl(usagePage, usageId);
    }
    pub fn GetBooleanControlByDescription(self: *@This(), controlDescription: *HidBooleanControlDescription) core.HResult!*HidBooleanControl {
        const this: *IHidOutputReport = @ptrCast(self);
        return try this.GetBooleanControlByDescription(controlDescription);
    }
    pub fn GetNumericControl(self: *@This(), usagePage: u16, usageId: u16) core.HResult!*HidNumericControl {
        const this: *IHidOutputReport = @ptrCast(self);
        return try this.GetNumericControl(usagePage, usageId);
    }
    pub fn GetNumericControlByDescription(self: *@This(), controlDescription: *HidNumericControlDescription) core.HResult!*HidNumericControl {
        const this: *IHidOutputReport = @ptrCast(self);
        return try this.GetNumericControlByDescription(controlDescription);
    }
    pub const NAME: []const u8 = "Windows.Devices.HumanInterfaceDevice.HidOutputReport";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IHidOutputReport.GUID;
    pub const IID: Guid = IHidOutputReport.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IHidOutputReport.SIGNATURE);
};
pub const HidReportType = enum(i32) {
    Input = 0,
    Output = 1,
    Feature = 2,
};
pub const IHidBooleanControl = extern struct {
    vtable: *const VTable,
    pub fn getId(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_Id(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getUsagePage(self: *@This()) core.HResult!u16 {
        var _r: u16 = undefined;
        const _c = self.vtable.get_UsagePage(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getUsageId(self: *@This()) core.HResult!u16 {
        var _r: u16 = undefined;
        const _c = self.vtable.get_UsageId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsActive(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsActive(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIsActive(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsActive(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getControlDescription(self: *@This()) core.HResult!*HidBooleanControlDescription {
        var _r: *HidBooleanControlDescription = undefined;
        const _c = self.vtable.get_ControlDescription(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.HumanInterfaceDevice.IHidBooleanControl";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "524df48a-3695-408c-bba2-e2eb5abfbc20";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Id: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_UsagePage: *const fn(self: *anyopaque, _r: *u16) callconv(.winapi) HRESULT,
        get_UsageId: *const fn(self: *anyopaque, _r: *u16) callconv(.winapi) HRESULT,
        get_IsActive: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IsActive: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_ControlDescription: *const fn(self: *anyopaque, _r: **HidBooleanControlDescription) callconv(.winapi) HRESULT,
    };
};
pub const IHidBooleanControlDescription = extern struct {
    vtable: *const VTable,
    pub fn getId(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_Id(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getReportId(self: *@This()) core.HResult!u16 {
        var _r: u16 = undefined;
        const _c = self.vtable.get_ReportId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getReportType(self: *@This()) core.HResult!HidReportType {
        var _r: HidReportType = undefined;
        const _c = self.vtable.get_ReportType(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getUsagePage(self: *@This()) core.HResult!u16 {
        var _r: u16 = undefined;
        const _c = self.vtable.get_UsagePage(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getUsageId(self: *@This()) core.HResult!u16 {
        var _r: u16 = undefined;
        const _c = self.vtable.get_UsageId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getParentCollections(self: *@This()) core.HResult!*IVectorView(HidCollection) {
        var _r: *IVectorView(HidCollection) = undefined;
        const _c = self.vtable.get_ParentCollections(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.HumanInterfaceDevice.IHidBooleanControlDescription";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "6196e543-29d8-4a2a-8683-849e207bbe31";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Id: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_ReportId: *const fn(self: *anyopaque, _r: *u16) callconv(.winapi) HRESULT,
        get_ReportType: *const fn(self: *anyopaque, _r: *HidReportType) callconv(.winapi) HRESULT,
        get_UsagePage: *const fn(self: *anyopaque, _r: *u16) callconv(.winapi) HRESULT,
        get_UsageId: *const fn(self: *anyopaque, _r: *u16) callconv(.winapi) HRESULT,
        get_ParentCollections: *const fn(self: *anyopaque, _r: **IVectorView(HidCollection)) callconv(.winapi) HRESULT,
    };
};
pub const IHidBooleanControlDescription2 = extern struct {
    vtable: *const VTable,
    pub fn getIsAbsolute(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsAbsolute(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.HumanInterfaceDevice.IHidBooleanControlDescription2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c8eed2ea-8a77-4c36-aa00-5ff0449d3e73";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IsAbsolute: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IHidCollection = extern struct {
    vtable: *const VTable,
    pub fn getId(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_Id(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getType(self: *@This()) core.HResult!HidCollectionType {
        var _r: HidCollectionType = undefined;
        const _c = self.vtable.get_Type(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getUsagePage(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_UsagePage(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getUsageId(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_UsageId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.HumanInterfaceDevice.IHidCollection";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7189f5a3-32f1-46e3-befd-44d2663b7e6a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Id: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_Type: *const fn(self: *anyopaque, _r: *HidCollectionType) callconv(.winapi) HRESULT,
        get_UsagePage: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_UsageId: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
    };
};
pub const IHidDevice = extern struct {
    vtable: *const VTable,
    pub fn getVendorId(self: *@This()) core.HResult!u16 {
        var _r: u16 = undefined;
        const _c = self.vtable.get_VendorId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getProductId(self: *@This()) core.HResult!u16 {
        var _r: u16 = undefined;
        const _c = self.vtable.get_ProductId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getVersion(self: *@This()) core.HResult!u16 {
        var _r: u16 = undefined;
        const _c = self.vtable.get_Version(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getUsagePage(self: *@This()) core.HResult!u16 {
        var _r: u16 = undefined;
        const _c = self.vtable.get_UsagePage(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getUsageId(self: *@This()) core.HResult!u16 {
        var _r: u16 = undefined;
        const _c = self.vtable.get_UsageId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetInputReportAsync(self: *@This()) core.HResult!*IAsyncOperation(HidInputReport) {
        var _r: *IAsyncOperation(HidInputReport) = undefined;
        const _c = self.vtable.GetInputReportAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetInputReportAsync(self: *@This(), reportId: u16) core.HResult!*IAsyncOperation(HidInputReport) {
        var _r: *IAsyncOperation(HidInputReport) = undefined;
        const _c = self.vtable.GetInputReportAsync(@ptrCast(self), reportId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetFeatureReportAsync(self: *@This()) core.HResult!*IAsyncOperation(HidFeatureReport) {
        var _r: *IAsyncOperation(HidFeatureReport) = undefined;
        const _c = self.vtable.GetFeatureReportAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetFeatureReportAsync(self: *@This(), reportId: u16) core.HResult!*IAsyncOperation(HidFeatureReport) {
        var _r: *IAsyncOperation(HidFeatureReport) = undefined;
        const _c = self.vtable.GetFeatureReportAsync(@ptrCast(self), reportId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateOutputReport(self: *@This()) core.HResult!*HidOutputReport {
        var _r: *HidOutputReport = undefined;
        const _c = self.vtable.CreateOutputReport(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateOutputReport(self: *@This(), reportId: u16) core.HResult!*HidOutputReport {
        var _r: *HidOutputReport = undefined;
        const _c = self.vtable.CreateOutputReport(@ptrCast(self), reportId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateFeatureReport(self: *@This()) core.HResult!*HidFeatureReport {
        var _r: *HidFeatureReport = undefined;
        const _c = self.vtable.CreateFeatureReport(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateFeatureReport(self: *@This(), reportId: u16) core.HResult!*HidFeatureReport {
        var _r: *HidFeatureReport = undefined;
        const _c = self.vtable.CreateFeatureReport(@ptrCast(self), reportId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SendOutputReportAsync(self: *@This(), outputReport: *HidOutputReport) core.HResult!*IAsyncOperation(u32) {
        var _r: *IAsyncOperation(u32) = undefined;
        const _c = self.vtable.SendOutputReportAsync(@ptrCast(self), outputReport, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SendFeatureReportAsync(self: *@This(), featureReport: *HidFeatureReport) core.HResult!*IAsyncOperation(u32) {
        var _r: *IAsyncOperation(u32) = undefined;
        const _c = self.vtable.SendFeatureReportAsync(@ptrCast(self), featureReport, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetBooleanControlDescriptions(self: *@This(), reportType: HidReportType, usagePage: u16, usageId: u16) core.HResult!*IVectorView(HidBooleanControlDescription) {
        var _r: *IVectorView(HidBooleanControlDescription) = undefined;
        const _c = self.vtable.GetBooleanControlDescriptions(@ptrCast(self), reportType, usagePage, usageId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetNumericControlDescriptions(self: *@This(), reportType: HidReportType, usagePage: u16, usageId: u16) core.HResult!*IVectorView(HidNumericControlDescription) {
        var _r: *IVectorView(HidNumericControlDescription) = undefined;
        const _c = self.vtable.GetNumericControlDescriptions(@ptrCast(self), reportType, usagePage, usageId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addInputReportReceived(self: *@This(), reportHandler: *TypedEventHandler(HidDevice,HidInputReportReceivedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_InputReportReceived(@ptrCast(self), reportHandler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeInputReportReceived(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_InputReportReceived(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Devices.HumanInterfaceDevice.IHidDevice";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5f8a14e7-2200-432e-95da-d09b87d574a8";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_VendorId: *const fn(self: *anyopaque, _r: *u16) callconv(.winapi) HRESULT,
        get_ProductId: *const fn(self: *anyopaque, _r: *u16) callconv(.winapi) HRESULT,
        get_Version: *const fn(self: *anyopaque, _r: *u16) callconv(.winapi) HRESULT,
        get_UsagePage: *const fn(self: *anyopaque, _r: *u16) callconv(.winapi) HRESULT,
        get_UsageId: *const fn(self: *anyopaque, _r: *u16) callconv(.winapi) HRESULT,
        GetInputReportAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(HidInputReport)) callconv(.winapi) HRESULT,
        GetInputReportAsync: *const fn(self: *anyopaque, reportId: u16, _r: **IAsyncOperation(HidInputReport)) callconv(.winapi) HRESULT,
        GetFeatureReportAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(HidFeatureReport)) callconv(.winapi) HRESULT,
        GetFeatureReportAsync: *const fn(self: *anyopaque, reportId: u16, _r: **IAsyncOperation(HidFeatureReport)) callconv(.winapi) HRESULT,
        CreateOutputReport: *const fn(self: *anyopaque, _r: **HidOutputReport) callconv(.winapi) HRESULT,
        CreateOutputReport: *const fn(self: *anyopaque, reportId: u16, _r: **HidOutputReport) callconv(.winapi) HRESULT,
        CreateFeatureReport: *const fn(self: *anyopaque, _r: **HidFeatureReport) callconv(.winapi) HRESULT,
        CreateFeatureReport: *const fn(self: *anyopaque, reportId: u16, _r: **HidFeatureReport) callconv(.winapi) HRESULT,
        SendOutputReportAsync: *const fn(self: *anyopaque, outputReport: *HidOutputReport, _r: **IAsyncOperation(u32)) callconv(.winapi) HRESULT,
        SendFeatureReportAsync: *const fn(self: *anyopaque, featureReport: *HidFeatureReport, _r: **IAsyncOperation(u32)) callconv(.winapi) HRESULT,
        GetBooleanControlDescriptions: *const fn(self: *anyopaque, reportType: HidReportType, usagePage: u16, usageId: u16, _r: **IVectorView(HidBooleanControlDescription)) callconv(.winapi) HRESULT,
        GetNumericControlDescriptions: *const fn(self: *anyopaque, reportType: HidReportType, usagePage: u16, usageId: u16, _r: **IVectorView(HidNumericControlDescription)) callconv(.winapi) HRESULT,
        add_InputReportReceived: *const fn(self: *anyopaque, reportHandler: *TypedEventHandler(HidDevice,HidInputReportReceivedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_InputReportReceived: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IHidDeviceStatics = extern struct {
    vtable: *const VTable,
    pub fn GetDeviceSelector(self: *@This(), usagePage: u16, usageId: u16) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.GetDeviceSelector(@ptrCast(self), usagePage, usageId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetDeviceSelectorWithVendorIdWithProductId(self: *@This(), usagePage: u16, usageId: u16, vendorId: u16, productId: u16) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.GetDeviceSelectorWithVendorIdWithProductId(@ptrCast(self), usagePage, usageId, vendorId, productId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FromIdAsync(self: *@This(), deviceId: HSTRING, accessMode: FileAccessMode) core.HResult!*IAsyncOperation(HidDevice) {
        var _r: *IAsyncOperation(HidDevice) = undefined;
        const _c = self.vtable.FromIdAsync(@ptrCast(self), deviceId, accessMode, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.HumanInterfaceDevice.IHidDeviceStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "9e5981e4-9856-418c-9f73-77de0cd85754";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetDeviceSelector: *const fn(self: *anyopaque, usagePage: u16, usageId: u16, _r: *HSTRING) callconv(.winapi) HRESULT,
        GetDeviceSelectorWithVendorIdWithProductId: *const fn(self: *anyopaque, usagePage: u16, usageId: u16, vendorId: u16, productId: u16, _r: *HSTRING) callconv(.winapi) HRESULT,
        FromIdAsync: *const fn(self: *anyopaque, deviceId: HSTRING, accessMode: FileAccessMode, _r: **IAsyncOperation(HidDevice)) callconv(.winapi) HRESULT,
    };
};
pub const IHidFeatureReport = extern struct {
    vtable: *const VTable,
    pub fn getId(self: *@This()) core.HResult!u16 {
        var _r: u16 = undefined;
        const _c = self.vtable.get_Id(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getData(self: *@This()) core.HResult!*IBuffer {
        var _r: *IBuffer = undefined;
        const _c = self.vtable.get_Data(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putData(self: *@This(), value: *IBuffer) core.HResult!void {
        const _c = self.vtable.put_Data(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn GetBooleanControl(self: *@This(), usagePage: u16, usageId: u16) core.HResult!*HidBooleanControl {
        var _r: *HidBooleanControl = undefined;
        const _c = self.vtable.GetBooleanControl(@ptrCast(self), usagePage, usageId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetBooleanControlByDescription(self: *@This(), controlDescription: *HidBooleanControlDescription) core.HResult!*HidBooleanControl {
        var _r: *HidBooleanControl = undefined;
        const _c = self.vtable.GetBooleanControlByDescription(@ptrCast(self), controlDescription, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetNumericControl(self: *@This(), usagePage: u16, usageId: u16) core.HResult!*HidNumericControl {
        var _r: *HidNumericControl = undefined;
        const _c = self.vtable.GetNumericControl(@ptrCast(self), usagePage, usageId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetNumericControlByDescription(self: *@This(), controlDescription: *HidNumericControlDescription) core.HResult!*HidNumericControl {
        var _r: *HidNumericControl = undefined;
        const _c = self.vtable.GetNumericControlByDescription(@ptrCast(self), controlDescription, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.HumanInterfaceDevice.IHidFeatureReport";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "841d9b79-5ae5-46e3-82ef-1fec5c8942f4";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Id: *const fn(self: *anyopaque, _r: *u16) callconv(.winapi) HRESULT,
        get_Data: *const fn(self: *anyopaque, _r: **IBuffer) callconv(.winapi) HRESULT,
        put_Data: *const fn(self: *anyopaque, value: *IBuffer) callconv(.winapi) HRESULT,
        GetBooleanControl: *const fn(self: *anyopaque, usagePage: u16, usageId: u16, _r: **HidBooleanControl) callconv(.winapi) HRESULT,
        GetBooleanControlByDescription: *const fn(self: *anyopaque, controlDescription: *HidBooleanControlDescription, _r: **HidBooleanControl) callconv(.winapi) HRESULT,
        GetNumericControl: *const fn(self: *anyopaque, usagePage: u16, usageId: u16, _r: **HidNumericControl) callconv(.winapi) HRESULT,
        GetNumericControlByDescription: *const fn(self: *anyopaque, controlDescription: *HidNumericControlDescription, _r: **HidNumericControl) callconv(.winapi) HRESULT,
    };
};
pub const IHidInputReport = extern struct {
    vtable: *const VTable,
    pub fn getId(self: *@This()) core.HResult!u16 {
        var _r: u16 = undefined;
        const _c = self.vtable.get_Id(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getData(self: *@This()) core.HResult!*IBuffer {
        var _r: *IBuffer = undefined;
        const _c = self.vtable.get_Data(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getActivatedBooleanControls(self: *@This()) core.HResult!*IVectorView(HidBooleanControl) {
        var _r: *IVectorView(HidBooleanControl) = undefined;
        const _c = self.vtable.get_ActivatedBooleanControls(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTransitionedBooleanControls(self: *@This()) core.HResult!*IVectorView(HidBooleanControl) {
        var _r: *IVectorView(HidBooleanControl) = undefined;
        const _c = self.vtable.get_TransitionedBooleanControls(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetBooleanControl(self: *@This(), usagePage: u16, usageId: u16) core.HResult!*HidBooleanControl {
        var _r: *HidBooleanControl = undefined;
        const _c = self.vtable.GetBooleanControl(@ptrCast(self), usagePage, usageId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetBooleanControlByDescription(self: *@This(), controlDescription: *HidBooleanControlDescription) core.HResult!*HidBooleanControl {
        var _r: *HidBooleanControl = undefined;
        const _c = self.vtable.GetBooleanControlByDescription(@ptrCast(self), controlDescription, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetNumericControl(self: *@This(), usagePage: u16, usageId: u16) core.HResult!*HidNumericControl {
        var _r: *HidNumericControl = undefined;
        const _c = self.vtable.GetNumericControl(@ptrCast(self), usagePage, usageId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetNumericControlByDescription(self: *@This(), controlDescription: *HidNumericControlDescription) core.HResult!*HidNumericControl {
        var _r: *HidNumericControl = undefined;
        const _c = self.vtable.GetNumericControlByDescription(@ptrCast(self), controlDescription, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.HumanInterfaceDevice.IHidInputReport";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c35d0e50-f7e7-4e8d-b23e-cabbe56b90e9";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Id: *const fn(self: *anyopaque, _r: *u16) callconv(.winapi) HRESULT,
        get_Data: *const fn(self: *anyopaque, _r: **IBuffer) callconv(.winapi) HRESULT,
        get_ActivatedBooleanControls: *const fn(self: *anyopaque, _r: **IVectorView(HidBooleanControl)) callconv(.winapi) HRESULT,
        get_TransitionedBooleanControls: *const fn(self: *anyopaque, _r: **IVectorView(HidBooleanControl)) callconv(.winapi) HRESULT,
        GetBooleanControl: *const fn(self: *anyopaque, usagePage: u16, usageId: u16, _r: **HidBooleanControl) callconv(.winapi) HRESULT,
        GetBooleanControlByDescription: *const fn(self: *anyopaque, controlDescription: *HidBooleanControlDescription, _r: **HidBooleanControl) callconv(.winapi) HRESULT,
        GetNumericControl: *const fn(self: *anyopaque, usagePage: u16, usageId: u16, _r: **HidNumericControl) callconv(.winapi) HRESULT,
        GetNumericControlByDescription: *const fn(self: *anyopaque, controlDescription: *HidNumericControlDescription, _r: **HidNumericControl) callconv(.winapi) HRESULT,
    };
};
pub const IHidInputReportReceivedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getReport(self: *@This()) core.HResult!*HidInputReport {
        var _r: *HidInputReport = undefined;
        const _c = self.vtable.get_Report(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.HumanInterfaceDevice.IHidInputReportReceivedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7059c5cb-59b2-4dc2-985c-0adc6136fa2d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Report: *const fn(self: *anyopaque, _r: **HidInputReport) callconv(.winapi) HRESULT,
    };
};
pub const IHidNumericControl = extern struct {
    vtable: *const VTable,
    pub fn getId(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_Id(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsGrouped(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsGrouped(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getUsagePage(self: *@This()) core.HResult!u16 {
        var _r: u16 = undefined;
        const _c = self.vtable.get_UsagePage(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getUsageId(self: *@This()) core.HResult!u16 {
        var _r: u16 = undefined;
        const _c = self.vtable.get_UsageId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getValue(self: *@This()) core.HResult!i64 {
        var _r: i64 = undefined;
        const _c = self.vtable.get_Value(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putValue(self: *@This(), value: i64) core.HResult!void {
        const _c = self.vtable.put_Value(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getScaledValue(self: *@This()) core.HResult!i64 {
        var _r: i64 = undefined;
        const _c = self.vtable.get_ScaledValue(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putScaledValue(self: *@This(), value: i64) core.HResult!void {
        const _c = self.vtable.put_ScaledValue(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getControlDescription(self: *@This()) core.HResult!*HidNumericControlDescription {
        var _r: *HidNumericControlDescription = undefined;
        const _c = self.vtable.get_ControlDescription(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.HumanInterfaceDevice.IHidNumericControl";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e38a12a5-35a7-4b75-89c8-fb1f28b10823";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Id: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_IsGrouped: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_UsagePage: *const fn(self: *anyopaque, _r: *u16) callconv(.winapi) HRESULT,
        get_UsageId: *const fn(self: *anyopaque, _r: *u16) callconv(.winapi) HRESULT,
        get_Value: *const fn(self: *anyopaque, _r: *i64) callconv(.winapi) HRESULT,
        put_Value: *const fn(self: *anyopaque, value: i64) callconv(.winapi) HRESULT,
        get_ScaledValue: *const fn(self: *anyopaque, _r: *i64) callconv(.winapi) HRESULT,
        put_ScaledValue: *const fn(self: *anyopaque, value: i64) callconv(.winapi) HRESULT,
        get_ControlDescription: *const fn(self: *anyopaque, _r: **HidNumericControlDescription) callconv(.winapi) HRESULT,
    };
};
pub const IHidNumericControlDescription = extern struct {
    vtable: *const VTable,
    pub fn getId(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_Id(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getReportId(self: *@This()) core.HResult!u16 {
        var _r: u16 = undefined;
        const _c = self.vtable.get_ReportId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getReportType(self: *@This()) core.HResult!HidReportType {
        var _r: HidReportType = undefined;
        const _c = self.vtable.get_ReportType(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getReportSize(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_ReportSize(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getReportCount(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_ReportCount(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getUsagePage(self: *@This()) core.HResult!u16 {
        var _r: u16 = undefined;
        const _c = self.vtable.get_UsagePage(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getUsageId(self: *@This()) core.HResult!u16 {
        var _r: u16 = undefined;
        const _c = self.vtable.get_UsageId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getLogicalMinimum(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_LogicalMinimum(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getLogicalMaximum(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_LogicalMaximum(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPhysicalMinimum(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_PhysicalMinimum(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPhysicalMaximum(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_PhysicalMaximum(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getUnitExponent(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_UnitExponent(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getUnit(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_Unit(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsAbsolute(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsAbsolute(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getHasNull(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_HasNull(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getParentCollections(self: *@This()) core.HResult!*IVectorView(HidCollection) {
        var _r: *IVectorView(HidCollection) = undefined;
        const _c = self.vtable.get_ParentCollections(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.HumanInterfaceDevice.IHidNumericControlDescription";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "638d5e86-1d97-4c75-927f-5ff58ba05e32";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Id: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_ReportId: *const fn(self: *anyopaque, _r: *u16) callconv(.winapi) HRESULT,
        get_ReportType: *const fn(self: *anyopaque, _r: *HidReportType) callconv(.winapi) HRESULT,
        get_ReportSize: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_ReportCount: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_UsagePage: *const fn(self: *anyopaque, _r: *u16) callconv(.winapi) HRESULT,
        get_UsageId: *const fn(self: *anyopaque, _r: *u16) callconv(.winapi) HRESULT,
        get_LogicalMinimum: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        get_LogicalMaximum: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        get_PhysicalMinimum: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        get_PhysicalMaximum: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        get_UnitExponent: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_Unit: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_IsAbsolute: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_HasNull: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_ParentCollections: *const fn(self: *anyopaque, _r: **IVectorView(HidCollection)) callconv(.winapi) HRESULT,
    };
};
pub const IHidOutputReport = extern struct {
    vtable: *const VTable,
    pub fn getId(self: *@This()) core.HResult!u16 {
        var _r: u16 = undefined;
        const _c = self.vtable.get_Id(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getData(self: *@This()) core.HResult!*IBuffer {
        var _r: *IBuffer = undefined;
        const _c = self.vtable.get_Data(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putData(self: *@This(), value: *IBuffer) core.HResult!void {
        const _c = self.vtable.put_Data(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn GetBooleanControl(self: *@This(), usagePage: u16, usageId: u16) core.HResult!*HidBooleanControl {
        var _r: *HidBooleanControl = undefined;
        const _c = self.vtable.GetBooleanControl(@ptrCast(self), usagePage, usageId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetBooleanControlByDescription(self: *@This(), controlDescription: *HidBooleanControlDescription) core.HResult!*HidBooleanControl {
        var _r: *HidBooleanControl = undefined;
        const _c = self.vtable.GetBooleanControlByDescription(@ptrCast(self), controlDescription, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetNumericControl(self: *@This(), usagePage: u16, usageId: u16) core.HResult!*HidNumericControl {
        var _r: *HidNumericControl = undefined;
        const _c = self.vtable.GetNumericControl(@ptrCast(self), usagePage, usageId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetNumericControlByDescription(self: *@This(), controlDescription: *HidNumericControlDescription) core.HResult!*HidNumericControl {
        var _r: *HidNumericControl = undefined;
        const _c = self.vtable.GetNumericControlByDescription(@ptrCast(self), controlDescription, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.HumanInterfaceDevice.IHidOutputReport";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "62cb2544-c896-4463-93c1-df9db053c450";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Id: *const fn(self: *anyopaque, _r: *u16) callconv(.winapi) HRESULT,
        get_Data: *const fn(self: *anyopaque, _r: **IBuffer) callconv(.winapi) HRESULT,
        put_Data: *const fn(self: *anyopaque, value: *IBuffer) callconv(.winapi) HRESULT,
        GetBooleanControl: *const fn(self: *anyopaque, usagePage: u16, usageId: u16, _r: **HidBooleanControl) callconv(.winapi) HRESULT,
        GetBooleanControlByDescription: *const fn(self: *anyopaque, controlDescription: *HidBooleanControlDescription, _r: **HidBooleanControl) callconv(.winapi) HRESULT,
        GetNumericControl: *const fn(self: *anyopaque, usagePage: u16, usageId: u16, _r: **HidNumericControl) callconv(.winapi) HRESULT,
        GetNumericControlByDescription: *const fn(self: *anyopaque, controlDescription: *HidNumericControlDescription, _r: **HidNumericControl) callconv(.winapi) HRESULT,
    };
};
const IUnknown = @import("../root.zig").IUnknown;
const Guid = @import("../root.zig").Guid;
const IVectorView = @import("../Foundation/Collections.zig").IVectorView;
const FileAccessMode = @import("../Storage.zig").FileAccessMode;
const IInspectable = @import("../Foundation.zig").IInspectable;
const IBuffer = @import("../Storage/Streams.zig").IBuffer;
const HRESULT = @import("../root.zig").HRESULT;
const core = @import("../root.zig").core;
const IAsyncOperation = @import("../Foundation.zig").IAsyncOperation;
const FactoryCache = @import("../core.zig").FactoryCache;
const EventRegistrationToken = @import("../Foundation.zig").EventRegistrationToken;
const TrustLevel = @import("../root.zig").TrustLevel;
const IClosable = @import("../Foundation.zig").IClosable;
const TypedEventHandler = @import("../Foundation.zig").TypedEventHandler;
const HSTRING = @import("../root.zig").HSTRING;
