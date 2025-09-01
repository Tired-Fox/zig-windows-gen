pub const BindableAttribute = extern struct {
    vtable: *const IInspectable.VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Data.BindableAttribute";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
};
pub const BindingBase = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateInstance(baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*BindingBase {
        const _f = @This().IBindingBaseFactoryCache.get();
        return try _f.CreateInstance(baseInterface, innerInterface);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Data.BindingBase";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IBindingBase.GUID;
    pub const IID: Guid = IBindingBase.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IBindingBase.SIGNATURE);
    var _IBindingBaseFactoryCache: FactoryCache(IBindingBaseFactory, RUNTIME_NAME) = .{};
};
pub const Binding = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getPath(self: *@This()) core.HResult!*PropertyPath {
        const this: *IBinding = @ptrCast(self);
        return try this.getPath();
    }
    pub fn putPath(self: *@This(), value: *PropertyPath) core.HResult!void {
        const this: *IBinding = @ptrCast(self);
        return try this.putPath(value);
    }
    pub fn getMode(self: *@This()) core.HResult!BindingMode {
        const this: *IBinding = @ptrCast(self);
        return try this.getMode();
    }
    pub fn putMode(self: *@This(), value: BindingMode) core.HResult!void {
        const this: *IBinding = @ptrCast(self);
        return try this.putMode(value);
    }
    pub fn getSource(self: *@This()) core.HResult!*IInspectable {
        const this: *IBinding = @ptrCast(self);
        return try this.getSource();
    }
    pub fn putSource(self: *@This(), value: *IInspectable) core.HResult!void {
        const this: *IBinding = @ptrCast(self);
        return try this.putSource(value);
    }
    pub fn getRelativeSource(self: *@This()) core.HResult!*RelativeSource {
        const this: *IBinding = @ptrCast(self);
        return try this.getRelativeSource();
    }
    pub fn putRelativeSource(self: *@This(), value: *RelativeSource) core.HResult!void {
        const this: *IBinding = @ptrCast(self);
        return try this.putRelativeSource(value);
    }
    pub fn getElementName(self: *@This()) core.HResult!HSTRING {
        const this: *IBinding = @ptrCast(self);
        return try this.getElementName();
    }
    pub fn putElementName(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IBinding = @ptrCast(self);
        return try this.putElementName(value);
    }
    pub fn getConverter(self: *@This()) core.HResult!*IValueConverter {
        const this: *IBinding = @ptrCast(self);
        return try this.getConverter();
    }
    pub fn putConverter(self: *@This(), value: *IValueConverter) core.HResult!void {
        const this: *IBinding = @ptrCast(self);
        return try this.putConverter(value);
    }
    pub fn getConverterParameter(self: *@This()) core.HResult!*IInspectable {
        const this: *IBinding = @ptrCast(self);
        return try this.getConverterParameter();
    }
    pub fn putConverterParameter(self: *@This(), value: *IInspectable) core.HResult!void {
        const this: *IBinding = @ptrCast(self);
        return try this.putConverterParameter(value);
    }
    pub fn getConverterLanguage(self: *@This()) core.HResult!HSTRING {
        const this: *IBinding = @ptrCast(self);
        return try this.getConverterLanguage();
    }
    pub fn putConverterLanguage(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IBinding = @ptrCast(self);
        return try this.putConverterLanguage(value);
    }
    pub fn getFallbackValue(self: *@This()) core.HResult!*IInspectable {
        var this: ?*IBinding2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBinding2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getFallbackValue();
    }
    pub fn putFallbackValue(self: *@This(), value: *IInspectable) core.HResult!void {
        var this: ?*IBinding2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBinding2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putFallbackValue(value);
    }
    pub fn getTargetNullValue(self: *@This()) core.HResult!*IInspectable {
        var this: ?*IBinding2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBinding2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getTargetNullValue();
    }
    pub fn putTargetNullValue(self: *@This(), value: *IInspectable) core.HResult!void {
        var this: ?*IBinding2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBinding2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putTargetNullValue(value);
    }
    pub fn getUpdateSourceTrigger(self: *@This()) core.HResult!UpdateSourceTrigger {
        var this: ?*IBinding2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBinding2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getUpdateSourceTrigger();
    }
    pub fn putUpdateSourceTrigger(self: *@This(), value: UpdateSourceTrigger) core.HResult!void {
        var this: ?*IBinding2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBinding2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putUpdateSourceTrigger(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateInstance(baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*Binding {
        const _f = @This().IBindingFactoryCache.get();
        return try _f.CreateInstance(baseInterface, innerInterface);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Data.Binding";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IBinding.GUID;
    pub const IID: Guid = IBinding.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IBinding.SIGNATURE);
    var _IBindingFactoryCache: FactoryCache(IBindingFactory, RUNTIME_NAME) = .{};
};
pub const BindingExpressionBase = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Data.BindingExpressionBase";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IBindingExpressionBase.GUID;
    pub const IID: Guid = IBindingExpressionBase.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IBindingExpressionBase.SIGNATURE);
    var _IBindingExpressionBaseFactoryCache: FactoryCache(IBindingExpressionBaseFactory, RUNTIME_NAME) = .{};
};
pub const BindingExpression = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getDataItem(self: *@This()) core.HResult!*IInspectable {
        const this: *IBindingExpression = @ptrCast(self);
        return try this.getDataItem();
    }
    pub fn getParentBinding(self: *@This()) core.HResult!*Binding {
        const this: *IBindingExpression = @ptrCast(self);
        return try this.getParentBinding();
    }
    pub fn UpdateSource(self: *@This()) core.HResult!void {
        const this: *IBindingExpression = @ptrCast(self);
        return try this.UpdateSource();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Data.BindingExpression";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IBindingExpression.GUID;
    pub const IID: Guid = IBindingExpression.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IBindingExpression.SIGNATURE);
    var _IBindingExpressionFactoryCache: FactoryCache(IBindingExpressionFactory, RUNTIME_NAME) = .{};
};
pub const BindingMode = enum(i32) {
    OneWay = 1,
    OneTime = 2,
    TwoWay = 3,
};
pub const BindingOperations = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn SetBinding(target: *DependencyObject, dp: *DependencyProperty, binding: *BindingBase) core.HResult!void {
        const _f = @This().IBindingOperationsStaticsCache.get();
        return try _f.SetBinding(target, dp, binding);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Data.BindingOperations";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IBindingOperations.GUID;
    pub const IID: Guid = IBindingOperations.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IBindingOperations.SIGNATURE);
    var _IBindingOperationsStaticsCache: FactoryCache(IBindingOperationsStatics, RUNTIME_NAME) = .{};
};
pub const CollectionViewSource = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getSource(self: *@This()) core.HResult!*IInspectable {
        const this: *ICollectionViewSource = @ptrCast(self);
        return try this.getSource();
    }
    pub fn putSource(self: *@This(), value: *IInspectable) core.HResult!void {
        const this: *ICollectionViewSource = @ptrCast(self);
        return try this.putSource(value);
    }
    pub fn getView(self: *@This()) core.HResult!*ICollectionView {
        const this: *ICollectionViewSource = @ptrCast(self);
        return try this.getView();
    }
    pub fn getIsSourceGrouped(self: *@This()) core.HResult!bool {
        const this: *ICollectionViewSource = @ptrCast(self);
        return try this.getIsSourceGrouped();
    }
    pub fn putIsSourceGrouped(self: *@This(), value: bool) core.HResult!void {
        const this: *ICollectionViewSource = @ptrCast(self);
        return try this.putIsSourceGrouped(value);
    }
    pub fn getItemsPath(self: *@This()) core.HResult!*PropertyPath {
        const this: *ICollectionViewSource = @ptrCast(self);
        return try this.getItemsPath();
    }
    pub fn putItemsPath(self: *@This(), value: *PropertyPath) core.HResult!void {
        const this: *ICollectionViewSource = @ptrCast(self);
        return try this.putItemsPath(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&ICollectionViewSource.IID)));
    }
    pub fn getSourceProperty() core.HResult!*DependencyProperty {
        const _f = @This().ICollectionViewSourceStaticsCache.get();
        return try _f.getSourceProperty();
    }
    pub fn getViewProperty() core.HResult!*DependencyProperty {
        const _f = @This().ICollectionViewSourceStaticsCache.get();
        return try _f.getViewProperty();
    }
    pub fn getIsSourceGroupedProperty() core.HResult!*DependencyProperty {
        const _f = @This().ICollectionViewSourceStaticsCache.get();
        return try _f.getIsSourceGroupedProperty();
    }
    pub fn getItemsPathProperty() core.HResult!*DependencyProperty {
        const _f = @This().ICollectionViewSourceStaticsCache.get();
        return try _f.getItemsPathProperty();
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Data.CollectionViewSource";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICollectionViewSource.GUID;
    pub const IID: Guid = ICollectionViewSource.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICollectionViewSource.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _ICollectionViewSourceStaticsCache: FactoryCache(ICollectionViewSourceStatics, RUNTIME_NAME) = .{};
};
pub const CurrentChangingEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getCancel(self: *@This()) core.HResult!bool {
        const this: *ICurrentChangingEventArgs = @ptrCast(self);
        return try this.getCancel();
    }
    pub fn putCancel(self: *@This(), value: bool) core.HResult!void {
        const this: *ICurrentChangingEventArgs = @ptrCast(self);
        return try this.putCancel(value);
    }
    pub fn getIsCancelable(self: *@This()) core.HResult!bool {
        const this: *ICurrentChangingEventArgs = @ptrCast(self);
        return try this.getIsCancelable();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateInstance(baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*CurrentChangingEventArgs {
        const _f = @This().ICurrentChangingEventArgsFactoryCache.get();
        return try _f.CreateInstance(baseInterface, innerInterface);
    }
    pub fn CreateWithCancelableParameter(isCancelable: bool, baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*CurrentChangingEventArgs {
        const _f = @This().ICurrentChangingEventArgsFactoryCache.get();
        return try _f.CreateWithCancelableParameter(isCancelable, baseInterface, innerInterface);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Data.CurrentChangingEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICurrentChangingEventArgs.GUID;
    pub const IID: Guid = ICurrentChangingEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICurrentChangingEventArgs.SIGNATURE);
    var _ICurrentChangingEventArgsFactoryCache: FactoryCache(ICurrentChangingEventArgsFactory, RUNTIME_NAME) = .{};
};
pub const CurrentChangingEventHandler = extern struct {
    vtable: *const VTable,
    _refs: @import("std").atomic.Value(u32),
    _cb: *const fn (context: ?*anyopaque) callconv(.winapi) void,
    _context: ?*anyopaque = null,
    /// This creates a heap allocated instance that only frees/destroys when all
    /// references are released including any references Windows makes.
    pub fn init(
        cb: *const fn(?*anyopaque, sender: *IInspectable, e: *CurrentChangingEventArgs) callconv(.winapi) void,
    ) !*@This() {
        const _r = try @import("std").heap.c_allocator.create(@This());
        _r.* = .{
            .vtable = &VTABLE,
            ._cb = cb,
            ._refs = .init(1),
        };
        return _r;
    }
    /// This creates a heap allocated instance that only frees/destroys when all
    /// references are released including any references Windows makes.
    pub fn initWithState(
        cb: *const fn(?*anyopaque, sender: *IInspectable, e: *CurrentChangingEventArgs) callconv(.winapi) void,
        context: anytype,
    ) !*@This() {
        const _r = try @import("std").heap.c_allocator.create(@This());
        _r.* = .{
            .vtable = &VTABLE,
            ._cb = cb,
            ._refs = .init(1),
            ._context = @ptrCast(context),
        };
        return _r;
    }
    /// This calls Release and voids the returned ref count. If ref count is 0 the memory is released,
    /// Otherwise the memory stays until all references are released, including all references Windows holds.
    ///
    /// The caller *MUST* always call deinit/Release at least once for every AddRef and init called.
    pub fn deinit(self: *@This()) void {
        _ = Release(@ptrCast(self));
    }
    fn QueryInterface(self: *anyopaque, riid: *const Guid, out: *?*anyopaque) callconv(.c) HRESULT {
        const me: *@This() = @ptrCast(@alignCast(self));
        // TODO: Handle IMarshal
        if (core.wiredGuidEql(riid, &IID) or
            core.wiredGuidEql(riid, &IUnknown.IID) or
            core.wiredGuidEql(riid, &IAgileObject.IID))
        {
            out.* = @as(?*anyopaque, @ptrCast(me));
            _ = AddRef(self);
            return 0;
        }
        out.* = null;
        return -2147467262; // E_NOINTERFACE
    }
    fn AddRef(self: *anyopaque) callconv(.c) u32 {
        const this: *@This() = @ptrCast(@alignCast(self));
        return this._refs.fetchAdd(1, .monotonic) + 1;
    }
    fn Release(self: *anyopaque) callconv(.c) u32 {
        const this: *@This() = @ptrCast(@alignCast(self));
        const left = this._refs.fetchSub(1, .acq_rel) - 1;
        if (left == 0) @import("std").heap.c_allocator.destroy(this);
        return left;
    }
    pub fn Invoke(self: *anyopaque, sender: *IInspectable, e: *CurrentChangingEventArgs) callconv(.winapi) HRESULT {
        const this: *@This() = @ptrCast(@alignCast(self));
        this._cb(this._context, sender, e);
        return 0;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Data.CurrentChangingEventHandler";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f3888db8-139f-4dce-8dc9-f7f1444d1185";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.pinterface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        Invoke: *const fn(self: *anyopaque, sender: *IInspectable, e: *CurrentChangingEventArgs) callconv(.winapi) HRESULT
    };
    pub const VTABLE = VTable {
        .QueryInterface = QueryInterface,
        .AddRef = AddRef,
        .Release = Release,
        .Invoke = Invoke,
    };
};
pub const IBinding = extern struct {
    vtable: *const VTable,
    pub fn getPath(self: *@This()) core.HResult!*PropertyPath {
        var _r: *PropertyPath = undefined;
        const _c = self.vtable.get_Path(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putPath(self: *@This(), value: *PropertyPath) core.HResult!void {
        const _c = self.vtable.put_Path(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getMode(self: *@This()) core.HResult!BindingMode {
        var _r: BindingMode = undefined;
        const _c = self.vtable.get_Mode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putMode(self: *@This(), value: BindingMode) core.HResult!void {
        const _c = self.vtable.put_Mode(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getSource(self: *@This()) core.HResult!*IInspectable {
        var _r: *IInspectable = undefined;
        const _c = self.vtable.get_Source(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSource(self: *@This(), value: *IInspectable) core.HResult!void {
        const _c = self.vtable.put_Source(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getRelativeSource(self: *@This()) core.HResult!*RelativeSource {
        var _r: *RelativeSource = undefined;
        const _c = self.vtable.get_RelativeSource(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putRelativeSource(self: *@This(), value: *RelativeSource) core.HResult!void {
        const _c = self.vtable.put_RelativeSource(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getElementName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ElementName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putElementName(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_ElementName(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getConverter(self: *@This()) core.HResult!*IValueConverter {
        var _r: *IValueConverter = undefined;
        const _c = self.vtable.get_Converter(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putConverter(self: *@This(), value: *IValueConverter) core.HResult!void {
        const _c = self.vtable.put_Converter(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getConverterParameter(self: *@This()) core.HResult!*IInspectable {
        var _r: *IInspectable = undefined;
        const _c = self.vtable.get_ConverterParameter(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putConverterParameter(self: *@This(), value: *IInspectable) core.HResult!void {
        const _c = self.vtable.put_ConverterParameter(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getConverterLanguage(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ConverterLanguage(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putConverterLanguage(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_ConverterLanguage(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Data.IBinding";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3f7a0c6b-d00f-4730-8c1d-48e16c46f9ca";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Path: *const fn(self: *anyopaque, _r: **PropertyPath) callconv(.winapi) HRESULT,
        put_Path: *const fn(self: *anyopaque, value: *PropertyPath) callconv(.winapi) HRESULT,
        get_Mode: *const fn(self: *anyopaque, _r: *BindingMode) callconv(.winapi) HRESULT,
        put_Mode: *const fn(self: *anyopaque, value: BindingMode) callconv(.winapi) HRESULT,
        get_Source: *const fn(self: *anyopaque, _r: **IInspectable) callconv(.winapi) HRESULT,
        put_Source: *const fn(self: *anyopaque, value: *IInspectable) callconv(.winapi) HRESULT,
        get_RelativeSource: *const fn(self: *anyopaque, _r: **RelativeSource) callconv(.winapi) HRESULT,
        put_RelativeSource: *const fn(self: *anyopaque, value: *RelativeSource) callconv(.winapi) HRESULT,
        get_ElementName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_ElementName: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_Converter: *const fn(self: *anyopaque, _r: **IValueConverter) callconv(.winapi) HRESULT,
        put_Converter: *const fn(self: *anyopaque, value: *IValueConverter) callconv(.winapi) HRESULT,
        get_ConverterParameter: *const fn(self: *anyopaque, _r: **IInspectable) callconv(.winapi) HRESULT,
        put_ConverterParameter: *const fn(self: *anyopaque, value: *IInspectable) callconv(.winapi) HRESULT,
        get_ConverterLanguage: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_ConverterLanguage: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IBinding2 = extern struct {
    vtable: *const VTable,
    pub fn getFallbackValue(self: *@This()) core.HResult!*IInspectable {
        var _r: *IInspectable = undefined;
        const _c = self.vtable.get_FallbackValue(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putFallbackValue(self: *@This(), value: *IInspectable) core.HResult!void {
        const _c = self.vtable.put_FallbackValue(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getTargetNullValue(self: *@This()) core.HResult!*IInspectable {
        var _r: *IInspectable = undefined;
        const _c = self.vtable.get_TargetNullValue(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putTargetNullValue(self: *@This(), value: *IInspectable) core.HResult!void {
        const _c = self.vtable.put_TargetNullValue(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getUpdateSourceTrigger(self: *@This()) core.HResult!UpdateSourceTrigger {
        var _r: UpdateSourceTrigger = undefined;
        const _c = self.vtable.get_UpdateSourceTrigger(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putUpdateSourceTrigger(self: *@This(), value: UpdateSourceTrigger) core.HResult!void {
        const _c = self.vtable.put_UpdateSourceTrigger(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Data.IBinding2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "34f96fcb-0406-48b3-9e82-f333ec4c6910";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_FallbackValue: *const fn(self: *anyopaque, _r: **IInspectable) callconv(.winapi) HRESULT,
        put_FallbackValue: *const fn(self: *anyopaque, value: *IInspectable) callconv(.winapi) HRESULT,
        get_TargetNullValue: *const fn(self: *anyopaque, _r: **IInspectable) callconv(.winapi) HRESULT,
        put_TargetNullValue: *const fn(self: *anyopaque, value: *IInspectable) callconv(.winapi) HRESULT,
        get_UpdateSourceTrigger: *const fn(self: *anyopaque, _r: *UpdateSourceTrigger) callconv(.winapi) HRESULT,
        put_UpdateSourceTrigger: *const fn(self: *anyopaque, value: UpdateSourceTrigger) callconv(.winapi) HRESULT,
    };
};
pub const IBindingBase = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Data.IBindingBase";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1589a2ab-3d15-49bc-a447-8a5448e58870";
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
pub const IBindingBaseFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstance(self: *@This(), baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*BindingBase {
        var _r: *BindingBase = undefined;
        const _c = self.vtable.CreateInstance(@ptrCast(self), baseInterface, innerInterface, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Data.IBindingBaseFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "22dafc3a-7701-4666-a1ba-9859bdcfec34";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstance: *const fn(self: *anyopaque, baseInterface: *IInspectable, innerInterface: *IInspectable, _r: **BindingBase) callconv(.winapi) HRESULT,
    };
};
pub const IBindingExpression = extern struct {
    vtable: *const VTable,
    pub fn getDataItem(self: *@This()) core.HResult!*IInspectable {
        var _r: *IInspectable = undefined;
        const _c = self.vtable.get_DataItem(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getParentBinding(self: *@This()) core.HResult!*Binding {
        var _r: *Binding = undefined;
        const _c = self.vtable.get_ParentBinding(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn UpdateSource(self: *@This()) core.HResult!void {
        const _c = self.vtable.UpdateSource(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Data.IBindingExpression";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "516a19a5-c2fd-4a9e-9fd3-9aa42f995a3c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_DataItem: *const fn(self: *anyopaque, _r: **IInspectable) callconv(.winapi) HRESULT,
        get_ParentBinding: *const fn(self: *anyopaque, _r: **Binding) callconv(.winapi) HRESULT,
        UpdateSource: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
    };
};
pub const IBindingExpressionBase = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Data.IBindingExpressionBase";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "fded3154-e954-4f67-8fb6-6ed79b3a1cb3";
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
pub const IBindingExpressionBaseFactory = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Data.IBindingExpressionBaseFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ea7116a7-c2d9-4375-b471-66b9c48c7930";
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
pub const IBindingExpressionFactory = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Data.IBindingExpressionFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1cb55cd9-db72-40b3-a2b5-24ee6ea5c328";
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
pub const IBindingFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstance(self: *@This(), baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*Binding {
        var _r: *Binding = undefined;
        const _c = self.vtable.CreateInstance(@ptrCast(self), baseInterface, innerInterface, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Data.IBindingFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ff42bb08-c39e-4f7e-8434-a1569083883c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstance: *const fn(self: *anyopaque, baseInterface: *IInspectable, innerInterface: *IInspectable, _r: **Binding) callconv(.winapi) HRESULT,
    };
};
pub const IBindingOperations = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Data.IBindingOperations";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "6fffd738-9839-419c-a17a-4b3604e1524e";
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
pub const IBindingOperationsStatics = extern struct {
    vtable: *const VTable,
    pub fn SetBinding(self: *@This(), target: *DependencyObject, dp: *DependencyProperty, binding: *BindingBase) core.HResult!void {
        const _c = self.vtable.SetBinding(@ptrCast(self), target, dp, binding);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Data.IBindingOperationsStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e155ef73-95a0-4aab-8c7d-2a47da073c79";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        SetBinding: *const fn(self: *anyopaque, target: *DependencyObject, dp: *DependencyProperty, binding: *BindingBase) callconv(.winapi) HRESULT,
    };
};
pub const ICollectionView = extern struct {
    vtable: *const VTable,
    pub fn getCurrentItem(self: *@This()) core.HResult!*IInspectable {
        var _r: *IInspectable = undefined;
        const _c = self.vtable.get_CurrentItem(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCurrentPosition(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_CurrentPosition(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsCurrentAfterLast(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsCurrentAfterLast(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsCurrentBeforeFirst(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsCurrentBeforeFirst(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCollectionGroups(self: *@This()) core.HResult!*IObservableVector(IInspectable) {
        var _r: *IObservableVector(IInspectable) = undefined;
        const _c = self.vtable.get_CollectionGroups(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getHasMoreItems(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_HasMoreItems(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addCurrentChanged(self: *@This(), handler: *EventHandler(IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_CurrentChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeCurrentChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_CurrentChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addCurrentChanging(self: *@This(), handler: *CurrentChangingEventHandler) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_CurrentChanging(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeCurrentChanging(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_CurrentChanging(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn MoveCurrentTo(self: *@This(), item: *IInspectable) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.MoveCurrentTo(@ptrCast(self), item, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn MoveCurrentToPosition(self: *@This(), index: i32) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.MoveCurrentToPosition(@ptrCast(self), index, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn MoveCurrentToFirst(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.MoveCurrentToFirst(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn MoveCurrentToLast(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.MoveCurrentToLast(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn MoveCurrentToNext(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.MoveCurrentToNext(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn MoveCurrentToPrevious(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.MoveCurrentToPrevious(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn LoadMoreItemsAsync(self: *@This(), count: u32) core.HResult!*IAsyncOperation(LoadMoreItemsResult) {
        var _r: *IAsyncOperation(LoadMoreItemsResult) = undefined;
        const _c = self.vtable.LoadMoreItemsAsync(@ptrCast(self), count, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Data.ICollectionView";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "8be8bfe4-dbef-44df-8126-a31a89121ddc";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_CurrentItem: *const fn(self: *anyopaque, _r: **IInspectable) callconv(.winapi) HRESULT,
        get_CurrentPosition: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        get_IsCurrentAfterLast: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsCurrentBeforeFirst: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_CollectionGroups: *const fn(self: *anyopaque, _r: **IObservableVector(IInspectable)) callconv(.winapi) HRESULT,
        get_HasMoreItems: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        add_CurrentChanged: *const fn(self: *anyopaque, handler: *EventHandler(IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_CurrentChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_CurrentChanging: *const fn(self: *anyopaque, handler: *CurrentChangingEventHandler, _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_CurrentChanging: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        MoveCurrentTo: *const fn(self: *anyopaque, item: *IInspectable, _r: *bool) callconv(.winapi) HRESULT,
        MoveCurrentToPosition: *const fn(self: *anyopaque, index: i32, _r: *bool) callconv(.winapi) HRESULT,
        MoveCurrentToFirst: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        MoveCurrentToLast: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        MoveCurrentToNext: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        MoveCurrentToPrevious: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        LoadMoreItemsAsync: *const fn(self: *anyopaque, count: u32, _r: **IAsyncOperation(LoadMoreItemsResult)) callconv(.winapi) HRESULT,
    };
};
pub const ICollectionViewFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateView(self: *@This()) core.HResult!*ICollectionView {
        var _r: *ICollectionView = undefined;
        const _c = self.vtable.CreateView(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Data.ICollectionViewFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "34d4aaf4-8e72-4950-9192-ecd07d399d0a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateView: *const fn(self: *anyopaque, _r: **ICollectionView) callconv(.winapi) HRESULT,
    };
};
pub const ICollectionViewGroup = extern struct {
    vtable: *const VTable,
    pub fn getGroup(self: *@This()) core.HResult!*IInspectable {
        var _r: *IInspectable = undefined;
        const _c = self.vtable.get_Group(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getGroupItems(self: *@This()) core.HResult!*IObservableVector(IInspectable) {
        var _r: *IObservableVector(IInspectable) = undefined;
        const _c = self.vtable.get_GroupItems(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Data.ICollectionViewGroup";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7e01b9d8-d7b5-48b6-b31c-5bb5bdf5f09b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Group: *const fn(self: *anyopaque, _r: **IInspectable) callconv(.winapi) HRESULT,
        get_GroupItems: *const fn(self: *anyopaque, _r: **IObservableVector(IInspectable)) callconv(.winapi) HRESULT,
    };
};
pub const ICollectionViewSource = extern struct {
    vtable: *const VTable,
    pub fn getSource(self: *@This()) core.HResult!*IInspectable {
        var _r: *IInspectable = undefined;
        const _c = self.vtable.get_Source(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSource(self: *@This(), value: *IInspectable) core.HResult!void {
        const _c = self.vtable.put_Source(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getView(self: *@This()) core.HResult!*ICollectionView {
        var _r: *ICollectionView = undefined;
        const _c = self.vtable.get_View(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsSourceGrouped(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsSourceGrouped(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIsSourceGrouped(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsSourceGrouped(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getItemsPath(self: *@This()) core.HResult!*PropertyPath {
        var _r: *PropertyPath = undefined;
        const _c = self.vtable.get_ItemsPath(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putItemsPath(self: *@This(), value: *PropertyPath) core.HResult!void {
        const _c = self.vtable.put_ItemsPath(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Data.ICollectionViewSource";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a66a1146-d2fb-4ead-be9f-3578a466dcfe";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Source: *const fn(self: *anyopaque, _r: **IInspectable) callconv(.winapi) HRESULT,
        put_Source: *const fn(self: *anyopaque, value: *IInspectable) callconv(.winapi) HRESULT,
        get_View: *const fn(self: *anyopaque, _r: **ICollectionView) callconv(.winapi) HRESULT,
        get_IsSourceGrouped: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IsSourceGrouped: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_ItemsPath: *const fn(self: *anyopaque, _r: **PropertyPath) callconv(.winapi) HRESULT,
        put_ItemsPath: *const fn(self: *anyopaque, value: *PropertyPath) callconv(.winapi) HRESULT,
    };
};
pub const ICollectionViewSourceStatics = extern struct {
    vtable: *const VTable,
    pub fn getSourceProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_SourceProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getViewProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_ViewProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsSourceGroupedProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_IsSourceGroupedProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getItemsPathProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_ItemsPathProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Data.ICollectionViewSourceStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "173a0710-46af-4c0c-818b-21b6ef81bf65";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_SourceProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_ViewProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_IsSourceGroupedProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_ItemsPathProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
    };
};
pub const ICurrentChangingEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getCancel(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_Cancel(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putCancel(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_Cancel(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIsCancelable(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsCancelable(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Data.ICurrentChangingEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f9891e29-51cc-47dd-a5b9-35dc4914af69";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Cancel: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_Cancel: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_IsCancelable: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const ICurrentChangingEventArgsFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstance(self: *@This(), baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*CurrentChangingEventArgs {
        var _r: *CurrentChangingEventArgs = undefined;
        const _c = self.vtable.CreateInstance(@ptrCast(self), baseInterface, innerInterface, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateWithCancelableParameter(self: *@This(), isCancelable: bool, baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*CurrentChangingEventArgs {
        var _r: *CurrentChangingEventArgs = undefined;
        const _c = self.vtable.CreateWithCancelableParameter(@ptrCast(self), isCancelable, baseInterface, innerInterface, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Data.ICurrentChangingEventArgsFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "153bbeee-62f3-48cf-8183-8be26de3a66e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstance: *const fn(self: *anyopaque, baseInterface: *IInspectable, innerInterface: *IInspectable, _r: **CurrentChangingEventArgs) callconv(.winapi) HRESULT,
        CreateWithCancelableParameter: *const fn(self: *anyopaque, isCancelable: bool, baseInterface: *IInspectable, innerInterface: *IInspectable, _r: **CurrentChangingEventArgs) callconv(.winapi) HRESULT,
    };
};
pub const ICustomProperty = extern struct {
    vtable: *const VTable,
    pub fn getType(self: *@This()) core.HResult!TypeName {
        var _r: TypeName = undefined;
        const _c = self.vtable.get_Type(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Name(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetValue(self: *@This(), target: *IInspectable) core.HResult!*IInspectable {
        var _r: *IInspectable = undefined;
        const _c = self.vtable.GetValue(@ptrCast(self), target, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetValue(self: *@This(), target: *IInspectable, value: *IInspectable) core.HResult!void {
        const _c = self.vtable.SetValue(@ptrCast(self), target, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn GetIndexedValue(self: *@This(), target: *IInspectable, index: *IInspectable) core.HResult!*IInspectable {
        var _r: *IInspectable = undefined;
        const _c = self.vtable.GetIndexedValue(@ptrCast(self), target, index, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetIndexedValue(self: *@This(), target: *IInspectable, value: *IInspectable, index: *IInspectable) core.HResult!void {
        const _c = self.vtable.SetIndexedValue(@ptrCast(self), target, value, index);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getCanWrite(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_CanWrite(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCanRead(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_CanRead(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Data.ICustomProperty";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "30da92c0-23e8-42a0-ae7c-734a0e5d2782";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Type: *const fn(self: *anyopaque, _r: *TypeName) callconv(.winapi) HRESULT,
        get_Name: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        GetValue: *const fn(self: *anyopaque, target: *IInspectable, _r: **IInspectable) callconv(.winapi) HRESULT,
        SetValue: *const fn(self: *anyopaque, target: *IInspectable, value: *IInspectable) callconv(.winapi) HRESULT,
        GetIndexedValue: *const fn(self: *anyopaque, target: *IInspectable, index: *IInspectable, _r: **IInspectable) callconv(.winapi) HRESULT,
        SetIndexedValue: *const fn(self: *anyopaque, target: *IInspectable, value: *IInspectable, index: *IInspectable) callconv(.winapi) HRESULT,
        get_CanWrite: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_CanRead: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const ICustomPropertyProvider = extern struct {
    vtable: *const VTable,
    pub fn GetCustomProperty(self: *@This(), name: HSTRING) core.HResult!*ICustomProperty {
        var _r: *ICustomProperty = undefined;
        const _c = self.vtable.GetCustomProperty(@ptrCast(self), name, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetIndexedProperty(self: *@This(), name: HSTRING, ty: TypeName) core.HResult!*ICustomProperty {
        var _r: *ICustomProperty = undefined;
        const _c = self.vtable.GetIndexedProperty(@ptrCast(self), name, ty, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetStringRepresentation(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.GetStringRepresentation(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getType(self: *@This()) core.HResult!TypeName {
        var _r: TypeName = undefined;
        const _c = self.vtable.get_Type(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Data.ICustomPropertyProvider";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7c925755-3e48-42b4-8677-76372267033f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetCustomProperty: *const fn(self: *anyopaque, name: HSTRING, _r: **ICustomProperty) callconv(.winapi) HRESULT,
        GetIndexedProperty: *const fn(self: *anyopaque, name: HSTRING, ty: TypeName, _r: **ICustomProperty) callconv(.winapi) HRESULT,
        GetStringRepresentation: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Type: *const fn(self: *anyopaque, _r: *TypeName) callconv(.winapi) HRESULT,
    };
};
pub const IItemIndexRange = extern struct {
    vtable: *const VTable,
    pub fn getFirstIndex(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_FirstIndex(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getLength(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_Length(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getLastIndex(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_LastIndex(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Data.IItemIndexRange";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "83b834be-0583-4a26-9b64-8bf4a2f65704";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_FirstIndex: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        get_Length: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_LastIndex: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
    };
};
pub const IItemIndexRangeFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstance(self: *@This(), firstIndex: i32, length: u32, baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*ItemIndexRange {
        var _r: *ItemIndexRange = undefined;
        const _c = self.vtable.CreateInstance(@ptrCast(self), firstIndex, length, baseInterface, innerInterface, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Data.IItemIndexRangeFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "86e2c440-2e7a-4c7d-a664-e8abf07bfc7e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstance: *const fn(self: *anyopaque, firstIndex: i32, length: u32, baseInterface: *IInspectable, innerInterface: *IInspectable, _r: **ItemIndexRange) callconv(.winapi) HRESULT,
    };
};
pub const IItemsRangeInfo = extern struct {
    vtable: *const VTable,
    pub fn RangesChanged(self: *@This(), visibleRange: *ItemIndexRange, trackedItems: *IVectorView(ItemIndexRange)) core.HResult!void {
        const _c = self.vtable.RangesChanged(@ptrCast(self), visibleRange, trackedItems);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Data.IItemsRangeInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f05f5665-71fd-45a2-be13-a081d294a68d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        RangesChanged: *const fn(self: *anyopaque, visibleRange: *ItemIndexRange, trackedItems: *IVectorView(ItemIndexRange)) callconv(.winapi) HRESULT,
    };
};
pub const INotifyPropertyChanged = extern struct {
    vtable: *const VTable,
    pub fn addPropertyChanged(self: *@This(), handler: *PropertyChangedEventHandler) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_PropertyChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removePropertyChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_PropertyChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Data.INotifyPropertyChanged";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "cf75d69c-f2f4-486b-b302-bb4c09baebfa";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        add_PropertyChanged: *const fn(self: *anyopaque, handler: *PropertyChangedEventHandler, _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_PropertyChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IPropertyChangedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getPropertyName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_PropertyName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Data.IPropertyChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "4f33a9a0-5cf4-47a4-b16f-d7faaf17457e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_PropertyName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IPropertyChangedEventArgsFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstance(self: *@This(), name: HSTRING, baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*PropertyChangedEventArgs {
        var _r: *PropertyChangedEventArgs = undefined;
        const _c = self.vtable.CreateInstance(@ptrCast(self), name, baseInterface, innerInterface, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Data.IPropertyChangedEventArgsFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "6dcc9c03-e0c7-4eee-8ea9-37e3406eeb1c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstance: *const fn(self: *anyopaque, name: HSTRING, baseInterface: *IInspectable, innerInterface: *IInspectable, _r: **PropertyChangedEventArgs) callconv(.winapi) HRESULT,
    };
};
pub const IRelativeSource = extern struct {
    vtable: *const VTable,
    pub fn getMode(self: *@This()) core.HResult!RelativeSourceMode {
        var _r: RelativeSourceMode = undefined;
        const _c = self.vtable.get_Mode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putMode(self: *@This(), value: RelativeSourceMode) core.HResult!void {
        const _c = self.vtable.put_Mode(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Data.IRelativeSource";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2397ce84-2822-483a-b499-d0f031e06c6b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Mode: *const fn(self: *anyopaque, _r: *RelativeSourceMode) callconv(.winapi) HRESULT,
        put_Mode: *const fn(self: *anyopaque, value: RelativeSourceMode) callconv(.winapi) HRESULT,
    };
};
pub const IRelativeSourceFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstance(self: *@This(), baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*RelativeSource {
        var _r: *RelativeSource = undefined;
        const _c = self.vtable.CreateInstance(@ptrCast(self), baseInterface, innerInterface, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Data.IRelativeSourceFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ef8392cd-446e-4f93-aacb-9b1255577460";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstance: *const fn(self: *anyopaque, baseInterface: *IInspectable, innerInterface: *IInspectable, _r: **RelativeSource) callconv(.winapi) HRESULT,
    };
};
pub const ISelectionInfo = extern struct {
    vtable: *const VTable,
    pub fn SelectRange(self: *@This(), itemIndexRange: *ItemIndexRange) core.HResult!void {
        const _c = self.vtable.SelectRange(@ptrCast(self), itemIndexRange);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn DeselectRange(self: *@This(), itemIndexRange: *ItemIndexRange) core.HResult!void {
        const _c = self.vtable.DeselectRange(@ptrCast(self), itemIndexRange);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn IsSelected(self: *@This(), index: i32) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.IsSelected(@ptrCast(self), index, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetSelectedRanges(self: *@This()) core.HResult!*IVectorView(ItemIndexRange) {
        var _r: *IVectorView(ItemIndexRange) = undefined;
        const _c = self.vtable.GetSelectedRanges(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Data.ISelectionInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2e12ca86-e1ed-4245-be49-207e42aec524";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        SelectRange: *const fn(self: *anyopaque, itemIndexRange: *ItemIndexRange) callconv(.winapi) HRESULT,
        DeselectRange: *const fn(self: *anyopaque, itemIndexRange: *ItemIndexRange) callconv(.winapi) HRESULT,
        IsSelected: *const fn(self: *anyopaque, index: i32, _r: *bool) callconv(.winapi) HRESULT,
        GetSelectedRanges: *const fn(self: *anyopaque, _r: **IVectorView(ItemIndexRange)) callconv(.winapi) HRESULT,
    };
};
pub const ISupportIncrementalLoading = extern struct {
    vtable: *const VTable,
    pub fn LoadMoreItemsAsync(self: *@This(), count: u32) core.HResult!*IAsyncOperation(LoadMoreItemsResult) {
        var _r: *IAsyncOperation(LoadMoreItemsResult) = undefined;
        const _c = self.vtable.LoadMoreItemsAsync(@ptrCast(self), count, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getHasMoreItems(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_HasMoreItems(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Data.ISupportIncrementalLoading";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7f5ee992-7694-4e6c-a51b-e34bf43de743";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        LoadMoreItemsAsync: *const fn(self: *anyopaque, count: u32, _r: **IAsyncOperation(LoadMoreItemsResult)) callconv(.winapi) HRESULT,
        get_HasMoreItems: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IValueConverter = extern struct {
    vtable: *const VTable,
    pub fn Convert(self: *@This(), value: *IInspectable, targetType: TypeName, parameter: *IInspectable, language: HSTRING) core.HResult!*IInspectable {
        var _r: *IInspectable = undefined;
        const _c = self.vtable.Convert(@ptrCast(self), value, targetType, parameter, language, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ConvertBack(self: *@This(), value: *IInspectable, targetType: TypeName, parameter: *IInspectable, language: HSTRING) core.HResult!*IInspectable {
        var _r: *IInspectable = undefined;
        const _c = self.vtable.ConvertBack(@ptrCast(self), value, targetType, parameter, language, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Data.IValueConverter";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e6f2fef0-0712-487f-b313-f300b8d79aa1";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Convert: *const fn(self: *anyopaque, value: *IInspectable, targetType: TypeName, parameter: *IInspectable, language: HSTRING, _r: **IInspectable) callconv(.winapi) HRESULT,
        ConvertBack: *const fn(self: *anyopaque, value: *IInspectable, targetType: TypeName, parameter: *IInspectable, language: HSTRING, _r: **IInspectable) callconv(.winapi) HRESULT,
    };
};
pub const ItemIndexRange = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getFirstIndex(self: *@This()) core.HResult!i32 {
        const this: *IItemIndexRange = @ptrCast(self);
        return try this.getFirstIndex();
    }
    pub fn getLength(self: *@This()) core.HResult!u32 {
        const this: *IItemIndexRange = @ptrCast(self);
        return try this.getLength();
    }
    pub fn getLastIndex(self: *@This()) core.HResult!i32 {
        const this: *IItemIndexRange = @ptrCast(self);
        return try this.getLastIndex();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateInstance(firstIndex: i32, length: u32, baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*ItemIndexRange {
        const _f = @This().IItemIndexRangeFactoryCache.get();
        return try _f.CreateInstance(firstIndex, length, baseInterface, innerInterface);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Data.ItemIndexRange";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IItemIndexRange.GUID;
    pub const IID: Guid = IItemIndexRange.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IItemIndexRange.SIGNATURE);
    var _IItemIndexRangeFactoryCache: FactoryCache(IItemIndexRangeFactory, RUNTIME_NAME) = .{};
};
pub const LoadMoreItemsResult = extern struct {
    Count: u32,
};
pub const PropertyChangedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getPropertyName(self: *@This()) core.HResult!HSTRING {
        const this: *IPropertyChangedEventArgs = @ptrCast(self);
        return try this.getPropertyName();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateInstance(name: HSTRING, baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*PropertyChangedEventArgs {
        const _f = @This().IPropertyChangedEventArgsFactoryCache.get();
        return try _f.CreateInstance(name, baseInterface, innerInterface);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Data.PropertyChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPropertyChangedEventArgs.GUID;
    pub const IID: Guid = IPropertyChangedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPropertyChangedEventArgs.SIGNATURE);
    var _IPropertyChangedEventArgsFactoryCache: FactoryCache(IPropertyChangedEventArgsFactory, RUNTIME_NAME) = .{};
};
pub const PropertyChangedEventHandler = extern struct {
    vtable: *const VTable,
    _refs: @import("std").atomic.Value(u32),
    _cb: *const fn (context: ?*anyopaque) callconv(.winapi) void,
    _context: ?*anyopaque = null,
    /// This creates a heap allocated instance that only frees/destroys when all
    /// references are released including any references Windows makes.
    pub fn init(
        cb: *const fn(?*anyopaque, sender: *IInspectable, e: *PropertyChangedEventArgs) callconv(.winapi) void,
    ) !*@This() {
        const _r = try @import("std").heap.c_allocator.create(@This());
        _r.* = .{
            .vtable = &VTABLE,
            ._cb = cb,
            ._refs = .init(1),
        };
        return _r;
    }
    /// This creates a heap allocated instance that only frees/destroys when all
    /// references are released including any references Windows makes.
    pub fn initWithState(
        cb: *const fn(?*anyopaque, sender: *IInspectable, e: *PropertyChangedEventArgs) callconv(.winapi) void,
        context: anytype,
    ) !*@This() {
        const _r = try @import("std").heap.c_allocator.create(@This());
        _r.* = .{
            .vtable = &VTABLE,
            ._cb = cb,
            ._refs = .init(1),
            ._context = @ptrCast(context),
        };
        return _r;
    }
    /// This calls Release and voids the returned ref count. If ref count is 0 the memory is released,
    /// Otherwise the memory stays until all references are released, including all references Windows holds.
    ///
    /// The caller *MUST* always call deinit/Release at least once for every AddRef and init called.
    pub fn deinit(self: *@This()) void {
        _ = Release(@ptrCast(self));
    }
    fn QueryInterface(self: *anyopaque, riid: *const Guid, out: *?*anyopaque) callconv(.c) HRESULT {
        const me: *@This() = @ptrCast(@alignCast(self));
        // TODO: Handle IMarshal
        if (core.wiredGuidEql(riid, &IID) or
            core.wiredGuidEql(riid, &IUnknown.IID) or
            core.wiredGuidEql(riid, &IAgileObject.IID))
        {
            out.* = @as(?*anyopaque, @ptrCast(me));
            _ = AddRef(self);
            return 0;
        }
        out.* = null;
        return -2147467262; // E_NOINTERFACE
    }
    fn AddRef(self: *anyopaque) callconv(.c) u32 {
        const this: *@This() = @ptrCast(@alignCast(self));
        return this._refs.fetchAdd(1, .monotonic) + 1;
    }
    fn Release(self: *anyopaque) callconv(.c) u32 {
        const this: *@This() = @ptrCast(@alignCast(self));
        const left = this._refs.fetchSub(1, .acq_rel) - 1;
        if (left == 0) @import("std").heap.c_allocator.destroy(this);
        return left;
    }
    pub fn Invoke(self: *anyopaque, sender: *IInspectable, e: *PropertyChangedEventArgs) callconv(.winapi) HRESULT {
        const this: *@This() = @ptrCast(@alignCast(self));
        this._cb(this._context, sender, e);
        return 0;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Data.PropertyChangedEventHandler";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "50f19c16-0a22-4d8e-a089-1ea9951657d2";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.pinterface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        Invoke: *const fn(self: *anyopaque, sender: *IInspectable, e: *PropertyChangedEventArgs) callconv(.winapi) HRESULT
    };
    pub const VTABLE = VTable {
        .QueryInterface = QueryInterface,
        .AddRef = AddRef,
        .Release = Release,
        .Invoke = Invoke,
    };
};
pub const RelativeSource = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getMode(self: *@This()) core.HResult!RelativeSourceMode {
        const this: *IRelativeSource = @ptrCast(self);
        return try this.getMode();
    }
    pub fn putMode(self: *@This(), value: RelativeSourceMode) core.HResult!void {
        const this: *IRelativeSource = @ptrCast(self);
        return try this.putMode(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateInstance(baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*RelativeSource {
        const _f = @This().IRelativeSourceFactoryCache.get();
        return try _f.CreateInstance(baseInterface, innerInterface);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Data.RelativeSource";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IRelativeSource.GUID;
    pub const IID: Guid = IRelativeSource.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IRelativeSource.SIGNATURE);
    var _IRelativeSourceFactoryCache: FactoryCache(IRelativeSourceFactory, RUNTIME_NAME) = .{};
};
pub const RelativeSourceMode = enum(i32) {
    None = 0,
    TemplatedParent = 1,
    Self = 2,
};
pub const UpdateSourceTrigger = enum(i32) {
    Default = 0,
    PropertyChanged = 1,
    Explicit = 2,
    LostFocus = 3,
};
const IUnknown = @import("../../root.zig").IUnknown;
const IActivationFactory = @import("../../Foundation.zig").IActivationFactory;
const Guid = @import("../../root.zig").Guid;
const IVectorView = @import("../../Foundation/Collections.zig").IVectorView;
const FactoryCache = @import("../../core.zig").FactoryCache;
const DependencyProperty = @import("../Xaml.zig").DependencyProperty;
const TrustLevel = @import("../../root.zig").TrustLevel;
const DependencyObject = @import("../Xaml.zig").DependencyObject;
const HSTRING = @import("../../root.zig").HSTRING;
const IInspectable = @import("../../Foundation.zig").IInspectable;
const TypeName = @import("./Interop.zig").TypeName;
const IAgileObject = @import("../../root.zig").IAgileObject;
const EventHandler = @import("../../Foundation.zig").EventHandler;
const PropertyPath = @import("../Xaml.zig").PropertyPath;
const HRESULT = @import("../../root.zig").HRESULT;
const IAsyncOperation = @import("../../Foundation.zig").IAsyncOperation;
const core = @import("../../root.zig").core;
const IObservableVector = @import("../../Foundation/Collections.zig").IObservableVector;
const EventRegistrationToken = @import("../../Foundation.zig").EventRegistrationToken;
