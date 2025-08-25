const core = @import("../../core.zig");
const std = @import("std");
const win32 = @import("win32");
const winrt = @import("../../../root.zig");

const Guid = win32.zig.Guid;
const HRESULT = win32.foundation.HRESULT;
const HSTRING = win32.system.win_rt.HSTRING;

const FactoryCache = core.FactoryCache;
const FactoryError = core.FactoryError;
const Implements = core.Implements;
const IGenericFactory = core.IGenericFactory;
const IVectorView = winrt.foundation.collections.IVectorView;
const IIterable = winrt.foundation.collections.IIterable;
const IIterator = winrt.foundation.collections.IIterator;

const IInspectable = winrt.IInspectable;
const TrustLevel = winrt.TrustLevel;
const WindowsGetString = winrt.WindowsGetString;
const Signature = core.Signature;

const E_OUTOFMEMORY = winrt.E_OUTOFMEMORY;
const S_OK = winrt.S_OK;

pub const IXmlDocument = extern struct {
    vtable: *const VTable,

    pub fn queryInterface(self: *@This(), T: type) !*T {
        var result: *anyopaque = undefined;
        if (self.vtable.QueryInterface(@ptrCast(self), &T.IID, &result) != S_OK) {
            return error.NoInterface;
        }
        return @ptrCast(@alignCast(result));
    }

    pub fn addRef(self: *@This()) u32 {
        return self.vtable.AddRef(@ptrCast(self));
    }

    pub fn release(self: *@This()) u32 {
        return self.vtable.Release(@ptrCast(self));
    }

    pub fn getIids(self: *@This()) ![]const Guid {
        var count: u32 = 0;
        var iids: [*]Guid = undefined;
        if (self.vtable.GetIids(@ptrCast(self), &count, &iids) != S_OK) {
            return error.OutOfMemory;
        }
        return iids[0..@as(usize, @intCast(count))];
    }

    pub fn getRuntimeClassName(self: *@This()) ![]const u16 {
        var name: HSTRING = undefined;
        const code = self.vtable.GetRuntimeClassName(@ptrCast(self), &name);
        if (code == S_OK) {
            return WindowsGetString(name).?;
        } else if (code == E_OUTOFMEMORY) {
            return error.OutOfMemory;
        } else {
            return error.IllegalMethodCall;
        }
    }

    pub fn getTrustLevel(self: *@This()) TrustLevel {
        var trust: TrustLevel = undefined;
        _ = self.vtable.GetTrustLevel(@ptrCast(self), &trust);
        return trust;
    }

    pub const GUID: []const u8 = "f7f3a506-1e87-42d6-bcfb-b8c809fa5494";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = Signature.interface(GUID);

    pub const VTable = Implements(IInspectable.VTable, struct {
        // TODO: Update the params to be the correct type
        Doctype: *const fn(*anyopaque, **anyopaque) callconv(.c) HRESULT,
        Implementation: *const fn(*anyopaque, **anyopaque) callconv(.c) HRESULT,
        DocumentElement: *const fn(*anyopaque, *?*XmlElement) callconv(.c) HRESULT,
        CreateElement: *const fn(*anyopaque, HSTRING, **XmlElement) callconv(.c) HRESULT,
        CreateDocumentFragment: *const fn(*anyopaque, **anyopaque) callconv(.c) HRESULT,
        CreateTextNode: *const fn(*anyopaque, HSTRING, **XmlText) callconv(.c) HRESULT,
        CreateComment: *const fn(*anyopaque, *anyopaque, **anyopaque) callconv(.c) HRESULT,
        CreateProcessingInstruction: *const fn(*anyopaque, *anyopaque, *anyopaque, **anyopaque) callconv(.c) HRESULT,
        CreateAttribute: *const fn(*anyopaque, HSTRING, **XmlAttribute) callconv(.c) HRESULT,
        CreateEntityReference: *const fn(*anyopaque, *anyopaque, **anyopaque) callconv(.c) HRESULT,
        GetElementsByTagName: *const fn(*anyopaque, HSTRING, **XmlNodeList) callconv(.c) HRESULT,
        CreateCDataSection: *const fn(*anyopaque, *anyopaque, **anyopaque) callconv(.c) HRESULT,
        DocumentUri: *const fn(*anyopaque, **anyopaque) callconv(.c) HRESULT,
        CreateAttributeNS: *const fn(*anyopaque, *anyopaque, *anyopaque, **anyopaque) callconv(.c) HRESULT,
        CreateElementNS: *const fn(*anyopaque, *anyopaque, *anyopaque, **anyopaque) callconv(.c) HRESULT,
        GetElementById: *const fn(*anyopaque, HSTRING, *?*XmlElement) callconv(.c) HRESULT,
        ImportNode: *const fn(*anyopaque, *anyopaque, bool, **anyopaque) callconv(.c) HRESULT,
    });
};

pub const IXmlDocumentFragment = extern struct {
    vtable: *const VTable,

    pub fn queryInterface(self: *@This(), T: type) !*T {
        var result: *anyopaque = undefined;
        if (self.vtable.QueryInterface(@ptrCast(self), &T.IID, &result) != S_OK) {
            return error.NoInterface;
        }
        return @ptrCast(@alignCast(result));
    }

    pub fn addRef(self: *@This()) u32 {
        return self.vtable.AddRef(@ptrCast(self));
    }

    pub fn release(self: *@This()) u32 {
        return self.vtable.Release(@ptrCast(self));
    }

    pub fn getIids(self: *@This()) ![]const Guid {
        var count: u32 = 0;
        var iids: [*]Guid = undefined;
        if (self.vtable.GetIids(@ptrCast(self), &count, &iids) != S_OK) {
            return error.OutOfMemory;
        }
        return iids[0..@as(usize, @intCast(count))];
    }

    pub fn getRuntimeClassName(self: *@This()) ![]const u16 {
        var name: HSTRING = undefined;
        const code = self.vtable.GetRuntimeClassName(@ptrCast(self), &name);
        if (code == S_OK) {
            return WindowsGetString(name).?;
        } else if (code == E_OUTOFMEMORY) {
            return error.OutOfMemory;
        } else {
            return error.IllegalMethodCall;
        }
    }

    pub fn getTrustLevel(self: *@This()) TrustLevel {
        var trust: TrustLevel = undefined;
        _ = self.vtable.GetTrustLevel(@ptrCast(self), &trust);
        return trust;
    }

    pub const GUID: []const u8 = "e2ea6a96-0c21-44a5-8bc9-9e4a262708ec";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = Signature.interface(GUID);

    pub const VTable = Implements(IInspectable.VTable, struct {});
};

pub const IXmlDocumentIO = extern struct {
    vtable: *const VTable,

    pub fn queryInterface(self: *@This(), T: type) !*T {
        var result: *anyopaque = undefined;
        if (self.vtable.QueryInterface(@ptrCast(self), &T.IID, &result) != S_OK) {
            return error.NoInterface;
        }
        return @ptrCast(@alignCast(result));
    }

    pub fn addRef(self: *@This()) u32 {
        return self.vtable.AddRef(@ptrCast(self));
    }

    pub fn release(self: *@This()) u32 {
        return self.vtable.Release(@ptrCast(self));
    }

    pub fn getIids(self: *@This()) ![]const Guid {
        var count: u32 = 0;
        var iids: [*]Guid = undefined;
        if (self.vtable.GetIids(@ptrCast(self), &count, &iids) != S_OK) {
            return error.OutOfMemory;
        }
        return iids[0..@as(usize, @intCast(count))];
    }

    pub fn getRuntimeClassName(self: *@This()) ![]const u16 {
        var name: HSTRING = undefined;
        const code = self.vtable.GetRuntimeClassName(@ptrCast(self), &name);
        if (code == S_OK) {
            return WindowsGetString(name).?;
        } else if (code == E_OUTOFMEMORY) {
            return error.OutOfMemory;
        } else {
            return error.IllegalMethodCall;
        }
    }

    pub fn getTrustLevel(self: *@This()) TrustLevel {
        var trust: TrustLevel = undefined;
        _ = self.vtable.GetTrustLevel(@ptrCast(self), &trust);
        return trust;
    }

    pub const GUID: []const u8 = "6cd0e74e-ee65-4489-9ebf-ca43e87ba637";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = Signature.interface(GUID);

    pub const VTable = Implements(IInspectable.VTable, struct {
        LoadXml: *const fn(*anyopaque, HSTRING) callconv(.c) HRESULT,
        LoadXmlWithSettings: *const fn(*anyopaque, HSTRING, *anyopaque) callconv(.c) HRESULT,
        SaveToFileAsync: *const fn(*anyopaque, *anyopaque, **anyopaque) callconv(.c) HRESULT,
    });
};

pub const IXmlDocumentIO2 = extern struct {
    vtable: *const VTable,

    pub fn queryInterface(self: *@This(), T: type) !*T {
        var result: *anyopaque = undefined;
        if (self.vtable.QueryInterface(@ptrCast(self), &T.IID, &result) != S_OK) {
            return error.NoInterface;
        }
        return @ptrCast(@alignCast(result));
    }

    pub fn addRef(self: *@This()) u32 {
        return self.vtable.AddRef(@ptrCast(self));
    }

    pub fn release(self: *@This()) u32 {
        return self.vtable.Release(@ptrCast(self));
    }

    pub fn getIids(self: *@This()) ![]const Guid {
        var count: u32 = 0;
        var iids: [*]Guid = undefined;
        if (self.vtable.GetIids(@ptrCast(self), &count, &iids) != S_OK) {
            return error.OutOfMemory;
        }
        return iids[0..@as(usize, @intCast(count))];
    }

    pub fn getRuntimeClassName(self: *@This()) ![]const u16 {
        var name: HSTRING = undefined;
        const code = self.vtable.GetRuntimeClassName(@ptrCast(self), &name);
        if (code == S_OK) {
            return WindowsGetString(name).?;
        } else if (code == E_OUTOFMEMORY) {
            return error.OutOfMemory;
        } else {
            return error.IllegalMethodCall;
        }
    }

    pub fn getTrustLevel(self: *@This()) TrustLevel {
        var trust: TrustLevel = undefined;
        _ = self.vtable.GetTrustLevel(@ptrCast(self), &trust);
        return trust;
    }

    pub const GUID: []const u8 = "5d034661-7bd8-4ad5-9ebf-81e6347263b1";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = Signature.interface(GUID);

    pub const VTable = Implements(IInspectable.VTable, struct {
        LoadXmlFromBuffer: *const fn(*anyopaque, *anyopaque) callconv(.c) HRESULT,
        LoadXmlFromBufferWithSettings: *const fn(*anyopaque, *anyopaque, *anyopaque) callconv(.c) HRESULT,
    });
};

pub const IXmlDocumentStatics = extern struct {
    vtable: *const VTable,

    pub fn queryInterface(self: *@This(), T: type) !*T {
        var result: *anyopaque = undefined;
        if (self.vtable.QueryInterface(@ptrCast(self), &T.IID, &result) != S_OK) {
            return error.NoInterface;
        }
        return @ptrCast(@alignCast(result));
    }

    pub fn addRef(self: *@This()) u32 {
        return self.vtable.AddRef(@ptrCast(self));
    }

    pub fn release(self: *@This()) u32 {
        return self.vtable.Release(@ptrCast(self));
    }

    pub fn getIids(self: *@This()) ![]const Guid {
        var count: u32 = 0;
        var iids: [*]Guid = undefined;
        if (self.vtable.GetIids(@ptrCast(self), &count, &iids) != S_OK) {
            return error.OutOfMemory;
        }
        return iids[0..@as(usize, @intCast(count))];
    }

    pub fn getRuntimeClassName(self: *@This()) ![]const u16 {
        var name: HSTRING = undefined;
        const code = self.vtable.GetRuntimeClassName(@ptrCast(self), &name);
        if (code == S_OK) {
            return WindowsGetString(name).?;
        } else if (code == E_OUTOFMEMORY) {
            return error.OutOfMemory;
        } else {
            return error.IllegalMethodCall;
        }
    }

    pub fn getTrustLevel(self: *@This()) TrustLevel {
        var trust: TrustLevel = undefined;
        _ = self.vtable.GetTrustLevel(@ptrCast(self), &trust);
        return trust;
    }

    pub const GUID: []const u8 = "5543d254-d757-4b79-9539-232b18f50bf1";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = Signature.interface(GUID);

    pub const VTable = Implements(IInspectable.VTable, struct {
        LoadFromUriAsync: *const fn(*anyopaque, *anyopaque, **anyopaque) callconv(.c) HRESULT,
        LoadFromUriWithSettingsAsync: *const fn(*anyopaque, *anyopaque, *anyopaque, **anyopaque) callconv(.c) HRESULT,
        LoadFromFileAsync: *const fn(*anyopaque, *anyopaque, **anyopaque) callconv(.c) HRESULT,
        LoadFromFileWithSettingsAsync: *const fn(*anyopaque, *anyopaque, *anyopaque, **anyopaque) callconv(.c) HRESULT,
    });
};

pub const IXmlDocumentType = extern struct {
    vtable: *const VTable,

    pub fn queryInterface(self: *@This(), T: type) !*T {
        var result: *anyopaque = undefined;
        if (self.vtable.QueryInterface(@ptrCast(self), &T.IID, &result) != S_OK) {
            return error.NoInterface;
        }
        return @ptrCast(@alignCast(result));
    }

    pub fn addRef(self: *@This()) u32 {
        return self.vtable.AddRef(@ptrCast(self));
    }

    pub fn release(self: *@This()) u32 {
        return self.vtable.Release(@ptrCast(self));
    }

    pub fn getIids(self: *@This()) ![]const Guid {
        var count: u32 = 0;
        var iids: [*]Guid = undefined;
        if (self.vtable.GetIids(@ptrCast(self), &count, &iids) != S_OK) {
            return error.OutOfMemory;
        }
        return iids[0..@as(usize, @intCast(count))];
    }

    pub fn getRuntimeClassName(self: *@This()) ![]const u16 {
        var name: HSTRING = undefined;
        const code = self.vtable.GetRuntimeClassName(@ptrCast(self), &name);
        if (code == S_OK) {
            return WindowsGetString(name).?;
        } else if (code == E_OUTOFMEMORY) {
            return error.OutOfMemory;
        } else {
            return error.IllegalMethodCall;
        }
    }

    pub fn getTrustLevel(self: *@This()) TrustLevel {
        var trust: TrustLevel = undefined;
        _ = self.vtable.GetTrustLevel(@ptrCast(self), &trust);
        return trust;
    }

    pub const GUID: []const u8 = "f7342425-9781-4964-8e94-9b1c6dfc9bc7";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = Signature.interface(GUID);

    pub const VTable = Implements(IInspectable.VTable, struct {
        Name: *const fn(*anyopaque, **anyopaque) callconv(.c) HRESULT,
        Entities: *const fn(*anyopaque, **anyopaque) callconv(.c) HRESULT,
        Notations: *const fn(*anyopaque, **anyopaque) callconv(.c) HRESULT,
    });
};

pub const NodeType = enum(i32) {
    invalid = 0,
    element = 1,
    attribute = 2,
    text = 3,
    data_section = 4,
    entity_reference = 5,
    entity = 6,
    processing_instruction = 7,
    comment = 8,
    document = 9,
    document_type = 10,
    document_fragment = 11,
    notation = 12,
};

pub const IXmlNodeSelector = extern struct {
    vtable: *const VTable,

    pub fn queryInterface(self: *@This(), T: type) !*T {
        var result: *anyopaque = undefined;
        if (self.vtable.QueryInterface(@ptrCast(self), &T.IID, &result) != S_OK) {
            return error.NoInterface;
        }
        return @ptrCast(@alignCast(result));
    }

    pub fn addRef(self: *@This()) u32 {
        return self.vtable.AddRef(@ptrCast(self));
    }

    pub fn release(self: *@This()) u32 {
        return self.vtable.Release(@ptrCast(self));
    }

    pub fn getIids(self: *@This()) ![]const Guid {
        var count: u32 = 0;
        var iids: [*]Guid = undefined;
        if (self.vtable.GetIids(@ptrCast(self), &count, &iids) != S_OK) {
            return error.OutOfMemory;
        }
        return iids[0..@as(usize, @intCast(count))];
    }

    pub fn getRuntimeClassName(self: *@This()) ![]const u16 {
        var name: HSTRING = undefined;
        const code = self.vtable.GetRuntimeClassName(@ptrCast(self), &name);
        if (code == S_OK) {
            return WindowsGetString(name).?;
        } else if (code == E_OUTOFMEMORY) {
            return error.OutOfMemory;
        } else {
            return error.IllegalMethodCall;
        }
    }

    pub fn getTrustLevel(self: *@This()) TrustLevel {
        var trust: TrustLevel = undefined;
        _ = self.vtable.GetTrustLevel(@ptrCast(self), &trust);
        return trust;
    }

    pub fn selectNodes(self: *@This(), pattern: [:0]const u16) !*XmlNodeList {
        const pattern_hstring: ?HSTRING = try winrt.WindowsCreateString(pattern);
        defer winrt.WindowsDeleteString(pattern_hstring);

        var result: *XmlNodeList = undefined;
        _ = self.vtable.SelectNodes(@ptrCast(self), pattern_hstring.?, &result);
        return result;
    }

    pub fn selectSingleNode(self: *@This(), pattern: [:0]const u16) !?*IXmlNode {
        const pattern_hstring: ?HSTRING = try winrt.WindowsCreateString(pattern);
        defer winrt.WindowsDeleteString(pattern_hstring);

        var result: ?*IXmlNode = undefined;
        _ = self.vtable.SelectSingleNode(@ptrCast(self), pattern_hstring.?, &result);
        return result;
    }

    pub const GUID: []const u8 = "63dbba8b-d0db-4fe1-b745-f9433afdc25b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = Signature.interface(GUID);

    pub const VTable = Implements(IInspectable.VTable, struct {
        // TODO: Update params to be the correct type
        SelectSingleNode: *const fn(*anyopaque, HSTRING, *?*IXmlNode) callconv(.c) HRESULT,
        SelectNodes: *const fn(*anyopaque, HSTRING, **XmlNodeList) callconv(.c) HRESULT,
        SelectSingleNodeNS: *const fn(*anyopaque, *anyopaque, *anyopaque, **anyopaque) callconv(.c) HRESULT,
        SelectNodesNS: *const fn(*anyopaque, *anyopaque, *anyopaque, **anyopaque) callconv(.c) HRESULT,
    });
};

pub const IXmlNodeSerializer = extern struct {
    vtable: *const VTable,

    pub fn queryInterface(self: *@This(), T: type) !*T {
        var result: *anyopaque = undefined;
        if (self.vtable.QueryInterface(@ptrCast(self), &T.IID, &result) != S_OK) {
            return error.NoInterface;
        }
        return @ptrCast(@alignCast(result));
    }

    pub fn addRef(self: *@This()) u32 {
        return self.vtable.AddRef(@ptrCast(self));
    }

    pub fn release(self: *@This()) u32 {
        return self.vtable.Release(@ptrCast(self));
    }

    pub fn getIids(self: *@This()) ![]const Guid {
        var count: u32 = 0;
        var iids: [*]Guid = undefined;
        if (self.vtable.GetIids(@ptrCast(self), &count, &iids) != S_OK) {
            return error.OutOfMemory;
        }
        return iids[0..@as(usize, @intCast(count))];
    }

    pub fn getRuntimeClassName(self: *@This()) ![]const u16 {
        var name: HSTRING = undefined;
        const code = self.vtable.GetRuntimeClassName(@ptrCast(self), &name);
        if (code == S_OK) {
            return WindowsGetString(name).?;
        } else if (code == E_OUTOFMEMORY) {
            return error.OutOfMemory;
        } else {
            return error.IllegalMethodCall;
        }
    }

    pub fn getTrustLevel(self: *@This()) TrustLevel {
        var trust: TrustLevel = undefined;
        _ = self.vtable.GetTrustLevel(@ptrCast(self), &trust);
        return trust;
    }

    pub fn getXml(self: *@This()) []const u16 {
        var document: HSTRING = undefined;
        _ = self.vtable.GetXml(@ptrCast(self), &document);
        return winrt.WindowsGetString(document).?;
    }

    pub fn innerText(self: *@This()) HSTRING {
        var document: HSTRING = undefined;
        _ = self.vtable.InnerText(@ptrCast(self), &document);
        return document;
    }

    pub fn setInnerText(self: *@This(), text: [:0]const u16) !void {
        const inner_hstring: ?HSTRING = try winrt.WindowsCreateString(text);
        defer winrt.WindowsDeleteString(inner_hstring);

        _ = self.vtable.SetInnerText(@ptrCast(self), inner_hstring.?);
    }

    pub const GUID: []const u8 = "5cc5b382-e6dd-4991-abef-06d8d2e7bd0c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = Signature.interface(GUID);

    pub const VTable = Implements(IInspectable.VTable, struct {
        // TODO: Update params to be the correct type
        GetXml: *const fn(*anyopaque, *HSTRING) callconv(.c) HRESULT,
        InnerText: *const fn(*anyopaque, *HSTRING) callconv(.c) HRESULT,
        SetInnerText: *const fn(*anyopaque, HSTRING) callconv(.c) HRESULT,
    });
};

/// Implements:
///    IUknown, IInspectable, IXmlNodeSelector, IXmlNodeSerializer
pub const IXmlNode = extern struct {
    vtable: *const VTable,

    pub fn queryInterface(self: *@This(), T: type) !*T {
        var result: *anyopaque = undefined;
        if (self.vtable.QueryInterface(@ptrCast(self), &T.IID, &result) != S_OK) {
            return error.NoInterface;
        }
        return @ptrCast(@alignCast(result));
    }

    pub fn addRef(self: *@This()) u32 {
        return self.vtable.AddRef(@ptrCast(self));
    }

    pub fn release(self: *@This()) u32 {
        return self.vtable.Release(@ptrCast(self));
    }

    pub fn getIids(self: *@This()) ![]const Guid {
        var count: u32 = 0;
        var iids: [*]Guid = undefined;
        if (self.vtable.GetIids(@ptrCast(self), &count, &iids) != S_OK) {
            return error.OutOfMemory;
        }
        return iids[0..@as(usize, @intCast(count))];
    }

    pub fn getRuntimeClassName(self: *@This()) ![]const u16 {
        var name: HSTRING = undefined;
        const code = self.vtable.GetRuntimeClassName(@ptrCast(self), &name);
        if (code == S_OK) {
            return WindowsGetString(name).?;
        } else if (code == E_OUTOFMEMORY) {
            return error.OutOfMemory;
        } else {
            return error.IllegalMethodCall;
        }
    }

    pub fn getTrustLevel(self: *@This()) TrustLevel {
        var trust: TrustLevel = undefined;
        _ = self.vtable.GetTrustLevel(@ptrCast(self), &trust);
        return trust;
    }

    pub fn cloneNode(self: *@This(), deep: bool) *IXmlNode {
        var result: *IXmlNode = undefined;
        _ = self.vtable.CloneNode(@ptrCast(self), deep, &result);
        return result;
    }

    pub fn appendChild(self: *@This(), child: *IXmlNode) !?*IXmlNode {
        var result: ?*IXmlNode = undefined;
        _ = self.vtable.AppendChild(@ptrCast(self), child, &result);
        return result;
    }

    pub fn removeChild(self: *@This(), child: *IXmlNode) ?*IXmlNode {
        var result: ?*IXmlNode = undefined;
        _ = self.vtable.RemoveChild(@ptrCast(self), child, &result);
        return result;
    }

    pub fn replaceChild(self: *@This(), new: *IXmlNode, reference: *IXmlNode) ?*IXmlNode {
        var result: ?*IXmlNode = undefined;
        _ = self.vtable.ReplaceChild(@ptrCast(self), new, reference, &result);
        return result;
    }

    pub fn nodeValue(self: *@This()) ?[]const u16 {
        var result: ?HSTRING = undefined;
        _ = self.vtable.NodeValue(@ptrCast(self), &result);
        return winrt.WindowsGetString(result);
    }

    pub fn setNodeValue(self: *@This(), text: [:0]const u16) !void {
        const text_hstring: ?HSTRING = try winrt.WindowsCreateString(text);
        defer winrt.WindowsDeleteString(text_hstring);

        _ = self.vtable.SetNodeValue(@ptrCast(self), text_hstring.?);
    }

    pub fn normalize(self: *@This()) void {
        _ = self.vtable.Normalize(@ptrCast(self));
    }

    pub const GUID: []const u8 = "1c741d59-2122-47d5-a856-83f3d4214875";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = Signature.interface(GUID);

    pub const VTable = Implements(IInspectable.VTable, struct {
        // TODO: Update params to be the correct type
        NodeValue: *const fn(*anyopaque, *?HSTRING) callconv(.c) HRESULT,
        SetNodeValue: *const fn(*anyopaque, HSTRING) callconv(.c) HRESULT,
        NodeType: *const fn(*anyopaque, *NodeType) callconv(.c) HRESULT,
        NodeName: *const fn(*anyopaque, **anyopaque) callconv(.c) HRESULT,
        ParentNode: *const fn(*anyopaque, **anyopaque) callconv(.c) HRESULT,
        ChildNodes: *const fn(*anyopaque, **anyopaque) callconv(.c) HRESULT,
        FirstChild: *const fn(*anyopaque, **anyopaque) callconv(.c) HRESULT,
        LastChild: *const fn(*anyopaque, **anyopaque) callconv(.c) HRESULT,
        PreviousSibling: *const fn(*anyopaque, **anyopaque) callconv(.c) HRESULT,
        NextSibling: *const fn(*anyopaque, **anyopaque) callconv(.c) HRESULT,
        Attributes: *const fn(*anyopaque, **anyopaque) callconv(.c) HRESULT,
        HasChildNodes: *const fn(*anyopaque, *bool) callconv(.c) HRESULT,
        OwnerDocument: *const fn(*anyopaque, **anyopaque) callconv(.c) HRESULT,
        InsertBefore: *const fn(*anyopaque, *anyopaque, *anyopaque, **anyopaque) callconv(.c) HRESULT,
        ReplaceChild: *const fn(*anyopaque, *IXmlNode, *IXmlNode, *?*IXmlNode) callconv(.c) HRESULT,
        RemoveChild: *const fn(*anyopaque, *IXmlNode, *?*IXmlNode) callconv(.c) HRESULT,
        AppendChild: *const fn(*anyopaque, *IXmlNode, *?*IXmlNode) callconv(.c) HRESULT,
        CloneNode: *const fn(*anyopaque, bool, **IXmlNode) callconv(.c) HRESULT,
        NamespaceUri: *const fn(*anyopaque, **anyopaque) callconv(.c) HRESULT,
        LocalName: *const fn(*anyopaque, **anyopaque) callconv(.c) HRESULT,
        Prefix: *const fn(*anyopaque, **anyopaque) callconv(.c) HRESULT,
        Normalize: *const fn(*anyopaque) callconv(.c) HRESULT,
        SetPrefix: *const fn(*anyopaque, *anyopaque) callconv(.c) HRESULT,
    });
};

pub const IXmlNodeList = extern struct {
    vtable: *const VTable,

    pub fn queryInterface(self: *@This(), T: type) !*T {
        var result: *anyopaque = undefined;
        if (self.vtable.QueryInterface(@ptrCast(self), &T.IID, &result) != S_OK) {
            return error.NoInterface;
        }
        return @ptrCast(@alignCast(result));
    }

    pub fn addRef(self: *@This()) u32 {
        return self.vtable.AddRef(@ptrCast(self));
    }

    pub fn release(self: *@This()) u32 {
        return self.vtable.Release(@ptrCast(self));
    }

    pub fn getIids(self: *@This()) ![]const Guid {
        var count: u32 = 0;
        var iids: [*]Guid = undefined;
        if (self.vtable.GetIids(@ptrCast(self), &count, &iids) != S_OK) {
            return error.OutOfMemory;
        }
        return iids[0..@as(usize, @intCast(count))];
    }

    pub fn getRuntimeClassName(self: *@This()) ![]const u16 {
        var name: HSTRING = undefined;
        const code = self.vtable.GetRuntimeClassName(@ptrCast(self), &name);
        if (code == S_OK) {
            return WindowsGetString(name).?;
        } else if (code == E_OUTOFMEMORY) {
            return error.OutOfMemory;
        } else {
            return error.IllegalMethodCall;
        }
    }

    pub fn getTrustLevel(self: *@This()) TrustLevel {
        var trust: TrustLevel = undefined;
        _ = self.vtable.GetTrustLevel(@ptrCast(self), &trust);
        return trust;
    }

    pub const GUID: []const u8 = "8c60ad77-83a4-4ec1-9c54-7ba429e13da6";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = Signature.interface(GUID);

    pub const VTable = Implements(IInspectable.VTable, struct {
        Length: *const fn(*anyopaque, *u32) callconv(.c) HRESULT,
        Item: *const fn(*anyopaque, u32, *?*IXmlNode) callconv(.c) HRESULT,
    });
};

pub const IXmlAttribute = extern struct {
    vtable: *const VTable,

    pub fn queryInterface(self: *@This(), T: type) !*T {
        var result: *anyopaque = undefined;
        if (self.vtable.QueryInterface(@ptrCast(self), &T.IID, &result) != S_OK) {
            return error.NoInterface;
        }
        return @ptrCast(@alignCast(result));
    }

    pub fn addRef(self: *@This()) u32 {
        return self.vtable.AddRef(@ptrCast(self));
    }

    pub fn release(self: *@This()) u32 {
        return self.vtable.Release(@ptrCast(self));
    }

    pub fn getIids(self: *@This()) ![]const Guid {
        var count: u32 = 0;
        var iids: [*]Guid = undefined;
        if (self.vtable.GetIids(@ptrCast(self), &count, &iids) != S_OK) {
            return error.OutOfMemory;
        }
        return iids[0..@as(usize, @intCast(count))];
    }

    pub fn getRuntimeClassName(self: *@This()) ![]const u16 {
        var name: HSTRING = undefined;
        const code = self.vtable.GetRuntimeClassName(@ptrCast(self), &name);
        if (code == S_OK) {
            return WindowsGetString(name).?;
        } else if (code == E_OUTOFMEMORY) {
            return error.OutOfMemory;
        } else {
            return error.IllegalMethodCall;
        }
    }

    pub fn getTrustLevel(self: *@This()) TrustLevel {
        var trust: TrustLevel = undefined;
        _ = self.vtable.GetTrustLevel(@ptrCast(self), &trust);
        return trust;
    }

    pub const GUID: []const u8 = "ac144aa4-b4f1-4db6-b206-8a22c308db0a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = Signature.interface(GUID);

    pub const VTable = Implements(IInspectable.VTable, struct {
        // TODO: Update params to be correct types
        Name: *const fn(*anyopaque, *HSTRING) callconv(.c) HRESULT,
        Specified: *const fn(*anyopaque, *bool) callconv(.c) HRESULT,
        Value: *const fn(*anyopaque, *HSTRING) callconv(.c) HRESULT,
        SetValue: *const fn(*anyopaque, HSTRING) callconv(.c) HRESULT,
    });
};

pub const IXmlElement = extern struct {
    vtable: *const VTable,

    pub fn queryInterface(self: *@This(), T: type) !*T {
        var result: *anyopaque = undefined;
        if (self.vtable.QueryInterface(@ptrCast(self), &T.IID, &result) != S_OK) {
            return error.NoInterface;
        }
        return @ptrCast(@alignCast(result));
    }

    pub fn addRef(self: *@This()) u32 {
        return self.vtable.AddRef(@ptrCast(self));
    }

    pub fn release(self: *@This()) u32 {
        return self.vtable.Release(@ptrCast(self));
    }

    pub fn getIids(self: *@This()) ![]const Guid {
        var count: u32 = 0;
        var iids: [*]Guid = undefined;
        if (self.vtable.GetIids(@ptrCast(self), &count, &iids) != S_OK) {
            return error.OutOfMemory;
        }
        return iids[0..@as(usize, @intCast(count))];
    }

    pub fn getRuntimeClassName(self: *@This()) ![]const u16 {
        var name: HSTRING = undefined;
        const code = self.vtable.GetRuntimeClassName(@ptrCast(self), &name);
        if (code == S_OK) {
            return WindowsGetString(name).?;
        } else if (code == E_OUTOFMEMORY) {
            return error.OutOfMemory;
        } else {
            return error.IllegalMethodCall;
        }
    }

    pub fn getTrustLevel(self: *@This()) TrustLevel {
        var trust: TrustLevel = undefined;
        _ = self.vtable.GetTrustLevel(@ptrCast(self), &trust);
        return trust;
    }

    pub const GUID: []const u8 = "2dfb8a1f-6b10-4ef8-9f83-efcce8faec37";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = Signature.interface(GUID);

    pub const VTable = Implements(IInspectable.VTable, struct {
        // TODO: Update params to be correct types
        TagName: *const fn(*anyopaque, *HSTRING) callconv(.c) HRESULT,
        GetAttribute: *const fn(*anyopaque, HSTRING, *HSTRING) callconv(.c) HRESULT,
        SetAttribute: *const fn(*anyopaque, HSTRING, HSTRING) callconv(.c) HRESULT,
        RemoveAttribute: *const fn(*anyopaque, HSTRING) callconv(.c) HRESULT,
        GetAttributeNode: *const fn(*anyopaque, HSTRING, **XmlAttribute) callconv(.c) HRESULT,
        SetAttributeNode: *const fn(*anyopaque, *IXmlNode, *?*IXmlNode) callconv(.c) HRESULT,
        RemoveAttributeNode: *const fn(*anyopaque, *XmlAttribute, *?*XmlAttribute) callconv(.c) HRESULT,
        GetElementsByTagName: *const fn(*anyopaque, HSTRING, **XmlNodeList) callconv(.c) HRESULT,

        SetAttributeNS: *const fn(*anyopaque, *anyopaque, *anyopaque, *anyopaque) callconv(.c) HRESULT,
        GetAttributeNS: *const fn(*anyopaque, *anyopaque, *anyopaque, **anyopaque) callconv(.c) HRESULT,
        RemoveAttributeNS: *const fn(*anyopaque, *anyopaque, *anyopaque) callconv(.c) HRESULT,
        SetAttributeNodeNS: *const fn(*anyopaque, *anyopaque, **anyopaque) callconv(.c) HRESULT,
        GetAttributeNodeNS: *const fn(*anyopaque, *anyopaque, *anyopaque, **anyopaque) callconv(.c) HRESULT,
    });
};

pub const XmlNodeList = extern struct {
    vtable: *const IXmlNodeList.VTable,

    pub fn queryInterface(self: *@This(), T: type) !*T {
        var result: *anyopaque = undefined;
        if (self.vtable.QueryInterface(@ptrCast(self), &T.IID, &result) != S_OK) {
            return error.NoInterface;
        }
        return @ptrCast(@alignCast(result));
    }

    pub fn addRef(self: *@This()) u32 {
        return self.vtable.AddRef(@ptrCast(self));
    }

    pub fn release(self: *@This()) u32 {
        return self.vtable.Release(@ptrCast(self));
    }

    pub fn getIids(self: *@This()) ![]const Guid {
        var count: u32 = 0;
        var iids: [*]Guid = undefined;
        if (self.vtable.GetIids(@ptrCast(self), &count, &iids) != S_OK) {
            return error.OutOfMemory;
        }
        return iids[0..@as(usize, @intCast(count))];
    }

    pub fn getRuntimeClassName(self: *@This()) ![]const u16 {
        var name: HSTRING = undefined;
        const code = self.vtable.GetRuntimeClassName(@ptrCast(self), &name);
        if (code == S_OK) {
            return WindowsGetString(name).?;
        } else if (code == E_OUTOFMEMORY) {
            return error.OutOfMemory;
        } else {
            return error.IllegalMethodCall;
        }
    }

    pub fn getTrustLevel(self: *@This()) TrustLevel {
        var trust: TrustLevel = undefined;
        _ = self.vtable.GetTrustLevel(@ptrCast(self), &trust);
        return trust;
    }

    pub fn size(self: *@This()) !u32 {
        const this = try self.queryInterface(IVectorView(IXmlNode));
        return try this.size();
    }

    pub fn length(self: *@This()) u32 {
        var result: u32 = 0;
        _ = self.vtable.Length(@ptrCast(self), &result);
        return result;
    }

    pub fn item(self: *@This(), idx: u32) ?*IXmlNode {
        var result: ?*IXmlNode = undefined;
        _ = self.vtable.Item(@ptrCast(self), idx, &result);
        return result;
    }

    pub fn indexOf(self: *@This(), value: *IXmlNode) !?u32 {
        const this = try self.queryInterface(IVectorView(IXmlNode));
        return try this.indexOf(value);
    }

    pub fn getAt(self: *@This(), idx: u32) !*IXmlNode {
        const this = try self.queryInterface(IVectorView(IXmlNode));
        return try this.getAt(idx);
    }

    pub fn getMany(self: *@This(), start: u32, end: u32) ![]IXmlNode {
        const this = try self.queryInterface(IVectorView(IXmlNode));
        return try this.getMany(start, end);
    }

    pub fn first(self: *@This()) !*IIterator(IXmlNode) {
        const this = try self.queryInterface(IIterable(IXmlNode));
        return try this.first();
    }

    pub const TYPE_NAME: []const u8 = "Windows.Data.Xml.Dom.XmlNodeList";
    pub const RUNTIME_NAME: []const u8 = std.unicode.utf8ToUtf16LeStringLiteral(TYPE_NAME);
    pub const SIGNATURE: []const u8 = Signature.class(TYPE_NAME, IXmlNodeList.SIGNATURE);
};

pub const XmlAttribute = extern struct {
    vtable: *const IXmlAttribute.VTable,

    pub fn queryInterface(self: *@This(), T: type) !*T {
        var result: *anyopaque = undefined;
        if (self.vtable.QueryInterface(@ptrCast(self), &T.IID, &result) != S_OK) {
            return error.NoInterface;
        }
        return @ptrCast(@alignCast(result));
    }

    pub fn addRef(self: *@This()) u32 {
        return self.vtable.AddRef(@ptrCast(self));
    }

    pub fn release(self: *@This()) u32 {
        return self.vtable.Release(@ptrCast(self));
    }

    pub fn getIids(self: *@This()) ![]const Guid {
        var count: u32 = 0;
        var iids: [*]Guid = undefined;
        if (self.vtable.GetIids(@ptrCast(self), &count, &iids) != S_OK) {
            return error.OutOfMemory;
        }
        return iids[0..@as(usize, @intCast(count))];
    }

    pub fn getRuntimeClassName(self: *@This()) ![]const u16 {
        var result: HSTRING = undefined;
        const code = self.vtable.GetRuntimeClassName(@ptrCast(self), &result);
        if (code == S_OK) {
            return WindowsGetString(result).?;
        } else if (code == E_OUTOFMEMORY) {
            return error.OutOfMemory;
        } else {
            return error.IllegalMethodCall;
        }
    }

    pub fn getTrustLevel(self: *@This()) TrustLevel {
        var trust: TrustLevel = undefined;
        _ = self.vtable.GetTrustLevel(@ptrCast(self), &trust);
        return trust;
    }

    pub fn name(self: *@This()) HSTRING {
        var result: HSTRING = undefined;
        _ = self.vtable.Name(@ptrCast(self), &result);
        return result;
    }

    pub fn specified(self: *@This()) bool {
        var result: bool = false;
        _ = self.vtable.Specified(@ptrCast(self), &result);
        return result;
    }

    pub fn value(self: *@This()) HSTRING {
        var result: HSTRING = undefined;
        _ = self.vtable.Value(@ptrCast(self), &result);
        return result;
    }

    pub fn setValue(self: *@This(), text: HSTRING) void {
        _ = self.vtable.SetValue(@ptrCast(self), text);
    }

    pub const TYPE_NAME: []const u8 = "Windows.Data.Xml.Dom.XmlAttribute";
    pub const RUNTIME_NAME: []const u8 = std.unicode.utf8ToUtf16LeStringLiteral(TYPE_NAME);
    pub const SIGNATURE: []const u8 = Signature.class(TYPE_NAME, IXmlAttribute.SIGNATURE);
};

pub const XmlElement = extern struct {
    vtable: *const IXmlElement.VTable,

    pub fn queryInterface(self: *@This(), T: type) !*T {
        var result: *anyopaque = undefined;
        if (self.vtable.QueryInterface(@ptrCast(self), &T.IID, &result) != S_OK) {
            return error.NoInterface;
        }
        return @ptrCast(@alignCast(result));
    }

    pub fn addRef(self: *@This()) u32 {
        return self.vtable.AddRef(@ptrCast(self));
    }

    pub fn release(self: *@This()) u32 {
        return self.vtable.Release(@ptrCast(self));
    }

    pub fn getIids(self: *@This()) ![]const Guid {
        var count: u32 = 0;
        var iids: [*]Guid = undefined;
        if (self.vtable.GetIids(@ptrCast(self), &count, &iids) != S_OK) {
            return error.OutOfMemory;
        }
        return iids[0..@as(usize, @intCast(count))];
    }

    pub fn getRuntimeClassName(self: *@This()) ![]const u16 {
        var name: HSTRING = undefined;
        const code = self.vtable.GetRuntimeClassName(@ptrCast(self), &name);
        if (code == S_OK) {
            return WindowsGetString(name).?;
        } else if (code == E_OUTOFMEMORY) {
            return error.OutOfMemory;
        } else {
            return error.IllegalMethodCall;
        }
    }

    pub fn getTrustLevel(self: *@This()) TrustLevel {
        var trust: TrustLevel = undefined;
        _ = self.vtable.GetTrustLevel(@ptrCast(self), &trust);
        return trust;
    }

    pub fn tagName(self: *@This()) []const u16 {
        var result: HSTRING = undefined;
        _ = self.vtable.TagName(@ptrCast(self), &result);

        return winrt.WindowsGetString(result).?;
    }

    pub fn getAttribute(self: *@This(), key: [:0]const u16) !HSTRING {
        const key_hstring: ?HSTRING = try winrt.WindowsCreateString(key);
        defer winrt.WindowsDeleteString(key_hstring);

        var result: HSTRING = undefined;
        _ = self.vtable.GetAttribute(@ptrCast(self), key_hstring.?, &result);
        return result;
    }

    pub fn getAttributeNode(self: *@This(), key: [:0]const u16) !*XmlAttribute {
        const key_hstring: ?HSTRING = try winrt.WindowsCreateString(key);
        defer winrt.WindowsDeleteString(key_hstring);

        var result: *XmlAttribute = undefined;
        _ = self.vtable.GetAttributeNode(@ptrCast(self), key_hstring.?, &result);
        return result;
    }

    pub fn getElementsByTagName(self: *@This(), tag: [:0]const u16) !*XmlNodeList {
        const tag_hstring: ?HSTRING = try winrt.WindowsCreateString(tag);
        defer winrt.WindowsDeleteString(tag_hstring);

        var result: *XmlNodeList = undefined;
        _ = self.vtable.GetElementsByTagName(@ptrCast(self), tag_hstring.?, &result);
        return result;
    }

    pub fn setAttribute(self: *@This(), key: [:0]const u16, value: [:0]const u16) !void {
        const key_hstring: ?HSTRING = try winrt.WindowsCreateString(key);
        defer winrt.WindowsDeleteString(key_hstring);
        const value_hstring: ?HSTRING = try winrt.WindowsCreateString(value);
        defer winrt.WindowsDeleteString(value_hstring);

        _ = self.vtable.SetAttribute(@ptrCast(self), key_hstring.?, value_hstring.?);
    }

    pub fn setAttributeNode(self: *@This(), node: *XmlAttribute) ?*XmlAttribute {
        var result: ?*IXmlNode = undefined;
        _ = self.vtable.SetAttributeNode(@ptrCast(self), @ptrCast(@alignCast(node)), &result);
        return @ptrCast(@alignCast(result));
    }

    pub fn removeAttribute(self: *@This(), key: [:0]const u16) !void {
        const key_hstring: ?HSTRING = try winrt.WindowsCreateString(key);
        defer winrt.WindowsDeleteString(key_hstring);

        _ = self.vtable.RemoveAttribute(@ptrCast(self), key_hstring.?);
    }

    pub fn removeAttributeNode(self: *@This(), attribute: *XmlAttribute) ?*XmlAttribute {
        var old: ?*XmlAttribute = undefined;
        _ = self.vtable.RemoveAttributeNode(@ptrCast(self), attribute, &old);
        return old;
    }

    pub fn cloneNode(self: *@This(), deep: bool) !*IXmlNode {
        const this: *IXmlNode = try self.queryInterface(IXmlNode);
        return this.cloneNode(deep);
    }

    pub fn replaceChild(self: *@This(), new: *IXmlNode, reference: *IXmlNode) !?*IXmlNode {
        const this: *IXmlNode = try self.queryInterface(IXmlNode);
        return this.replaceChild(new, reference);
    }

    pub fn appendChild(self: *@This(), child: *IXmlNode) !?*IXmlNode {
        const this: *IXmlNode = try self.queryInterface(IXmlNode);
        return this.appendChild(child);
    }

    pub fn selectNodes(self: *@This(), pattern: [:0]const u8) !*XmlNodeList {
        const this: *IXmlNodeSelector = try self.queryInterface(IXmlNodeSelector);
        return this.selectNodes(pattern);
    }

    pub fn selectSingleNode(self: *@This(), pattern: [:0]const u8) !?*IXmlNode {
        const this: *IXmlNodeSelector = try self.queryInterface(IXmlNodeSelector);
        return this.selectSingleNode(pattern);
    }

    pub fn getXml(self: *@This()) ![]const u16 {
        const this: *IXmlNodeSerializer = try self.queryInterface(IXmlNodeSerializer);
        return this.getXml();
    }

    pub fn innerText(self: @This()) !HSTRING {
        const this: *IXmlNodeSerializer = try self.queryInterface(IXmlNodeSerializer);
        return this.innerText();
    }

    pub fn setInnerText(self: @This(), text: [:0]const u16) !void {
        const this: *IXmlNodeSerializer = try self.queryInterface(IXmlNodeSerializer);
        return this.setInnerText(text);
    }

    /// Call `release` and discard the returned remaining ref count
    pub fn deinit(self: *@This()) void {
        _ = self.release();
    }

    pub const IID: Guid = IXmlElement.IID;
    pub const TYPE_NAME: []const u8 = "Windows.Data.Xml.Dom.XmlElement";
    pub const RUNTIME_NAME: []const u8 = std.unicode.utf8ToUtf16LeStringLiteral(TYPE_NAME);
    pub const SIGNATURE: []const u8 = Signature.class(TYPE_NAME, IXmlElement.SIGNATURE);
};

pub const IXmlCharacterData = extern struct {
    vtable: *VTable,

    pub fn queryInterface(self: *@This(), T: type) !*T {
        var result: *anyopaque = undefined;
        if (self.vtable.QueryInterface(@ptrCast(self), &T.IID, &result) != S_OK) {
            return error.NoInterface;
        }
        return @ptrCast(@alignCast(result));
    }

    pub fn addRef(self: *@This()) u32 {
        return self.vtable.AddRef(@ptrCast(self));
    }

    pub fn release(self: *@This()) u32 {
        return self.vtable.Release(@ptrCast(self));
    }

    pub fn getIids(self: *@This()) ![]const Guid {
        var count: u32 = 0;
        var iids: [*]Guid = undefined;
        if (self.vtable.GetIids(@ptrCast(self), &count, &iids) != S_OK) {
            return error.OutOfMemory;
        }
        return iids[0..@as(usize, @intCast(count))];
    }

    pub fn getRuntimeClassName(self: *@This()) ![]const u16 {
        var name: HSTRING = undefined;
        const code = self.vtable.GetRuntimeClassName(@ptrCast(self), &name);
        if (code == S_OK) {
            return WindowsGetString(name).?;
        } else if (code == E_OUTOFMEMORY) {
            return error.OutOfMemory;
        } else {
            return error.IllegalMethodCall;
        }
    }

    pub fn getTrustLevel(self: *@This()) TrustLevel {
        var trust: TrustLevel = undefined;
        _ = self.vtable.GetTrustLevel(@ptrCast(self), &trust);
        return trust;
    }

    pub fn data(self: *@This()) []const u16 {
        var result: HSTRING = undefined;
        _ = self.vtable.Data(@ptrCast(self), &result);
        return winrt.WindowsGetString(result).?;
    }

    pub fn setData(self: *@This(), text: [:0]const u16) !void {
        const text_hstring: ?HSTRING = try winrt.WindowsCreateString(text);
        defer winrt.WindowsDeleteString(text_hstring);
        _ = self.vtable.SetData(@ptrCast(self), text_hstring.?);
    }

    pub fn length(self: *@This()) u32 {
        var result: u32 = 0;
        _ = self.vtable.Length(@ptrCast(self), &result);
        return result;
    }

    pub fn substringData(self: *@This(), offset: u32, count: u32) ![]const u16 {
        var result: HSTRING = undefined;
        if (self.vtable.SubstringData(@ptrCast(self), offset, count, &result) != S_OK) {
            return error.OutOfBounds;
        }
        return winrt.WindowsGetString(result).?;
    }

    pub fn appendData(self: *@This(), text: [:0]const u16) !void {
        const text_hstring: ?HSTRING = try winrt.WindowsCreateString(text);
        defer winrt.WindowsDeleteString(text_hstring);
        _ = self.vtable.AppendData(@ptrCast(self), text_hstring.?);
    }

    pub fn insertData(self: *@This(), idx: u32, text: [:0]const u16) !void {
        const text_hstring: ?HSTRING = try winrt.WindowsCreateString(text);
        defer winrt.WindowsDeleteString(text_hstring);
        if (self.vtable.InsertData(@ptrCast(self), idx, text_hstring.?) != S_OK) {
            return error.OutOfBounds;
        }
    }

    pub fn replaceData(self: *@This(), offset: u32, count: u32, text: [:0]const u16) !void {
        const text_hstring: ?HSTRING = try winrt.WindowsCreateString(text);
        defer winrt.WindowsDeleteString(text_hstring);
        if (self.vtable.ReplaceData(@ptrCast(self), offset, count, text_hstring.?) != S_OK) {
            return error.OutOfBounds;
        }
    }

    pub fn deleteData(self: *@This(), offset: u32, count: u32) !void {
        if (self.vtable.DeleteData(@ptrCast(self), offset, count) != S_OK) {
            return error.OutOfBounds;
        }
    }

    pub const TYPE_NAME: []const u8 = "Windows.Data.Xml.Dom.IXmlCharacterData";
    pub const GUID: []const u8 = "132e42ab-4e36-4df6-b1c8-0ce62fd88b26";

    pub const RUNTIME_NAME: [:0]const u16 = std.unicode.utf8ToUtf16LeStringLiteral(TYPE_NAME);
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = Signature.interface(GUID);

    pub const VTable = Implements(IInspectable.VTable, struct {
        Data: *const fn(*anyopaque, *HSTRING) callconv(.c) HRESULT,
        SetData: *const fn(*anyopaque, HSTRING) callconv(.c) HRESULT,
        Length: *const fn(*anyopaque, *u32) callconv(.c) HRESULT,
        SubstringData: *const fn(*anyopaque, u32, u32, *HSTRING) callconv(.c) HRESULT,
        AppendData: *const fn(*anyopaque, HSTRING) callconv(.c) HRESULT,
        InsertData: *const fn(*anyopaque, u32, HSTRING) callconv(.c) HRESULT,
        DeleteData: *const fn(*anyopaque, u32, u32) callconv(.c) HRESULT,
        ReplaceData: *const fn(*anyopaque, u32, u32, HSTRING) callconv(.c) HRESULT,
    });
};

pub const IXmlText = extern struct {
    vtable: *VTable,

    pub fn queryInterface(self: *@This(), T: type) !*T {
        var result: *anyopaque = undefined;
        if (self.vtable.QueryInterface(@ptrCast(self), &T.IID, &result) != S_OK) {
            return error.NoInterface;
        }
        return @ptrCast(@alignCast(result));
    }

    pub fn addRef(self: *@This()) u32 {
        return self.vtable.AddRef(@ptrCast(self));
    }

    pub fn release(self: *@This()) u32 {
        return self.vtable.Release(@ptrCast(self));
    }

    pub fn getIids(self: *@This()) ![]const Guid {
        var count: u32 = 0;
        var iids: [*]Guid = undefined;
        if (self.vtable.GetIids(@ptrCast(self), &count, &iids) != S_OK) {
            return error.OutOfMemory;
        }
        return iids[0..@as(usize, @intCast(count))];
    }

    pub fn getRuntimeClassName(self: *@This()) ![]const u16 {
        var name: HSTRING = undefined;
        const code = self.vtable.GetRuntimeClassName(@ptrCast(self), &name);
        if (code == S_OK) {
            return WindowsGetString(name).?;
        } else if (code == E_OUTOFMEMORY) {
            return error.OutOfMemory;
        } else {
            return error.IllegalMethodCall;
        }
    }

    pub fn getTrustLevel(self: *@This()) TrustLevel {
        var trust: TrustLevel = undefined;
        _ = self.vtable.GetTrustLevel(@ptrCast(self), &trust);
        return trust;
    }

    pub fn splitText(self: *@This(), at: u32) void {
        var result: *XmlText = undefined;
        if (self.vtable.SplitText(@ptrCast(self), at, &result)) {
            return error.OutOfBounds;
        }
        return result;
    }

    pub const TYPE_NAME: []const u8 = "Windows.Data.Xml.Dom.IXmlText";
    pub const GUID: []const u8 = "f931a4cb-308d-4760-a1d5-43b67450ac7e";

    pub const RUNTIME_NAME: [:0]const u16 = std.unicode.utf8ToUtf16LeStringLiteral(TYPE_NAME);
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = Signature.interface(GUID);

    pub const VTable = Implements(IInspectable.VTable, struct {
        SplitText: *const fn(*anyopaque, u32, **XmlText) callconv(.c) HRESULT,
    });
};

pub const XmlText = extern struct {
    vtable: *IXmlText.VTable,

    pub fn queryInterface(self: *@This(), T: type) !*T {
        var result: *anyopaque = undefined;
        if (self.vtable.QueryInterface(@ptrCast(self), &T.IID, &result) != S_OK) {
            return error.NoInterface;
        }
        return @ptrCast(@alignCast(result));
    }

    pub fn addRef(self: *@This()) u32 {
        return self.vtable.AddRef(@ptrCast(self));
    }

    pub fn release(self: *@This()) u32 {
        return self.vtable.Release(@ptrCast(self));
    }

    pub fn getIids(self: *@This()) ![]const Guid {
        var count: u32 = 0;
        var iids: [*]Guid = undefined;
        if (self.vtable.GetIids(@ptrCast(self), &count, &iids) != S_OK) {
            return error.OutOfMemory;
        }
        return iids[0..@as(usize, @intCast(count))];
    }

    pub fn getRuntimeClassName(self: *@This()) ![]const u16 {
        var name: HSTRING = undefined;
        const code = self.vtable.GetRuntimeClassName(@ptrCast(self), &name);
        if (code == S_OK) {
            return WindowsGetString(name).?;
        } else if (code == E_OUTOFMEMORY) {
            return error.OutOfMemory;
        } else {
            return error.IllegalMethodCall;
        }
    }

    pub fn getTrustLevel(self: *@This()) TrustLevel {
        var trust: TrustLevel = undefined;
        _ = self.vtable.GetTrustLevel(@ptrCast(self), &trust);
        return trust;
    }

    pub fn data(self: *@This()) []const u16 {
        const this: *IXmlCharacterData = try self.queryInterface(IXmlCharacterData);
        return this.data();
    }

    pub fn setData(self: *@This(), text: [:0]const u16) !void {
        const this: *IXmlCharacterData = try self.queryInterface(IXmlCharacterData);
        return this.setData(text);
    }

    pub fn length(self: *@This()) u32 {
        const this: *IXmlCharacterData = try self.queryInterface(IXmlCharacterData);
        return this.length();
    }

    pub fn substringData(self: *@This(), offset: u32, count: u32) ![]const u16 {
        const this: *IXmlCharacterData = try self.queryInterface(IXmlCharacterData);
        return this.substringData(offset, count);
    }

    pub fn appendData(self: *@This(), text: [:0]const u16) !void {
        const this: *IXmlCharacterData = try self.queryInterface(IXmlCharacterData);
        return this.appendData(text);
    }

    pub fn insertData(self: *@This(), idx: u32, text: [:0]const u16) !void {
        const this: *IXmlCharacterData = try self.queryInterface(IXmlCharacterData);
        return this.insertData(idx, text);
    }

    pub fn replaceData(self: *@This(), offset: u32, count: u32, text: [:0]const u16) !void {
        const this: *IXmlCharacterData = try self.queryInterface(IXmlCharacterData);
        return this.replaceData(offset, count, text);
    }

    pub fn deleteData(self: *@This(), offset: u32, count: u32) !void {
        const this: *IXmlCharacterData = try self.queryInterface(IXmlCharacterData);
        return this.replaceData(offset, count);
    }

    pub fn splitText(self: *@This(), at: u32) !*XmlText {
        const this: *IXmlText = @ptrCast(@alignCast(self));
        return this.splitText(at);
    }

    /// Call `release` and discard the returned remaining ref count
    pub fn deinit(self: *@This()) void {
        _ = self.release();
    }

    pub const TYPE_NAME: []const u8 = "Windows.Data.Xml.Dom.XmlText";
    pub const SIGNATURE: []const u8 = std.fmt.comptimePrint("rc({s};{s})", .{ TYPE_NAME, IXmlText.SIGNATURE });
    pub const RUNTIME_NAME: [:0]const u16 = std.unicode.utf8ToUtf16LeStringLiteral(TYPE_NAME);
};

/// Represents an XML document. You can use this class to load, validate, edit, add, and position XML
/// in a document.
///
/// https://learn.microsoft.com/en-us/dotnet/api/system.xml.xmldocument?view=net-9.0
pub const XmlDocument = extern struct {
    vtable: *IXmlDocument.VTable,

    pub fn queryInterface(self: *@This(), T: type) !*T {
        var result: *anyopaque = undefined;
        if (self.vtable.QueryInterface(@ptrCast(self), &T.IID, &result) != S_OK) {
            return error.NoInterface;
        }
        return @ptrCast(@alignCast(result));
    }

    pub fn addRef(self: *@This()) u32 {
        return self.vtable.AddRef(@ptrCast(self));
    }

    pub fn release(self: *@This()) u32 {
        return self.vtable.Release(@ptrCast(self));
    }

    pub fn getIids(self: *@This()) ![]const Guid {
        var count: u32 = 0;
        var iids: [*]Guid = undefined;
        if (self.vtable.GetIids(@ptrCast(self), &count, &iids) != S_OK) {
            return error.OutOfMemory;
        }
        return iids[0..@as(usize, @intCast(count))];
    }

    pub fn getRuntimeClassName(self: *@This()) ![]const u16 {
        var name: HSTRING = undefined;
        const code = self.vtable.GetRuntimeClassName(@ptrCast(self), &name);
        if (code == S_OK) {
            return WindowsGetString(name).?;
        } else if (code == E_OUTOFMEMORY) {
            return error.OutOfMemory;
        } else {
            return error.IllegalMethodCall;
        }
    }

    pub fn getTrustLevel(self: *@This()) TrustLevel {
        var trust: TrustLevel = undefined;
        _ = self.vtable.GetTrustLevel(@ptrCast(self), &trust);
        return trust;
    }

    pub fn init() FactoryError!*@This() {
        const factory: *IGenericFactory = try @This().Factory.call(
            IGenericFactory,
            @This().RUNTIME_NAME,
        );

        return @ptrCast(@alignCast(try factory.ActivateInstance(IXmlDocument)));
    }

    /// Call `release` and discard the returned remaining ref count
    pub fn deinit(self: *@This()) void {
        _ = self.release();
    }

    pub fn loadXml(self: *@This(), xml: [:0]const u16) !void {
        const xml_hstring: ?HSTRING = try winrt.WindowsCreateString(xml);
        defer winrt.WindowsDeleteString(xml_hstring);

        const instance = try self.queryInterface(IXmlDocumentIO);
        const code = instance.vtable.LoadXml(@ptrCast(instance), xml_hstring.?);
        if (code < S_OK) {
            return error.XmlException;
        }
    }

    pub fn getXml(self: *@This()) ![]const u16 {
        const this: *IXmlNodeSerializer = try self.queryInterface(IXmlNodeSerializer);
        return this.getXml();
    }

    pub fn createAttribute(self: *@This(), key: [:0]const u16) !*XmlAttribute {
        const key_hstring: ?HSTRING = try winrt.WindowsCreateString(key);
        defer winrt.WindowsDeleteString(key_hstring);

        var result: *XmlAttribute = undefined;
        _ = self.vtable.CreateAttribute(@ptrCast(self), key_hstring.?, &result);
        return result;
    }

    pub fn createElement(self: *@This(), tag: [:0]const u16) !*XmlElement {
        const tag_hstring: ?HSTRING = try winrt.WindowsCreateString(tag);
        defer winrt.WindowsDeleteString(tag_hstring);

        var result: *XmlElement = undefined;
        _ = self.vtable.CreateElement(@ptrCast(self), tag_hstring.?, &result);
        return result;
    }

    pub fn createTextNode(self: *@This(), text: [:0]const u16) !*XmlText {
        const text_hstring: ?HSTRING = try winrt.WindowsCreateString(text);
        defer winrt.WindowsDeleteString(text_hstring);

        var result: *XmlText = undefined;
        _ = self.vtable.CreateTextNode(@ptrCast(self), text_hstring.?, &result);
        return result;
    }

    /// Gets the root XmlElement for the document
    pub fn documentElement(self: *@This()) ?*XmlElement {
        var result: ?*XmlElement = undefined;
        _ = self.vtable.DocumentElement(@ptrCast(self), &result);
        return result;
    }

    // GetElementsByTagName: *const fn(*anyopaque, *anyopaque, **anyopaque) callconv(.c) HRESULT,
    pub fn getElementsByTagName(self: *@This(), tag: [:0]const u16) !*XmlNodeList {
        const tag_hstring: ?HSTRING = try winrt.WindowsCreateString(tag);
        defer winrt.WindowsDeleteString(tag_hstring);

        var result: *XmlNodeList = undefined;
        _ = self.vtable.GetElementsByTagName(@ptrCast(self), tag_hstring.?, &result);
        return result;
    }

    pub fn getElementById(self: *@This(), id: [:0]const u16) !?*XmlElement {
        const id_hstring: ?HSTRING = try winrt.WindowsCreateString(id);
        defer winrt.WindowsDeleteString(id_hstring);

        var result: ?*IXmlNode = undefined;
        _ = self.vtable.GetElementById(@ptrCast(self), id_hstring.?, &result);
        return result;
    }

    pub fn appendChild(self: *@This(), child: *IXmlNode) !?*IXmlNode {
        const this: *IXmlNode = try self.queryInterface(IXmlNode);
        return this.appendChild(child);
    }

    pub fn selectNodes(self: *@This(), pattern: [:0]const u8) !*XmlNodeList {
        const this: *IXmlNodeSelector = try self.queryInterface(IXmlNodeSelector);
        return this.selectNodes(pattern);
    }

    pub fn selectSingleNode(self: *@This(), pattern: [:0]const u8) !?*IXmlNode {
        const this: *IXmlNodeSelector = try self.queryInterface(IXmlNodeSelector);
        return this.selectSingleNode(pattern);
    }

    pub const TYPE_NAME: []const u8 = "Windows.Data.Xml.Dom.XmlDocument";
    pub const SIGNATURE: []const u8 = std.fmt.comptimePrint("rc({s};{s})", .{ TYPE_NAME, IXmlDocument.SIGNATURE });
    pub const RUNTIME_NAME: [:0]const u16 = std.unicode.utf8ToUtf16LeStringLiteral(TYPE_NAME);

    var Factory: FactoryCache = .{};
};
