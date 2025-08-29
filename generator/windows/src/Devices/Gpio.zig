pub const GpioChangeCount = extern struct {
    Count: u64,
    RelativeTime: TimeSpan,
};
pub const GpioChangeCounter = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn putPolarity(self: *@This(), value: GpioChangePolarity) core.HResult!void {
        const this: *IGpioChangeCounter = @ptrCast(self);
        return try this.putPolarity(value);
    }
    pub fn getPolarity(self: *@This()) core.HResult!GpioChangePolarity {
        const this: *IGpioChangeCounter = @ptrCast(self);
        return try this.getPolarity();
    }
    pub fn getIsStarted(self: *@This()) core.HResult!bool {
        const this: *IGpioChangeCounter = @ptrCast(self);
        return try this.getIsStarted();
    }
    pub fn Start(self: *@This()) core.HResult!void {
        const this: *IGpioChangeCounter = @ptrCast(self);
        return try this.Start();
    }
    pub fn Stop(self: *@This()) core.HResult!void {
        const this: *IGpioChangeCounter = @ptrCast(self);
        return try this.Stop();
    }
    pub fn Read(self: *@This()) core.HResult!GpioChangeCount {
        const this: *IGpioChangeCounter = @ptrCast(self);
        return try this.Read();
    }
    pub fn Reset(self: *@This()) core.HResult!GpioChangeCount {
        const this: *IGpioChangeCounter = @ptrCast(self);
        return try this.Reset();
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
    pub fn Create(pin: *GpioPin) core.HResult!*GpioChangeCounter {
        const factory = @This().IGpioChangeCounterFactoryCache.get();
        return try factory.Create(pin);
    }
    pub const NAME: []const u8 = "Windows.Devices.Gpio.GpioChangeCounter";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IGpioChangeCounter.GUID;
    pub const IID: Guid = IGpioChangeCounter.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IGpioChangeCounter.SIGNATURE);
    var _IGpioChangeCounterFactoryCache: FactoryCache(IGpioChangeCounterFactory, RUNTIME_NAME) = .{};
};
pub const GpioChangePolarity = enum(i32) {
    Falling = 0,
    Rising = 1,
    Both = 2,
};
pub const GpioChangeReader = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getCapacity(self: *@This()) core.HResult!i32 {
        const this: *IGpioChangeReader = @ptrCast(self);
        return try this.getCapacity();
    }
    pub fn getLength(self: *@This()) core.HResult!i32 {
        const this: *IGpioChangeReader = @ptrCast(self);
        return try this.getLength();
    }
    pub fn getIsEmpty(self: *@This()) core.HResult!bool {
        const this: *IGpioChangeReader = @ptrCast(self);
        return try this.getIsEmpty();
    }
    pub fn getIsOverflowed(self: *@This()) core.HResult!bool {
        const this: *IGpioChangeReader = @ptrCast(self);
        return try this.getIsOverflowed();
    }
    pub fn putPolarity(self: *@This(), value: GpioChangePolarity) core.HResult!void {
        const this: *IGpioChangeReader = @ptrCast(self);
        return try this.putPolarity(value);
    }
    pub fn getPolarity(self: *@This()) core.HResult!GpioChangePolarity {
        const this: *IGpioChangeReader = @ptrCast(self);
        return try this.getPolarity();
    }
    pub fn getIsStarted(self: *@This()) core.HResult!bool {
        const this: *IGpioChangeReader = @ptrCast(self);
        return try this.getIsStarted();
    }
    pub fn Start(self: *@This()) core.HResult!void {
        const this: *IGpioChangeReader = @ptrCast(self);
        return try this.Start();
    }
    pub fn Stop(self: *@This()) core.HResult!void {
        const this: *IGpioChangeReader = @ptrCast(self);
        return try this.Stop();
    }
    pub fn Clear(self: *@This()) core.HResult!void {
        const this: *IGpioChangeReader = @ptrCast(self);
        return try this.Clear();
    }
    pub fn GetNextItem(self: *@This()) core.HResult!GpioChangeRecord {
        const this: *IGpioChangeReader = @ptrCast(self);
        return try this.GetNextItem();
    }
    pub fn PeekNextItem(self: *@This()) core.HResult!GpioChangeRecord {
        const this: *IGpioChangeReader = @ptrCast(self);
        return try this.PeekNextItem();
    }
    pub fn GetAllItems(self: *@This()) core.HResult!*IVector(GpioChangeRecord) {
        const this: *IGpioChangeReader = @ptrCast(self);
        return try this.GetAllItems();
    }
    pub fn WaitForItemsAsync(self: *@This(), count: i32) core.HResult!*IAsyncAction {
        const this: *IGpioChangeReader = @ptrCast(self);
        return try this.WaitForItemsAsync(count);
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
    pub fn Create(pin: *GpioPin) core.HResult!*GpioChangeReader {
        const factory = @This().IGpioChangeReaderFactoryCache.get();
        return try factory.Create(pin);
    }
    pub fn CreateWithCapacity(pin: *GpioPin, minCapacity: i32) core.HResult!*GpioChangeReader {
        const factory = @This().IGpioChangeReaderFactoryCache.get();
        return try factory.CreateWithCapacity(pin, minCapacity);
    }
    pub const NAME: []const u8 = "Windows.Devices.Gpio.GpioChangeReader";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IGpioChangeReader.GUID;
    pub const IID: Guid = IGpioChangeReader.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IGpioChangeReader.SIGNATURE);
    var _IGpioChangeReaderFactoryCache: FactoryCache(IGpioChangeReaderFactory, RUNTIME_NAME) = .{};
};
pub const GpioChangeRecord = extern struct {
    RelativeTime: TimeSpan,
    Edge: GpioPinEdge,
};
pub const GpioController = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getPinCount(self: *@This()) core.HResult!i32 {
        const this: *IGpioController = @ptrCast(self);
        return try this.getPinCount();
    }
    pub fn OpenPin(self: *@This(), pinNumber: i32) core.HResult!*GpioPin {
        const this: *IGpioController = @ptrCast(self);
        return try this.OpenPin(pinNumber);
    }
    pub fn OpenPinWithSharingMode(self: *@This(), pinNumber: i32, sharingMode: GpioSharingMode) core.HResult!*GpioPin {
        const this: *IGpioController = @ptrCast(self);
        return try this.OpenPinWithSharingMode(pinNumber, sharingMode);
    }
    pub fn TryOpenPin(self: *@This(), pinNumber: i32, sharingMode: GpioSharingMode, pin: *GpioPin, openStatus: GpioOpenStatus) core.HResult!bool {
        const this: *IGpioController = @ptrCast(self);
        return try this.TryOpenPin(pinNumber, sharingMode, pin, openStatus);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn GetControllersAsync(provider: *IGpioProvider) core.HResult!*IAsyncOperation(IVectorView(GpioController)) {
        const factory = @This().IGpioControllerStatics2Cache.get();
        return try factory.GetControllersAsync(provider);
    }
    pub fn GetDefaultAsync() core.HResult!*IAsyncOperation(GpioController) {
        const factory = @This().IGpioControllerStatics2Cache.get();
        return try factory.GetDefaultAsync();
    }
    pub fn GetDefault() core.HResult!*GpioController {
        const factory = @This().IGpioControllerStaticsCache.get();
        return try factory.GetDefault();
    }
    pub const NAME: []const u8 = "Windows.Devices.Gpio.GpioController";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IGpioController.GUID;
    pub const IID: Guid = IGpioController.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IGpioController.SIGNATURE);
    var _IGpioControllerStatics2Cache: FactoryCache(IGpioControllerStatics2, RUNTIME_NAME) = .{};
    var _IGpioControllerStaticsCache: FactoryCache(IGpioControllerStatics, RUNTIME_NAME) = .{};
};
pub const GpioOpenStatus = enum(i32) {
    PinOpened = 0,
    PinUnavailable = 1,
    SharingViolation = 2,
    MuxingConflict = 3,
    UnknownError = 4,
};
pub const GpioPin = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn addValueChanged(self: *@This(), handler: *TypedEventHandler(GpioPin,GpioPinValueChangedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IGpioPin = @ptrCast(self);
        return try this.addValueChanged(handler);
    }
    pub fn removeValueChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IGpioPin = @ptrCast(self);
        return try this.removeValueChanged(token);
    }
    pub fn getDebounceTimeout(self: *@This()) core.HResult!TimeSpan {
        const this: *IGpioPin = @ptrCast(self);
        return try this.getDebounceTimeout();
    }
    pub fn putDebounceTimeout(self: *@This(), value: TimeSpan) core.HResult!void {
        const this: *IGpioPin = @ptrCast(self);
        return try this.putDebounceTimeout(value);
    }
    pub fn getPinNumber(self: *@This()) core.HResult!i32 {
        const this: *IGpioPin = @ptrCast(self);
        return try this.getPinNumber();
    }
    pub fn getSharingMode(self: *@This()) core.HResult!GpioSharingMode {
        const this: *IGpioPin = @ptrCast(self);
        return try this.getSharingMode();
    }
    pub fn IsDriveModeSupported(self: *@This(), driveMode: GpioPinDriveMode) core.HResult!bool {
        const this: *IGpioPin = @ptrCast(self);
        return try this.IsDriveModeSupported(driveMode);
    }
    pub fn GetDriveMode(self: *@This()) core.HResult!GpioPinDriveMode {
        const this: *IGpioPin = @ptrCast(self);
        return try this.GetDriveMode();
    }
    pub fn SetDriveMode(self: *@This(), value: GpioPinDriveMode) core.HResult!void {
        const this: *IGpioPin = @ptrCast(self);
        return try this.SetDriveMode(value);
    }
    pub fn Write(self: *@This(), value: GpioPinValue) core.HResult!void {
        const this: *IGpioPin = @ptrCast(self);
        return try this.Write(value);
    }
    pub fn Read(self: *@This()) core.HResult!GpioPinValue {
        const this: *IGpioPin = @ptrCast(self);
        return try this.Read();
    }
    pub fn Close(self: *@This()) core.HResult!void {
        var this: ?*IClosable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IClosable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Close();
    }
    pub const NAME: []const u8 = "Windows.Devices.Gpio.GpioPin";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IGpioPin.GUID;
    pub const IID: Guid = IGpioPin.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IGpioPin.SIGNATURE);
};
pub const GpioPinDriveMode = enum(i32) {
    Input = 0,
    Output = 1,
    InputPullUp = 2,
    InputPullDown = 3,
    OutputOpenDrain = 4,
    OutputOpenDrainPullUp = 5,
    OutputOpenSource = 6,
    OutputOpenSourcePullDown = 7,
};
pub const GpioPinEdge = enum(i32) {
    FallingEdge = 0,
    RisingEdge = 1,
};
pub const GpioPinValue = enum(i32) {
    Low = 0,
    High = 1,
};
pub const GpioPinValueChangedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getEdge(self: *@This()) core.HResult!GpioPinEdge {
        const this: *IGpioPinValueChangedEventArgs = @ptrCast(self);
        return try this.getEdge();
    }
    pub const NAME: []const u8 = "Windows.Devices.Gpio.GpioPinValueChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IGpioPinValueChangedEventArgs.GUID;
    pub const IID: Guid = IGpioPinValueChangedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IGpioPinValueChangedEventArgs.SIGNATURE);
};
pub const GpioSharingMode = enum(i32) {
    Exclusive = 0,
    SharedReadOnly = 1,
};
pub const IGpioChangeCounter = extern struct {
    vtable: *const VTable,
    pub fn putPolarity(self: *@This(), value: GpioChangePolarity) core.HResult!void {
        const _c = self.vtable.put_Polarity(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getPolarity(self: *@This()) core.HResult!GpioChangePolarity {
        var _r: GpioChangePolarity = undefined;
        const _c = self.vtable.get_Polarity(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsStarted(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsStarted(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn Start(self: *@This()) core.HResult!void {
        const _c = self.vtable.Start(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn Stop(self: *@This()) core.HResult!void {
        const _c = self.vtable.Stop(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn Read(self: *@This()) core.HResult!GpioChangeCount {
        var _r: GpioChangeCount = undefined;
        const _c = self.vtable.Read(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn Reset(self: *@This()) core.HResult!GpioChangeCount {
        var _r: GpioChangeCount = undefined;
        const _c = self.vtable.Reset(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Gpio.IGpioChangeCounter";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "cb5ec0de-6801-43ff-803d-4576628a8b26";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        put_Polarity: *const fn(self: *anyopaque, value: GpioChangePolarity) callconv(.winapi) HRESULT,
        get_Polarity: *const fn(self: *anyopaque, _r: *GpioChangePolarity) callconv(.winapi) HRESULT,
        get_IsStarted: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        Start: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        Stop: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        Read: *const fn(self: *anyopaque, _r: *GpioChangeCount) callconv(.winapi) HRESULT,
        Reset: *const fn(self: *anyopaque, _r: *GpioChangeCount) callconv(.winapi) HRESULT,
    };
};
pub const IGpioChangeCounterFactory = extern struct {
    vtable: *const VTable,
    pub fn Create(self: *@This(), pin: *GpioPin) core.HResult!*GpioChangeCounter {
        var _r: *GpioChangeCounter = undefined;
        const _c = self.vtable.Create(@ptrCast(self), pin, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Gpio.IGpioChangeCounterFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "147d94b6-0a9e-410c-b4fa-f89f4052084d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Create: *const fn(self: *anyopaque, pin: *GpioPin, _r: **GpioChangeCounter) callconv(.winapi) HRESULT,
    };
};
pub const IGpioChangeReader = extern struct {
    vtable: *const VTable,
    pub fn getCapacity(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_Capacity(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getLength(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_Length(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsEmpty(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsEmpty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsOverflowed(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsOverflowed(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putPolarity(self: *@This(), value: GpioChangePolarity) core.HResult!void {
        const _c = self.vtable.put_Polarity(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getPolarity(self: *@This()) core.HResult!GpioChangePolarity {
        var _r: GpioChangePolarity = undefined;
        const _c = self.vtable.get_Polarity(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsStarted(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsStarted(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn Start(self: *@This()) core.HResult!void {
        const _c = self.vtable.Start(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn Stop(self: *@This()) core.HResult!void {
        const _c = self.vtable.Stop(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn Clear(self: *@This()) core.HResult!void {
        const _c = self.vtable.Clear(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn GetNextItem(self: *@This()) core.HResult!GpioChangeRecord {
        var _r: GpioChangeRecord = undefined;
        const _c = self.vtable.GetNextItem(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn PeekNextItem(self: *@This()) core.HResult!GpioChangeRecord {
        var _r: GpioChangeRecord = undefined;
        const _c = self.vtable.PeekNextItem(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetAllItems(self: *@This()) core.HResult!*IVector(GpioChangeRecord) {
        var _r: *IVector(GpioChangeRecord) = undefined;
        const _c = self.vtable.GetAllItems(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn WaitForItemsAsync(self: *@This(), count: i32) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.WaitForItemsAsync(@ptrCast(self), count, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Gpio.IGpioChangeReader";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "0abc885f-e031-48e8-8590-70de78363c6d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Capacity: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        get_Length: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        get_IsEmpty: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsOverflowed: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_Polarity: *const fn(self: *anyopaque, value: GpioChangePolarity) callconv(.winapi) HRESULT,
        get_Polarity: *const fn(self: *anyopaque, _r: *GpioChangePolarity) callconv(.winapi) HRESULT,
        get_IsStarted: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        Start: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        Stop: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        Clear: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        GetNextItem: *const fn(self: *anyopaque, _r: *GpioChangeRecord) callconv(.winapi) HRESULT,
        PeekNextItem: *const fn(self: *anyopaque, _r: *GpioChangeRecord) callconv(.winapi) HRESULT,
        GetAllItems: *const fn(self: *anyopaque, _r: **IVector(GpioChangeRecord)) callconv(.winapi) HRESULT,
        WaitForItemsAsync: *const fn(self: *anyopaque, count: i32, _r: **IAsyncAction) callconv(.winapi) HRESULT,
    };
};
pub const IGpioChangeReaderFactory = extern struct {
    vtable: *const VTable,
    pub fn Create(self: *@This(), pin: *GpioPin) core.HResult!*GpioChangeReader {
        var _r: *GpioChangeReader = undefined;
        const _c = self.vtable.Create(@ptrCast(self), pin, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateWithCapacity(self: *@This(), pin: *GpioPin, minCapacity: i32) core.HResult!*GpioChangeReader {
        var _r: *GpioChangeReader = undefined;
        const _c = self.vtable.CreateWithCapacity(@ptrCast(self), pin, minCapacity, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Gpio.IGpioChangeReaderFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a9598ef3-390e-441a-9d1c-e8de0b2df0df";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Create: *const fn(self: *anyopaque, pin: *GpioPin, _r: **GpioChangeReader) callconv(.winapi) HRESULT,
        CreateWithCapacity: *const fn(self: *anyopaque, pin: *GpioPin, minCapacity: i32, _r: **GpioChangeReader) callconv(.winapi) HRESULT,
    };
};
pub const IGpioController = extern struct {
    vtable: *const VTable,
    pub fn getPinCount(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_PinCount(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn OpenPin(self: *@This(), pinNumber: i32) core.HResult!*GpioPin {
        var _r: *GpioPin = undefined;
        const _c = self.vtable.OpenPin(@ptrCast(self), pinNumber, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn OpenPinWithSharingMode(self: *@This(), pinNumber: i32, sharingMode: GpioSharingMode) core.HResult!*GpioPin {
        var _r: *GpioPin = undefined;
        const _c = self.vtable.OpenPinWithSharingMode(@ptrCast(self), pinNumber, sharingMode, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryOpenPin(self: *@This(), pinNumber: i32, sharingMode: GpioSharingMode, pin: *GpioPin, openStatus: GpioOpenStatus) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.TryOpenPin(@ptrCast(self), pinNumber, sharingMode, pin, openStatus, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Gpio.IGpioController";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "284012e3-7461-469c-a8bc-61d69d08a53c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_PinCount: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        OpenPin: *const fn(self: *anyopaque, pinNumber: i32, _r: **GpioPin) callconv(.winapi) HRESULT,
        OpenPinWithSharingMode: *const fn(self: *anyopaque, pinNumber: i32, sharingMode: GpioSharingMode, _r: **GpioPin) callconv(.winapi) HRESULT,
        TryOpenPin: *const fn(self: *anyopaque, pinNumber: i32, sharingMode: GpioSharingMode, pin: *GpioPin, openStatus: GpioOpenStatus, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IGpioControllerStatics = extern struct {
    vtable: *const VTable,
    pub fn GetDefault(self: *@This()) core.HResult!*GpioController {
        var _r: *GpioController = undefined;
        const _c = self.vtable.GetDefault(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Gpio.IGpioControllerStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2ed6f42e-7af7-4116-9533-c43d99a1fb64";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetDefault: *const fn(self: *anyopaque, _r: **GpioController) callconv(.winapi) HRESULT,
    };
};
pub const IGpioControllerStatics2 = extern struct {
    vtable: *const VTable,
    pub fn GetControllersAsync(self: *@This(), provider: *IGpioProvider) core.HResult!*IAsyncOperation(IVectorView(GpioController)) {
        var _r: *IAsyncOperation(IVectorView(GpioController)) = undefined;
        const _c = self.vtable.GetControllersAsync(@ptrCast(self), provider, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetDefaultAsync(self: *@This()) core.HResult!*IAsyncOperation(GpioController) {
        var _r: *IAsyncOperation(GpioController) = undefined;
        const _c = self.vtable.GetDefaultAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Gpio.IGpioControllerStatics2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "912b7d20-6ca4-4106-a373-fffd346b0e5b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetControllersAsync: *const fn(self: *anyopaque, provider: *IGpioProvider, _r: **IAsyncOperation(IVectorView(GpioController))) callconv(.winapi) HRESULT,
        GetDefaultAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(GpioController)) callconv(.winapi) HRESULT,
    };
};
pub const IGpioPin = extern struct {
    vtable: *const VTable,
    pub fn addValueChanged(self: *@This(), handler: *TypedEventHandler(GpioPin,GpioPinValueChangedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_ValueChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeValueChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_ValueChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getDebounceTimeout(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_DebounceTimeout(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDebounceTimeout(self: *@This(), value: TimeSpan) core.HResult!void {
        const _c = self.vtable.put_DebounceTimeout(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getPinNumber(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_PinNumber(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSharingMode(self: *@This()) core.HResult!GpioSharingMode {
        var _r: GpioSharingMode = undefined;
        const _c = self.vtable.get_SharingMode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn IsDriveModeSupported(self: *@This(), driveMode: GpioPinDriveMode) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.IsDriveModeSupported(@ptrCast(self), driveMode, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetDriveMode(self: *@This()) core.HResult!GpioPinDriveMode {
        var _r: GpioPinDriveMode = undefined;
        const _c = self.vtable.GetDriveMode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetDriveMode(self: *@This(), value: GpioPinDriveMode) core.HResult!void {
        const _c = self.vtable.SetDriveMode(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn Write(self: *@This(), value: GpioPinValue) core.HResult!void {
        const _c = self.vtable.Write(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn Read(self: *@This()) core.HResult!GpioPinValue {
        var _r: GpioPinValue = undefined;
        const _c = self.vtable.Read(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Gpio.IGpioPin";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "11d9b087-afae-4790-9ee9-e0eac942d201";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        add_ValueChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(GpioPin,GpioPinValueChangedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_ValueChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        get_DebounceTimeout: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
        put_DebounceTimeout: *const fn(self: *anyopaque, value: TimeSpan) callconv(.winapi) HRESULT,
        get_PinNumber: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        get_SharingMode: *const fn(self: *anyopaque, _r: *GpioSharingMode) callconv(.winapi) HRESULT,
        IsDriveModeSupported: *const fn(self: *anyopaque, driveMode: GpioPinDriveMode, _r: *bool) callconv(.winapi) HRESULT,
        GetDriveMode: *const fn(self: *anyopaque, _r: *GpioPinDriveMode) callconv(.winapi) HRESULT,
        SetDriveMode: *const fn(self: *anyopaque, value: GpioPinDriveMode) callconv(.winapi) HRESULT,
        Write: *const fn(self: *anyopaque, value: GpioPinValue) callconv(.winapi) HRESULT,
        Read: *const fn(self: *anyopaque, _r: *GpioPinValue) callconv(.winapi) HRESULT,
    };
};
pub const IGpioPinValueChangedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getEdge(self: *@This()) core.HResult!GpioPinEdge {
        var _r: GpioPinEdge = undefined;
        const _c = self.vtable.get_Edge(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Gpio.IGpioPinValueChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3137aae1-703d-4059-bd24-b5b25dffb84e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Edge: *const fn(self: *anyopaque, _r: *GpioPinEdge) callconv(.winapi) HRESULT,
    };
};
const IUnknown = @import("../root.zig").IUnknown;
const Guid = @import("../root.zig").Guid;
const IVectorView = @import("../Foundation/Collections.zig").IVectorView;
const IInspectable = @import("../Foundation.zig").IInspectable;
const IVector = @import("../Foundation/Collections.zig").IVector;
const TimeSpan = @import("../Foundation.zig").TimeSpan;
const IGpioProvider = @import("./Provider.zig").IGpioProvider;
const HRESULT = @import("../root.zig").HRESULT;
const FactoryCache = @import("../core.zig").FactoryCache;
const core = @import("../root.zig").core;
const IAsyncOperation = @import("../Foundation.zig").IAsyncOperation;
const EventRegistrationToken = @import("../Foundation.zig").EventRegistrationToken;
const TrustLevel = @import("../root.zig").TrustLevel;
const IClosable = @import("../Foundation.zig").IClosable;
const IAsyncAction = @import("../Foundation.zig").IAsyncAction;
const TypedEventHandler = @import("../Foundation.zig").TypedEventHandler;
const HSTRING = @import("../root.zig").HSTRING;
pub const Provider = @import("./Gpio/Provider.zig");
