pub const ContentPropertyAttribute = extern struct {
    vtable: *const IInspectable.VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Markup.ContentPropertyAttribute";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
};
pub const FullXamlMetadataProviderAttribute = extern struct {
    vtable: *const IInspectable.VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Markup.FullXamlMetadataProviderAttribute";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
};
pub const IComponentConnector = extern struct {
    vtable: *const VTable,
    pub fn Connect(self: *@This(), connectionId: i32, target: *IInspectable) core.HResult!void {
        const _c = self.vtable.Connect(@ptrCast(self), connectionId, target);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Markup.IComponentConnector";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f6790987-e6e5-47f2-92c6-eccce4ba159a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Connect: *const fn(self: *anyopaque, connectionId: i32, target: *IInspectable) callconv(.winapi) HRESULT,
    };
};
pub const IComponentConnector2 = extern struct {
    vtable: *const VTable,
    pub fn GetBindingConnector(self: *@This(), connectionId: i32, target: *IInspectable) core.HResult!*IComponentConnector {
        var _r: *IComponentConnector = undefined;
        const _c = self.vtable.GetBindingConnector(@ptrCast(self), connectionId, target, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Markup.IComponentConnector2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "dc8f368b-eccc-498e-b139-91142254d7ae";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetBindingConnector: *const fn(self: *anyopaque, connectionId: i32, target: *IInspectable, _r: **IComponentConnector) callconv(.winapi) HRESULT,
    };
};
pub const IDataTemplateComponent = extern struct {
    vtable: *const VTable,
    pub fn Recycle(self: *@This()) core.HResult!void {
        const _c = self.vtable.Recycle(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn ProcessBindings(self: *@This(), item: *IInspectable, itemIndex: i32, phase: i32, nextPhase: i32) core.HResult!void {
        const _c = self.vtable.ProcessBindings(@ptrCast(self), item, itemIndex, phase, nextPhase);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Markup.IDataTemplateComponent";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "08429dc8-8ab0-4747-aa9a-feadfc8da8e1";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Recycle: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        ProcessBindings: *const fn(self: *anyopaque, item: *IInspectable, itemIndex: i32, phase: i32, nextPhase: i32) callconv(.winapi) HRESULT,
    };
};
pub const IMarkupExtension = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Markup.IMarkupExtension";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1ee3416d-562b-486e-9ee5-0f0cbcc8048c";
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
pub const IMarkupExtensionFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstance(self: *@This(), baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*MarkupExtension {
        var _r: *MarkupExtension = undefined;
        const _c = self.vtable.CreateInstance(@ptrCast(self), baseInterface, innerInterface, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Markup.IMarkupExtensionFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "65329c05-fb5a-4567-9d55-5cdfbada2739";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstance: *const fn(self: *anyopaque, baseInterface: *IInspectable, innerInterface: *IInspectable, _r: **MarkupExtension) callconv(.winapi) HRESULT,
    };
};
pub const IMarkupExtensionOverrides = extern struct {
    vtable: *const VTable,
    pub fn ProvideValue(self: *@This()) core.HResult!*IInspectable {
        var _r: *IInspectable = undefined;
        const _c = self.vtable.ProvideValue(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Markup.IMarkupExtensionOverrides";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "393779bf-b9c0-4ffb-a57f-58e7356e425f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        ProvideValue: *const fn(self: *anyopaque, _r: **IInspectable) callconv(.winapi) HRESULT,
    };
};
pub const IXamlBinaryWriter = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Markup.IXamlBinaryWriter";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "829d2ad3-620a-46f6-845d-436a05927100";
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
pub const IXamlBinaryWriterStatics = extern struct {
    vtable: *const VTable,
    pub fn Write(self: *@This(), inputStreams: *IVector(IRandomAccessStream), outputStreams: *IVector(IRandomAccessStream), xamlMetadataProvider: *IXamlMetadataProvider) core.HResult!XamlBinaryWriterErrorInformation {
        var _r: XamlBinaryWriterErrorInformation = undefined;
        const _c = self.vtable.Write(@ptrCast(self), inputStreams, outputStreams, xamlMetadataProvider, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Markup.IXamlBinaryWriterStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "0d8ed07a-9b82-4aa8-b68b-026f2de1cc86";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Write: *const fn(self: *anyopaque, inputStreams: *IVector(IRandomAccessStream), outputStreams: *IVector(IRandomAccessStream), xamlMetadataProvider: *IXamlMetadataProvider, _r: *XamlBinaryWriterErrorInformation) callconv(.winapi) HRESULT,
    };
};
pub const IXamlBindScopeDiagnostics = extern struct {
    vtable: *const VTable,
    pub fn Disable(self: *@This(), lineNumber: i32, columnNumber: i32) core.HResult!void {
        const _c = self.vtable.Disable(@ptrCast(self), lineNumber, columnNumber);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Markup.IXamlBindScopeDiagnostics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f264a29d-bded-43aa-a5b0-26ac21a81eb8";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Disable: *const fn(self: *anyopaque, lineNumber: i32, columnNumber: i32) callconv(.winapi) HRESULT,
    };
};
pub const IXamlBindingHelper = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Markup.IXamlBindingHelper";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "faa6fb06-8ab9-4ef7-8ae7-fbd30bbfd06d";
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
pub const IXamlBindingHelperStatics = extern struct {
    vtable: *const VTable,
    pub fn getDataTemplateComponentProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_DataTemplateComponentProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetDataTemplateComponent(self: *@This(), element: *DependencyObject) core.HResult!*IDataTemplateComponent {
        var _r: *IDataTemplateComponent = undefined;
        const _c = self.vtable.GetDataTemplateComponent(@ptrCast(self), element, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetDataTemplateComponent(self: *@This(), element: *DependencyObject, value: *IDataTemplateComponent) core.HResult!void {
        const _c = self.vtable.SetDataTemplateComponent(@ptrCast(self), element, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn SuspendRendering(self: *@This(), target: *UIElement) core.HResult!void {
        const _c = self.vtable.SuspendRendering(@ptrCast(self), target);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn ResumeRendering(self: *@This(), target: *UIElement) core.HResult!void {
        const _c = self.vtable.ResumeRendering(@ptrCast(self), target);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn ConvertValue(self: *@This(), type: TypeName, value: *IInspectable) core.HResult!*IInspectable {
        var _r: *IInspectable = undefined;
        const _c = self.vtable.ConvertValue(@ptrCast(self), type, value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetPropertyFromString(self: *@This(), dependencyObject: *IInspectable, propertyToSet: *DependencyProperty, value: HSTRING) core.HResult!void {
        const _c = self.vtable.SetPropertyFromString(@ptrCast(self), dependencyObject, propertyToSet, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn SetPropertyFromBoolean(self: *@This(), dependencyObject: *IInspectable, propertyToSet: *DependencyProperty, value: bool) core.HResult!void {
        const _c = self.vtable.SetPropertyFromBoolean(@ptrCast(self), dependencyObject, propertyToSet, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn SetPropertyFromChar16(self: *@This(), dependencyObject: *IInspectable, propertyToSet: *DependencyProperty, value: u16) core.HResult!void {
        const _c = self.vtable.SetPropertyFromChar16(@ptrCast(self), dependencyObject, propertyToSet, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn SetPropertyFromDateTime(self: *@This(), dependencyObject: *IInspectable, propertyToSet: *DependencyProperty, value: DateTime) core.HResult!void {
        const _c = self.vtable.SetPropertyFromDateTime(@ptrCast(self), dependencyObject, propertyToSet, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn SetPropertyFromDouble(self: *@This(), dependencyObject: *IInspectable, propertyToSet: *DependencyProperty, value: f64) core.HResult!void {
        const _c = self.vtable.SetPropertyFromDouble(@ptrCast(self), dependencyObject, propertyToSet, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn SetPropertyFromInt32(self: *@This(), dependencyObject: *IInspectable, propertyToSet: *DependencyProperty, value: i32) core.HResult!void {
        const _c = self.vtable.SetPropertyFromInt32(@ptrCast(self), dependencyObject, propertyToSet, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn SetPropertyFromUInt32(self: *@This(), dependencyObject: *IInspectable, propertyToSet: *DependencyProperty, value: u32) core.HResult!void {
        const _c = self.vtable.SetPropertyFromUInt32(@ptrCast(self), dependencyObject, propertyToSet, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn SetPropertyFromInt64(self: *@This(), dependencyObject: *IInspectable, propertyToSet: *DependencyProperty, value: i64) core.HResult!void {
        const _c = self.vtable.SetPropertyFromInt64(@ptrCast(self), dependencyObject, propertyToSet, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn SetPropertyFromUInt64(self: *@This(), dependencyObject: *IInspectable, propertyToSet: *DependencyProperty, value: u64) core.HResult!void {
        const _c = self.vtable.SetPropertyFromUInt64(@ptrCast(self), dependencyObject, propertyToSet, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn SetPropertyFromSingle(self: *@This(), dependencyObject: *IInspectable, propertyToSet: *DependencyProperty, value: f32) core.HResult!void {
        const _c = self.vtable.SetPropertyFromSingle(@ptrCast(self), dependencyObject, propertyToSet, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn SetPropertyFromPoint(self: *@This(), dependencyObject: *IInspectable, propertyToSet: *DependencyProperty, value: Point) core.HResult!void {
        const _c = self.vtable.SetPropertyFromPoint(@ptrCast(self), dependencyObject, propertyToSet, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn SetPropertyFromRect(self: *@This(), dependencyObject: *IInspectable, propertyToSet: *DependencyProperty, value: Rect) core.HResult!void {
        const _c = self.vtable.SetPropertyFromRect(@ptrCast(self), dependencyObject, propertyToSet, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn SetPropertyFromSize(self: *@This(), dependencyObject: *IInspectable, propertyToSet: *DependencyProperty, value: Size) core.HResult!void {
        const _c = self.vtable.SetPropertyFromSize(@ptrCast(self), dependencyObject, propertyToSet, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn SetPropertyFromTimeSpan(self: *@This(), dependencyObject: *IInspectable, propertyToSet: *DependencyProperty, value: TimeSpan) core.HResult!void {
        const _c = self.vtable.SetPropertyFromTimeSpan(@ptrCast(self), dependencyObject, propertyToSet, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn SetPropertyFromByte(self: *@This(), dependencyObject: *IInspectable, propertyToSet: *DependencyProperty, value: u8) core.HResult!void {
        const _c = self.vtable.SetPropertyFromByte(@ptrCast(self), dependencyObject, propertyToSet, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn SetPropertyFromUri(self: *@This(), dependencyObject: *IInspectable, propertyToSet: *DependencyProperty, value: *Uri) core.HResult!void {
        const _c = self.vtable.SetPropertyFromUri(@ptrCast(self), dependencyObject, propertyToSet, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn SetPropertyFromObject(self: *@This(), dependencyObject: *IInspectable, propertyToSet: *DependencyProperty, value: *IInspectable) core.HResult!void {
        const _c = self.vtable.SetPropertyFromObject(@ptrCast(self), dependencyObject, propertyToSet, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Markup.IXamlBindingHelperStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f65cfb71-c80c-4ffa-86ee-558754ee336d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_DataTemplateComponentProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        GetDataTemplateComponent: *const fn(self: *anyopaque, element: *DependencyObject, _r: **IDataTemplateComponent) callconv(.winapi) HRESULT,
        SetDataTemplateComponent: *const fn(self: *anyopaque, element: *DependencyObject, value: *IDataTemplateComponent) callconv(.winapi) HRESULT,
        SuspendRendering: *const fn(self: *anyopaque, target: *UIElement) callconv(.winapi) HRESULT,
        ResumeRendering: *const fn(self: *anyopaque, target: *UIElement) callconv(.winapi) HRESULT,
        ConvertValue: *const fn(self: *anyopaque, type: TypeName, value: *IInspectable, _r: **IInspectable) callconv(.winapi) HRESULT,
        SetPropertyFromString: *const fn(self: *anyopaque, dependencyObject: *IInspectable, propertyToSet: *DependencyProperty, value: HSTRING) callconv(.winapi) HRESULT,
        SetPropertyFromBoolean: *const fn(self: *anyopaque, dependencyObject: *IInspectable, propertyToSet: *DependencyProperty, value: bool) callconv(.winapi) HRESULT,
        SetPropertyFromChar16: *const fn(self: *anyopaque, dependencyObject: *IInspectable, propertyToSet: *DependencyProperty, value: u16) callconv(.winapi) HRESULT,
        SetPropertyFromDateTime: *const fn(self: *anyopaque, dependencyObject: *IInspectable, propertyToSet: *DependencyProperty, value: DateTime) callconv(.winapi) HRESULT,
        SetPropertyFromDouble: *const fn(self: *anyopaque, dependencyObject: *IInspectable, propertyToSet: *DependencyProperty, value: f64) callconv(.winapi) HRESULT,
        SetPropertyFromInt32: *const fn(self: *anyopaque, dependencyObject: *IInspectable, propertyToSet: *DependencyProperty, value: i32) callconv(.winapi) HRESULT,
        SetPropertyFromUInt32: *const fn(self: *anyopaque, dependencyObject: *IInspectable, propertyToSet: *DependencyProperty, value: u32) callconv(.winapi) HRESULT,
        SetPropertyFromInt64: *const fn(self: *anyopaque, dependencyObject: *IInspectable, propertyToSet: *DependencyProperty, value: i64) callconv(.winapi) HRESULT,
        SetPropertyFromUInt64: *const fn(self: *anyopaque, dependencyObject: *IInspectable, propertyToSet: *DependencyProperty, value: u64) callconv(.winapi) HRESULT,
        SetPropertyFromSingle: *const fn(self: *anyopaque, dependencyObject: *IInspectable, propertyToSet: *DependencyProperty, value: f32) callconv(.winapi) HRESULT,
        SetPropertyFromPoint: *const fn(self: *anyopaque, dependencyObject: *IInspectable, propertyToSet: *DependencyProperty, value: Point) callconv(.winapi) HRESULT,
        SetPropertyFromRect: *const fn(self: *anyopaque, dependencyObject: *IInspectable, propertyToSet: *DependencyProperty, value: Rect) callconv(.winapi) HRESULT,
        SetPropertyFromSize: *const fn(self: *anyopaque, dependencyObject: *IInspectable, propertyToSet: *DependencyProperty, value: Size) callconv(.winapi) HRESULT,
        SetPropertyFromTimeSpan: *const fn(self: *anyopaque, dependencyObject: *IInspectable, propertyToSet: *DependencyProperty, value: TimeSpan) callconv(.winapi) HRESULT,
        SetPropertyFromByte: *const fn(self: *anyopaque, dependencyObject: *IInspectable, propertyToSet: *DependencyProperty, value: u8) callconv(.winapi) HRESULT,
        SetPropertyFromUri: *const fn(self: *anyopaque, dependencyObject: *IInspectable, propertyToSet: *DependencyProperty, value: *Uri) callconv(.winapi) HRESULT,
        SetPropertyFromObject: *const fn(self: *anyopaque, dependencyObject: *IInspectable, propertyToSet: *DependencyProperty, value: *IInspectable) callconv(.winapi) HRESULT,
    };
};
pub const IXamlMarkupHelper = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Markup.IXamlMarkupHelper";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d0e6673c-5342-44ef-85a7-ed327a739d9a";
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
pub const IXamlMarkupHelperStatics = extern struct {
    vtable: *const VTable,
    pub fn UnloadObject(self: *@This(), element: *DependencyObject) core.HResult!void {
        const _c = self.vtable.UnloadObject(@ptrCast(self), element);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Markup.IXamlMarkupHelperStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c9bc3725-f34f-445c-81a2-6b72a5e8f072";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        UnloadObject: *const fn(self: *anyopaque, element: *DependencyObject) callconv(.winapi) HRESULT,
    };
};
pub const IXamlMember = extern struct {
    vtable: *const VTable,
    pub fn getIsAttachable(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsAttachable(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsDependencyProperty(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsDependencyProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsReadOnly(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsReadOnly(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Name(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTargetType(self: *@This()) core.HResult!*IXamlType {
        var _r: *IXamlType = undefined;
        const _c = self.vtable.get_TargetType(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getType(self: *@This()) core.HResult!*IXamlType {
        var _r: *IXamlType = undefined;
        const _c = self.vtable.get_Type(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetValue(self: *@This(), instance: *IInspectable) core.HResult!*IInspectable {
        var _r: *IInspectable = undefined;
        const _c = self.vtable.GetValue(@ptrCast(self), instance, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetValue(self: *@This(), instance: *IInspectable, value: *IInspectable) core.HResult!void {
        const _c = self.vtable.SetValue(@ptrCast(self), instance, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Markup.IXamlMember";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c541f58c-43a9-4216-b718-e0b11b14e93e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IsAttachable: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsDependencyProperty: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsReadOnly: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_Name: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_TargetType: *const fn(self: *anyopaque, _r: **IXamlType) callconv(.winapi) HRESULT,
        get_Type: *const fn(self: *anyopaque, _r: **IXamlType) callconv(.winapi) HRESULT,
        GetValue: *const fn(self: *anyopaque, instance: *IInspectable, _r: **IInspectable) callconv(.winapi) HRESULT,
        SetValue: *const fn(self: *anyopaque, instance: *IInspectable, value: *IInspectable) callconv(.winapi) HRESULT,
    };
};
pub const IXamlMetadataProvider = extern struct {
    vtable: *const VTable,
    pub fn GetXamlType(self: *@This(), type: TypeName) core.HResult!*IXamlType {
        var _r: *IXamlType = undefined;
        const _c = self.vtable.GetXamlType(@ptrCast(self), type, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetXamlType(self: *@This(), fullName: HSTRING) core.HResult!*IXamlType {
        var _r: *IXamlType = undefined;
        const _c = self.vtable.GetXamlType(@ptrCast(self), fullName, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetXmlnsDefinitions(self: *@This()) core.HResult![*]XmlnsDefinition {
        var _r: [*]XmlnsDefinition = undefined;
        const _c = self.vtable.GetXmlnsDefinitions(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Markup.IXamlMetadataProvider";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b3765d69-68a5-4b32-8861-fdb90c1f5836";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetXamlType: *const fn(self: *anyopaque, type: TypeName, _r: **IXamlType) callconv(.winapi) HRESULT,
        GetXamlType: *const fn(self: *anyopaque, fullName: HSTRING, _r: **IXamlType) callconv(.winapi) HRESULT,
        GetXmlnsDefinitions: *const fn(self: *anyopaque, _r: *[*]XmlnsDefinition) callconv(.winapi) HRESULT,
    };
};
pub const IXamlReader = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Markup.IXamlReader";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "24374cf1-cceb-48bf-a514-41b0186f84c2";
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
pub const IXamlReaderStatics = extern struct {
    vtable: *const VTable,
    pub fn Load(self: *@This(), xaml: HSTRING) core.HResult!*IInspectable {
        var _r: *IInspectable = undefined;
        const _c = self.vtable.Load(@ptrCast(self), xaml, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn LoadWithInitialTemplateValidation(self: *@This(), xaml: HSTRING) core.HResult!*IInspectable {
        var _r: *IInspectable = undefined;
        const _c = self.vtable.LoadWithInitialTemplateValidation(@ptrCast(self), xaml, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Markup.IXamlReaderStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "9891c6bd-534f-4955-b85a-8a8dc0dca602";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Load: *const fn(self: *anyopaque, xaml: HSTRING, _r: **IInspectable) callconv(.winapi) HRESULT,
        LoadWithInitialTemplateValidation: *const fn(self: *anyopaque, xaml: HSTRING, _r: **IInspectable) callconv(.winapi) HRESULT,
    };
};
pub const IXamlType = extern struct {
    vtable: *const VTable,
    pub fn getBaseType(self: *@This()) core.HResult!*IXamlType {
        var _r: *IXamlType = undefined;
        const _c = self.vtable.get_BaseType(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getContentProperty(self: *@This()) core.HResult!*IXamlMember {
        var _r: *IXamlMember = undefined;
        const _c = self.vtable.get_ContentProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getFullName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_FullName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsArray(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsArray(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsCollection(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsCollection(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsConstructible(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsConstructible(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsDictionary(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsDictionary(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsMarkupExtension(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsMarkupExtension(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsBindable(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsBindable(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getItemType(self: *@This()) core.HResult!*IXamlType {
        var _r: *IXamlType = undefined;
        const _c = self.vtable.get_ItemType(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getKeyType(self: *@This()) core.HResult!*IXamlType {
        var _r: *IXamlType = undefined;
        const _c = self.vtable.get_KeyType(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getUnderlyingType(self: *@This()) core.HResult!TypeName {
        var _r: TypeName = undefined;
        const _c = self.vtable.get_UnderlyingType(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ActivateInstance(self: *@This()) core.HResult!*IInspectable {
        var _r: *IInspectable = undefined;
        const _c = self.vtable.ActivateInstance(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateFromString(self: *@This(), value: HSTRING) core.HResult!*IInspectable {
        var _r: *IInspectable = undefined;
        const _c = self.vtable.CreateFromString(@ptrCast(self), value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetMember(self: *@This(), name: HSTRING) core.HResult!*IXamlMember {
        var _r: *IXamlMember = undefined;
        const _c = self.vtable.GetMember(@ptrCast(self), name, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn AddToVector(self: *@This(), instance: *IInspectable, value: *IInspectable) core.HResult!void {
        const _c = self.vtable.AddToVector(@ptrCast(self), instance, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddToMap(self: *@This(), instance: *IInspectable, key: *IInspectable, value: *IInspectable) core.HResult!void {
        const _c = self.vtable.AddToMap(@ptrCast(self), instance, key, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn RunInitializer(self: *@This()) core.HResult!void {
        const _c = self.vtable.RunInitializer(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Markup.IXamlType";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7920eab1-a2e5-479a-bd50-6cef3c0b4970";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_BaseType: *const fn(self: *anyopaque, _r: **IXamlType) callconv(.winapi) HRESULT,
        get_ContentProperty: *const fn(self: *anyopaque, _r: **IXamlMember) callconv(.winapi) HRESULT,
        get_FullName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_IsArray: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsCollection: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsConstructible: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsDictionary: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsMarkupExtension: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsBindable: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_ItemType: *const fn(self: *anyopaque, _r: **IXamlType) callconv(.winapi) HRESULT,
        get_KeyType: *const fn(self: *anyopaque, _r: **IXamlType) callconv(.winapi) HRESULT,
        get_UnderlyingType: *const fn(self: *anyopaque, _r: *TypeName) callconv(.winapi) HRESULT,
        ActivateInstance: *const fn(self: *anyopaque, _r: **IInspectable) callconv(.winapi) HRESULT,
        CreateFromString: *const fn(self: *anyopaque, value: HSTRING, _r: **IInspectable) callconv(.winapi) HRESULT,
        GetMember: *const fn(self: *anyopaque, name: HSTRING, _r: **IXamlMember) callconv(.winapi) HRESULT,
        AddToVector: *const fn(self: *anyopaque, instance: *IInspectable, value: *IInspectable) callconv(.winapi) HRESULT,
        AddToMap: *const fn(self: *anyopaque, instance: *IInspectable, key: *IInspectable, value: *IInspectable) callconv(.winapi) HRESULT,
        RunInitializer: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
    };
};
pub const IXamlType2 = extern struct {
    vtable: *const VTable,
    pub fn getBoxedType(self: *@This()) core.HResult!*IXamlType {
        var _r: *IXamlType = undefined;
        const _c = self.vtable.get_BoxedType(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Markup.IXamlType2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "9f0c6e3b-433b-56ad-8f69-78a4dd3e64f9";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_BoxedType: *const fn(self: *anyopaque, _r: **IXamlType) callconv(.winapi) HRESULT,
    };
};
pub const MarkupExtension = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn ProvideValue(self: *@This()) core.HResult!*IInspectable {
        var this: ?*IMarkupExtensionOverrides = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMarkupExtensionOverrides.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ProvideValue();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateInstance(baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*MarkupExtension {
        const factory = @This().IMarkupExtensionFactoryCache.get();
        return try factory.CreateInstance(baseInterface, innerInterface);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Markup.MarkupExtension";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMarkupExtension.GUID;
    pub const IID: Guid = IMarkupExtension.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMarkupExtension.SIGNATURE);
    var _IMarkupExtensionFactoryCache: FactoryCache(IMarkupExtensionFactory, RUNTIME_NAME) = .{};
};
pub const MarkupExtensionReturnTypeAttribute = extern struct {
    vtable: *const IInspectable.VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Markup.MarkupExtensionReturnTypeAttribute";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
};
pub const XamlBinaryWriter = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn Write(inputStreams: *IVector(IRandomAccessStream), outputStreams: *IVector(IRandomAccessStream), xamlMetadataProvider: *IXamlMetadataProvider) core.HResult!XamlBinaryWriterErrorInformation {
        const factory = @This().IXamlBinaryWriterStaticsCache.get();
        return try factory.Write(inputStreams, outputStreams, xamlMetadataProvider);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Markup.XamlBinaryWriter";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IXamlBinaryWriter.GUID;
    pub const IID: Guid = IXamlBinaryWriter.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IXamlBinaryWriter.SIGNATURE);
    var _IXamlBinaryWriterStaticsCache: FactoryCache(IXamlBinaryWriterStatics, RUNTIME_NAME) = .{};
};
pub const XamlBinaryWriterErrorInformation = extern struct {
    InputStreamIndex: u32,
    LineNumber: u32,
    LinePosition: u32,
};
pub const XamlBindingHelper = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn getDataTemplateComponentProperty() core.HResult!*DependencyProperty {
        const factory = @This().IXamlBindingHelperStaticsCache.get();
        return try factory.getDataTemplateComponentProperty();
    }
    pub fn GetDataTemplateComponent(element: *DependencyObject) core.HResult!*IDataTemplateComponent {
        const factory = @This().IXamlBindingHelperStaticsCache.get();
        return try factory.GetDataTemplateComponent(element);
    }
    pub fn SetDataTemplateComponent(element: *DependencyObject, value: *IDataTemplateComponent) core.HResult!void {
        const factory = @This().IXamlBindingHelperStaticsCache.get();
        return try factory.SetDataTemplateComponent(element, value);
    }
    pub fn SuspendRendering(target: *UIElement) core.HResult!void {
        const factory = @This().IXamlBindingHelperStaticsCache.get();
        return try factory.SuspendRendering(target);
    }
    pub fn ResumeRendering(target: *UIElement) core.HResult!void {
        const factory = @This().IXamlBindingHelperStaticsCache.get();
        return try factory.ResumeRendering(target);
    }
    pub fn ConvertValue(type: TypeName, value: *IInspectable) core.HResult!*IInspectable {
        const factory = @This().IXamlBindingHelperStaticsCache.get();
        return try factory.ConvertValue(type, value);
    }
    pub fn SetPropertyFromString(dependencyObject: *IInspectable, propertyToSet: *DependencyProperty, value: HSTRING) core.HResult!void {
        const factory = @This().IXamlBindingHelperStaticsCache.get();
        return try factory.SetPropertyFromString(dependencyObject, propertyToSet, value);
    }
    pub fn SetPropertyFromBoolean(dependencyObject: *IInspectable, propertyToSet: *DependencyProperty, value: bool) core.HResult!void {
        const factory = @This().IXamlBindingHelperStaticsCache.get();
        return try factory.SetPropertyFromBoolean(dependencyObject, propertyToSet, value);
    }
    pub fn SetPropertyFromChar16(dependencyObject: *IInspectable, propertyToSet: *DependencyProperty, value: u16) core.HResult!void {
        const factory = @This().IXamlBindingHelperStaticsCache.get();
        return try factory.SetPropertyFromChar16(dependencyObject, propertyToSet, value);
    }
    pub fn SetPropertyFromDateTime(dependencyObject: *IInspectable, propertyToSet: *DependencyProperty, value: DateTime) core.HResult!void {
        const factory = @This().IXamlBindingHelperStaticsCache.get();
        return try factory.SetPropertyFromDateTime(dependencyObject, propertyToSet, value);
    }
    pub fn SetPropertyFromDouble(dependencyObject: *IInspectable, propertyToSet: *DependencyProperty, value: f64) core.HResult!void {
        const factory = @This().IXamlBindingHelperStaticsCache.get();
        return try factory.SetPropertyFromDouble(dependencyObject, propertyToSet, value);
    }
    pub fn SetPropertyFromInt32(dependencyObject: *IInspectable, propertyToSet: *DependencyProperty, value: i32) core.HResult!void {
        const factory = @This().IXamlBindingHelperStaticsCache.get();
        return try factory.SetPropertyFromInt32(dependencyObject, propertyToSet, value);
    }
    pub fn SetPropertyFromUInt32(dependencyObject: *IInspectable, propertyToSet: *DependencyProperty, value: u32) core.HResult!void {
        const factory = @This().IXamlBindingHelperStaticsCache.get();
        return try factory.SetPropertyFromUInt32(dependencyObject, propertyToSet, value);
    }
    pub fn SetPropertyFromInt64(dependencyObject: *IInspectable, propertyToSet: *DependencyProperty, value: i64) core.HResult!void {
        const factory = @This().IXamlBindingHelperStaticsCache.get();
        return try factory.SetPropertyFromInt64(dependencyObject, propertyToSet, value);
    }
    pub fn SetPropertyFromUInt64(dependencyObject: *IInspectable, propertyToSet: *DependencyProperty, value: u64) core.HResult!void {
        const factory = @This().IXamlBindingHelperStaticsCache.get();
        return try factory.SetPropertyFromUInt64(dependencyObject, propertyToSet, value);
    }
    pub fn SetPropertyFromSingle(dependencyObject: *IInspectable, propertyToSet: *DependencyProperty, value: f32) core.HResult!void {
        const factory = @This().IXamlBindingHelperStaticsCache.get();
        return try factory.SetPropertyFromSingle(dependencyObject, propertyToSet, value);
    }
    pub fn SetPropertyFromPoint(dependencyObject: *IInspectable, propertyToSet: *DependencyProperty, value: Point) core.HResult!void {
        const factory = @This().IXamlBindingHelperStaticsCache.get();
        return try factory.SetPropertyFromPoint(dependencyObject, propertyToSet, value);
    }
    pub fn SetPropertyFromRect(dependencyObject: *IInspectable, propertyToSet: *DependencyProperty, value: Rect) core.HResult!void {
        const factory = @This().IXamlBindingHelperStaticsCache.get();
        return try factory.SetPropertyFromRect(dependencyObject, propertyToSet, value);
    }
    pub fn SetPropertyFromSize(dependencyObject: *IInspectable, propertyToSet: *DependencyProperty, value: Size) core.HResult!void {
        const factory = @This().IXamlBindingHelperStaticsCache.get();
        return try factory.SetPropertyFromSize(dependencyObject, propertyToSet, value);
    }
    pub fn SetPropertyFromTimeSpan(dependencyObject: *IInspectable, propertyToSet: *DependencyProperty, value: TimeSpan) core.HResult!void {
        const factory = @This().IXamlBindingHelperStaticsCache.get();
        return try factory.SetPropertyFromTimeSpan(dependencyObject, propertyToSet, value);
    }
    pub fn SetPropertyFromByte(dependencyObject: *IInspectable, propertyToSet: *DependencyProperty, value: u8) core.HResult!void {
        const factory = @This().IXamlBindingHelperStaticsCache.get();
        return try factory.SetPropertyFromByte(dependencyObject, propertyToSet, value);
    }
    pub fn SetPropertyFromUri(dependencyObject: *IInspectable, propertyToSet: *DependencyProperty, value: *Uri) core.HResult!void {
        const factory = @This().IXamlBindingHelperStaticsCache.get();
        return try factory.SetPropertyFromUri(dependencyObject, propertyToSet, value);
    }
    pub fn SetPropertyFromObject(dependencyObject: *IInspectable, propertyToSet: *DependencyProperty, value: *IInspectable) core.HResult!void {
        const factory = @This().IXamlBindingHelperStaticsCache.get();
        return try factory.SetPropertyFromObject(dependencyObject, propertyToSet, value);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Markup.XamlBindingHelper";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IXamlBindingHelper.GUID;
    pub const IID: Guid = IXamlBindingHelper.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IXamlBindingHelper.SIGNATURE);
    var _IXamlBindingHelperStaticsCache: FactoryCache(IXamlBindingHelperStatics, RUNTIME_NAME) = .{};
};
pub const XamlMarkupHelper = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn UnloadObject(element: *DependencyObject) core.HResult!void {
        const factory = @This().IXamlMarkupHelperStaticsCache.get();
        return try factory.UnloadObject(element);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Markup.XamlMarkupHelper";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IXamlMarkupHelper.GUID;
    pub const IID: Guid = IXamlMarkupHelper.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IXamlMarkupHelper.SIGNATURE);
    var _IXamlMarkupHelperStaticsCache: FactoryCache(IXamlMarkupHelperStatics, RUNTIME_NAME) = .{};
};
pub const XamlReader = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn Load(xaml: HSTRING) core.HResult!*IInspectable {
        const factory = @This().IXamlReaderStaticsCache.get();
        return try factory.Load(xaml);
    }
    pub fn LoadWithInitialTemplateValidation(xaml: HSTRING) core.HResult!*IInspectable {
        const factory = @This().IXamlReaderStaticsCache.get();
        return try factory.LoadWithInitialTemplateValidation(xaml);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Markup.XamlReader";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IXamlReader.GUID;
    pub const IID: Guid = IXamlReader.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IXamlReader.SIGNATURE);
    var _IXamlReaderStaticsCache: FactoryCache(IXamlReaderStatics, RUNTIME_NAME) = .{};
};
pub const XmlnsDefinition = extern struct {
    XmlNamespace: HSTRING,
    Namespace: HSTRING,
};
const IUnknown = @import("../../root.zig").IUnknown;
const Guid = @import("../../root.zig").Guid;
const IInspectable = @import("../../Foundation.zig").IInspectable;
const IVector = @import("../../Foundation/Collections.zig").IVector;
const TypeName = @import("./Interop.zig").TypeName;
const Size = @import("../../Foundation.zig").Size;
const TimeSpan = @import("../../Foundation.zig").TimeSpan;
const Point = @import("../../Foundation.zig").Point;
const Uri = @import("../../Foundation.zig").Uri;
const UIElement = @import("../Xaml.zig").UIElement;
const DateTime = @import("../../Foundation.zig").DateTime;
const HRESULT = @import("../../root.zig").HRESULT;
const IRandomAccessStream = @import("../../Storage/Streams.zig").IRandomAccessStream;
const core = @import("../../root.zig").core;
const FactoryCache = @import("../../core.zig").FactoryCache;
const DependencyProperty = @import("../Xaml.zig").DependencyProperty;
const Rect = @import("../../Foundation.zig").Rect;
const TrustLevel = @import("../../root.zig").TrustLevel;
const DependencyObject = @import("../Xaml.zig").DependencyObject;
const HSTRING = @import("../../root.zig").HSTRING;
