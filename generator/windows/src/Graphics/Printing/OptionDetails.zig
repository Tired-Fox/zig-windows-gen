pub const IPrintBindingOptionDetails = extern struct {
    vtable: *const VTable,
    pub fn putWarningText(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_WarningText(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getWarningText(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_WarningText(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDescription(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_Description(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getDescription(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Description(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing.OptionDetails.IPrintBindingOptionDetails";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c3f4cc98-9564-4f16-a055-a98b9a49e9d3";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        put_WarningText: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_WarningText: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_Description: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_Description: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IPrintBorderingOptionDetails = extern struct {
    vtable: *const VTable,
    pub fn putWarningText(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_WarningText(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getWarningText(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_WarningText(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDescription(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_Description(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getDescription(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Description(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing.OptionDetails.IPrintBorderingOptionDetails";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "4d73bc8f-fb53-4eb2-985f-1d91de0b7639";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        put_WarningText: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_WarningText: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_Description: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_Description: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IPrintCollationOptionDetails = extern struct {
    vtable: *const VTable,
    pub fn putWarningText(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_WarningText(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getWarningText(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_WarningText(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDescription(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_Description(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getDescription(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Description(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing.OptionDetails.IPrintCollationOptionDetails";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d6abb166-a5a6-40dc-acc3-739f28f1e5d3";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        put_WarningText: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_WarningText: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_Description: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_Description: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IPrintColorModeOptionDetails = extern struct {
    vtable: *const VTable,
    pub fn putWarningText(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_WarningText(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getWarningText(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_WarningText(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDescription(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_Description(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getDescription(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Description(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing.OptionDetails.IPrintColorModeOptionDetails";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "dba97704-f1d6-4843-a484-9b447cdcf3b6";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        put_WarningText: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_WarningText: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_Description: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_Description: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IPrintCopiesOptionDetails = extern struct {
    vtable: *const VTable,
    pub fn putWarningText(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_WarningText(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getWarningText(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_WarningText(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDescription(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_Description(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getDescription(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Description(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing.OptionDetails.IPrintCopiesOptionDetails";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "42053099-4339-4343-898d-2c47b5e0c341";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        put_WarningText: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_WarningText: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_Description: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_Description: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IPrintCustomItemDetails = extern struct {
    vtable: *const VTable,
    pub fn getItemId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ItemId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putItemDisplayName(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_ItemDisplayName(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getItemDisplayName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ItemDisplayName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing.OptionDetails.IPrintCustomItemDetails";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5704b637-5c3a-449a-aa36-b3291b1192fd";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ItemId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_ItemDisplayName: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_ItemDisplayName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IPrintCustomItemListOptionDetails = extern struct {
    vtable: *const VTable,
    pub fn AddItem(self: *@This(), itemId: HSTRING, displayName: HSTRING) core.HResult!void {
        const _c = self.vtable.AddItem(@ptrCast(self), itemId, displayName);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing.OptionDetails.IPrintCustomItemListOptionDetails";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a5fafd88-58f2-4ebd-b90f-51e4f2944c5d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        AddItem: *const fn(self: *anyopaque, itemId: HSTRING, displayName: HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IPrintCustomItemListOptionDetails2 = extern struct {
    vtable: *const VTable,
    pub fn AddItem(self: *@This(), itemId: HSTRING, displayName: HSTRING, description: HSTRING, icon: *IRandomAccessStreamWithContentType) core.HResult!void {
        const _c = self.vtable.AddItem(@ptrCast(self), itemId, displayName, description, icon);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing.OptionDetails.IPrintCustomItemListOptionDetails2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c9d6353d-651c-4a39-906e-1091a1801bf1";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        AddItem: *const fn(self: *anyopaque, itemId: HSTRING, displayName: HSTRING, description: HSTRING, icon: *IRandomAccessStreamWithContentType) callconv(.winapi) HRESULT,
    };
};
pub const IPrintCustomItemListOptionDetails3 = extern struct {
    vtable: *const VTable,
    pub fn putWarningText(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_WarningText(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getWarningText(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_WarningText(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDescription(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_Description(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getDescription(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Description(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing.OptionDetails.IPrintCustomItemListOptionDetails3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "4fa1b53f-3c34-4868-a407-fc5eab259b21";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        put_WarningText: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_WarningText: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_Description: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_Description: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IPrintCustomOptionDetails = extern struct {
    vtable: *const VTable,
    pub fn putDisplayName(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_DisplayName(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getDisplayName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DisplayName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing.OptionDetails.IPrintCustomOptionDetails";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e32bde1c-28af-4b90-95da-a3acf320b929";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        put_DisplayName: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_DisplayName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IPrintCustomTextOptionDetails = extern struct {
    vtable: *const VTable,
    pub fn putMaxCharacters(self: *@This(), value: u32) core.HResult!void {
        const _c = self.vtable.put_MaxCharacters(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getMaxCharacters(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_MaxCharacters(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing.OptionDetails.IPrintCustomTextOptionDetails";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2ad171f8-c8bd-4905-9192-0d75136e8b31";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        put_MaxCharacters: *const fn(self: *anyopaque, value: u32) callconv(.winapi) HRESULT,
        get_MaxCharacters: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
    };
};
pub const IPrintCustomTextOptionDetails2 = extern struct {
    vtable: *const VTable,
    pub fn putWarningText(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_WarningText(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getWarningText(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_WarningText(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDescription(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_Description(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getDescription(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Description(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing.OptionDetails.IPrintCustomTextOptionDetails2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "cea70b54-b977-4718-8338-7ed2b0d86fe3";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        put_WarningText: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_WarningText: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_Description: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_Description: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IPrintCustomToggleOptionDetails = extern struct {
    vtable: *const VTable,
    pub fn putWarningText(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_WarningText(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getWarningText(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_WarningText(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDescription(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_Description(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getDescription(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Description(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing.OptionDetails.IPrintCustomToggleOptionDetails";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "9db4d514-e461-4608-8ee9-db6f5ed073c6";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        put_WarningText: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_WarningText: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_Description: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_Description: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IPrintDuplexOptionDetails = extern struct {
    vtable: *const VTable,
    pub fn putWarningText(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_WarningText(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getWarningText(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_WarningText(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDescription(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_Description(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getDescription(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Description(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing.OptionDetails.IPrintDuplexOptionDetails";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "fcd94591-d4a4-44fa-b3fe-42e0ba28d5ad";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        put_WarningText: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_WarningText: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_Description: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_Description: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IPrintHolePunchOptionDetails = extern struct {
    vtable: *const VTable,
    pub fn putWarningText(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_WarningText(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getWarningText(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_WarningText(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDescription(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_Description(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getDescription(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Description(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing.OptionDetails.IPrintHolePunchOptionDetails";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a6de1f18-482c-4657-9d71-8ddddbea1e1e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        put_WarningText: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_WarningText: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_Description: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_Description: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IPrintItemListOptionDetails = extern struct {
    vtable: *const VTable,
    pub fn getItems(self: *@This()) core.HResult!*IVectorView(IInspectable) {
        var _r: *IVectorView(IInspectable) = undefined;
        const _c = self.vtable.get_Items(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing.OptionDetails.IPrintItemListOptionDetails";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "9a2257bf-fe61-43d8-a24f-a3f6ab7320e7";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Items: *const fn(self: *anyopaque, _r: **IVectorView(IInspectable)) callconv(.winapi) HRESULT,
    };
};
pub const IPrintMediaSizeOptionDetails = extern struct {
    vtable: *const VTable,
    pub fn putWarningText(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_WarningText(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getWarningText(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_WarningText(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDescription(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_Description(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getDescription(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Description(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing.OptionDetails.IPrintMediaSizeOptionDetails";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "6c8d5bcf-c0bf-47c8-b84a-628e7d0d1a1d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        put_WarningText: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_WarningText: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_Description: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_Description: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IPrintMediaTypeOptionDetails = extern struct {
    vtable: *const VTable,
    pub fn putWarningText(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_WarningText(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getWarningText(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_WarningText(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDescription(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_Description(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getDescription(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Description(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing.OptionDetails.IPrintMediaTypeOptionDetails";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f8c7000b-abf3-4abc-8e86-22abc5744a43";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        put_WarningText: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_WarningText: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_Description: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_Description: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IPrintNumberOptionDetails = extern struct {
    vtable: *const VTable,
    pub fn getMinValue(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_MinValue(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMaxValue(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_MaxValue(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing.OptionDetails.IPrintNumberOptionDetails";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "4d01bbaf-645c-4de9-965f-6fc6bbc47cab";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_MinValue: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_MaxValue: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
    };
};
pub const IPrintOptionDetails = extern struct {
    vtable: *const VTable,
    pub fn getOptionId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_OptionId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getOptionType(self: *@This()) core.HResult!PrintOptionType {
        var _r: PrintOptionType = undefined;
        const _c = self.vtable.get_OptionType(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putErrorText(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_ErrorText(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getErrorText(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ErrorText(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putState(self: *@This(), value: PrintOptionStates) core.HResult!void {
        const _c = self.vtable.put_State(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getState(self: *@This()) core.HResult!PrintOptionStates {
        var _r: PrintOptionStates = undefined;
        const _c = self.vtable.get_State(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getValue(self: *@This()) core.HResult!*IInspectable {
        var _r: *IInspectable = undefined;
        const _c = self.vtable.get_Value(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TrySetValue(self: *@This(), value: *IInspectable) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.TrySetValue(@ptrCast(self), value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing.OptionDetails.IPrintOptionDetails";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "390686cf-d682-495f-adfe-d7333f5c1808";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_OptionId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_OptionType: *const fn(self: *anyopaque, _r: *PrintOptionType) callconv(.winapi) HRESULT,
        put_ErrorText: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_ErrorText: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_State: *const fn(self: *anyopaque, value: PrintOptionStates) callconv(.winapi) HRESULT,
        get_State: *const fn(self: *anyopaque, _r: *PrintOptionStates) callconv(.winapi) HRESULT,
        get_Value: *const fn(self: *anyopaque, _r: **IInspectable) callconv(.winapi) HRESULT,
        TrySetValue: *const fn(self: *anyopaque, value: *IInspectable, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IPrintOrientationOptionDetails = extern struct {
    vtable: *const VTable,
    pub fn putWarningText(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_WarningText(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getWarningText(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_WarningText(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDescription(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_Description(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getDescription(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Description(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing.OptionDetails.IPrintOrientationOptionDetails";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "46c38879-66e0-4da0-87b4-d25457824eb7";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        put_WarningText: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_WarningText: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_Description: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_Description: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IPrintPageRangeOptionDetails = extern struct {
    vtable: *const VTable,
    pub fn putWarningText(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_WarningText(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getWarningText(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_WarningText(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDescription(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_Description(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getDescription(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Description(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing.OptionDetails.IPrintPageRangeOptionDetails";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5a19e4b7-2be8-4aa7-9ea5-defbe8713b4e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        put_WarningText: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_WarningText: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_Description: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_Description: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IPrintQualityOptionDetails = extern struct {
    vtable: *const VTable,
    pub fn putWarningText(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_WarningText(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getWarningText(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_WarningText(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDescription(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_Description(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getDescription(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Description(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing.OptionDetails.IPrintQualityOptionDetails";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2dd06ba1-ce1a-44e6-84f9-3a92ea1e3044";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        put_WarningText: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_WarningText: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_Description: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_Description: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IPrintStapleOptionDetails = extern struct {
    vtable: *const VTable,
    pub fn putWarningText(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_WarningText(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getWarningText(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_WarningText(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDescription(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_Description(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getDescription(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Description(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing.OptionDetails.IPrintStapleOptionDetails";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d43175bd-9c0b-44e0-84f6-ceebce653800";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        put_WarningText: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_WarningText: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_Description: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_Description: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IPrintTaskOptionChangedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getOptionId(self: *@This()) core.HResult!*IInspectable {
        var _r: *IInspectable = undefined;
        const _c = self.vtable.get_OptionId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing.OptionDetails.IPrintTaskOptionChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "65197d05-a5ee-4307-9407-9acad147679c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_OptionId: *const fn(self: *anyopaque, _r: **IInspectable) callconv(.winapi) HRESULT,
    };
};
pub const IPrintTaskOptionDetails = extern struct {
    vtable: *const VTable,
    pub fn getOptions(self: *@This()) core.HResult!*IMapView(HSTRING,IPrintOptionDetails) {
        var _r: *IMapView(HSTRING,IPrintOptionDetails) = undefined;
        const _c = self.vtable.get_Options(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateItemListOption(self: *@This(), optionId: HSTRING, displayName: HSTRING) core.HResult!*PrintCustomItemListOptionDetails {
        var _r: *PrintCustomItemListOptionDetails = undefined;
        const _c = self.vtable.CreateItemListOption(@ptrCast(self), optionId, displayName, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateTextOption(self: *@This(), optionId: HSTRING, displayName: HSTRING) core.HResult!*PrintCustomTextOptionDetails {
        var _r: *PrintCustomTextOptionDetails = undefined;
        const _c = self.vtable.CreateTextOption(@ptrCast(self), optionId, displayName, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addOptionChanged(self: *@This(), eventHandler: *TypedEventHandler(PrintTaskOptionDetails,PrintTaskOptionChangedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_OptionChanged(@ptrCast(self), eventHandler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeOptionChanged(self: *@This(), eventCookie: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_OptionChanged(@ptrCast(self), eventCookie);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addBeginValidation(self: *@This(), eventHandler: *TypedEventHandler(PrintTaskOptionDetails,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_BeginValidation(@ptrCast(self), eventHandler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeBeginValidation(self: *@This(), eventCookie: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_BeginValidation(@ptrCast(self), eventCookie);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing.OptionDetails.IPrintTaskOptionDetails";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f5720af1-a89e-42a6-81af-f8e010b38a68";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Options: *const fn(self: *anyopaque, _r: **IMapView(HSTRING,IPrintOptionDetails)) callconv(.winapi) HRESULT,
        CreateItemListOption: *const fn(self: *anyopaque, optionId: HSTRING, displayName: HSTRING, _r: **PrintCustomItemListOptionDetails) callconv(.winapi) HRESULT,
        CreateTextOption: *const fn(self: *anyopaque, optionId: HSTRING, displayName: HSTRING, _r: **PrintCustomTextOptionDetails) callconv(.winapi) HRESULT,
        add_OptionChanged: *const fn(self: *anyopaque, eventHandler: *TypedEventHandler(PrintTaskOptionDetails,PrintTaskOptionChangedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_OptionChanged: *const fn(self: *anyopaque, eventCookie: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_BeginValidation: *const fn(self: *anyopaque, eventHandler: *TypedEventHandler(PrintTaskOptionDetails,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_BeginValidation: *const fn(self: *anyopaque, eventCookie: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IPrintTaskOptionDetails2 = extern struct {
    vtable: *const VTable,
    pub fn CreateToggleOption(self: *@This(), optionId: HSTRING, displayName: HSTRING) core.HResult!*PrintCustomToggleOptionDetails {
        var _r: *PrintCustomToggleOptionDetails = undefined;
        const _c = self.vtable.CreateToggleOption(@ptrCast(self), optionId, displayName, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing.OptionDetails.IPrintTaskOptionDetails2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "53730a09-f968-4692-a177-c074597186db";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateToggleOption: *const fn(self: *anyopaque, optionId: HSTRING, displayName: HSTRING, _r: **PrintCustomToggleOptionDetails) callconv(.winapi) HRESULT,
    };
};
pub const IPrintTaskOptionDetailsStatic = extern struct {
    vtable: *const VTable,
    pub fn GetFromPrintTaskOptions(self: *@This(), printTaskOptions: *PrintTaskOptions) core.HResult!*PrintTaskOptionDetails {
        var _r: *PrintTaskOptionDetails = undefined;
        const _c = self.vtable.GetFromPrintTaskOptions(@ptrCast(self), printTaskOptions, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing.OptionDetails.IPrintTaskOptionDetailsStatic";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "135da193-0961-4b6e-8766-f13b7fbccd58";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetFromPrintTaskOptions: *const fn(self: *anyopaque, printTaskOptions: *PrintTaskOptions, _r: **PrintTaskOptionDetails) callconv(.winapi) HRESULT,
    };
};
pub const IPrintTextOptionDetails = extern struct {
    vtable: *const VTable,
    pub fn getMaxCharacters(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_MaxCharacters(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing.OptionDetails.IPrintTextOptionDetails";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ad75e563-5ce4-46bc-9918-ab9fad144c5b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_MaxCharacters: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
    };
};
pub const PrintBindingOptionDetails = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getOptionId(self: *@This()) core.HResult!HSTRING {
        const this: *IPrintOptionDetails = @ptrCast(self);
        return try this.getOptionId();
    }
    pub fn getOptionType(self: *@This()) core.HResult!PrintOptionType {
        const this: *IPrintOptionDetails = @ptrCast(self);
        return try this.getOptionType();
    }
    pub fn putErrorText(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IPrintOptionDetails = @ptrCast(self);
        return try this.putErrorText(value);
    }
    pub fn getErrorText(self: *@This()) core.HResult!HSTRING {
        const this: *IPrintOptionDetails = @ptrCast(self);
        return try this.getErrorText();
    }
    pub fn putState(self: *@This(), value: PrintOptionStates) core.HResult!void {
        const this: *IPrintOptionDetails = @ptrCast(self);
        return try this.putState(value);
    }
    pub fn getState(self: *@This()) core.HResult!PrintOptionStates {
        const this: *IPrintOptionDetails = @ptrCast(self);
        return try this.getState();
    }
    pub fn getValue(self: *@This()) core.HResult!*IInspectable {
        const this: *IPrintOptionDetails = @ptrCast(self);
        return try this.getValue();
    }
    pub fn TrySetValue(self: *@This(), value: *IInspectable) core.HResult!bool {
        const this: *IPrintOptionDetails = @ptrCast(self);
        return try this.TrySetValue(value);
    }
    pub fn getItems(self: *@This()) core.HResult!*IVectorView(IInspectable) {
        var this: ?*IPrintItemListOptionDetails = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPrintItemListOptionDetails.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getItems();
    }
    pub fn putWarningText(self: *@This(), value: HSTRING) core.HResult!void {
        var this: ?*IPrintBindingOptionDetails = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPrintBindingOptionDetails.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putWarningText(value);
    }
    pub fn getWarningText(self: *@This()) core.HResult!HSTRING {
        var this: ?*IPrintBindingOptionDetails = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPrintBindingOptionDetails.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getWarningText();
    }
    pub fn putDescription(self: *@This(), value: HSTRING) core.HResult!void {
        var this: ?*IPrintBindingOptionDetails = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPrintBindingOptionDetails.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putDescription(value);
    }
    pub fn getDescription(self: *@This()) core.HResult!HSTRING {
        var this: ?*IPrintBindingOptionDetails = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPrintBindingOptionDetails.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getDescription();
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing.OptionDetails.PrintBindingOptionDetails";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPrintOptionDetails.GUID;
    pub const IID: Guid = IPrintOptionDetails.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPrintOptionDetails.SIGNATURE);
};
pub const PrintBorderingOptionDetails = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getOptionId(self: *@This()) core.HResult!HSTRING {
        const this: *IPrintOptionDetails = @ptrCast(self);
        return try this.getOptionId();
    }
    pub fn getOptionType(self: *@This()) core.HResult!PrintOptionType {
        const this: *IPrintOptionDetails = @ptrCast(self);
        return try this.getOptionType();
    }
    pub fn putErrorText(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IPrintOptionDetails = @ptrCast(self);
        return try this.putErrorText(value);
    }
    pub fn getErrorText(self: *@This()) core.HResult!HSTRING {
        const this: *IPrintOptionDetails = @ptrCast(self);
        return try this.getErrorText();
    }
    pub fn putState(self: *@This(), value: PrintOptionStates) core.HResult!void {
        const this: *IPrintOptionDetails = @ptrCast(self);
        return try this.putState(value);
    }
    pub fn getState(self: *@This()) core.HResult!PrintOptionStates {
        const this: *IPrintOptionDetails = @ptrCast(self);
        return try this.getState();
    }
    pub fn getValue(self: *@This()) core.HResult!*IInspectable {
        const this: *IPrintOptionDetails = @ptrCast(self);
        return try this.getValue();
    }
    pub fn TrySetValue(self: *@This(), value: *IInspectable) core.HResult!bool {
        const this: *IPrintOptionDetails = @ptrCast(self);
        return try this.TrySetValue(value);
    }
    pub fn getItems(self: *@This()) core.HResult!*IVectorView(IInspectable) {
        var this: ?*IPrintItemListOptionDetails = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPrintItemListOptionDetails.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getItems();
    }
    pub fn putWarningText(self: *@This(), value: HSTRING) core.HResult!void {
        var this: ?*IPrintBorderingOptionDetails = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPrintBorderingOptionDetails.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putWarningText(value);
    }
    pub fn getWarningText(self: *@This()) core.HResult!HSTRING {
        var this: ?*IPrintBorderingOptionDetails = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPrintBorderingOptionDetails.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getWarningText();
    }
    pub fn putDescription(self: *@This(), value: HSTRING) core.HResult!void {
        var this: ?*IPrintBorderingOptionDetails = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPrintBorderingOptionDetails.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putDescription(value);
    }
    pub fn getDescription(self: *@This()) core.HResult!HSTRING {
        var this: ?*IPrintBorderingOptionDetails = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPrintBorderingOptionDetails.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getDescription();
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing.OptionDetails.PrintBorderingOptionDetails";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPrintOptionDetails.GUID;
    pub const IID: Guid = IPrintOptionDetails.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPrintOptionDetails.SIGNATURE);
};
pub const PrintCollationOptionDetails = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getOptionId(self: *@This()) core.HResult!HSTRING {
        const this: *IPrintOptionDetails = @ptrCast(self);
        return try this.getOptionId();
    }
    pub fn getOptionType(self: *@This()) core.HResult!PrintOptionType {
        const this: *IPrintOptionDetails = @ptrCast(self);
        return try this.getOptionType();
    }
    pub fn putErrorText(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IPrintOptionDetails = @ptrCast(self);
        return try this.putErrorText(value);
    }
    pub fn getErrorText(self: *@This()) core.HResult!HSTRING {
        const this: *IPrintOptionDetails = @ptrCast(self);
        return try this.getErrorText();
    }
    pub fn putState(self: *@This(), value: PrintOptionStates) core.HResult!void {
        const this: *IPrintOptionDetails = @ptrCast(self);
        return try this.putState(value);
    }
    pub fn getState(self: *@This()) core.HResult!PrintOptionStates {
        const this: *IPrintOptionDetails = @ptrCast(self);
        return try this.getState();
    }
    pub fn getValue(self: *@This()) core.HResult!*IInspectable {
        const this: *IPrintOptionDetails = @ptrCast(self);
        return try this.getValue();
    }
    pub fn TrySetValue(self: *@This(), value: *IInspectable) core.HResult!bool {
        const this: *IPrintOptionDetails = @ptrCast(self);
        return try this.TrySetValue(value);
    }
    pub fn getItems(self: *@This()) core.HResult!*IVectorView(IInspectable) {
        var this: ?*IPrintItemListOptionDetails = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPrintItemListOptionDetails.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getItems();
    }
    pub fn putWarningText(self: *@This(), value: HSTRING) core.HResult!void {
        var this: ?*IPrintCollationOptionDetails = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPrintCollationOptionDetails.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putWarningText(value);
    }
    pub fn getWarningText(self: *@This()) core.HResult!HSTRING {
        var this: ?*IPrintCollationOptionDetails = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPrintCollationOptionDetails.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getWarningText();
    }
    pub fn putDescription(self: *@This(), value: HSTRING) core.HResult!void {
        var this: ?*IPrintCollationOptionDetails = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPrintCollationOptionDetails.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putDescription(value);
    }
    pub fn getDescription(self: *@This()) core.HResult!HSTRING {
        var this: ?*IPrintCollationOptionDetails = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPrintCollationOptionDetails.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getDescription();
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing.OptionDetails.PrintCollationOptionDetails";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPrintOptionDetails.GUID;
    pub const IID: Guid = IPrintOptionDetails.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPrintOptionDetails.SIGNATURE);
};
pub const PrintColorModeOptionDetails = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getOptionId(self: *@This()) core.HResult!HSTRING {
        const this: *IPrintOptionDetails = @ptrCast(self);
        return try this.getOptionId();
    }
    pub fn getOptionType(self: *@This()) core.HResult!PrintOptionType {
        const this: *IPrintOptionDetails = @ptrCast(self);
        return try this.getOptionType();
    }
    pub fn putErrorText(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IPrintOptionDetails = @ptrCast(self);
        return try this.putErrorText(value);
    }
    pub fn getErrorText(self: *@This()) core.HResult!HSTRING {
        const this: *IPrintOptionDetails = @ptrCast(self);
        return try this.getErrorText();
    }
    pub fn putState(self: *@This(), value: PrintOptionStates) core.HResult!void {
        const this: *IPrintOptionDetails = @ptrCast(self);
        return try this.putState(value);
    }
    pub fn getState(self: *@This()) core.HResult!PrintOptionStates {
        const this: *IPrintOptionDetails = @ptrCast(self);
        return try this.getState();
    }
    pub fn getValue(self: *@This()) core.HResult!*IInspectable {
        const this: *IPrintOptionDetails = @ptrCast(self);
        return try this.getValue();
    }
    pub fn TrySetValue(self: *@This(), value: *IInspectable) core.HResult!bool {
        const this: *IPrintOptionDetails = @ptrCast(self);
        return try this.TrySetValue(value);
    }
    pub fn getItems(self: *@This()) core.HResult!*IVectorView(IInspectable) {
        var this: ?*IPrintItemListOptionDetails = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPrintItemListOptionDetails.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getItems();
    }
    pub fn putWarningText(self: *@This(), value: HSTRING) core.HResult!void {
        var this: ?*IPrintColorModeOptionDetails = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPrintColorModeOptionDetails.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putWarningText(value);
    }
    pub fn getWarningText(self: *@This()) core.HResult!HSTRING {
        var this: ?*IPrintColorModeOptionDetails = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPrintColorModeOptionDetails.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getWarningText();
    }
    pub fn putDescription(self: *@This(), value: HSTRING) core.HResult!void {
        var this: ?*IPrintColorModeOptionDetails = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPrintColorModeOptionDetails.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putDescription(value);
    }
    pub fn getDescription(self: *@This()) core.HResult!HSTRING {
        var this: ?*IPrintColorModeOptionDetails = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPrintColorModeOptionDetails.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getDescription();
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing.OptionDetails.PrintColorModeOptionDetails";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPrintOptionDetails.GUID;
    pub const IID: Guid = IPrintOptionDetails.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPrintOptionDetails.SIGNATURE);
};
pub const PrintCopiesOptionDetails = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getOptionId(self: *@This()) core.HResult!HSTRING {
        const this: *IPrintOptionDetails = @ptrCast(self);
        return try this.getOptionId();
    }
    pub fn getOptionType(self: *@This()) core.HResult!PrintOptionType {
        const this: *IPrintOptionDetails = @ptrCast(self);
        return try this.getOptionType();
    }
    pub fn putErrorText(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IPrintOptionDetails = @ptrCast(self);
        return try this.putErrorText(value);
    }
    pub fn getErrorText(self: *@This()) core.HResult!HSTRING {
        const this: *IPrintOptionDetails = @ptrCast(self);
        return try this.getErrorText();
    }
    pub fn putState(self: *@This(), value: PrintOptionStates) core.HResult!void {
        const this: *IPrintOptionDetails = @ptrCast(self);
        return try this.putState(value);
    }
    pub fn getState(self: *@This()) core.HResult!PrintOptionStates {
        const this: *IPrintOptionDetails = @ptrCast(self);
        return try this.getState();
    }
    pub fn getValue(self: *@This()) core.HResult!*IInspectable {
        const this: *IPrintOptionDetails = @ptrCast(self);
        return try this.getValue();
    }
    pub fn TrySetValue(self: *@This(), value: *IInspectable) core.HResult!bool {
        const this: *IPrintOptionDetails = @ptrCast(self);
        return try this.TrySetValue(value);
    }
    pub fn getMinValue(self: *@This()) core.HResult!u32 {
        var this: ?*IPrintNumberOptionDetails = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPrintNumberOptionDetails.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getMinValue();
    }
    pub fn getMaxValue(self: *@This()) core.HResult!u32 {
        var this: ?*IPrintNumberOptionDetails = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPrintNumberOptionDetails.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getMaxValue();
    }
    pub fn putWarningText(self: *@This(), value: HSTRING) core.HResult!void {
        var this: ?*IPrintCopiesOptionDetails = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPrintCopiesOptionDetails.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putWarningText(value);
    }
    pub fn getWarningText(self: *@This()) core.HResult!HSTRING {
        var this: ?*IPrintCopiesOptionDetails = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPrintCopiesOptionDetails.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getWarningText();
    }
    pub fn putDescription(self: *@This(), value: HSTRING) core.HResult!void {
        var this: ?*IPrintCopiesOptionDetails = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPrintCopiesOptionDetails.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putDescription(value);
    }
    pub fn getDescription(self: *@This()) core.HResult!HSTRING {
        var this: ?*IPrintCopiesOptionDetails = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPrintCopiesOptionDetails.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getDescription();
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing.OptionDetails.PrintCopiesOptionDetails";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPrintOptionDetails.GUID;
    pub const IID: Guid = IPrintOptionDetails.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPrintOptionDetails.SIGNATURE);
};
pub const PrintCustomItemDetails = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getItemId(self: *@This()) core.HResult!HSTRING {
        const this: *IPrintCustomItemDetails = @ptrCast(self);
        return try this.getItemId();
    }
    pub fn putItemDisplayName(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IPrintCustomItemDetails = @ptrCast(self);
        return try this.putItemDisplayName(value);
    }
    pub fn getItemDisplayName(self: *@This()) core.HResult!HSTRING {
        const this: *IPrintCustomItemDetails = @ptrCast(self);
        return try this.getItemDisplayName();
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing.OptionDetails.PrintCustomItemDetails";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPrintCustomItemDetails.GUID;
    pub const IID: Guid = IPrintCustomItemDetails.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPrintCustomItemDetails.SIGNATURE);
};
pub const PrintCustomItemListOptionDetails = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getOptionId(self: *@This()) core.HResult!HSTRING {
        const this: *IPrintOptionDetails = @ptrCast(self);
        return try this.getOptionId();
    }
    pub fn getOptionType(self: *@This()) core.HResult!PrintOptionType {
        const this: *IPrintOptionDetails = @ptrCast(self);
        return try this.getOptionType();
    }
    pub fn putErrorText(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IPrintOptionDetails = @ptrCast(self);
        return try this.putErrorText(value);
    }
    pub fn getErrorText(self: *@This()) core.HResult!HSTRING {
        const this: *IPrintOptionDetails = @ptrCast(self);
        return try this.getErrorText();
    }
    pub fn putState(self: *@This(), value: PrintOptionStates) core.HResult!void {
        const this: *IPrintOptionDetails = @ptrCast(self);
        return try this.putState(value);
    }
    pub fn getState(self: *@This()) core.HResult!PrintOptionStates {
        const this: *IPrintOptionDetails = @ptrCast(self);
        return try this.getState();
    }
    pub fn getValue(self: *@This()) core.HResult!*IInspectable {
        const this: *IPrintOptionDetails = @ptrCast(self);
        return try this.getValue();
    }
    pub fn TrySetValue(self: *@This(), value: *IInspectable) core.HResult!bool {
        const this: *IPrintOptionDetails = @ptrCast(self);
        return try this.TrySetValue(value);
    }
    pub fn putDisplayName(self: *@This(), value: HSTRING) core.HResult!void {
        var this: ?*IPrintCustomOptionDetails = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPrintCustomOptionDetails.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putDisplayName(value);
    }
    pub fn getDisplayName(self: *@This()) core.HResult!HSTRING {
        var this: ?*IPrintCustomOptionDetails = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPrintCustomOptionDetails.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getDisplayName();
    }
    pub fn getItems(self: *@This()) core.HResult!*IVectorView(IInspectable) {
        var this: ?*IPrintItemListOptionDetails = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPrintItemListOptionDetails.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getItems();
    }
    pub fn AddItem(self: *@This(), itemId: HSTRING, displayName: HSTRING) core.HResult!void {
        var this: ?*IPrintCustomItemListOptionDetails = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPrintCustomItemListOptionDetails.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.AddItem(itemId, displayName);
    }
    pub fn AddItemWithDescriptionAndIcon(self: *@This(), itemId: HSTRING, displayName: HSTRING, description: HSTRING, icon: *IRandomAccessStreamWithContentType) core.HResult!void {
        var this: ?*IPrintCustomItemListOptionDetails2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPrintCustomItemListOptionDetails2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.AddItemWithDescriptionAndIcon(itemId, displayName, description, icon);
    }
    pub fn putWarningText(self: *@This(), value: HSTRING) core.HResult!void {
        var this: ?*IPrintCustomItemListOptionDetails3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPrintCustomItemListOptionDetails3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putWarningText(value);
    }
    pub fn getWarningText(self: *@This()) core.HResult!HSTRING {
        var this: ?*IPrintCustomItemListOptionDetails3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPrintCustomItemListOptionDetails3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getWarningText();
    }
    pub fn putDescription(self: *@This(), value: HSTRING) core.HResult!void {
        var this: ?*IPrintCustomItemListOptionDetails3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPrintCustomItemListOptionDetails3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putDescription(value);
    }
    pub fn getDescription(self: *@This()) core.HResult!HSTRING {
        var this: ?*IPrintCustomItemListOptionDetails3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPrintCustomItemListOptionDetails3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getDescription();
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing.OptionDetails.PrintCustomItemListOptionDetails";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPrintOptionDetails.GUID;
    pub const IID: Guid = IPrintOptionDetails.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPrintOptionDetails.SIGNATURE);
};
pub const PrintCustomTextOptionDetails = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getOptionId(self: *@This()) core.HResult!HSTRING {
        const this: *IPrintOptionDetails = @ptrCast(self);
        return try this.getOptionId();
    }
    pub fn getOptionType(self: *@This()) core.HResult!PrintOptionType {
        const this: *IPrintOptionDetails = @ptrCast(self);
        return try this.getOptionType();
    }
    pub fn putErrorText(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IPrintOptionDetails = @ptrCast(self);
        return try this.putErrorText(value);
    }
    pub fn getErrorText(self: *@This()) core.HResult!HSTRING {
        const this: *IPrintOptionDetails = @ptrCast(self);
        return try this.getErrorText();
    }
    pub fn putState(self: *@This(), value: PrintOptionStates) core.HResult!void {
        const this: *IPrintOptionDetails = @ptrCast(self);
        return try this.putState(value);
    }
    pub fn getState(self: *@This()) core.HResult!PrintOptionStates {
        const this: *IPrintOptionDetails = @ptrCast(self);
        return try this.getState();
    }
    pub fn getValue(self: *@This()) core.HResult!*IInspectable {
        const this: *IPrintOptionDetails = @ptrCast(self);
        return try this.getValue();
    }
    pub fn TrySetValue(self: *@This(), value: *IInspectable) core.HResult!bool {
        const this: *IPrintOptionDetails = @ptrCast(self);
        return try this.TrySetValue(value);
    }
    pub fn putDisplayName(self: *@This(), value: HSTRING) core.HResult!void {
        var this: ?*IPrintCustomOptionDetails = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPrintCustomOptionDetails.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putDisplayName(value);
    }
    pub fn getDisplayName(self: *@This()) core.HResult!HSTRING {
        var this: ?*IPrintCustomOptionDetails = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPrintCustomOptionDetails.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getDisplayName();
    }
    pub fn putMaxCharacters(self: *@This(), value: u32) core.HResult!void {
        var this: ?*IPrintCustomTextOptionDetails = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPrintCustomTextOptionDetails.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putMaxCharacters(value);
    }
    pub fn getMaxCharacters(self: *@This()) core.HResult!u32 {
        var this: ?*IPrintCustomTextOptionDetails = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPrintCustomTextOptionDetails.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getMaxCharacters();
    }
    pub fn putWarningText(self: *@This(), value: HSTRING) core.HResult!void {
        var this: ?*IPrintCustomTextOptionDetails2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPrintCustomTextOptionDetails2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putWarningText(value);
    }
    pub fn getWarningText(self: *@This()) core.HResult!HSTRING {
        var this: ?*IPrintCustomTextOptionDetails2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPrintCustomTextOptionDetails2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getWarningText();
    }
    pub fn putDescription(self: *@This(), value: HSTRING) core.HResult!void {
        var this: ?*IPrintCustomTextOptionDetails2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPrintCustomTextOptionDetails2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putDescription(value);
    }
    pub fn getDescription(self: *@This()) core.HResult!HSTRING {
        var this: ?*IPrintCustomTextOptionDetails2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPrintCustomTextOptionDetails2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getDescription();
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing.OptionDetails.PrintCustomTextOptionDetails";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPrintOptionDetails.GUID;
    pub const IID: Guid = IPrintOptionDetails.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPrintOptionDetails.SIGNATURE);
};
pub const PrintCustomToggleOptionDetails = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getOptionId(self: *@This()) core.HResult!HSTRING {
        const this: *IPrintOptionDetails = @ptrCast(self);
        return try this.getOptionId();
    }
    pub fn getOptionType(self: *@This()) core.HResult!PrintOptionType {
        const this: *IPrintOptionDetails = @ptrCast(self);
        return try this.getOptionType();
    }
    pub fn putErrorText(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IPrintOptionDetails = @ptrCast(self);
        return try this.putErrorText(value);
    }
    pub fn getErrorText(self: *@This()) core.HResult!HSTRING {
        const this: *IPrintOptionDetails = @ptrCast(self);
        return try this.getErrorText();
    }
    pub fn putState(self: *@This(), value: PrintOptionStates) core.HResult!void {
        const this: *IPrintOptionDetails = @ptrCast(self);
        return try this.putState(value);
    }
    pub fn getState(self: *@This()) core.HResult!PrintOptionStates {
        const this: *IPrintOptionDetails = @ptrCast(self);
        return try this.getState();
    }
    pub fn getValue(self: *@This()) core.HResult!*IInspectable {
        const this: *IPrintOptionDetails = @ptrCast(self);
        return try this.getValue();
    }
    pub fn TrySetValue(self: *@This(), value: *IInspectable) core.HResult!bool {
        const this: *IPrintOptionDetails = @ptrCast(self);
        return try this.TrySetValue(value);
    }
    pub fn putDisplayName(self: *@This(), value: HSTRING) core.HResult!void {
        var this: ?*IPrintCustomOptionDetails = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPrintCustomOptionDetails.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putDisplayName(value);
    }
    pub fn getDisplayName(self: *@This()) core.HResult!HSTRING {
        var this: ?*IPrintCustomOptionDetails = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPrintCustomOptionDetails.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getDisplayName();
    }
    pub fn putWarningText(self: *@This(), value: HSTRING) core.HResult!void {
        var this: ?*IPrintCustomToggleOptionDetails = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPrintCustomToggleOptionDetails.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putWarningText(value);
    }
    pub fn getWarningText(self: *@This()) core.HResult!HSTRING {
        var this: ?*IPrintCustomToggleOptionDetails = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPrintCustomToggleOptionDetails.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getWarningText();
    }
    pub fn putDescription(self: *@This(), value: HSTRING) core.HResult!void {
        var this: ?*IPrintCustomToggleOptionDetails = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPrintCustomToggleOptionDetails.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putDescription(value);
    }
    pub fn getDescription(self: *@This()) core.HResult!HSTRING {
        var this: ?*IPrintCustomToggleOptionDetails = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPrintCustomToggleOptionDetails.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getDescription();
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing.OptionDetails.PrintCustomToggleOptionDetails";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPrintOptionDetails.GUID;
    pub const IID: Guid = IPrintOptionDetails.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPrintOptionDetails.SIGNATURE);
};
pub const PrintDuplexOptionDetails = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getOptionId(self: *@This()) core.HResult!HSTRING {
        const this: *IPrintOptionDetails = @ptrCast(self);
        return try this.getOptionId();
    }
    pub fn getOptionType(self: *@This()) core.HResult!PrintOptionType {
        const this: *IPrintOptionDetails = @ptrCast(self);
        return try this.getOptionType();
    }
    pub fn putErrorText(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IPrintOptionDetails = @ptrCast(self);
        return try this.putErrorText(value);
    }
    pub fn getErrorText(self: *@This()) core.HResult!HSTRING {
        const this: *IPrintOptionDetails = @ptrCast(self);
        return try this.getErrorText();
    }
    pub fn putState(self: *@This(), value: PrintOptionStates) core.HResult!void {
        const this: *IPrintOptionDetails = @ptrCast(self);
        return try this.putState(value);
    }
    pub fn getState(self: *@This()) core.HResult!PrintOptionStates {
        const this: *IPrintOptionDetails = @ptrCast(self);
        return try this.getState();
    }
    pub fn getValue(self: *@This()) core.HResult!*IInspectable {
        const this: *IPrintOptionDetails = @ptrCast(self);
        return try this.getValue();
    }
    pub fn TrySetValue(self: *@This(), value: *IInspectable) core.HResult!bool {
        const this: *IPrintOptionDetails = @ptrCast(self);
        return try this.TrySetValue(value);
    }
    pub fn getItems(self: *@This()) core.HResult!*IVectorView(IInspectable) {
        var this: ?*IPrintItemListOptionDetails = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPrintItemListOptionDetails.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getItems();
    }
    pub fn putWarningText(self: *@This(), value: HSTRING) core.HResult!void {
        var this: ?*IPrintDuplexOptionDetails = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPrintDuplexOptionDetails.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putWarningText(value);
    }
    pub fn getWarningText(self: *@This()) core.HResult!HSTRING {
        var this: ?*IPrintDuplexOptionDetails = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPrintDuplexOptionDetails.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getWarningText();
    }
    pub fn putDescription(self: *@This(), value: HSTRING) core.HResult!void {
        var this: ?*IPrintDuplexOptionDetails = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPrintDuplexOptionDetails.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putDescription(value);
    }
    pub fn getDescription(self: *@This()) core.HResult!HSTRING {
        var this: ?*IPrintDuplexOptionDetails = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPrintDuplexOptionDetails.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getDescription();
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing.OptionDetails.PrintDuplexOptionDetails";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPrintOptionDetails.GUID;
    pub const IID: Guid = IPrintOptionDetails.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPrintOptionDetails.SIGNATURE);
};
pub const PrintHolePunchOptionDetails = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getOptionId(self: *@This()) core.HResult!HSTRING {
        const this: *IPrintOptionDetails = @ptrCast(self);
        return try this.getOptionId();
    }
    pub fn getOptionType(self: *@This()) core.HResult!PrintOptionType {
        const this: *IPrintOptionDetails = @ptrCast(self);
        return try this.getOptionType();
    }
    pub fn putErrorText(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IPrintOptionDetails = @ptrCast(self);
        return try this.putErrorText(value);
    }
    pub fn getErrorText(self: *@This()) core.HResult!HSTRING {
        const this: *IPrintOptionDetails = @ptrCast(self);
        return try this.getErrorText();
    }
    pub fn putState(self: *@This(), value: PrintOptionStates) core.HResult!void {
        const this: *IPrintOptionDetails = @ptrCast(self);
        return try this.putState(value);
    }
    pub fn getState(self: *@This()) core.HResult!PrintOptionStates {
        const this: *IPrintOptionDetails = @ptrCast(self);
        return try this.getState();
    }
    pub fn getValue(self: *@This()) core.HResult!*IInspectable {
        const this: *IPrintOptionDetails = @ptrCast(self);
        return try this.getValue();
    }
    pub fn TrySetValue(self: *@This(), value: *IInspectable) core.HResult!bool {
        const this: *IPrintOptionDetails = @ptrCast(self);
        return try this.TrySetValue(value);
    }
    pub fn getItems(self: *@This()) core.HResult!*IVectorView(IInspectable) {
        var this: ?*IPrintItemListOptionDetails = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPrintItemListOptionDetails.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getItems();
    }
    pub fn putWarningText(self: *@This(), value: HSTRING) core.HResult!void {
        var this: ?*IPrintHolePunchOptionDetails = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPrintHolePunchOptionDetails.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putWarningText(value);
    }
    pub fn getWarningText(self: *@This()) core.HResult!HSTRING {
        var this: ?*IPrintHolePunchOptionDetails = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPrintHolePunchOptionDetails.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getWarningText();
    }
    pub fn putDescription(self: *@This(), value: HSTRING) core.HResult!void {
        var this: ?*IPrintHolePunchOptionDetails = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPrintHolePunchOptionDetails.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putDescription(value);
    }
    pub fn getDescription(self: *@This()) core.HResult!HSTRING {
        var this: ?*IPrintHolePunchOptionDetails = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPrintHolePunchOptionDetails.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getDescription();
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing.OptionDetails.PrintHolePunchOptionDetails";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPrintOptionDetails.GUID;
    pub const IID: Guid = IPrintOptionDetails.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPrintOptionDetails.SIGNATURE);
};
pub const PrintMediaSizeOptionDetails = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getOptionId(self: *@This()) core.HResult!HSTRING {
        const this: *IPrintOptionDetails = @ptrCast(self);
        return try this.getOptionId();
    }
    pub fn getOptionType(self: *@This()) core.HResult!PrintOptionType {
        const this: *IPrintOptionDetails = @ptrCast(self);
        return try this.getOptionType();
    }
    pub fn putErrorText(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IPrintOptionDetails = @ptrCast(self);
        return try this.putErrorText(value);
    }
    pub fn getErrorText(self: *@This()) core.HResult!HSTRING {
        const this: *IPrintOptionDetails = @ptrCast(self);
        return try this.getErrorText();
    }
    pub fn putState(self: *@This(), value: PrintOptionStates) core.HResult!void {
        const this: *IPrintOptionDetails = @ptrCast(self);
        return try this.putState(value);
    }
    pub fn getState(self: *@This()) core.HResult!PrintOptionStates {
        const this: *IPrintOptionDetails = @ptrCast(self);
        return try this.getState();
    }
    pub fn getValue(self: *@This()) core.HResult!*IInspectable {
        const this: *IPrintOptionDetails = @ptrCast(self);
        return try this.getValue();
    }
    pub fn TrySetValue(self: *@This(), value: *IInspectable) core.HResult!bool {
        const this: *IPrintOptionDetails = @ptrCast(self);
        return try this.TrySetValue(value);
    }
    pub fn getItems(self: *@This()) core.HResult!*IVectorView(IInspectable) {
        var this: ?*IPrintItemListOptionDetails = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPrintItemListOptionDetails.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getItems();
    }
    pub fn putWarningText(self: *@This(), value: HSTRING) core.HResult!void {
        var this: ?*IPrintMediaSizeOptionDetails = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPrintMediaSizeOptionDetails.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putWarningText(value);
    }
    pub fn getWarningText(self: *@This()) core.HResult!HSTRING {
        var this: ?*IPrintMediaSizeOptionDetails = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPrintMediaSizeOptionDetails.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getWarningText();
    }
    pub fn putDescription(self: *@This(), value: HSTRING) core.HResult!void {
        var this: ?*IPrintMediaSizeOptionDetails = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPrintMediaSizeOptionDetails.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putDescription(value);
    }
    pub fn getDescription(self: *@This()) core.HResult!HSTRING {
        var this: ?*IPrintMediaSizeOptionDetails = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPrintMediaSizeOptionDetails.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getDescription();
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing.OptionDetails.PrintMediaSizeOptionDetails";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPrintOptionDetails.GUID;
    pub const IID: Guid = IPrintOptionDetails.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPrintOptionDetails.SIGNATURE);
};
pub const PrintMediaTypeOptionDetails = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getOptionId(self: *@This()) core.HResult!HSTRING {
        const this: *IPrintOptionDetails = @ptrCast(self);
        return try this.getOptionId();
    }
    pub fn getOptionType(self: *@This()) core.HResult!PrintOptionType {
        const this: *IPrintOptionDetails = @ptrCast(self);
        return try this.getOptionType();
    }
    pub fn putErrorText(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IPrintOptionDetails = @ptrCast(self);
        return try this.putErrorText(value);
    }
    pub fn getErrorText(self: *@This()) core.HResult!HSTRING {
        const this: *IPrintOptionDetails = @ptrCast(self);
        return try this.getErrorText();
    }
    pub fn putState(self: *@This(), value: PrintOptionStates) core.HResult!void {
        const this: *IPrintOptionDetails = @ptrCast(self);
        return try this.putState(value);
    }
    pub fn getState(self: *@This()) core.HResult!PrintOptionStates {
        const this: *IPrintOptionDetails = @ptrCast(self);
        return try this.getState();
    }
    pub fn getValue(self: *@This()) core.HResult!*IInspectable {
        const this: *IPrintOptionDetails = @ptrCast(self);
        return try this.getValue();
    }
    pub fn TrySetValue(self: *@This(), value: *IInspectable) core.HResult!bool {
        const this: *IPrintOptionDetails = @ptrCast(self);
        return try this.TrySetValue(value);
    }
    pub fn getItems(self: *@This()) core.HResult!*IVectorView(IInspectable) {
        var this: ?*IPrintItemListOptionDetails = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPrintItemListOptionDetails.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getItems();
    }
    pub fn putWarningText(self: *@This(), value: HSTRING) core.HResult!void {
        var this: ?*IPrintMediaTypeOptionDetails = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPrintMediaTypeOptionDetails.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putWarningText(value);
    }
    pub fn getWarningText(self: *@This()) core.HResult!HSTRING {
        var this: ?*IPrintMediaTypeOptionDetails = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPrintMediaTypeOptionDetails.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getWarningText();
    }
    pub fn putDescription(self: *@This(), value: HSTRING) core.HResult!void {
        var this: ?*IPrintMediaTypeOptionDetails = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPrintMediaTypeOptionDetails.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putDescription(value);
    }
    pub fn getDescription(self: *@This()) core.HResult!HSTRING {
        var this: ?*IPrintMediaTypeOptionDetails = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPrintMediaTypeOptionDetails.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getDescription();
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing.OptionDetails.PrintMediaTypeOptionDetails";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPrintOptionDetails.GUID;
    pub const IID: Guid = IPrintOptionDetails.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPrintOptionDetails.SIGNATURE);
};
pub const PrintOptionStates = enum(i32) {
    None = 0,
    Enabled = 1,
    Constrained = 2,
};
pub const PrintOptionType = enum(i32) {
    Unknown = 0,
    Number = 1,
    Text = 2,
    ItemList = 3,
    Toggle = 4,
};
pub const PrintOrientationOptionDetails = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getOptionId(self: *@This()) core.HResult!HSTRING {
        const this: *IPrintOptionDetails = @ptrCast(self);
        return try this.getOptionId();
    }
    pub fn getOptionType(self: *@This()) core.HResult!PrintOptionType {
        const this: *IPrintOptionDetails = @ptrCast(self);
        return try this.getOptionType();
    }
    pub fn putErrorText(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IPrintOptionDetails = @ptrCast(self);
        return try this.putErrorText(value);
    }
    pub fn getErrorText(self: *@This()) core.HResult!HSTRING {
        const this: *IPrintOptionDetails = @ptrCast(self);
        return try this.getErrorText();
    }
    pub fn putState(self: *@This(), value: PrintOptionStates) core.HResult!void {
        const this: *IPrintOptionDetails = @ptrCast(self);
        return try this.putState(value);
    }
    pub fn getState(self: *@This()) core.HResult!PrintOptionStates {
        const this: *IPrintOptionDetails = @ptrCast(self);
        return try this.getState();
    }
    pub fn getValue(self: *@This()) core.HResult!*IInspectable {
        const this: *IPrintOptionDetails = @ptrCast(self);
        return try this.getValue();
    }
    pub fn TrySetValue(self: *@This(), value: *IInspectable) core.HResult!bool {
        const this: *IPrintOptionDetails = @ptrCast(self);
        return try this.TrySetValue(value);
    }
    pub fn getItems(self: *@This()) core.HResult!*IVectorView(IInspectable) {
        var this: ?*IPrintItemListOptionDetails = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPrintItemListOptionDetails.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getItems();
    }
    pub fn putWarningText(self: *@This(), value: HSTRING) core.HResult!void {
        var this: ?*IPrintOrientationOptionDetails = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPrintOrientationOptionDetails.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putWarningText(value);
    }
    pub fn getWarningText(self: *@This()) core.HResult!HSTRING {
        var this: ?*IPrintOrientationOptionDetails = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPrintOrientationOptionDetails.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getWarningText();
    }
    pub fn putDescription(self: *@This(), value: HSTRING) core.HResult!void {
        var this: ?*IPrintOrientationOptionDetails = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPrintOrientationOptionDetails.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putDescription(value);
    }
    pub fn getDescription(self: *@This()) core.HResult!HSTRING {
        var this: ?*IPrintOrientationOptionDetails = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPrintOrientationOptionDetails.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getDescription();
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing.OptionDetails.PrintOrientationOptionDetails";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPrintOptionDetails.GUID;
    pub const IID: Guid = IPrintOptionDetails.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPrintOptionDetails.SIGNATURE);
};
pub const PrintPageRangeOptionDetails = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getOptionId(self: *@This()) core.HResult!HSTRING {
        const this: *IPrintOptionDetails = @ptrCast(self);
        return try this.getOptionId();
    }
    pub fn getOptionType(self: *@This()) core.HResult!PrintOptionType {
        const this: *IPrintOptionDetails = @ptrCast(self);
        return try this.getOptionType();
    }
    pub fn putErrorText(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IPrintOptionDetails = @ptrCast(self);
        return try this.putErrorText(value);
    }
    pub fn getErrorText(self: *@This()) core.HResult!HSTRING {
        const this: *IPrintOptionDetails = @ptrCast(self);
        return try this.getErrorText();
    }
    pub fn putState(self: *@This(), value: PrintOptionStates) core.HResult!void {
        const this: *IPrintOptionDetails = @ptrCast(self);
        return try this.putState(value);
    }
    pub fn getState(self: *@This()) core.HResult!PrintOptionStates {
        const this: *IPrintOptionDetails = @ptrCast(self);
        return try this.getState();
    }
    pub fn getValue(self: *@This()) core.HResult!*IInspectable {
        const this: *IPrintOptionDetails = @ptrCast(self);
        return try this.getValue();
    }
    pub fn TrySetValue(self: *@This(), value: *IInspectable) core.HResult!bool {
        const this: *IPrintOptionDetails = @ptrCast(self);
        return try this.TrySetValue(value);
    }
    pub fn putWarningText(self: *@This(), value: HSTRING) core.HResult!void {
        var this: ?*IPrintPageRangeOptionDetails = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPrintPageRangeOptionDetails.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putWarningText(value);
    }
    pub fn getWarningText(self: *@This()) core.HResult!HSTRING {
        var this: ?*IPrintPageRangeOptionDetails = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPrintPageRangeOptionDetails.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getWarningText();
    }
    pub fn putDescription(self: *@This(), value: HSTRING) core.HResult!void {
        var this: ?*IPrintPageRangeOptionDetails = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPrintPageRangeOptionDetails.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putDescription(value);
    }
    pub fn getDescription(self: *@This()) core.HResult!HSTRING {
        var this: ?*IPrintPageRangeOptionDetails = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPrintPageRangeOptionDetails.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getDescription();
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing.OptionDetails.PrintPageRangeOptionDetails";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPrintOptionDetails.GUID;
    pub const IID: Guid = IPrintOptionDetails.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPrintOptionDetails.SIGNATURE);
};
pub const PrintQualityOptionDetails = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getOptionId(self: *@This()) core.HResult!HSTRING {
        const this: *IPrintOptionDetails = @ptrCast(self);
        return try this.getOptionId();
    }
    pub fn getOptionType(self: *@This()) core.HResult!PrintOptionType {
        const this: *IPrintOptionDetails = @ptrCast(self);
        return try this.getOptionType();
    }
    pub fn putErrorText(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IPrintOptionDetails = @ptrCast(self);
        return try this.putErrorText(value);
    }
    pub fn getErrorText(self: *@This()) core.HResult!HSTRING {
        const this: *IPrintOptionDetails = @ptrCast(self);
        return try this.getErrorText();
    }
    pub fn putState(self: *@This(), value: PrintOptionStates) core.HResult!void {
        const this: *IPrintOptionDetails = @ptrCast(self);
        return try this.putState(value);
    }
    pub fn getState(self: *@This()) core.HResult!PrintOptionStates {
        const this: *IPrintOptionDetails = @ptrCast(self);
        return try this.getState();
    }
    pub fn getValue(self: *@This()) core.HResult!*IInspectable {
        const this: *IPrintOptionDetails = @ptrCast(self);
        return try this.getValue();
    }
    pub fn TrySetValue(self: *@This(), value: *IInspectable) core.HResult!bool {
        const this: *IPrintOptionDetails = @ptrCast(self);
        return try this.TrySetValue(value);
    }
    pub fn getItems(self: *@This()) core.HResult!*IVectorView(IInspectable) {
        var this: ?*IPrintItemListOptionDetails = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPrintItemListOptionDetails.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getItems();
    }
    pub fn putWarningText(self: *@This(), value: HSTRING) core.HResult!void {
        var this: ?*IPrintQualityOptionDetails = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPrintQualityOptionDetails.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putWarningText(value);
    }
    pub fn getWarningText(self: *@This()) core.HResult!HSTRING {
        var this: ?*IPrintQualityOptionDetails = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPrintQualityOptionDetails.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getWarningText();
    }
    pub fn putDescription(self: *@This(), value: HSTRING) core.HResult!void {
        var this: ?*IPrintQualityOptionDetails = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPrintQualityOptionDetails.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putDescription(value);
    }
    pub fn getDescription(self: *@This()) core.HResult!HSTRING {
        var this: ?*IPrintQualityOptionDetails = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPrintQualityOptionDetails.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getDescription();
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing.OptionDetails.PrintQualityOptionDetails";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPrintOptionDetails.GUID;
    pub const IID: Guid = IPrintOptionDetails.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPrintOptionDetails.SIGNATURE);
};
pub const PrintStapleOptionDetails = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getOptionId(self: *@This()) core.HResult!HSTRING {
        const this: *IPrintOptionDetails = @ptrCast(self);
        return try this.getOptionId();
    }
    pub fn getOptionType(self: *@This()) core.HResult!PrintOptionType {
        const this: *IPrintOptionDetails = @ptrCast(self);
        return try this.getOptionType();
    }
    pub fn putErrorText(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IPrintOptionDetails = @ptrCast(self);
        return try this.putErrorText(value);
    }
    pub fn getErrorText(self: *@This()) core.HResult!HSTRING {
        const this: *IPrintOptionDetails = @ptrCast(self);
        return try this.getErrorText();
    }
    pub fn putState(self: *@This(), value: PrintOptionStates) core.HResult!void {
        const this: *IPrintOptionDetails = @ptrCast(self);
        return try this.putState(value);
    }
    pub fn getState(self: *@This()) core.HResult!PrintOptionStates {
        const this: *IPrintOptionDetails = @ptrCast(self);
        return try this.getState();
    }
    pub fn getValue(self: *@This()) core.HResult!*IInspectable {
        const this: *IPrintOptionDetails = @ptrCast(self);
        return try this.getValue();
    }
    pub fn TrySetValue(self: *@This(), value: *IInspectable) core.HResult!bool {
        const this: *IPrintOptionDetails = @ptrCast(self);
        return try this.TrySetValue(value);
    }
    pub fn getItems(self: *@This()) core.HResult!*IVectorView(IInspectable) {
        var this: ?*IPrintItemListOptionDetails = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPrintItemListOptionDetails.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getItems();
    }
    pub fn putWarningText(self: *@This(), value: HSTRING) core.HResult!void {
        var this: ?*IPrintStapleOptionDetails = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPrintStapleOptionDetails.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putWarningText(value);
    }
    pub fn getWarningText(self: *@This()) core.HResult!HSTRING {
        var this: ?*IPrintStapleOptionDetails = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPrintStapleOptionDetails.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getWarningText();
    }
    pub fn putDescription(self: *@This(), value: HSTRING) core.HResult!void {
        var this: ?*IPrintStapleOptionDetails = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPrintStapleOptionDetails.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putDescription(value);
    }
    pub fn getDescription(self: *@This()) core.HResult!HSTRING {
        var this: ?*IPrintStapleOptionDetails = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPrintStapleOptionDetails.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getDescription();
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing.OptionDetails.PrintStapleOptionDetails";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPrintOptionDetails.GUID;
    pub const IID: Guid = IPrintOptionDetails.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPrintOptionDetails.SIGNATURE);
};
pub const PrintTaskOptionChangedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getOptionId(self: *@This()) core.HResult!*IInspectable {
        const this: *IPrintTaskOptionChangedEventArgs = @ptrCast(self);
        return try this.getOptionId();
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing.OptionDetails.PrintTaskOptionChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPrintTaskOptionChangedEventArgs.GUID;
    pub const IID: Guid = IPrintTaskOptionChangedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPrintTaskOptionChangedEventArgs.SIGNATURE);
};
pub const PrintTaskOptionDetails = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getOptions(self: *@This()) core.HResult!*IMapView(HSTRING,IPrintOptionDetails) {
        const this: *IPrintTaskOptionDetails = @ptrCast(self);
        return try this.getOptions();
    }
    pub fn CreateItemListOption(self: *@This(), optionId: HSTRING, displayName: HSTRING) core.HResult!*PrintCustomItemListOptionDetails {
        const this: *IPrintTaskOptionDetails = @ptrCast(self);
        return try this.CreateItemListOption(optionId, displayName);
    }
    pub fn CreateTextOption(self: *@This(), optionId: HSTRING, displayName: HSTRING) core.HResult!*PrintCustomTextOptionDetails {
        const this: *IPrintTaskOptionDetails = @ptrCast(self);
        return try this.CreateTextOption(optionId, displayName);
    }
    pub fn addOptionChanged(self: *@This(), eventHandler: *TypedEventHandler(PrintTaskOptionDetails,PrintTaskOptionChangedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IPrintTaskOptionDetails = @ptrCast(self);
        return try this.addOptionChanged(eventHandler);
    }
    pub fn removeOptionChanged(self: *@This(), eventCookie: EventRegistrationToken) core.HResult!void {
        const this: *IPrintTaskOptionDetails = @ptrCast(self);
        return try this.removeOptionChanged(eventCookie);
    }
    pub fn addBeginValidation(self: *@This(), eventHandler: *TypedEventHandler(PrintTaskOptionDetails,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *IPrintTaskOptionDetails = @ptrCast(self);
        return try this.addBeginValidation(eventHandler);
    }
    pub fn removeBeginValidation(self: *@This(), eventCookie: EventRegistrationToken) core.HResult!void {
        const this: *IPrintTaskOptionDetails = @ptrCast(self);
        return try this.removeBeginValidation(eventCookie);
    }
    pub fn GetPageDescription(self: *@This(), jobPageNumber: u32) core.HResult!PrintPageDescription {
        var this: ?*IPrintTaskOptionsCore = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPrintTaskOptionsCore.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetPageDescription(jobPageNumber);
    }
    pub fn getDisplayedOptions(self: *@This()) core.HResult!*IVector(HSTRING) {
        var this: ?*IPrintTaskOptionsCoreUIConfiguration = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPrintTaskOptionsCoreUIConfiguration.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getDisplayedOptions();
    }
    pub fn CreateToggleOption(self: *@This(), optionId: HSTRING, displayName: HSTRING) core.HResult!*PrintCustomToggleOptionDetails {
        var this: ?*IPrintTaskOptionDetails2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPrintTaskOptionDetails2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.CreateToggleOption(optionId, displayName);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn GetFromPrintTaskOptions(printTaskOptions: *PrintTaskOptions) core.HResult!*PrintTaskOptionDetails {
        const _f = @This().IPrintTaskOptionDetailsStaticCache.get();
        return try _f.GetFromPrintTaskOptions(printTaskOptions);
    }
    pub const NAME: []const u8 = "Windows.Graphics.Printing.OptionDetails.PrintTaskOptionDetails";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPrintTaskOptionDetails.GUID;
    pub const IID: Guid = IPrintTaskOptionDetails.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPrintTaskOptionDetails.SIGNATURE);
    var _IPrintTaskOptionDetailsStaticCache: FactoryCache(IPrintTaskOptionDetailsStatic, RUNTIME_NAME) = .{};
};
const IUnknown = @import("../../root.zig").IUnknown;
const Guid = @import("../../root.zig").Guid;
const IVectorView = @import("../../Foundation/Collections.zig").IVectorView;
const IMapView = @import("../../Foundation/Collections.zig").IMapView;
const IVector = @import("../../Foundation/Collections.zig").IVector;
const IPrintTaskOptionsCore = @import("../Printing.zig").IPrintTaskOptionsCore;
const FactoryCache = @import("../../core.zig").FactoryCache;
const IPrintTaskOptionsCoreUIConfiguration = @import("../Printing.zig").IPrintTaskOptionsCoreUIConfiguration;
const PrintPageDescription = @import("../Printing.zig").PrintPageDescription;
const TrustLevel = @import("../../root.zig").TrustLevel;
const TypedEventHandler = @import("../../Foundation.zig").TypedEventHandler;
const HSTRING = @import("../../root.zig").HSTRING;
const IInspectable = @import("../../Foundation.zig").IInspectable;
const IRandomAccessStreamWithContentType = @import("../../Storage/Streams.zig").IRandomAccessStreamWithContentType;
const HRESULT = @import("../../root.zig").HRESULT;
const core = @import("../../root.zig").core;
const EventRegistrationToken = @import("../../Foundation.zig").EventRegistrationToken;
const PrintTaskOptions = @import("../Printing.zig").PrintTaskOptions;
