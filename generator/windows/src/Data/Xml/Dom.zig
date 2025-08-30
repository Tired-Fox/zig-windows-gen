pub const DtdEntity = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getPublicId(self: *@This()) core.HResult!*IInspectable {
        const this: *IDtdEntity = @ptrCast(self);
        return try this.getPublicId();
    }
    pub fn getSystemId(self: *@This()) core.HResult!*IInspectable {
        const this: *IDtdEntity = @ptrCast(self);
        return try this.getSystemId();
    }
    pub fn getNotationName(self: *@This()) core.HResult!*IInspectable {
        const this: *IDtdEntity = @ptrCast(self);
        return try this.getNotationName();
    }
    pub fn getNodeValue(self: *@This()) core.HResult!*IInspectable {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getNodeValue();
    }
    pub fn putNodeValue(self: *@This(), value: *IInspectable) core.HResult!void {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putNodeValue(value);
    }
    pub fn getNodeType(self: *@This()) core.HResult!NodeType {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getNodeType();
    }
    pub fn getNodeName(self: *@This()) core.HResult!HSTRING {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getNodeName();
    }
    pub fn getParentNode(self: *@This()) core.HResult!*IXmlNode {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getParentNode();
    }
    pub fn getChildNodes(self: *@This()) core.HResult!*XmlNodeList {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getChildNodes();
    }
    pub fn getFirstChild(self: *@This()) core.HResult!*IXmlNode {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getFirstChild();
    }
    pub fn getLastChild(self: *@This()) core.HResult!*IXmlNode {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getLastChild();
    }
    pub fn getPreviousSibling(self: *@This()) core.HResult!*IXmlNode {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getPreviousSibling();
    }
    pub fn getNextSibling(self: *@This()) core.HResult!*IXmlNode {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getNextSibling();
    }
    pub fn getAttributes(self: *@This()) core.HResult!*XmlNamedNodeMap {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getAttributes();
    }
    pub fn HasChildNodes(self: *@This()) core.HResult!bool {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.HasChildNodes();
    }
    pub fn getOwnerDocument(self: *@This()) core.HResult!*XmlDocument {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getOwnerDocument();
    }
    pub fn InsertBefore(self: *@This(), newChild: *IXmlNode, referenceChild: *IXmlNode) core.HResult!*IXmlNode {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.InsertBefore(newChild, referenceChild);
    }
    pub fn ReplaceChild(self: *@This(), newChild: *IXmlNode, referenceChild: *IXmlNode) core.HResult!*IXmlNode {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ReplaceChild(newChild, referenceChild);
    }
    pub fn RemoveChild(self: *@This(), childNode: *IXmlNode) core.HResult!*IXmlNode {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.RemoveChild(childNode);
    }
    pub fn AppendChild(self: *@This(), newChild: *IXmlNode) core.HResult!*IXmlNode {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.AppendChild(newChild);
    }
    pub fn CloneNode(self: *@This(), deep: bool) core.HResult!*IXmlNode {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.CloneNode(deep);
    }
    pub fn getNamespaceUri(self: *@This()) core.HResult!*IInspectable {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getNamespaceUri();
    }
    pub fn getLocalName(self: *@This()) core.HResult!*IInspectable {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getLocalName();
    }
    pub fn getPrefix(self: *@This()) core.HResult!*IInspectable {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getPrefix();
    }
    pub fn Normalize(self: *@This()) core.HResult!void {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Normalize();
    }
    pub fn putPrefix(self: *@This(), value: *IInspectable) core.HResult!void {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putPrefix(value);
    }
    pub fn GetXml(self: *@This()) core.HResult!HSTRING {
        var this: ?*IXmlNodeSerializer = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNodeSerializer.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetXml();
    }
    pub fn getInnerText(self: *@This()) core.HResult!HSTRING {
        var this: ?*IXmlNodeSerializer = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNodeSerializer.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getInnerText();
    }
    pub fn putInnerText(self: *@This(), value: HSTRING) core.HResult!void {
        var this: ?*IXmlNodeSerializer = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNodeSerializer.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putInnerText(value);
    }
    pub fn SelectSingleNode(self: *@This(), xpath: HSTRING) core.HResult!*IXmlNode {
        var this: ?*IXmlNodeSelector = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNodeSelector.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.SelectSingleNode(xpath);
    }
    pub fn SelectNodes(self: *@This(), xpath: HSTRING) core.HResult!*XmlNodeList {
        var this: ?*IXmlNodeSelector = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNodeSelector.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.SelectNodes(xpath);
    }
    pub fn SelectSingleNodeNS(self: *@This(), xpath: HSTRING, namespaces: *IInspectable) core.HResult!*IXmlNode {
        var this: ?*IXmlNodeSelector = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNodeSelector.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.SelectSingleNodeNS(xpath, namespaces);
    }
    pub fn SelectNodesNS(self: *@This(), xpath: HSTRING, namespaces: *IInspectable) core.HResult!*XmlNodeList {
        var this: ?*IXmlNodeSelector = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNodeSelector.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.SelectNodesNS(xpath, namespaces);
    }
    pub const NAME: []const u8 = "Windows.Data.Xml.Dom.DtdEntity";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IDtdEntity.GUID;
    pub const IID: Guid = IDtdEntity.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IDtdEntity.SIGNATURE);
};
pub const DtdNotation = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getPublicId(self: *@This()) core.HResult!*IInspectable {
        const this: *IDtdNotation = @ptrCast(self);
        return try this.getPublicId();
    }
    pub fn getSystemId(self: *@This()) core.HResult!*IInspectable {
        const this: *IDtdNotation = @ptrCast(self);
        return try this.getSystemId();
    }
    pub fn getNodeValue(self: *@This()) core.HResult!*IInspectable {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getNodeValue();
    }
    pub fn putNodeValue(self: *@This(), value: *IInspectable) core.HResult!void {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putNodeValue(value);
    }
    pub fn getNodeType(self: *@This()) core.HResult!NodeType {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getNodeType();
    }
    pub fn getNodeName(self: *@This()) core.HResult!HSTRING {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getNodeName();
    }
    pub fn getParentNode(self: *@This()) core.HResult!*IXmlNode {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getParentNode();
    }
    pub fn getChildNodes(self: *@This()) core.HResult!*XmlNodeList {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getChildNodes();
    }
    pub fn getFirstChild(self: *@This()) core.HResult!*IXmlNode {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getFirstChild();
    }
    pub fn getLastChild(self: *@This()) core.HResult!*IXmlNode {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getLastChild();
    }
    pub fn getPreviousSibling(self: *@This()) core.HResult!*IXmlNode {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getPreviousSibling();
    }
    pub fn getNextSibling(self: *@This()) core.HResult!*IXmlNode {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getNextSibling();
    }
    pub fn getAttributes(self: *@This()) core.HResult!*XmlNamedNodeMap {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getAttributes();
    }
    pub fn HasChildNodes(self: *@This()) core.HResult!bool {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.HasChildNodes();
    }
    pub fn getOwnerDocument(self: *@This()) core.HResult!*XmlDocument {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getOwnerDocument();
    }
    pub fn InsertBefore(self: *@This(), newChild: *IXmlNode, referenceChild: *IXmlNode) core.HResult!*IXmlNode {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.InsertBefore(newChild, referenceChild);
    }
    pub fn ReplaceChild(self: *@This(), newChild: *IXmlNode, referenceChild: *IXmlNode) core.HResult!*IXmlNode {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ReplaceChild(newChild, referenceChild);
    }
    pub fn RemoveChild(self: *@This(), childNode: *IXmlNode) core.HResult!*IXmlNode {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.RemoveChild(childNode);
    }
    pub fn AppendChild(self: *@This(), newChild: *IXmlNode) core.HResult!*IXmlNode {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.AppendChild(newChild);
    }
    pub fn CloneNode(self: *@This(), deep: bool) core.HResult!*IXmlNode {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.CloneNode(deep);
    }
    pub fn getNamespaceUri(self: *@This()) core.HResult!*IInspectable {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getNamespaceUri();
    }
    pub fn getLocalName(self: *@This()) core.HResult!*IInspectable {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getLocalName();
    }
    pub fn getPrefix(self: *@This()) core.HResult!*IInspectable {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getPrefix();
    }
    pub fn Normalize(self: *@This()) core.HResult!void {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Normalize();
    }
    pub fn putPrefix(self: *@This(), value: *IInspectable) core.HResult!void {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putPrefix(value);
    }
    pub fn GetXml(self: *@This()) core.HResult!HSTRING {
        var this: ?*IXmlNodeSerializer = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNodeSerializer.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetXml();
    }
    pub fn getInnerText(self: *@This()) core.HResult!HSTRING {
        var this: ?*IXmlNodeSerializer = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNodeSerializer.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getInnerText();
    }
    pub fn putInnerText(self: *@This(), value: HSTRING) core.HResult!void {
        var this: ?*IXmlNodeSerializer = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNodeSerializer.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putInnerText(value);
    }
    pub fn SelectSingleNode(self: *@This(), xpath: HSTRING) core.HResult!*IXmlNode {
        var this: ?*IXmlNodeSelector = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNodeSelector.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.SelectSingleNode(xpath);
    }
    pub fn SelectNodes(self: *@This(), xpath: HSTRING) core.HResult!*XmlNodeList {
        var this: ?*IXmlNodeSelector = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNodeSelector.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.SelectNodes(xpath);
    }
    pub fn SelectSingleNodeNS(self: *@This(), xpath: HSTRING, namespaces: *IInspectable) core.HResult!*IXmlNode {
        var this: ?*IXmlNodeSelector = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNodeSelector.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.SelectSingleNodeNS(xpath, namespaces);
    }
    pub fn SelectNodesNS(self: *@This(), xpath: HSTRING, namespaces: *IInspectable) core.HResult!*XmlNodeList {
        var this: ?*IXmlNodeSelector = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNodeSelector.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.SelectNodesNS(xpath, namespaces);
    }
    pub const NAME: []const u8 = "Windows.Data.Xml.Dom.DtdNotation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IDtdNotation.GUID;
    pub const IID: Guid = IDtdNotation.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IDtdNotation.SIGNATURE);
};
pub const IDtdEntity = extern struct {
    vtable: *const VTable,
    pub fn getPublicId(self: *@This()) core.HResult!*IInspectable {
        var _r: *IInspectable = undefined;
        const _c = self.vtable.get_PublicId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSystemId(self: *@This()) core.HResult!*IInspectable {
        var _r: *IInspectable = undefined;
        const _c = self.vtable.get_SystemId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getNotationName(self: *@This()) core.HResult!*IInspectable {
        var _r: *IInspectable = undefined;
        const _c = self.vtable.get_NotationName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Data.Xml.Dom.IDtdEntity";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "6a0b5ffc-63b4-480f-9e6a-8a92816aade4";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_PublicId: *const fn(self: *anyopaque, _r: **IInspectable) callconv(.winapi) HRESULT,
        get_SystemId: *const fn(self: *anyopaque, _r: **IInspectable) callconv(.winapi) HRESULT,
        get_NotationName: *const fn(self: *anyopaque, _r: **IInspectable) callconv(.winapi) HRESULT,
    };
};
pub const IDtdNotation = extern struct {
    vtable: *const VTable,
    pub fn getPublicId(self: *@This()) core.HResult!*IInspectable {
        var _r: *IInspectable = undefined;
        const _c = self.vtable.get_PublicId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSystemId(self: *@This()) core.HResult!*IInspectable {
        var _r: *IInspectable = undefined;
        const _c = self.vtable.get_SystemId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Data.Xml.Dom.IDtdNotation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "8cb4e04d-6d46-4edb-ab73-df83c51ad397";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_PublicId: *const fn(self: *anyopaque, _r: **IInspectable) callconv(.winapi) HRESULT,
        get_SystemId: *const fn(self: *anyopaque, _r: **IInspectable) callconv(.winapi) HRESULT,
    };
};
pub const IXmlAttribute = extern struct {
    vtable: *const VTable,
    pub fn getName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Name(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSpecified(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_Specified(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getValue(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Value(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putValue(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_Value(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Data.Xml.Dom.IXmlAttribute";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ac144aa4-b4f1-4db6-b206-8a22c308db0a";
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
        get_Specified: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_Value: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_Value: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IXmlCDataSection = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.Data.Xml.Dom.IXmlCDataSection";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "4d04b46f-c8bd-45b4-8899-0400d7c2c60f";
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
pub const IXmlCharacterData = extern struct {
    vtable: *const VTable,
    pub fn getData(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Data(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putData(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_Data(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getLength(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_Length(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SubstringData(self: *@This(), offset: u32, count: u32) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.SubstringData(@ptrCast(self), offset, count, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn AppendData(self: *@This(), data: HSTRING) core.HResult!void {
        const _c = self.vtable.AppendData(@ptrCast(self), data);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn InsertData(self: *@This(), offset: u32, data: HSTRING) core.HResult!void {
        const _c = self.vtable.InsertData(@ptrCast(self), offset, data);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn DeleteData(self: *@This(), offset: u32, count: u32) core.HResult!void {
        const _c = self.vtable.DeleteData(@ptrCast(self), offset, count);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn ReplaceData(self: *@This(), offset: u32, count: u32, data: HSTRING) core.HResult!void {
        const _c = self.vtable.ReplaceData(@ptrCast(self), offset, count, data);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Data.Xml.Dom.IXmlCharacterData";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "132e42ab-4e36-4df6-b1c8-0ce62fd88b26";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Data: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_Data: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_Length: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        SubstringData: *const fn(self: *anyopaque, offset: u32, count: u32, _r: *HSTRING) callconv(.winapi) HRESULT,
        AppendData: *const fn(self: *anyopaque, data: HSTRING) callconv(.winapi) HRESULT,
        InsertData: *const fn(self: *anyopaque, offset: u32, data: HSTRING) callconv(.winapi) HRESULT,
        DeleteData: *const fn(self: *anyopaque, offset: u32, count: u32) callconv(.winapi) HRESULT,
        ReplaceData: *const fn(self: *anyopaque, offset: u32, count: u32, data: HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IXmlComment = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.Data.Xml.Dom.IXmlComment";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "bca474d5-b61f-4611-9cac-2e92e3476d47";
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
pub const IXmlDocument = extern struct {
    vtable: *const VTable,
    pub fn getDoctype(self: *@This()) core.HResult!*XmlDocumentType {
        var _r: *XmlDocumentType = undefined;
        const _c = self.vtable.get_Doctype(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getImplementation(self: *@This()) core.HResult!*XmlDomImplementation {
        var _r: *XmlDomImplementation = undefined;
        const _c = self.vtable.get_Implementation(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDocumentElement(self: *@This()) core.HResult!*XmlElement {
        var _r: *XmlElement = undefined;
        const _c = self.vtable.get_DocumentElement(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateElement(self: *@This(), tagName: HSTRING) core.HResult!*XmlElement {
        var _r: *XmlElement = undefined;
        const _c = self.vtable.CreateElement(@ptrCast(self), tagName, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateDocumentFragment(self: *@This()) core.HResult!*XmlDocumentFragment {
        var _r: *XmlDocumentFragment = undefined;
        const _c = self.vtable.CreateDocumentFragment(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateTextNode(self: *@This(), data: HSTRING) core.HResult!*XmlText {
        var _r: *XmlText = undefined;
        const _c = self.vtable.CreateTextNode(@ptrCast(self), data, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateComment(self: *@This(), data: HSTRING) core.HResult!*XmlComment {
        var _r: *XmlComment = undefined;
        const _c = self.vtable.CreateComment(@ptrCast(self), data, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateProcessingInstruction(self: *@This(), target: HSTRING, data: HSTRING) core.HResult!*XmlProcessingInstruction {
        var _r: *XmlProcessingInstruction = undefined;
        const _c = self.vtable.CreateProcessingInstruction(@ptrCast(self), target, data, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateAttribute(self: *@This(), name: HSTRING) core.HResult!*XmlAttribute {
        var _r: *XmlAttribute = undefined;
        const _c = self.vtable.CreateAttribute(@ptrCast(self), name, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateEntityReference(self: *@This(), name: HSTRING) core.HResult!*XmlEntityReference {
        var _r: *XmlEntityReference = undefined;
        const _c = self.vtable.CreateEntityReference(@ptrCast(self), name, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetElementsByTagName(self: *@This(), tagName: HSTRING) core.HResult!*XmlNodeList {
        var _r: *XmlNodeList = undefined;
        const _c = self.vtable.GetElementsByTagName(@ptrCast(self), tagName, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateCDataSection(self: *@This(), data: HSTRING) core.HResult!*XmlCDataSection {
        var _r: *XmlCDataSection = undefined;
        const _c = self.vtable.CreateCDataSection(@ptrCast(self), data, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDocumentUri(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DocumentUri(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateAttributeNS(self: *@This(), namespaceUri: *IInspectable, qualifiedName: HSTRING) core.HResult!*XmlAttribute {
        var _r: *XmlAttribute = undefined;
        const _c = self.vtable.CreateAttributeNS(@ptrCast(self), namespaceUri, qualifiedName, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateElementNS(self: *@This(), namespaceUri: *IInspectable, qualifiedName: HSTRING) core.HResult!*XmlElement {
        var _r: *XmlElement = undefined;
        const _c = self.vtable.CreateElementNS(@ptrCast(self), namespaceUri, qualifiedName, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetElementById(self: *@This(), elementId: HSTRING) core.HResult!*XmlElement {
        var _r: *XmlElement = undefined;
        const _c = self.vtable.GetElementById(@ptrCast(self), elementId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ImportNode(self: *@This(), node: *IXmlNode, deep: bool) core.HResult!*IXmlNode {
        var _r: *IXmlNode = undefined;
        const _c = self.vtable.ImportNode(@ptrCast(self), node, deep, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Data.Xml.Dom.IXmlDocument";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f7f3a506-1e87-42d6-bcfb-b8c809fa5494";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Doctype: *const fn(self: *anyopaque, _r: **XmlDocumentType) callconv(.winapi) HRESULT,
        get_Implementation: *const fn(self: *anyopaque, _r: **XmlDomImplementation) callconv(.winapi) HRESULT,
        get_DocumentElement: *const fn(self: *anyopaque, _r: **XmlElement) callconv(.winapi) HRESULT,
        CreateElement: *const fn(self: *anyopaque, tagName: HSTRING, _r: **XmlElement) callconv(.winapi) HRESULT,
        CreateDocumentFragment: *const fn(self: *anyopaque, _r: **XmlDocumentFragment) callconv(.winapi) HRESULT,
        CreateTextNode: *const fn(self: *anyopaque, data: HSTRING, _r: **XmlText) callconv(.winapi) HRESULT,
        CreateComment: *const fn(self: *anyopaque, data: HSTRING, _r: **XmlComment) callconv(.winapi) HRESULT,
        CreateProcessingInstruction: *const fn(self: *anyopaque, target: HSTRING, data: HSTRING, _r: **XmlProcessingInstruction) callconv(.winapi) HRESULT,
        CreateAttribute: *const fn(self: *anyopaque, name: HSTRING, _r: **XmlAttribute) callconv(.winapi) HRESULT,
        CreateEntityReference: *const fn(self: *anyopaque, name: HSTRING, _r: **XmlEntityReference) callconv(.winapi) HRESULT,
        GetElementsByTagName: *const fn(self: *anyopaque, tagName: HSTRING, _r: **XmlNodeList) callconv(.winapi) HRESULT,
        CreateCDataSection: *const fn(self: *anyopaque, data: HSTRING, _r: **XmlCDataSection) callconv(.winapi) HRESULT,
        get_DocumentUri: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        CreateAttributeNS: *const fn(self: *anyopaque, namespaceUri: *IInspectable, qualifiedName: HSTRING, _r: **XmlAttribute) callconv(.winapi) HRESULT,
        CreateElementNS: *const fn(self: *anyopaque, namespaceUri: *IInspectable, qualifiedName: HSTRING, _r: **XmlElement) callconv(.winapi) HRESULT,
        GetElementById: *const fn(self: *anyopaque, elementId: HSTRING, _r: **XmlElement) callconv(.winapi) HRESULT,
        ImportNode: *const fn(self: *anyopaque, node: *IXmlNode, deep: bool, _r: **IXmlNode) callconv(.winapi) HRESULT,
    };
};
pub const IXmlDocumentFragment = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.Data.Xml.Dom.IXmlDocumentFragment";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e2ea6a96-0c21-44a5-8bc9-9e4a262708ec";
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
pub const IXmlDocumentIO = extern struct {
    vtable: *const VTable,
    pub fn LoadXml(self: *@This(), xml: HSTRING) core.HResult!void {
        const _c = self.vtable.LoadXml(@ptrCast(self), xml);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn LoadXmlWithLoadSettings(self: *@This(), xml: HSTRING, loadSettings: *XmlLoadSettings) core.HResult!void {
        const _c = self.vtable.LoadXmlWithLoadSettings(@ptrCast(self), xml, loadSettings);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn SaveToFileAsync(self: *@This(), file: *IStorageFile) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.SaveToFileAsync(@ptrCast(self), file, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Data.Xml.Dom.IXmlDocumentIO";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "6cd0e74e-ee65-4489-9ebf-ca43e87ba637";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        LoadXml: *const fn(self: *anyopaque, xml: HSTRING) callconv(.winapi) HRESULT,
        LoadXmlWithLoadSettings: *const fn(self: *anyopaque, xml: HSTRING, loadSettings: *XmlLoadSettings) callconv(.winapi) HRESULT,
        SaveToFileAsync: *const fn(self: *anyopaque, file: *IStorageFile, _r: **IAsyncAction) callconv(.winapi) HRESULT,
    };
};
pub const IXmlDocumentIO2 = extern struct {
    vtable: *const VTable,
    pub fn LoadXmlFromBuffer(self: *@This(), buffer: *IBuffer) core.HResult!void {
        const _c = self.vtable.LoadXmlFromBuffer(@ptrCast(self), buffer);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn LoadXmlFromBufferWithLoadSettings(self: *@This(), buffer: *IBuffer, loadSettings: *XmlLoadSettings) core.HResult!void {
        const _c = self.vtable.LoadXmlFromBufferWithLoadSettings(@ptrCast(self), buffer, loadSettings);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Data.Xml.Dom.IXmlDocumentIO2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5d034661-7bd8-4ad5-9ebf-81e6347263b1";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        LoadXmlFromBuffer: *const fn(self: *anyopaque, buffer: *IBuffer) callconv(.winapi) HRESULT,
        LoadXmlFromBufferWithLoadSettings: *const fn(self: *anyopaque, buffer: *IBuffer, loadSettings: *XmlLoadSettings) callconv(.winapi) HRESULT,
    };
};
pub const IXmlDocumentStatics = extern struct {
    vtable: *const VTable,
    pub fn LoadFromUriAsync(self: *@This(), uri: *Uri) core.HResult!*IAsyncOperation(XmlDocument) {
        var _r: *IAsyncOperation(XmlDocument) = undefined;
        const _c = self.vtable.LoadFromUriAsync(@ptrCast(self), uri, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn LoadFromUriAsyncWithLoadSettings(self: *@This(), uri: *Uri, loadSettings: *XmlLoadSettings) core.HResult!*IAsyncOperation(XmlDocument) {
        var _r: *IAsyncOperation(XmlDocument) = undefined;
        const _c = self.vtable.LoadFromUriAsyncWithLoadSettings(@ptrCast(self), uri, loadSettings, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn LoadFromFileAsync(self: *@This(), file: *IStorageFile) core.HResult!*IAsyncOperation(XmlDocument) {
        var _r: *IAsyncOperation(XmlDocument) = undefined;
        const _c = self.vtable.LoadFromFileAsync(@ptrCast(self), file, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn LoadFromFileAsyncWithLoadSettings(self: *@This(), file: *IStorageFile, loadSettings: *XmlLoadSettings) core.HResult!*IAsyncOperation(XmlDocument) {
        var _r: *IAsyncOperation(XmlDocument) = undefined;
        const _c = self.vtable.LoadFromFileAsyncWithLoadSettings(@ptrCast(self), file, loadSettings, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Data.Xml.Dom.IXmlDocumentStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5543d254-d757-4b79-9539-232b18f50bf1";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        LoadFromUriAsync: *const fn(self: *anyopaque, uri: *Uri, _r: **IAsyncOperation(XmlDocument)) callconv(.winapi) HRESULT,
        LoadFromUriAsyncWithLoadSettings: *const fn(self: *anyopaque, uri: *Uri, loadSettings: *XmlLoadSettings, _r: **IAsyncOperation(XmlDocument)) callconv(.winapi) HRESULT,
        LoadFromFileAsync: *const fn(self: *anyopaque, file: *IStorageFile, _r: **IAsyncOperation(XmlDocument)) callconv(.winapi) HRESULT,
        LoadFromFileAsyncWithLoadSettings: *const fn(self: *anyopaque, file: *IStorageFile, loadSettings: *XmlLoadSettings, _r: **IAsyncOperation(XmlDocument)) callconv(.winapi) HRESULT,
    };
};
pub const IXmlDocumentType = extern struct {
    vtable: *const VTable,
    pub fn getName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Name(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getEntities(self: *@This()) core.HResult!*XmlNamedNodeMap {
        var _r: *XmlNamedNodeMap = undefined;
        const _c = self.vtable.get_Entities(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getNotations(self: *@This()) core.HResult!*XmlNamedNodeMap {
        var _r: *XmlNamedNodeMap = undefined;
        const _c = self.vtable.get_Notations(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Data.Xml.Dom.IXmlDocumentType";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f7342425-9781-4964-8e94-9b1c6dfc9bc7";
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
        get_Entities: *const fn(self: *anyopaque, _r: **XmlNamedNodeMap) callconv(.winapi) HRESULT,
        get_Notations: *const fn(self: *anyopaque, _r: **XmlNamedNodeMap) callconv(.winapi) HRESULT,
    };
};
pub const IXmlDomImplementation = extern struct {
    vtable: *const VTable,
    pub fn HasFeature(self: *@This(), feature: HSTRING, version: *IInspectable) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.HasFeature(@ptrCast(self), feature, version, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Data.Xml.Dom.IXmlDomImplementation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "6de58132-f11d-4fbb-8cc6-583cba93112f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        HasFeature: *const fn(self: *anyopaque, feature: HSTRING, version: *IInspectable, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IXmlElement = extern struct {
    vtable: *const VTable,
    pub fn getTagName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_TagName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetAttribute(self: *@This(), attributeName: HSTRING) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.GetAttribute(@ptrCast(self), attributeName, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetAttribute(self: *@This(), attributeName: HSTRING, attributeValue: HSTRING) core.HResult!void {
        const _c = self.vtable.SetAttribute(@ptrCast(self), attributeName, attributeValue);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn RemoveAttribute(self: *@This(), attributeName: HSTRING) core.HResult!void {
        const _c = self.vtable.RemoveAttribute(@ptrCast(self), attributeName);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn GetAttributeNode(self: *@This(), attributeName: HSTRING) core.HResult!*XmlAttribute {
        var _r: *XmlAttribute = undefined;
        const _c = self.vtable.GetAttributeNode(@ptrCast(self), attributeName, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetAttributeNode(self: *@This(), newAttribute: *XmlAttribute) core.HResult!*XmlAttribute {
        var _r: *XmlAttribute = undefined;
        const _c = self.vtable.SetAttributeNode(@ptrCast(self), newAttribute, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RemoveAttributeNode(self: *@This(), attributeNode: *XmlAttribute) core.HResult!*XmlAttribute {
        var _r: *XmlAttribute = undefined;
        const _c = self.vtable.RemoveAttributeNode(@ptrCast(self), attributeNode, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetElementsByTagName(self: *@This(), tagName: HSTRING) core.HResult!*XmlNodeList {
        var _r: *XmlNodeList = undefined;
        const _c = self.vtable.GetElementsByTagName(@ptrCast(self), tagName, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetAttributeNS(self: *@This(), namespaceUri: *IInspectable, qualifiedName: HSTRING, value: HSTRING) core.HResult!void {
        const _c = self.vtable.SetAttributeNS(@ptrCast(self), namespaceUri, qualifiedName, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn GetAttributeNS(self: *@This(), namespaceUri: *IInspectable, localName: HSTRING) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.GetAttributeNS(@ptrCast(self), namespaceUri, localName, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RemoveAttributeNS(self: *@This(), namespaceUri: *IInspectable, localName: HSTRING) core.HResult!void {
        const _c = self.vtable.RemoveAttributeNS(@ptrCast(self), namespaceUri, localName);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn SetAttributeNodeNS(self: *@This(), newAttribute: *XmlAttribute) core.HResult!*XmlAttribute {
        var _r: *XmlAttribute = undefined;
        const _c = self.vtable.SetAttributeNodeNS(@ptrCast(self), newAttribute, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetAttributeNodeNS(self: *@This(), namespaceUri: *IInspectable, localName: HSTRING) core.HResult!*XmlAttribute {
        var _r: *XmlAttribute = undefined;
        const _c = self.vtable.GetAttributeNodeNS(@ptrCast(self), namespaceUri, localName, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Data.Xml.Dom.IXmlElement";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2dfb8a1f-6b10-4ef8-9f83-efcce8faec37";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_TagName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        GetAttribute: *const fn(self: *anyopaque, attributeName: HSTRING, _r: *HSTRING) callconv(.winapi) HRESULT,
        SetAttribute: *const fn(self: *anyopaque, attributeName: HSTRING, attributeValue: HSTRING) callconv(.winapi) HRESULT,
        RemoveAttribute: *const fn(self: *anyopaque, attributeName: HSTRING) callconv(.winapi) HRESULT,
        GetAttributeNode: *const fn(self: *anyopaque, attributeName: HSTRING, _r: **XmlAttribute) callconv(.winapi) HRESULT,
        SetAttributeNode: *const fn(self: *anyopaque, newAttribute: *XmlAttribute, _r: **XmlAttribute) callconv(.winapi) HRESULT,
        RemoveAttributeNode: *const fn(self: *anyopaque, attributeNode: *XmlAttribute, _r: **XmlAttribute) callconv(.winapi) HRESULT,
        GetElementsByTagName: *const fn(self: *anyopaque, tagName: HSTRING, _r: **XmlNodeList) callconv(.winapi) HRESULT,
        SetAttributeNS: *const fn(self: *anyopaque, namespaceUri: *IInspectable, qualifiedName: HSTRING, value: HSTRING) callconv(.winapi) HRESULT,
        GetAttributeNS: *const fn(self: *anyopaque, namespaceUri: *IInspectable, localName: HSTRING, _r: *HSTRING) callconv(.winapi) HRESULT,
        RemoveAttributeNS: *const fn(self: *anyopaque, namespaceUri: *IInspectable, localName: HSTRING) callconv(.winapi) HRESULT,
        SetAttributeNodeNS: *const fn(self: *anyopaque, newAttribute: *XmlAttribute, _r: **XmlAttribute) callconv(.winapi) HRESULT,
        GetAttributeNodeNS: *const fn(self: *anyopaque, namespaceUri: *IInspectable, localName: HSTRING, _r: **XmlAttribute) callconv(.winapi) HRESULT,
    };
};
pub const IXmlEntityReference = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.Data.Xml.Dom.IXmlEntityReference";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2e2f47bc-c3d0-4ccf-bb86-0ab8c36a61cf";
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
pub const IXmlLoadSettings = extern struct {
    vtable: *const VTable,
    pub fn getMaxElementDepth(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_MaxElementDepth(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putMaxElementDepth(self: *@This(), value: u32) core.HResult!void {
        const _c = self.vtable.put_MaxElementDepth(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getProhibitDtd(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_ProhibitDtd(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putProhibitDtd(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_ProhibitDtd(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getResolveExternals(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_ResolveExternals(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putResolveExternals(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_ResolveExternals(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getValidateOnParse(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_ValidateOnParse(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putValidateOnParse(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_ValidateOnParse(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getElementContentWhiteSpace(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_ElementContentWhiteSpace(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putElementContentWhiteSpace(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_ElementContentWhiteSpace(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Data.Xml.Dom.IXmlLoadSettings";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "58aa07a8-fed6-46f7-b4c5-fb1ba72108d6";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_MaxElementDepth: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        put_MaxElementDepth: *const fn(self: *anyopaque, value: u32) callconv(.winapi) HRESULT,
        get_ProhibitDtd: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_ProhibitDtd: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_ResolveExternals: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_ResolveExternals: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_ValidateOnParse: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_ValidateOnParse: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_ElementContentWhiteSpace: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_ElementContentWhiteSpace: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
    };
};
pub const IXmlNamedNodeMap = extern struct {
    vtable: *const VTable,
    pub fn getLength(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_Length(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn Item(self: *@This(), index: u32) core.HResult!*IXmlNode {
        var _r: *IXmlNode = undefined;
        const _c = self.vtable.Item(@ptrCast(self), index, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetNamedItem(self: *@This(), name: HSTRING) core.HResult!*IXmlNode {
        var _r: *IXmlNode = undefined;
        const _c = self.vtable.GetNamedItem(@ptrCast(self), name, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetNamedItem(self: *@This(), node: *IXmlNode) core.HResult!*IXmlNode {
        var _r: *IXmlNode = undefined;
        const _c = self.vtable.SetNamedItem(@ptrCast(self), node, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RemoveNamedItem(self: *@This(), name: HSTRING) core.HResult!*IXmlNode {
        var _r: *IXmlNode = undefined;
        const _c = self.vtable.RemoveNamedItem(@ptrCast(self), name, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetNamedItemNS(self: *@This(), namespaceUri: *IInspectable, name: HSTRING) core.HResult!*IXmlNode {
        var _r: *IXmlNode = undefined;
        const _c = self.vtable.GetNamedItemNS(@ptrCast(self), namespaceUri, name, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RemoveNamedItemNS(self: *@This(), namespaceUri: *IInspectable, name: HSTRING) core.HResult!*IXmlNode {
        var _r: *IXmlNode = undefined;
        const _c = self.vtable.RemoveNamedItemNS(@ptrCast(self), namespaceUri, name, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetNamedItemNS(self: *@This(), node: *IXmlNode) core.HResult!*IXmlNode {
        var _r: *IXmlNode = undefined;
        const _c = self.vtable.SetNamedItemNS(@ptrCast(self), node, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Data.Xml.Dom.IXmlNamedNodeMap";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b3a69eb0-aab0-4b82-a6fa-b1453f7c021b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Length: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        Item: *const fn(self: *anyopaque, index: u32, _r: **IXmlNode) callconv(.winapi) HRESULT,
        GetNamedItem: *const fn(self: *anyopaque, name: HSTRING, _r: **IXmlNode) callconv(.winapi) HRESULT,
        SetNamedItem: *const fn(self: *anyopaque, node: *IXmlNode, _r: **IXmlNode) callconv(.winapi) HRESULT,
        RemoveNamedItem: *const fn(self: *anyopaque, name: HSTRING, _r: **IXmlNode) callconv(.winapi) HRESULT,
        GetNamedItemNS: *const fn(self: *anyopaque, namespaceUri: *IInspectable, name: HSTRING, _r: **IXmlNode) callconv(.winapi) HRESULT,
        RemoveNamedItemNS: *const fn(self: *anyopaque, namespaceUri: *IInspectable, name: HSTRING, _r: **IXmlNode) callconv(.winapi) HRESULT,
        SetNamedItemNS: *const fn(self: *anyopaque, node: *IXmlNode, _r: **IXmlNode) callconv(.winapi) HRESULT,
    };
};
pub const IXmlNode = extern struct {
    vtable: *const VTable,
    pub fn getNodeValue(self: *@This()) core.HResult!*IInspectable {
        var _r: *IInspectable = undefined;
        const _c = self.vtable.get_NodeValue(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putNodeValue(self: *@This(), value: *IInspectable) core.HResult!void {
        const _c = self.vtable.put_NodeValue(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getNodeType(self: *@This()) core.HResult!NodeType {
        var _r: NodeType = undefined;
        const _c = self.vtable.get_NodeType(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getNodeName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_NodeName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getParentNode(self: *@This()) core.HResult!*IXmlNode {
        var _r: *IXmlNode = undefined;
        const _c = self.vtable.get_ParentNode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getChildNodes(self: *@This()) core.HResult!*XmlNodeList {
        var _r: *XmlNodeList = undefined;
        const _c = self.vtable.get_ChildNodes(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getFirstChild(self: *@This()) core.HResult!*IXmlNode {
        var _r: *IXmlNode = undefined;
        const _c = self.vtable.get_FirstChild(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getLastChild(self: *@This()) core.HResult!*IXmlNode {
        var _r: *IXmlNode = undefined;
        const _c = self.vtable.get_LastChild(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPreviousSibling(self: *@This()) core.HResult!*IXmlNode {
        var _r: *IXmlNode = undefined;
        const _c = self.vtable.get_PreviousSibling(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getNextSibling(self: *@This()) core.HResult!*IXmlNode {
        var _r: *IXmlNode = undefined;
        const _c = self.vtable.get_NextSibling(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAttributes(self: *@This()) core.HResult!*XmlNamedNodeMap {
        var _r: *XmlNamedNodeMap = undefined;
        const _c = self.vtable.get_Attributes(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn HasChildNodes(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.HasChildNodes(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getOwnerDocument(self: *@This()) core.HResult!*XmlDocument {
        var _r: *XmlDocument = undefined;
        const _c = self.vtable.get_OwnerDocument(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn InsertBefore(self: *@This(), newChild: *IXmlNode, referenceChild: *IXmlNode) core.HResult!*IXmlNode {
        var _r: *IXmlNode = undefined;
        const _c = self.vtable.InsertBefore(@ptrCast(self), newChild, referenceChild, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ReplaceChild(self: *@This(), newChild: *IXmlNode, referenceChild: *IXmlNode) core.HResult!*IXmlNode {
        var _r: *IXmlNode = undefined;
        const _c = self.vtable.ReplaceChild(@ptrCast(self), newChild, referenceChild, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RemoveChild(self: *@This(), childNode: *IXmlNode) core.HResult!*IXmlNode {
        var _r: *IXmlNode = undefined;
        const _c = self.vtable.RemoveChild(@ptrCast(self), childNode, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn AppendChild(self: *@This(), newChild: *IXmlNode) core.HResult!*IXmlNode {
        var _r: *IXmlNode = undefined;
        const _c = self.vtable.AppendChild(@ptrCast(self), newChild, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CloneNode(self: *@This(), deep: bool) core.HResult!*IXmlNode {
        var _r: *IXmlNode = undefined;
        const _c = self.vtable.CloneNode(@ptrCast(self), deep, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getNamespaceUri(self: *@This()) core.HResult!*IInspectable {
        var _r: *IInspectable = undefined;
        const _c = self.vtable.get_NamespaceUri(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getLocalName(self: *@This()) core.HResult!*IInspectable {
        var _r: *IInspectable = undefined;
        const _c = self.vtable.get_LocalName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPrefix(self: *@This()) core.HResult!*IInspectable {
        var _r: *IInspectable = undefined;
        const _c = self.vtable.get_Prefix(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn Normalize(self: *@This()) core.HResult!void {
        const _c = self.vtable.Normalize(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn putPrefix(self: *@This(), value: *IInspectable) core.HResult!void {
        const _c = self.vtable.put_Prefix(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Data.Xml.Dom.IXmlNode";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1c741d59-2122-47d5-a856-83f3d4214875";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_NodeValue: *const fn(self: *anyopaque, _r: **IInspectable) callconv(.winapi) HRESULT,
        put_NodeValue: *const fn(self: *anyopaque, value: *IInspectable) callconv(.winapi) HRESULT,
        get_NodeType: *const fn(self: *anyopaque, _r: *NodeType) callconv(.winapi) HRESULT,
        get_NodeName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_ParentNode: *const fn(self: *anyopaque, _r: **IXmlNode) callconv(.winapi) HRESULT,
        get_ChildNodes: *const fn(self: *anyopaque, _r: **XmlNodeList) callconv(.winapi) HRESULT,
        get_FirstChild: *const fn(self: *anyopaque, _r: **IXmlNode) callconv(.winapi) HRESULT,
        get_LastChild: *const fn(self: *anyopaque, _r: **IXmlNode) callconv(.winapi) HRESULT,
        get_PreviousSibling: *const fn(self: *anyopaque, _r: **IXmlNode) callconv(.winapi) HRESULT,
        get_NextSibling: *const fn(self: *anyopaque, _r: **IXmlNode) callconv(.winapi) HRESULT,
        get_Attributes: *const fn(self: *anyopaque, _r: **XmlNamedNodeMap) callconv(.winapi) HRESULT,
        HasChildNodes: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_OwnerDocument: *const fn(self: *anyopaque, _r: **XmlDocument) callconv(.winapi) HRESULT,
        InsertBefore: *const fn(self: *anyopaque, newChild: *IXmlNode, referenceChild: *IXmlNode, _r: **IXmlNode) callconv(.winapi) HRESULT,
        ReplaceChild: *const fn(self: *anyopaque, newChild: *IXmlNode, referenceChild: *IXmlNode, _r: **IXmlNode) callconv(.winapi) HRESULT,
        RemoveChild: *const fn(self: *anyopaque, childNode: *IXmlNode, _r: **IXmlNode) callconv(.winapi) HRESULT,
        AppendChild: *const fn(self: *anyopaque, newChild: *IXmlNode, _r: **IXmlNode) callconv(.winapi) HRESULT,
        CloneNode: *const fn(self: *anyopaque, deep: bool, _r: **IXmlNode) callconv(.winapi) HRESULT,
        get_NamespaceUri: *const fn(self: *anyopaque, _r: **IInspectable) callconv(.winapi) HRESULT,
        get_LocalName: *const fn(self: *anyopaque, _r: **IInspectable) callconv(.winapi) HRESULT,
        get_Prefix: *const fn(self: *anyopaque, _r: **IInspectable) callconv(.winapi) HRESULT,
        Normalize: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        put_Prefix: *const fn(self: *anyopaque, value: *IInspectable) callconv(.winapi) HRESULT,
    };
};
pub const IXmlNodeList = extern struct {
    vtable: *const VTable,
    pub fn getLength(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_Length(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn Item(self: *@This(), index: u32) core.HResult!*IXmlNode {
        var _r: *IXmlNode = undefined;
        const _c = self.vtable.Item(@ptrCast(self), index, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Data.Xml.Dom.IXmlNodeList";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "8c60ad77-83a4-4ec1-9c54-7ba429e13da6";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Length: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        Item: *const fn(self: *anyopaque, index: u32, _r: **IXmlNode) callconv(.winapi) HRESULT,
    };
};
pub const IXmlNodeSelector = extern struct {
    vtable: *const VTable,
    pub fn SelectSingleNode(self: *@This(), xpath: HSTRING) core.HResult!*IXmlNode {
        var _r: *IXmlNode = undefined;
        const _c = self.vtable.SelectSingleNode(@ptrCast(self), xpath, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SelectNodes(self: *@This(), xpath: HSTRING) core.HResult!*XmlNodeList {
        var _r: *XmlNodeList = undefined;
        const _c = self.vtable.SelectNodes(@ptrCast(self), xpath, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SelectSingleNodeNS(self: *@This(), xpath: HSTRING, namespaces: *IInspectable) core.HResult!*IXmlNode {
        var _r: *IXmlNode = undefined;
        const _c = self.vtable.SelectSingleNodeNS(@ptrCast(self), xpath, namespaces, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SelectNodesNS(self: *@This(), xpath: HSTRING, namespaces: *IInspectable) core.HResult!*XmlNodeList {
        var _r: *XmlNodeList = undefined;
        const _c = self.vtable.SelectNodesNS(@ptrCast(self), xpath, namespaces, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Data.Xml.Dom.IXmlNodeSelector";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "63dbba8b-d0db-4fe1-b745-f9433afdc25b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        SelectSingleNode: *const fn(self: *anyopaque, xpath: HSTRING, _r: **IXmlNode) callconv(.winapi) HRESULT,
        SelectNodes: *const fn(self: *anyopaque, xpath: HSTRING, _r: **XmlNodeList) callconv(.winapi) HRESULT,
        SelectSingleNodeNS: *const fn(self: *anyopaque, xpath: HSTRING, namespaces: *IInspectable, _r: **IXmlNode) callconv(.winapi) HRESULT,
        SelectNodesNS: *const fn(self: *anyopaque, xpath: HSTRING, namespaces: *IInspectable, _r: **XmlNodeList) callconv(.winapi) HRESULT,
    };
};
pub const IXmlNodeSerializer = extern struct {
    vtable: *const VTable,
    pub fn GetXml(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.GetXml(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getInnerText(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_InnerText(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putInnerText(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_InnerText(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Data.Xml.Dom.IXmlNodeSerializer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5cc5b382-e6dd-4991-abef-06d8d2e7bd0c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetXml: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_InnerText: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_InnerText: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IXmlProcessingInstruction = extern struct {
    vtable: *const VTable,
    pub fn getTarget(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Target(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getData(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Data(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putData(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_Data(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Data.Xml.Dom.IXmlProcessingInstruction";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2707fd1e-1e92-4ece-b6f4-26f069078ddc";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Target: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Data: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_Data: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IXmlText = extern struct {
    vtable: *const VTable,
    pub fn SplitText(self: *@This(), offset: u32) core.HResult!*IXmlText {
        var _r: *IXmlText = undefined;
        const _c = self.vtable.SplitText(@ptrCast(self), offset, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Data.Xml.Dom.IXmlText";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f931a4cb-308d-4760-a1d5-43b67450ac7e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        SplitText: *const fn(self: *anyopaque, offset: u32, _r: **IXmlText) callconv(.winapi) HRESULT,
    };
};
pub const NodeType = enum(i32) {
    Invalid = 0,
    ElementNode = 1,
    AttributeNode = 2,
    TextNode = 3,
    DataSectionNode = 4,
    EntityReferenceNode = 5,
    EntityNode = 6,
    ProcessingInstructionNode = 7,
    CommentNode = 8,
    DocumentNode = 9,
    DocumentTypeNode = 10,
    DocumentFragmentNode = 11,
    NotationNode = 12,
};
pub const XmlAttribute = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getName(self: *@This()) core.HResult!HSTRING {
        const this: *IXmlAttribute = @ptrCast(self);
        return try this.getName();
    }
    pub fn getSpecified(self: *@This()) core.HResult!bool {
        const this: *IXmlAttribute = @ptrCast(self);
        return try this.getSpecified();
    }
    pub fn getValue(self: *@This()) core.HResult!HSTRING {
        const this: *IXmlAttribute = @ptrCast(self);
        return try this.getValue();
    }
    pub fn putValue(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IXmlAttribute = @ptrCast(self);
        return try this.putValue(value);
    }
    pub fn getNodeValue(self: *@This()) core.HResult!*IInspectable {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getNodeValue();
    }
    pub fn putNodeValue(self: *@This(), value: *IInspectable) core.HResult!void {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putNodeValue(value);
    }
    pub fn getNodeType(self: *@This()) core.HResult!NodeType {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getNodeType();
    }
    pub fn getNodeName(self: *@This()) core.HResult!HSTRING {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getNodeName();
    }
    pub fn getParentNode(self: *@This()) core.HResult!*IXmlNode {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getParentNode();
    }
    pub fn getChildNodes(self: *@This()) core.HResult!*XmlNodeList {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getChildNodes();
    }
    pub fn getFirstChild(self: *@This()) core.HResult!*IXmlNode {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getFirstChild();
    }
    pub fn getLastChild(self: *@This()) core.HResult!*IXmlNode {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getLastChild();
    }
    pub fn getPreviousSibling(self: *@This()) core.HResult!*IXmlNode {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getPreviousSibling();
    }
    pub fn getNextSibling(self: *@This()) core.HResult!*IXmlNode {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getNextSibling();
    }
    pub fn getAttributes(self: *@This()) core.HResult!*XmlNamedNodeMap {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getAttributes();
    }
    pub fn HasChildNodes(self: *@This()) core.HResult!bool {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.HasChildNodes();
    }
    pub fn getOwnerDocument(self: *@This()) core.HResult!*XmlDocument {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getOwnerDocument();
    }
    pub fn InsertBefore(self: *@This(), newChild: *IXmlNode, referenceChild: *IXmlNode) core.HResult!*IXmlNode {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.InsertBefore(newChild, referenceChild);
    }
    pub fn ReplaceChild(self: *@This(), newChild: *IXmlNode, referenceChild: *IXmlNode) core.HResult!*IXmlNode {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ReplaceChild(newChild, referenceChild);
    }
    pub fn RemoveChild(self: *@This(), childNode: *IXmlNode) core.HResult!*IXmlNode {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.RemoveChild(childNode);
    }
    pub fn AppendChild(self: *@This(), newChild: *IXmlNode) core.HResult!*IXmlNode {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.AppendChild(newChild);
    }
    pub fn CloneNode(self: *@This(), deep: bool) core.HResult!*IXmlNode {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.CloneNode(deep);
    }
    pub fn getNamespaceUri(self: *@This()) core.HResult!*IInspectable {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getNamespaceUri();
    }
    pub fn getLocalName(self: *@This()) core.HResult!*IInspectable {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getLocalName();
    }
    pub fn getPrefix(self: *@This()) core.HResult!*IInspectable {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getPrefix();
    }
    pub fn Normalize(self: *@This()) core.HResult!void {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Normalize();
    }
    pub fn putPrefix(self: *@This(), value: *IInspectable) core.HResult!void {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putPrefix(value);
    }
    pub fn GetXml(self: *@This()) core.HResult!HSTRING {
        var this: ?*IXmlNodeSerializer = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNodeSerializer.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetXml();
    }
    pub fn getInnerText(self: *@This()) core.HResult!HSTRING {
        var this: ?*IXmlNodeSerializer = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNodeSerializer.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getInnerText();
    }
    pub fn putInnerText(self: *@This(), value: HSTRING) core.HResult!void {
        var this: ?*IXmlNodeSerializer = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNodeSerializer.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putInnerText(value);
    }
    pub fn SelectSingleNode(self: *@This(), xpath: HSTRING) core.HResult!*IXmlNode {
        var this: ?*IXmlNodeSelector = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNodeSelector.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.SelectSingleNode(xpath);
    }
    pub fn SelectNodes(self: *@This(), xpath: HSTRING) core.HResult!*XmlNodeList {
        var this: ?*IXmlNodeSelector = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNodeSelector.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.SelectNodes(xpath);
    }
    pub fn SelectSingleNodeNS(self: *@This(), xpath: HSTRING, namespaces: *IInspectable) core.HResult!*IXmlNode {
        var this: ?*IXmlNodeSelector = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNodeSelector.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.SelectSingleNodeNS(xpath, namespaces);
    }
    pub fn SelectNodesNS(self: *@This(), xpath: HSTRING, namespaces: *IInspectable) core.HResult!*XmlNodeList {
        var this: ?*IXmlNodeSelector = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNodeSelector.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.SelectNodesNS(xpath, namespaces);
    }
    pub const NAME: []const u8 = "Windows.Data.Xml.Dom.XmlAttribute";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IXmlAttribute.GUID;
    pub const IID: Guid = IXmlAttribute.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IXmlAttribute.SIGNATURE);
};
pub const XmlCDataSection = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn SplitText(self: *@This(), offset: u32) core.HResult!*IXmlText {
        var this: ?*IXmlText = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlText.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.SplitText(offset);
    }
    pub fn getData(self: *@This()) core.HResult!HSTRING {
        var this: ?*IXmlCharacterData = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlCharacterData.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getData();
    }
    pub fn putData(self: *@This(), value: HSTRING) core.HResult!void {
        var this: ?*IXmlCharacterData = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlCharacterData.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putData(value);
    }
    pub fn getLength(self: *@This()) core.HResult!u32 {
        var this: ?*IXmlCharacterData = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlCharacterData.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getLength();
    }
    pub fn SubstringData(self: *@This(), offset: u32, count: u32) core.HResult!HSTRING {
        var this: ?*IXmlCharacterData = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlCharacterData.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.SubstringData(offset, count);
    }
    pub fn AppendData(self: *@This(), data: HSTRING) core.HResult!void {
        var this: ?*IXmlCharacterData = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlCharacterData.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.AppendData(data);
    }
    pub fn InsertData(self: *@This(), offset: u32, data: HSTRING) core.HResult!void {
        var this: ?*IXmlCharacterData = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlCharacterData.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.InsertData(offset, data);
    }
    pub fn DeleteData(self: *@This(), offset: u32, count: u32) core.HResult!void {
        var this: ?*IXmlCharacterData = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlCharacterData.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.DeleteData(offset, count);
    }
    pub fn ReplaceData(self: *@This(), offset: u32, count: u32, data: HSTRING) core.HResult!void {
        var this: ?*IXmlCharacterData = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlCharacterData.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ReplaceData(offset, count, data);
    }
    pub fn getNodeValue(self: *@This()) core.HResult!*IInspectable {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getNodeValue();
    }
    pub fn putNodeValue(self: *@This(), value: *IInspectable) core.HResult!void {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putNodeValue(value);
    }
    pub fn getNodeType(self: *@This()) core.HResult!NodeType {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getNodeType();
    }
    pub fn getNodeName(self: *@This()) core.HResult!HSTRING {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getNodeName();
    }
    pub fn getParentNode(self: *@This()) core.HResult!*IXmlNode {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getParentNode();
    }
    pub fn getChildNodes(self: *@This()) core.HResult!*XmlNodeList {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getChildNodes();
    }
    pub fn getFirstChild(self: *@This()) core.HResult!*IXmlNode {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getFirstChild();
    }
    pub fn getLastChild(self: *@This()) core.HResult!*IXmlNode {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getLastChild();
    }
    pub fn getPreviousSibling(self: *@This()) core.HResult!*IXmlNode {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getPreviousSibling();
    }
    pub fn getNextSibling(self: *@This()) core.HResult!*IXmlNode {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getNextSibling();
    }
    pub fn getAttributes(self: *@This()) core.HResult!*XmlNamedNodeMap {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getAttributes();
    }
    pub fn HasChildNodes(self: *@This()) core.HResult!bool {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.HasChildNodes();
    }
    pub fn getOwnerDocument(self: *@This()) core.HResult!*XmlDocument {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getOwnerDocument();
    }
    pub fn InsertBefore(self: *@This(), newChild: *IXmlNode, referenceChild: *IXmlNode) core.HResult!*IXmlNode {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.InsertBefore(newChild, referenceChild);
    }
    pub fn ReplaceChild(self: *@This(), newChild: *IXmlNode, referenceChild: *IXmlNode) core.HResult!*IXmlNode {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ReplaceChild(newChild, referenceChild);
    }
    pub fn RemoveChild(self: *@This(), childNode: *IXmlNode) core.HResult!*IXmlNode {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.RemoveChild(childNode);
    }
    pub fn AppendChild(self: *@This(), newChild: *IXmlNode) core.HResult!*IXmlNode {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.AppendChild(newChild);
    }
    pub fn CloneNode(self: *@This(), deep: bool) core.HResult!*IXmlNode {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.CloneNode(deep);
    }
    pub fn getNamespaceUri(self: *@This()) core.HResult!*IInspectable {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getNamespaceUri();
    }
    pub fn getLocalName(self: *@This()) core.HResult!*IInspectable {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getLocalName();
    }
    pub fn getPrefix(self: *@This()) core.HResult!*IInspectable {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getPrefix();
    }
    pub fn Normalize(self: *@This()) core.HResult!void {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Normalize();
    }
    pub fn putPrefix(self: *@This(), value: *IInspectable) core.HResult!void {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putPrefix(value);
    }
    pub fn GetXml(self: *@This()) core.HResult!HSTRING {
        var this: ?*IXmlNodeSerializer = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNodeSerializer.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetXml();
    }
    pub fn getInnerText(self: *@This()) core.HResult!HSTRING {
        var this: ?*IXmlNodeSerializer = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNodeSerializer.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getInnerText();
    }
    pub fn putInnerText(self: *@This(), value: HSTRING) core.HResult!void {
        var this: ?*IXmlNodeSerializer = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNodeSerializer.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putInnerText(value);
    }
    pub fn SelectSingleNode(self: *@This(), xpath: HSTRING) core.HResult!*IXmlNode {
        var this: ?*IXmlNodeSelector = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNodeSelector.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.SelectSingleNode(xpath);
    }
    pub fn SelectNodes(self: *@This(), xpath: HSTRING) core.HResult!*XmlNodeList {
        var this: ?*IXmlNodeSelector = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNodeSelector.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.SelectNodes(xpath);
    }
    pub fn SelectSingleNodeNS(self: *@This(), xpath: HSTRING, namespaces: *IInspectable) core.HResult!*IXmlNode {
        var this: ?*IXmlNodeSelector = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNodeSelector.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.SelectSingleNodeNS(xpath, namespaces);
    }
    pub fn SelectNodesNS(self: *@This(), xpath: HSTRING, namespaces: *IInspectable) core.HResult!*XmlNodeList {
        var this: ?*IXmlNodeSelector = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNodeSelector.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.SelectNodesNS(xpath, namespaces);
    }
    pub const NAME: []const u8 = "Windows.Data.Xml.Dom.XmlCDataSection";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IXmlCDataSection.GUID;
    pub const IID: Guid = IXmlCDataSection.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IXmlCDataSection.SIGNATURE);
};
pub const XmlComment = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getData(self: *@This()) core.HResult!HSTRING {
        var this: ?*IXmlCharacterData = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlCharacterData.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getData();
    }
    pub fn putData(self: *@This(), value: HSTRING) core.HResult!void {
        var this: ?*IXmlCharacterData = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlCharacterData.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putData(value);
    }
    pub fn getLength(self: *@This()) core.HResult!u32 {
        var this: ?*IXmlCharacterData = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlCharacterData.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getLength();
    }
    pub fn SubstringData(self: *@This(), offset: u32, count: u32) core.HResult!HSTRING {
        var this: ?*IXmlCharacterData = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlCharacterData.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.SubstringData(offset, count);
    }
    pub fn AppendData(self: *@This(), data: HSTRING) core.HResult!void {
        var this: ?*IXmlCharacterData = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlCharacterData.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.AppendData(data);
    }
    pub fn InsertData(self: *@This(), offset: u32, data: HSTRING) core.HResult!void {
        var this: ?*IXmlCharacterData = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlCharacterData.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.InsertData(offset, data);
    }
    pub fn DeleteData(self: *@This(), offset: u32, count: u32) core.HResult!void {
        var this: ?*IXmlCharacterData = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlCharacterData.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.DeleteData(offset, count);
    }
    pub fn ReplaceData(self: *@This(), offset: u32, count: u32, data: HSTRING) core.HResult!void {
        var this: ?*IXmlCharacterData = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlCharacterData.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ReplaceData(offset, count, data);
    }
    pub fn getNodeValue(self: *@This()) core.HResult!*IInspectable {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getNodeValue();
    }
    pub fn putNodeValue(self: *@This(), value: *IInspectable) core.HResult!void {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putNodeValue(value);
    }
    pub fn getNodeType(self: *@This()) core.HResult!NodeType {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getNodeType();
    }
    pub fn getNodeName(self: *@This()) core.HResult!HSTRING {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getNodeName();
    }
    pub fn getParentNode(self: *@This()) core.HResult!*IXmlNode {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getParentNode();
    }
    pub fn getChildNodes(self: *@This()) core.HResult!*XmlNodeList {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getChildNodes();
    }
    pub fn getFirstChild(self: *@This()) core.HResult!*IXmlNode {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getFirstChild();
    }
    pub fn getLastChild(self: *@This()) core.HResult!*IXmlNode {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getLastChild();
    }
    pub fn getPreviousSibling(self: *@This()) core.HResult!*IXmlNode {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getPreviousSibling();
    }
    pub fn getNextSibling(self: *@This()) core.HResult!*IXmlNode {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getNextSibling();
    }
    pub fn getAttributes(self: *@This()) core.HResult!*XmlNamedNodeMap {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getAttributes();
    }
    pub fn HasChildNodes(self: *@This()) core.HResult!bool {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.HasChildNodes();
    }
    pub fn getOwnerDocument(self: *@This()) core.HResult!*XmlDocument {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getOwnerDocument();
    }
    pub fn InsertBefore(self: *@This(), newChild: *IXmlNode, referenceChild: *IXmlNode) core.HResult!*IXmlNode {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.InsertBefore(newChild, referenceChild);
    }
    pub fn ReplaceChild(self: *@This(), newChild: *IXmlNode, referenceChild: *IXmlNode) core.HResult!*IXmlNode {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ReplaceChild(newChild, referenceChild);
    }
    pub fn RemoveChild(self: *@This(), childNode: *IXmlNode) core.HResult!*IXmlNode {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.RemoveChild(childNode);
    }
    pub fn AppendChild(self: *@This(), newChild: *IXmlNode) core.HResult!*IXmlNode {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.AppendChild(newChild);
    }
    pub fn CloneNode(self: *@This(), deep: bool) core.HResult!*IXmlNode {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.CloneNode(deep);
    }
    pub fn getNamespaceUri(self: *@This()) core.HResult!*IInspectable {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getNamespaceUri();
    }
    pub fn getLocalName(self: *@This()) core.HResult!*IInspectable {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getLocalName();
    }
    pub fn getPrefix(self: *@This()) core.HResult!*IInspectable {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getPrefix();
    }
    pub fn Normalize(self: *@This()) core.HResult!void {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Normalize();
    }
    pub fn putPrefix(self: *@This(), value: *IInspectable) core.HResult!void {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putPrefix(value);
    }
    pub fn GetXml(self: *@This()) core.HResult!HSTRING {
        var this: ?*IXmlNodeSerializer = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNodeSerializer.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetXml();
    }
    pub fn getInnerText(self: *@This()) core.HResult!HSTRING {
        var this: ?*IXmlNodeSerializer = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNodeSerializer.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getInnerText();
    }
    pub fn putInnerText(self: *@This(), value: HSTRING) core.HResult!void {
        var this: ?*IXmlNodeSerializer = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNodeSerializer.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putInnerText(value);
    }
    pub fn SelectSingleNode(self: *@This(), xpath: HSTRING) core.HResult!*IXmlNode {
        var this: ?*IXmlNodeSelector = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNodeSelector.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.SelectSingleNode(xpath);
    }
    pub fn SelectNodes(self: *@This(), xpath: HSTRING) core.HResult!*XmlNodeList {
        var this: ?*IXmlNodeSelector = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNodeSelector.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.SelectNodes(xpath);
    }
    pub fn SelectSingleNodeNS(self: *@This(), xpath: HSTRING, namespaces: *IInspectable) core.HResult!*IXmlNode {
        var this: ?*IXmlNodeSelector = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNodeSelector.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.SelectSingleNodeNS(xpath, namespaces);
    }
    pub fn SelectNodesNS(self: *@This(), xpath: HSTRING, namespaces: *IInspectable) core.HResult!*XmlNodeList {
        var this: ?*IXmlNodeSelector = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNodeSelector.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.SelectNodesNS(xpath, namespaces);
    }
    pub const NAME: []const u8 = "Windows.Data.Xml.Dom.XmlComment";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IXmlComment.GUID;
    pub const IID: Guid = IXmlComment.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IXmlComment.SIGNATURE);
};
pub const XmlDocument = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getDoctype(self: *@This()) core.HResult!*XmlDocumentType {
        const this: *IXmlDocument = @ptrCast(self);
        return try this.getDoctype();
    }
    pub fn getImplementation(self: *@This()) core.HResult!*XmlDomImplementation {
        const this: *IXmlDocument = @ptrCast(self);
        return try this.getImplementation();
    }
    pub fn getDocumentElement(self: *@This()) core.HResult!*XmlElement {
        const this: *IXmlDocument = @ptrCast(self);
        return try this.getDocumentElement();
    }
    pub fn CreateElement(self: *@This(), tagName: HSTRING) core.HResult!*XmlElement {
        const this: *IXmlDocument = @ptrCast(self);
        return try this.CreateElement(tagName);
    }
    pub fn CreateDocumentFragment(self: *@This()) core.HResult!*XmlDocumentFragment {
        const this: *IXmlDocument = @ptrCast(self);
        return try this.CreateDocumentFragment();
    }
    pub fn CreateTextNode(self: *@This(), data: HSTRING) core.HResult!*XmlText {
        const this: *IXmlDocument = @ptrCast(self);
        return try this.CreateTextNode(data);
    }
    pub fn CreateComment(self: *@This(), data: HSTRING) core.HResult!*XmlComment {
        const this: *IXmlDocument = @ptrCast(self);
        return try this.CreateComment(data);
    }
    pub fn CreateProcessingInstruction(self: *@This(), target: HSTRING, data: HSTRING) core.HResult!*XmlProcessingInstruction {
        const this: *IXmlDocument = @ptrCast(self);
        return try this.CreateProcessingInstruction(target, data);
    }
    pub fn CreateAttribute(self: *@This(), name: HSTRING) core.HResult!*XmlAttribute {
        const this: *IXmlDocument = @ptrCast(self);
        return try this.CreateAttribute(name);
    }
    pub fn CreateEntityReference(self: *@This(), name: HSTRING) core.HResult!*XmlEntityReference {
        const this: *IXmlDocument = @ptrCast(self);
        return try this.CreateEntityReference(name);
    }
    pub fn GetElementsByTagName(self: *@This(), tagName: HSTRING) core.HResult!*XmlNodeList {
        const this: *IXmlDocument = @ptrCast(self);
        return try this.GetElementsByTagName(tagName);
    }
    pub fn CreateCDataSection(self: *@This(), data: HSTRING) core.HResult!*XmlCDataSection {
        const this: *IXmlDocument = @ptrCast(self);
        return try this.CreateCDataSection(data);
    }
    pub fn getDocumentUri(self: *@This()) core.HResult!HSTRING {
        const this: *IXmlDocument = @ptrCast(self);
        return try this.getDocumentUri();
    }
    pub fn CreateAttributeNS(self: *@This(), namespaceUri: *IInspectable, qualifiedName: HSTRING) core.HResult!*XmlAttribute {
        const this: *IXmlDocument = @ptrCast(self);
        return try this.CreateAttributeNS(namespaceUri, qualifiedName);
    }
    pub fn CreateElementNS(self: *@This(), namespaceUri: *IInspectable, qualifiedName: HSTRING) core.HResult!*XmlElement {
        const this: *IXmlDocument = @ptrCast(self);
        return try this.CreateElementNS(namespaceUri, qualifiedName);
    }
    pub fn GetElementById(self: *@This(), elementId: HSTRING) core.HResult!*XmlElement {
        const this: *IXmlDocument = @ptrCast(self);
        return try this.GetElementById(elementId);
    }
    pub fn ImportNode(self: *@This(), node: *IXmlNode, deep: bool) core.HResult!*IXmlNode {
        const this: *IXmlDocument = @ptrCast(self);
        return try this.ImportNode(node, deep);
    }
    pub fn getNodeValue(self: *@This()) core.HResult!*IInspectable {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getNodeValue();
    }
    pub fn putNodeValue(self: *@This(), value: *IInspectable) core.HResult!void {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putNodeValue(value);
    }
    pub fn getNodeType(self: *@This()) core.HResult!NodeType {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getNodeType();
    }
    pub fn getNodeName(self: *@This()) core.HResult!HSTRING {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getNodeName();
    }
    pub fn getParentNode(self: *@This()) core.HResult!*IXmlNode {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getParentNode();
    }
    pub fn getChildNodes(self: *@This()) core.HResult!*XmlNodeList {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getChildNodes();
    }
    pub fn getFirstChild(self: *@This()) core.HResult!*IXmlNode {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getFirstChild();
    }
    pub fn getLastChild(self: *@This()) core.HResult!*IXmlNode {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getLastChild();
    }
    pub fn getPreviousSibling(self: *@This()) core.HResult!*IXmlNode {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getPreviousSibling();
    }
    pub fn getNextSibling(self: *@This()) core.HResult!*IXmlNode {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getNextSibling();
    }
    pub fn getAttributes(self: *@This()) core.HResult!*XmlNamedNodeMap {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getAttributes();
    }
    pub fn HasChildNodes(self: *@This()) core.HResult!bool {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.HasChildNodes();
    }
    pub fn getOwnerDocument(self: *@This()) core.HResult!*XmlDocument {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getOwnerDocument();
    }
    pub fn InsertBefore(self: *@This(), newChild: *IXmlNode, referenceChild: *IXmlNode) core.HResult!*IXmlNode {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.InsertBefore(newChild, referenceChild);
    }
    pub fn ReplaceChild(self: *@This(), newChild: *IXmlNode, referenceChild: *IXmlNode) core.HResult!*IXmlNode {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ReplaceChild(newChild, referenceChild);
    }
    pub fn RemoveChild(self: *@This(), childNode: *IXmlNode) core.HResult!*IXmlNode {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.RemoveChild(childNode);
    }
    pub fn AppendChild(self: *@This(), newChild: *IXmlNode) core.HResult!*IXmlNode {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.AppendChild(newChild);
    }
    pub fn CloneNode(self: *@This(), deep: bool) core.HResult!*IXmlNode {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.CloneNode(deep);
    }
    pub fn getNamespaceUri(self: *@This()) core.HResult!*IInspectable {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getNamespaceUri();
    }
    pub fn getLocalName(self: *@This()) core.HResult!*IInspectable {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getLocalName();
    }
    pub fn getPrefix(self: *@This()) core.HResult!*IInspectable {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getPrefix();
    }
    pub fn Normalize(self: *@This()) core.HResult!void {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Normalize();
    }
    pub fn putPrefix(self: *@This(), value: *IInspectable) core.HResult!void {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putPrefix(value);
    }
    pub fn GetXml(self: *@This()) core.HResult!HSTRING {
        var this: ?*IXmlNodeSerializer = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNodeSerializer.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetXml();
    }
    pub fn getInnerText(self: *@This()) core.HResult!HSTRING {
        var this: ?*IXmlNodeSerializer = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNodeSerializer.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getInnerText();
    }
    pub fn putInnerText(self: *@This(), value: HSTRING) core.HResult!void {
        var this: ?*IXmlNodeSerializer = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNodeSerializer.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putInnerText(value);
    }
    pub fn SelectSingleNode(self: *@This(), xpath: HSTRING) core.HResult!*IXmlNode {
        var this: ?*IXmlNodeSelector = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNodeSelector.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.SelectSingleNode(xpath);
    }
    pub fn SelectNodes(self: *@This(), xpath: HSTRING) core.HResult!*XmlNodeList {
        var this: ?*IXmlNodeSelector = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNodeSelector.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.SelectNodes(xpath);
    }
    pub fn SelectSingleNodeNS(self: *@This(), xpath: HSTRING, namespaces: *IInspectable) core.HResult!*IXmlNode {
        var this: ?*IXmlNodeSelector = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNodeSelector.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.SelectSingleNodeNS(xpath, namespaces);
    }
    pub fn SelectNodesNS(self: *@This(), xpath: HSTRING, namespaces: *IInspectable) core.HResult!*XmlNodeList {
        var this: ?*IXmlNodeSelector = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNodeSelector.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.SelectNodesNS(xpath, namespaces);
    }
    pub fn LoadXml(self: *@This(), xml: HSTRING) core.HResult!void {
        var this: ?*IXmlDocumentIO = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlDocumentIO.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.LoadXml(xml);
    }
    pub fn LoadXmlWithLoadSettings(self: *@This(), xml: HSTRING, loadSettings: *XmlLoadSettings) core.HResult!void {
        var this: ?*IXmlDocumentIO = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlDocumentIO.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.LoadXmlWithLoadSettings(xml, loadSettings);
    }
    pub fn SaveToFileAsync(self: *@This(), file: *IStorageFile) core.HResult!*IAsyncAction {
        var this: ?*IXmlDocumentIO = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlDocumentIO.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.SaveToFileAsync(file);
    }
    pub fn LoadXmlFromBuffer(self: *@This(), buffer: *IBuffer) core.HResult!void {
        var this: ?*IXmlDocumentIO2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlDocumentIO2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.LoadXmlFromBuffer(buffer);
    }
    pub fn LoadXmlFromBufferWithLoadSettings(self: *@This(), buffer: *IBuffer, loadSettings: *XmlLoadSettings) core.HResult!void {
        var this: ?*IXmlDocumentIO2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlDocumentIO2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.LoadXmlFromBufferWithLoadSettings(buffer, loadSettings);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IXmlDocument.IID)));
    }
    pub fn LoadFromUriAsync(uri: *Uri) core.HResult!*IAsyncOperation(XmlDocument) {
        const factory = @This().IXmlDocumentStaticsCache.get();
        return try factory.LoadFromUriAsync(uri);
    }
    pub fn LoadFromUriAsyncWithLoadSettings(uri: *Uri, loadSettings: *XmlLoadSettings) core.HResult!*IAsyncOperation(XmlDocument) {
        const factory = @This().IXmlDocumentStaticsCache.get();
        return try factory.LoadFromUriAsyncWithLoadSettings(uri, loadSettings);
    }
    pub fn LoadFromFileAsync(file: *IStorageFile) core.HResult!*IAsyncOperation(XmlDocument) {
        const factory = @This().IXmlDocumentStaticsCache.get();
        return try factory.LoadFromFileAsync(file);
    }
    pub fn LoadFromFileAsyncWithLoadSettings(file: *IStorageFile, loadSettings: *XmlLoadSettings) core.HResult!*IAsyncOperation(XmlDocument) {
        const factory = @This().IXmlDocumentStaticsCache.get();
        return try factory.LoadFromFileAsyncWithLoadSettings(file, loadSettings);
    }
    pub const NAME: []const u8 = "Windows.Data.Xml.Dom.XmlDocument";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IXmlDocument.GUID;
    pub const IID: Guid = IXmlDocument.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IXmlDocument.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _IXmlDocumentStaticsCache: FactoryCache(IXmlDocumentStatics, RUNTIME_NAME) = .{};
};
pub const XmlDocumentFragment = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getNodeValue(self: *@This()) core.HResult!*IInspectable {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getNodeValue();
    }
    pub fn putNodeValue(self: *@This(), value: *IInspectable) core.HResult!void {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putNodeValue(value);
    }
    pub fn getNodeType(self: *@This()) core.HResult!NodeType {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getNodeType();
    }
    pub fn getNodeName(self: *@This()) core.HResult!HSTRING {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getNodeName();
    }
    pub fn getParentNode(self: *@This()) core.HResult!*IXmlNode {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getParentNode();
    }
    pub fn getChildNodes(self: *@This()) core.HResult!*XmlNodeList {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getChildNodes();
    }
    pub fn getFirstChild(self: *@This()) core.HResult!*IXmlNode {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getFirstChild();
    }
    pub fn getLastChild(self: *@This()) core.HResult!*IXmlNode {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getLastChild();
    }
    pub fn getPreviousSibling(self: *@This()) core.HResult!*IXmlNode {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getPreviousSibling();
    }
    pub fn getNextSibling(self: *@This()) core.HResult!*IXmlNode {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getNextSibling();
    }
    pub fn getAttributes(self: *@This()) core.HResult!*XmlNamedNodeMap {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getAttributes();
    }
    pub fn HasChildNodes(self: *@This()) core.HResult!bool {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.HasChildNodes();
    }
    pub fn getOwnerDocument(self: *@This()) core.HResult!*XmlDocument {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getOwnerDocument();
    }
    pub fn InsertBefore(self: *@This(), newChild: *IXmlNode, referenceChild: *IXmlNode) core.HResult!*IXmlNode {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.InsertBefore(newChild, referenceChild);
    }
    pub fn ReplaceChild(self: *@This(), newChild: *IXmlNode, referenceChild: *IXmlNode) core.HResult!*IXmlNode {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ReplaceChild(newChild, referenceChild);
    }
    pub fn RemoveChild(self: *@This(), childNode: *IXmlNode) core.HResult!*IXmlNode {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.RemoveChild(childNode);
    }
    pub fn AppendChild(self: *@This(), newChild: *IXmlNode) core.HResult!*IXmlNode {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.AppendChild(newChild);
    }
    pub fn CloneNode(self: *@This(), deep: bool) core.HResult!*IXmlNode {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.CloneNode(deep);
    }
    pub fn getNamespaceUri(self: *@This()) core.HResult!*IInspectable {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getNamespaceUri();
    }
    pub fn getLocalName(self: *@This()) core.HResult!*IInspectable {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getLocalName();
    }
    pub fn getPrefix(self: *@This()) core.HResult!*IInspectable {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getPrefix();
    }
    pub fn Normalize(self: *@This()) core.HResult!void {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Normalize();
    }
    pub fn putPrefix(self: *@This(), value: *IInspectable) core.HResult!void {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putPrefix(value);
    }
    pub fn GetXml(self: *@This()) core.HResult!HSTRING {
        var this: ?*IXmlNodeSerializer = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNodeSerializer.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetXml();
    }
    pub fn getInnerText(self: *@This()) core.HResult!HSTRING {
        var this: ?*IXmlNodeSerializer = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNodeSerializer.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getInnerText();
    }
    pub fn putInnerText(self: *@This(), value: HSTRING) core.HResult!void {
        var this: ?*IXmlNodeSerializer = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNodeSerializer.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putInnerText(value);
    }
    pub fn SelectSingleNode(self: *@This(), xpath: HSTRING) core.HResult!*IXmlNode {
        var this: ?*IXmlNodeSelector = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNodeSelector.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.SelectSingleNode(xpath);
    }
    pub fn SelectNodes(self: *@This(), xpath: HSTRING) core.HResult!*XmlNodeList {
        var this: ?*IXmlNodeSelector = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNodeSelector.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.SelectNodes(xpath);
    }
    pub fn SelectSingleNodeNS(self: *@This(), xpath: HSTRING, namespaces: *IInspectable) core.HResult!*IXmlNode {
        var this: ?*IXmlNodeSelector = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNodeSelector.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.SelectSingleNodeNS(xpath, namespaces);
    }
    pub fn SelectNodesNS(self: *@This(), xpath: HSTRING, namespaces: *IInspectable) core.HResult!*XmlNodeList {
        var this: ?*IXmlNodeSelector = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNodeSelector.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.SelectNodesNS(xpath, namespaces);
    }
    pub const NAME: []const u8 = "Windows.Data.Xml.Dom.XmlDocumentFragment";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IXmlDocumentFragment.GUID;
    pub const IID: Guid = IXmlDocumentFragment.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IXmlDocumentFragment.SIGNATURE);
};
pub const XmlDocumentType = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getName(self: *@This()) core.HResult!HSTRING {
        const this: *IXmlDocumentType = @ptrCast(self);
        return try this.getName();
    }
    pub fn getEntities(self: *@This()) core.HResult!*XmlNamedNodeMap {
        const this: *IXmlDocumentType = @ptrCast(self);
        return try this.getEntities();
    }
    pub fn getNotations(self: *@This()) core.HResult!*XmlNamedNodeMap {
        const this: *IXmlDocumentType = @ptrCast(self);
        return try this.getNotations();
    }
    pub fn getNodeValue(self: *@This()) core.HResult!*IInspectable {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getNodeValue();
    }
    pub fn putNodeValue(self: *@This(), value: *IInspectable) core.HResult!void {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putNodeValue(value);
    }
    pub fn getNodeType(self: *@This()) core.HResult!NodeType {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getNodeType();
    }
    pub fn getNodeName(self: *@This()) core.HResult!HSTRING {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getNodeName();
    }
    pub fn getParentNode(self: *@This()) core.HResult!*IXmlNode {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getParentNode();
    }
    pub fn getChildNodes(self: *@This()) core.HResult!*XmlNodeList {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getChildNodes();
    }
    pub fn getFirstChild(self: *@This()) core.HResult!*IXmlNode {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getFirstChild();
    }
    pub fn getLastChild(self: *@This()) core.HResult!*IXmlNode {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getLastChild();
    }
    pub fn getPreviousSibling(self: *@This()) core.HResult!*IXmlNode {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getPreviousSibling();
    }
    pub fn getNextSibling(self: *@This()) core.HResult!*IXmlNode {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getNextSibling();
    }
    pub fn getAttributes(self: *@This()) core.HResult!*XmlNamedNodeMap {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getAttributes();
    }
    pub fn HasChildNodes(self: *@This()) core.HResult!bool {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.HasChildNodes();
    }
    pub fn getOwnerDocument(self: *@This()) core.HResult!*XmlDocument {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getOwnerDocument();
    }
    pub fn InsertBefore(self: *@This(), newChild: *IXmlNode, referenceChild: *IXmlNode) core.HResult!*IXmlNode {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.InsertBefore(newChild, referenceChild);
    }
    pub fn ReplaceChild(self: *@This(), newChild: *IXmlNode, referenceChild: *IXmlNode) core.HResult!*IXmlNode {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ReplaceChild(newChild, referenceChild);
    }
    pub fn RemoveChild(self: *@This(), childNode: *IXmlNode) core.HResult!*IXmlNode {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.RemoveChild(childNode);
    }
    pub fn AppendChild(self: *@This(), newChild: *IXmlNode) core.HResult!*IXmlNode {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.AppendChild(newChild);
    }
    pub fn CloneNode(self: *@This(), deep: bool) core.HResult!*IXmlNode {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.CloneNode(deep);
    }
    pub fn getNamespaceUri(self: *@This()) core.HResult!*IInspectable {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getNamespaceUri();
    }
    pub fn getLocalName(self: *@This()) core.HResult!*IInspectable {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getLocalName();
    }
    pub fn getPrefix(self: *@This()) core.HResult!*IInspectable {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getPrefix();
    }
    pub fn Normalize(self: *@This()) core.HResult!void {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Normalize();
    }
    pub fn putPrefix(self: *@This(), value: *IInspectable) core.HResult!void {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putPrefix(value);
    }
    pub fn GetXml(self: *@This()) core.HResult!HSTRING {
        var this: ?*IXmlNodeSerializer = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNodeSerializer.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetXml();
    }
    pub fn getInnerText(self: *@This()) core.HResult!HSTRING {
        var this: ?*IXmlNodeSerializer = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNodeSerializer.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getInnerText();
    }
    pub fn putInnerText(self: *@This(), value: HSTRING) core.HResult!void {
        var this: ?*IXmlNodeSerializer = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNodeSerializer.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putInnerText(value);
    }
    pub fn SelectSingleNode(self: *@This(), xpath: HSTRING) core.HResult!*IXmlNode {
        var this: ?*IXmlNodeSelector = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNodeSelector.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.SelectSingleNode(xpath);
    }
    pub fn SelectNodes(self: *@This(), xpath: HSTRING) core.HResult!*XmlNodeList {
        var this: ?*IXmlNodeSelector = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNodeSelector.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.SelectNodes(xpath);
    }
    pub fn SelectSingleNodeNS(self: *@This(), xpath: HSTRING, namespaces: *IInspectable) core.HResult!*IXmlNode {
        var this: ?*IXmlNodeSelector = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNodeSelector.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.SelectSingleNodeNS(xpath, namespaces);
    }
    pub fn SelectNodesNS(self: *@This(), xpath: HSTRING, namespaces: *IInspectable) core.HResult!*XmlNodeList {
        var this: ?*IXmlNodeSelector = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNodeSelector.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.SelectNodesNS(xpath, namespaces);
    }
    pub const NAME: []const u8 = "Windows.Data.Xml.Dom.XmlDocumentType";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IXmlDocumentType.GUID;
    pub const IID: Guid = IXmlDocumentType.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IXmlDocumentType.SIGNATURE);
};
pub const XmlDomImplementation = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn HasFeature(self: *@This(), feature: HSTRING, version: *IInspectable) core.HResult!bool {
        const this: *IXmlDomImplementation = @ptrCast(self);
        return try this.HasFeature(feature, version);
    }
    pub const NAME: []const u8 = "Windows.Data.Xml.Dom.XmlDomImplementation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IXmlDomImplementation.GUID;
    pub const IID: Guid = IXmlDomImplementation.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IXmlDomImplementation.SIGNATURE);
};
pub const XmlElement = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getTagName(self: *@This()) core.HResult!HSTRING {
        const this: *IXmlElement = @ptrCast(self);
        return try this.getTagName();
    }
    pub fn GetAttribute(self: *@This(), attributeName: HSTRING) core.HResult!HSTRING {
        const this: *IXmlElement = @ptrCast(self);
        return try this.GetAttribute(attributeName);
    }
    pub fn SetAttribute(self: *@This(), attributeName: HSTRING, attributeValue: HSTRING) core.HResult!void {
        const this: *IXmlElement = @ptrCast(self);
        return try this.SetAttribute(attributeName, attributeValue);
    }
    pub fn RemoveAttribute(self: *@This(), attributeName: HSTRING) core.HResult!void {
        const this: *IXmlElement = @ptrCast(self);
        return try this.RemoveAttribute(attributeName);
    }
    pub fn GetAttributeNode(self: *@This(), attributeName: HSTRING) core.HResult!*XmlAttribute {
        const this: *IXmlElement = @ptrCast(self);
        return try this.GetAttributeNode(attributeName);
    }
    pub fn SetAttributeNode(self: *@This(), newAttribute: *XmlAttribute) core.HResult!*XmlAttribute {
        const this: *IXmlElement = @ptrCast(self);
        return try this.SetAttributeNode(newAttribute);
    }
    pub fn RemoveAttributeNode(self: *@This(), attributeNode: *XmlAttribute) core.HResult!*XmlAttribute {
        const this: *IXmlElement = @ptrCast(self);
        return try this.RemoveAttributeNode(attributeNode);
    }
    pub fn GetElementsByTagName(self: *@This(), tagName: HSTRING) core.HResult!*XmlNodeList {
        const this: *IXmlElement = @ptrCast(self);
        return try this.GetElementsByTagName(tagName);
    }
    pub fn SetAttributeNS(self: *@This(), namespaceUri: *IInspectable, qualifiedName: HSTRING, value: HSTRING) core.HResult!void {
        const this: *IXmlElement = @ptrCast(self);
        return try this.SetAttributeNS(namespaceUri, qualifiedName, value);
    }
    pub fn GetAttributeNS(self: *@This(), namespaceUri: *IInspectable, localName: HSTRING) core.HResult!HSTRING {
        const this: *IXmlElement = @ptrCast(self);
        return try this.GetAttributeNS(namespaceUri, localName);
    }
    pub fn RemoveAttributeNS(self: *@This(), namespaceUri: *IInspectable, localName: HSTRING) core.HResult!void {
        const this: *IXmlElement = @ptrCast(self);
        return try this.RemoveAttributeNS(namespaceUri, localName);
    }
    pub fn SetAttributeNodeNS(self: *@This(), newAttribute: *XmlAttribute) core.HResult!*XmlAttribute {
        const this: *IXmlElement = @ptrCast(self);
        return try this.SetAttributeNodeNS(newAttribute);
    }
    pub fn GetAttributeNodeNS(self: *@This(), namespaceUri: *IInspectable, localName: HSTRING) core.HResult!*XmlAttribute {
        const this: *IXmlElement = @ptrCast(self);
        return try this.GetAttributeNodeNS(namespaceUri, localName);
    }
    pub fn getNodeValue(self: *@This()) core.HResult!*IInspectable {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getNodeValue();
    }
    pub fn putNodeValue(self: *@This(), value: *IInspectable) core.HResult!void {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putNodeValue(value);
    }
    pub fn getNodeType(self: *@This()) core.HResult!NodeType {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getNodeType();
    }
    pub fn getNodeName(self: *@This()) core.HResult!HSTRING {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getNodeName();
    }
    pub fn getParentNode(self: *@This()) core.HResult!*IXmlNode {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getParentNode();
    }
    pub fn getChildNodes(self: *@This()) core.HResult!*XmlNodeList {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getChildNodes();
    }
    pub fn getFirstChild(self: *@This()) core.HResult!*IXmlNode {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getFirstChild();
    }
    pub fn getLastChild(self: *@This()) core.HResult!*IXmlNode {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getLastChild();
    }
    pub fn getPreviousSibling(self: *@This()) core.HResult!*IXmlNode {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getPreviousSibling();
    }
    pub fn getNextSibling(self: *@This()) core.HResult!*IXmlNode {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getNextSibling();
    }
    pub fn getAttributes(self: *@This()) core.HResult!*XmlNamedNodeMap {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getAttributes();
    }
    pub fn HasChildNodes(self: *@This()) core.HResult!bool {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.HasChildNodes();
    }
    pub fn getOwnerDocument(self: *@This()) core.HResult!*XmlDocument {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getOwnerDocument();
    }
    pub fn InsertBefore(self: *@This(), newChild: *IXmlNode, referenceChild: *IXmlNode) core.HResult!*IXmlNode {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.InsertBefore(newChild, referenceChild);
    }
    pub fn ReplaceChild(self: *@This(), newChild: *IXmlNode, referenceChild: *IXmlNode) core.HResult!*IXmlNode {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ReplaceChild(newChild, referenceChild);
    }
    pub fn RemoveChild(self: *@This(), childNode: *IXmlNode) core.HResult!*IXmlNode {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.RemoveChild(childNode);
    }
    pub fn AppendChild(self: *@This(), newChild: *IXmlNode) core.HResult!*IXmlNode {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.AppendChild(newChild);
    }
    pub fn CloneNode(self: *@This(), deep: bool) core.HResult!*IXmlNode {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.CloneNode(deep);
    }
    pub fn getNamespaceUri(self: *@This()) core.HResult!*IInspectable {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getNamespaceUri();
    }
    pub fn getLocalName(self: *@This()) core.HResult!*IInspectable {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getLocalName();
    }
    pub fn getPrefix(self: *@This()) core.HResult!*IInspectable {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getPrefix();
    }
    pub fn Normalize(self: *@This()) core.HResult!void {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Normalize();
    }
    pub fn putPrefix(self: *@This(), value: *IInspectable) core.HResult!void {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putPrefix(value);
    }
    pub fn GetXml(self: *@This()) core.HResult!HSTRING {
        var this: ?*IXmlNodeSerializer = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNodeSerializer.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetXml();
    }
    pub fn getInnerText(self: *@This()) core.HResult!HSTRING {
        var this: ?*IXmlNodeSerializer = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNodeSerializer.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getInnerText();
    }
    pub fn putInnerText(self: *@This(), value: HSTRING) core.HResult!void {
        var this: ?*IXmlNodeSerializer = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNodeSerializer.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putInnerText(value);
    }
    pub fn SelectSingleNode(self: *@This(), xpath: HSTRING) core.HResult!*IXmlNode {
        var this: ?*IXmlNodeSelector = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNodeSelector.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.SelectSingleNode(xpath);
    }
    pub fn SelectNodes(self: *@This(), xpath: HSTRING) core.HResult!*XmlNodeList {
        var this: ?*IXmlNodeSelector = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNodeSelector.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.SelectNodes(xpath);
    }
    pub fn SelectSingleNodeNS(self: *@This(), xpath: HSTRING, namespaces: *IInspectable) core.HResult!*IXmlNode {
        var this: ?*IXmlNodeSelector = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNodeSelector.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.SelectSingleNodeNS(xpath, namespaces);
    }
    pub fn SelectNodesNS(self: *@This(), xpath: HSTRING, namespaces: *IInspectable) core.HResult!*XmlNodeList {
        var this: ?*IXmlNodeSelector = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNodeSelector.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.SelectNodesNS(xpath, namespaces);
    }
    pub const NAME: []const u8 = "Windows.Data.Xml.Dom.XmlElement";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IXmlElement.GUID;
    pub const IID: Guid = IXmlElement.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IXmlElement.SIGNATURE);
};
pub const XmlEntityReference = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getNodeValue(self: *@This()) core.HResult!*IInspectable {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getNodeValue();
    }
    pub fn putNodeValue(self: *@This(), value: *IInspectable) core.HResult!void {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putNodeValue(value);
    }
    pub fn getNodeType(self: *@This()) core.HResult!NodeType {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getNodeType();
    }
    pub fn getNodeName(self: *@This()) core.HResult!HSTRING {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getNodeName();
    }
    pub fn getParentNode(self: *@This()) core.HResult!*IXmlNode {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getParentNode();
    }
    pub fn getChildNodes(self: *@This()) core.HResult!*XmlNodeList {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getChildNodes();
    }
    pub fn getFirstChild(self: *@This()) core.HResult!*IXmlNode {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getFirstChild();
    }
    pub fn getLastChild(self: *@This()) core.HResult!*IXmlNode {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getLastChild();
    }
    pub fn getPreviousSibling(self: *@This()) core.HResult!*IXmlNode {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getPreviousSibling();
    }
    pub fn getNextSibling(self: *@This()) core.HResult!*IXmlNode {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getNextSibling();
    }
    pub fn getAttributes(self: *@This()) core.HResult!*XmlNamedNodeMap {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getAttributes();
    }
    pub fn HasChildNodes(self: *@This()) core.HResult!bool {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.HasChildNodes();
    }
    pub fn getOwnerDocument(self: *@This()) core.HResult!*XmlDocument {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getOwnerDocument();
    }
    pub fn InsertBefore(self: *@This(), newChild: *IXmlNode, referenceChild: *IXmlNode) core.HResult!*IXmlNode {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.InsertBefore(newChild, referenceChild);
    }
    pub fn ReplaceChild(self: *@This(), newChild: *IXmlNode, referenceChild: *IXmlNode) core.HResult!*IXmlNode {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ReplaceChild(newChild, referenceChild);
    }
    pub fn RemoveChild(self: *@This(), childNode: *IXmlNode) core.HResult!*IXmlNode {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.RemoveChild(childNode);
    }
    pub fn AppendChild(self: *@This(), newChild: *IXmlNode) core.HResult!*IXmlNode {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.AppendChild(newChild);
    }
    pub fn CloneNode(self: *@This(), deep: bool) core.HResult!*IXmlNode {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.CloneNode(deep);
    }
    pub fn getNamespaceUri(self: *@This()) core.HResult!*IInspectable {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getNamespaceUri();
    }
    pub fn getLocalName(self: *@This()) core.HResult!*IInspectable {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getLocalName();
    }
    pub fn getPrefix(self: *@This()) core.HResult!*IInspectable {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getPrefix();
    }
    pub fn Normalize(self: *@This()) core.HResult!void {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Normalize();
    }
    pub fn putPrefix(self: *@This(), value: *IInspectable) core.HResult!void {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putPrefix(value);
    }
    pub fn GetXml(self: *@This()) core.HResult!HSTRING {
        var this: ?*IXmlNodeSerializer = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNodeSerializer.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetXml();
    }
    pub fn getInnerText(self: *@This()) core.HResult!HSTRING {
        var this: ?*IXmlNodeSerializer = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNodeSerializer.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getInnerText();
    }
    pub fn putInnerText(self: *@This(), value: HSTRING) core.HResult!void {
        var this: ?*IXmlNodeSerializer = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNodeSerializer.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putInnerText(value);
    }
    pub fn SelectSingleNode(self: *@This(), xpath: HSTRING) core.HResult!*IXmlNode {
        var this: ?*IXmlNodeSelector = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNodeSelector.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.SelectSingleNode(xpath);
    }
    pub fn SelectNodes(self: *@This(), xpath: HSTRING) core.HResult!*XmlNodeList {
        var this: ?*IXmlNodeSelector = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNodeSelector.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.SelectNodes(xpath);
    }
    pub fn SelectSingleNodeNS(self: *@This(), xpath: HSTRING, namespaces: *IInspectable) core.HResult!*IXmlNode {
        var this: ?*IXmlNodeSelector = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNodeSelector.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.SelectSingleNodeNS(xpath, namespaces);
    }
    pub fn SelectNodesNS(self: *@This(), xpath: HSTRING, namespaces: *IInspectable) core.HResult!*XmlNodeList {
        var this: ?*IXmlNodeSelector = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNodeSelector.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.SelectNodesNS(xpath, namespaces);
    }
    pub const NAME: []const u8 = "Windows.Data.Xml.Dom.XmlEntityReference";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IXmlEntityReference.GUID;
    pub const IID: Guid = IXmlEntityReference.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IXmlEntityReference.SIGNATURE);
};
pub const XmlLoadSettings = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getMaxElementDepth(self: *@This()) core.HResult!u32 {
        const this: *IXmlLoadSettings = @ptrCast(self);
        return try this.getMaxElementDepth();
    }
    pub fn putMaxElementDepth(self: *@This(), value: u32) core.HResult!void {
        const this: *IXmlLoadSettings = @ptrCast(self);
        return try this.putMaxElementDepth(value);
    }
    pub fn getProhibitDtd(self: *@This()) core.HResult!bool {
        const this: *IXmlLoadSettings = @ptrCast(self);
        return try this.getProhibitDtd();
    }
    pub fn putProhibitDtd(self: *@This(), value: bool) core.HResult!void {
        const this: *IXmlLoadSettings = @ptrCast(self);
        return try this.putProhibitDtd(value);
    }
    pub fn getResolveExternals(self: *@This()) core.HResult!bool {
        const this: *IXmlLoadSettings = @ptrCast(self);
        return try this.getResolveExternals();
    }
    pub fn putResolveExternals(self: *@This(), value: bool) core.HResult!void {
        const this: *IXmlLoadSettings = @ptrCast(self);
        return try this.putResolveExternals(value);
    }
    pub fn getValidateOnParse(self: *@This()) core.HResult!bool {
        const this: *IXmlLoadSettings = @ptrCast(self);
        return try this.getValidateOnParse();
    }
    pub fn putValidateOnParse(self: *@This(), value: bool) core.HResult!void {
        const this: *IXmlLoadSettings = @ptrCast(self);
        return try this.putValidateOnParse(value);
    }
    pub fn getElementContentWhiteSpace(self: *@This()) core.HResult!bool {
        const this: *IXmlLoadSettings = @ptrCast(self);
        return try this.getElementContentWhiteSpace();
    }
    pub fn putElementContentWhiteSpace(self: *@This(), value: bool) core.HResult!void {
        const this: *IXmlLoadSettings = @ptrCast(self);
        return try this.putElementContentWhiteSpace(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IXmlLoadSettings.IID)));
    }
    pub const NAME: []const u8 = "Windows.Data.Xml.Dom.XmlLoadSettings";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IXmlLoadSettings.GUID;
    pub const IID: Guid = IXmlLoadSettings.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IXmlLoadSettings.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const XmlNamedNodeMap = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getLength(self: *@This()) core.HResult!u32 {
        const this: *IXmlNamedNodeMap = @ptrCast(self);
        return try this.getLength();
    }
    pub fn Item(self: *@This(), index: u32) core.HResult!*IXmlNode {
        const this: *IXmlNamedNodeMap = @ptrCast(self);
        return try this.Item(index);
    }
    pub fn GetNamedItem(self: *@This(), name: HSTRING) core.HResult!*IXmlNode {
        const this: *IXmlNamedNodeMap = @ptrCast(self);
        return try this.GetNamedItem(name);
    }
    pub fn SetNamedItem(self: *@This(), node: *IXmlNode) core.HResult!*IXmlNode {
        const this: *IXmlNamedNodeMap = @ptrCast(self);
        return try this.SetNamedItem(node);
    }
    pub fn RemoveNamedItem(self: *@This(), name: HSTRING) core.HResult!*IXmlNode {
        const this: *IXmlNamedNodeMap = @ptrCast(self);
        return try this.RemoveNamedItem(name);
    }
    pub fn GetNamedItemNS(self: *@This(), namespaceUri: *IInspectable, name: HSTRING) core.HResult!*IXmlNode {
        const this: *IXmlNamedNodeMap = @ptrCast(self);
        return try this.GetNamedItemNS(namespaceUri, name);
    }
    pub fn RemoveNamedItemNS(self: *@This(), namespaceUri: *IInspectable, name: HSTRING) core.HResult!*IXmlNode {
        const this: *IXmlNamedNodeMap = @ptrCast(self);
        return try this.RemoveNamedItemNS(namespaceUri, name);
    }
    pub fn SetNamedItemNS(self: *@This(), node: *IXmlNode) core.HResult!*IXmlNode {
        const this: *IXmlNamedNodeMap = @ptrCast(self);
        return try this.SetNamedItemNS(node);
    }
    pub fn GetAt(self: *@This(), index: u32) core.HResult!core.generic(T) {
        var this: ?*IVectorView(IXmlNode) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVectorView.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetAt(index);
    }
    pub fn getSize(self: *@This()) core.HResult!u32 {
        var this: ?*IVectorView(IXmlNode) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVectorView.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSize();
    }
    pub fn IndexOf(self: *@This(), value: core.generic(T), index: u32) core.HResult!bool {
        var this: ?*IVectorView(IXmlNode) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVectorView.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.IndexOf(value, index);
    }
    pub fn GetMany(self: *@This(), startIndex: u32, items: [*]core.generic(T)) core.HResult!u32 {
        var this: ?*IVectorView(IXmlNode) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVectorView.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetMany(startIndex, items);
    }
    pub fn First(self: *@This()) core.HResult!*IIterator(T) {
        var this: ?*IIterable(IXmlNode) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IIterable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.First();
    }
    pub const NAME: []const u8 = "Windows.Data.Xml.Dom.XmlNamedNodeMap";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IXmlNamedNodeMap.GUID;
    pub const IID: Guid = IXmlNamedNodeMap.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IXmlNamedNodeMap.SIGNATURE);
};
pub const XmlNodeList = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getLength(self: *@This()) core.HResult!u32 {
        const this: *IXmlNodeList = @ptrCast(self);
        return try this.getLength();
    }
    pub fn Item(self: *@This(), index: u32) core.HResult!*IXmlNode {
        const this: *IXmlNodeList = @ptrCast(self);
        return try this.Item(index);
    }
    pub fn GetAt(self: *@This(), index: u32) core.HResult!core.generic(T) {
        var this: ?*IVectorView(IXmlNode) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVectorView.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetAt(index);
    }
    pub fn getSize(self: *@This()) core.HResult!u32 {
        var this: ?*IVectorView(IXmlNode) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVectorView.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSize();
    }
    pub fn IndexOf(self: *@This(), value: core.generic(T), index: u32) core.HResult!bool {
        var this: ?*IVectorView(IXmlNode) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVectorView.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.IndexOf(value, index);
    }
    pub fn GetMany(self: *@This(), startIndex: u32, items: [*]core.generic(T)) core.HResult!u32 {
        var this: ?*IVectorView(IXmlNode) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVectorView.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetMany(startIndex, items);
    }
    pub fn First(self: *@This()) core.HResult!*IIterator(T) {
        var this: ?*IIterable(IXmlNode) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IIterable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.First();
    }
    pub const NAME: []const u8 = "Windows.Data.Xml.Dom.XmlNodeList";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IXmlNodeList.GUID;
    pub const IID: Guid = IXmlNodeList.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IXmlNodeList.SIGNATURE);
};
pub const XmlProcessingInstruction = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getTarget(self: *@This()) core.HResult!HSTRING {
        const this: *IXmlProcessingInstruction = @ptrCast(self);
        return try this.getTarget();
    }
    pub fn getData(self: *@This()) core.HResult!HSTRING {
        const this: *IXmlProcessingInstruction = @ptrCast(self);
        return try this.getData();
    }
    pub fn putData(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IXmlProcessingInstruction = @ptrCast(self);
        return try this.putData(value);
    }
    pub fn getNodeValue(self: *@This()) core.HResult!*IInspectable {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getNodeValue();
    }
    pub fn putNodeValue(self: *@This(), value: *IInspectable) core.HResult!void {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putNodeValue(value);
    }
    pub fn getNodeType(self: *@This()) core.HResult!NodeType {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getNodeType();
    }
    pub fn getNodeName(self: *@This()) core.HResult!HSTRING {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getNodeName();
    }
    pub fn getParentNode(self: *@This()) core.HResult!*IXmlNode {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getParentNode();
    }
    pub fn getChildNodes(self: *@This()) core.HResult!*XmlNodeList {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getChildNodes();
    }
    pub fn getFirstChild(self: *@This()) core.HResult!*IXmlNode {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getFirstChild();
    }
    pub fn getLastChild(self: *@This()) core.HResult!*IXmlNode {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getLastChild();
    }
    pub fn getPreviousSibling(self: *@This()) core.HResult!*IXmlNode {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getPreviousSibling();
    }
    pub fn getNextSibling(self: *@This()) core.HResult!*IXmlNode {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getNextSibling();
    }
    pub fn getAttributes(self: *@This()) core.HResult!*XmlNamedNodeMap {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getAttributes();
    }
    pub fn HasChildNodes(self: *@This()) core.HResult!bool {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.HasChildNodes();
    }
    pub fn getOwnerDocument(self: *@This()) core.HResult!*XmlDocument {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getOwnerDocument();
    }
    pub fn InsertBefore(self: *@This(), newChild: *IXmlNode, referenceChild: *IXmlNode) core.HResult!*IXmlNode {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.InsertBefore(newChild, referenceChild);
    }
    pub fn ReplaceChild(self: *@This(), newChild: *IXmlNode, referenceChild: *IXmlNode) core.HResult!*IXmlNode {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ReplaceChild(newChild, referenceChild);
    }
    pub fn RemoveChild(self: *@This(), childNode: *IXmlNode) core.HResult!*IXmlNode {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.RemoveChild(childNode);
    }
    pub fn AppendChild(self: *@This(), newChild: *IXmlNode) core.HResult!*IXmlNode {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.AppendChild(newChild);
    }
    pub fn CloneNode(self: *@This(), deep: bool) core.HResult!*IXmlNode {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.CloneNode(deep);
    }
    pub fn getNamespaceUri(self: *@This()) core.HResult!*IInspectable {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getNamespaceUri();
    }
    pub fn getLocalName(self: *@This()) core.HResult!*IInspectable {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getLocalName();
    }
    pub fn getPrefix(self: *@This()) core.HResult!*IInspectable {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getPrefix();
    }
    pub fn Normalize(self: *@This()) core.HResult!void {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Normalize();
    }
    pub fn putPrefix(self: *@This(), value: *IInspectable) core.HResult!void {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putPrefix(value);
    }
    pub fn GetXml(self: *@This()) core.HResult!HSTRING {
        var this: ?*IXmlNodeSerializer = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNodeSerializer.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetXml();
    }
    pub fn getInnerText(self: *@This()) core.HResult!HSTRING {
        var this: ?*IXmlNodeSerializer = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNodeSerializer.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getInnerText();
    }
    pub fn putInnerText(self: *@This(), value: HSTRING) core.HResult!void {
        var this: ?*IXmlNodeSerializer = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNodeSerializer.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putInnerText(value);
    }
    pub fn SelectSingleNode(self: *@This(), xpath: HSTRING) core.HResult!*IXmlNode {
        var this: ?*IXmlNodeSelector = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNodeSelector.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.SelectSingleNode(xpath);
    }
    pub fn SelectNodes(self: *@This(), xpath: HSTRING) core.HResult!*XmlNodeList {
        var this: ?*IXmlNodeSelector = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNodeSelector.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.SelectNodes(xpath);
    }
    pub fn SelectSingleNodeNS(self: *@This(), xpath: HSTRING, namespaces: *IInspectable) core.HResult!*IXmlNode {
        var this: ?*IXmlNodeSelector = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNodeSelector.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.SelectSingleNodeNS(xpath, namespaces);
    }
    pub fn SelectNodesNS(self: *@This(), xpath: HSTRING, namespaces: *IInspectable) core.HResult!*XmlNodeList {
        var this: ?*IXmlNodeSelector = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNodeSelector.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.SelectNodesNS(xpath, namespaces);
    }
    pub const NAME: []const u8 = "Windows.Data.Xml.Dom.XmlProcessingInstruction";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IXmlProcessingInstruction.GUID;
    pub const IID: Guid = IXmlProcessingInstruction.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IXmlProcessingInstruction.SIGNATURE);
};
pub const XmlText = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn SplitText(self: *@This(), offset: u32) core.HResult!*IXmlText {
        const this: *IXmlText = @ptrCast(self);
        return try this.SplitText(offset);
    }
    pub fn getData(self: *@This()) core.HResult!HSTRING {
        var this: ?*IXmlCharacterData = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlCharacterData.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getData();
    }
    pub fn putData(self: *@This(), value: HSTRING) core.HResult!void {
        var this: ?*IXmlCharacterData = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlCharacterData.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putData(value);
    }
    pub fn getLength(self: *@This()) core.HResult!u32 {
        var this: ?*IXmlCharacterData = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlCharacterData.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getLength();
    }
    pub fn SubstringData(self: *@This(), offset: u32, count: u32) core.HResult!HSTRING {
        var this: ?*IXmlCharacterData = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlCharacterData.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.SubstringData(offset, count);
    }
    pub fn AppendData(self: *@This(), data: HSTRING) core.HResult!void {
        var this: ?*IXmlCharacterData = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlCharacterData.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.AppendData(data);
    }
    pub fn InsertData(self: *@This(), offset: u32, data: HSTRING) core.HResult!void {
        var this: ?*IXmlCharacterData = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlCharacterData.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.InsertData(offset, data);
    }
    pub fn DeleteData(self: *@This(), offset: u32, count: u32) core.HResult!void {
        var this: ?*IXmlCharacterData = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlCharacterData.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.DeleteData(offset, count);
    }
    pub fn ReplaceData(self: *@This(), offset: u32, count: u32, data: HSTRING) core.HResult!void {
        var this: ?*IXmlCharacterData = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlCharacterData.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ReplaceData(offset, count, data);
    }
    pub fn getNodeValue(self: *@This()) core.HResult!*IInspectable {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getNodeValue();
    }
    pub fn putNodeValue(self: *@This(), value: *IInspectable) core.HResult!void {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putNodeValue(value);
    }
    pub fn getNodeType(self: *@This()) core.HResult!NodeType {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getNodeType();
    }
    pub fn getNodeName(self: *@This()) core.HResult!HSTRING {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getNodeName();
    }
    pub fn getParentNode(self: *@This()) core.HResult!*IXmlNode {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getParentNode();
    }
    pub fn getChildNodes(self: *@This()) core.HResult!*XmlNodeList {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getChildNodes();
    }
    pub fn getFirstChild(self: *@This()) core.HResult!*IXmlNode {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getFirstChild();
    }
    pub fn getLastChild(self: *@This()) core.HResult!*IXmlNode {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getLastChild();
    }
    pub fn getPreviousSibling(self: *@This()) core.HResult!*IXmlNode {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getPreviousSibling();
    }
    pub fn getNextSibling(self: *@This()) core.HResult!*IXmlNode {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getNextSibling();
    }
    pub fn getAttributes(self: *@This()) core.HResult!*XmlNamedNodeMap {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getAttributes();
    }
    pub fn HasChildNodes(self: *@This()) core.HResult!bool {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.HasChildNodes();
    }
    pub fn getOwnerDocument(self: *@This()) core.HResult!*XmlDocument {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getOwnerDocument();
    }
    pub fn InsertBefore(self: *@This(), newChild: *IXmlNode, referenceChild: *IXmlNode) core.HResult!*IXmlNode {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.InsertBefore(newChild, referenceChild);
    }
    pub fn ReplaceChild(self: *@This(), newChild: *IXmlNode, referenceChild: *IXmlNode) core.HResult!*IXmlNode {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ReplaceChild(newChild, referenceChild);
    }
    pub fn RemoveChild(self: *@This(), childNode: *IXmlNode) core.HResult!*IXmlNode {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.RemoveChild(childNode);
    }
    pub fn AppendChild(self: *@This(), newChild: *IXmlNode) core.HResult!*IXmlNode {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.AppendChild(newChild);
    }
    pub fn CloneNode(self: *@This(), deep: bool) core.HResult!*IXmlNode {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.CloneNode(deep);
    }
    pub fn getNamespaceUri(self: *@This()) core.HResult!*IInspectable {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getNamespaceUri();
    }
    pub fn getLocalName(self: *@This()) core.HResult!*IInspectable {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getLocalName();
    }
    pub fn getPrefix(self: *@This()) core.HResult!*IInspectable {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getPrefix();
    }
    pub fn Normalize(self: *@This()) core.HResult!void {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Normalize();
    }
    pub fn putPrefix(self: *@This(), value: *IInspectable) core.HResult!void {
        var this: ?*IXmlNode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putPrefix(value);
    }
    pub fn GetXml(self: *@This()) core.HResult!HSTRING {
        var this: ?*IXmlNodeSerializer = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNodeSerializer.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetXml();
    }
    pub fn getInnerText(self: *@This()) core.HResult!HSTRING {
        var this: ?*IXmlNodeSerializer = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNodeSerializer.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getInnerText();
    }
    pub fn putInnerText(self: *@This(), value: HSTRING) core.HResult!void {
        var this: ?*IXmlNodeSerializer = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNodeSerializer.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putInnerText(value);
    }
    pub fn SelectSingleNode(self: *@This(), xpath: HSTRING) core.HResult!*IXmlNode {
        var this: ?*IXmlNodeSelector = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNodeSelector.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.SelectSingleNode(xpath);
    }
    pub fn SelectNodes(self: *@This(), xpath: HSTRING) core.HResult!*XmlNodeList {
        var this: ?*IXmlNodeSelector = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNodeSelector.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.SelectNodes(xpath);
    }
    pub fn SelectSingleNodeNS(self: *@This(), xpath: HSTRING, namespaces: *IInspectable) core.HResult!*IXmlNode {
        var this: ?*IXmlNodeSelector = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNodeSelector.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.SelectSingleNodeNS(xpath, namespaces);
    }
    pub fn SelectNodesNS(self: *@This(), xpath: HSTRING, namespaces: *IInspectable) core.HResult!*XmlNodeList {
        var this: ?*IXmlNodeSelector = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXmlNodeSelector.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.SelectNodesNS(xpath, namespaces);
    }
    pub const NAME: []const u8 = "Windows.Data.Xml.Dom.XmlText";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IXmlText.GUID;
    pub const IID: Guid = IXmlText.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IXmlText.SIGNATURE);
};
const IUnknown = @import("../../root.zig").IUnknown;
const IActivationFactory = @import("../../Foundation.zig").IActivationFactory;
const Guid = @import("../../root.zig").Guid;
const IVectorView = @import("../../Foundation/Collections.zig").IVectorView;
const IBuffer = @import("../../Storage/Streams.zig").IBuffer;
const FactoryCache = @import("../../core.zig").FactoryCache;
const IIterator = @import("../../Foundation/Collections.zig").IIterator;
const IStorageFile = @import("../../Storage.zig").IStorageFile;
const TrustLevel = @import("../../root.zig").TrustLevel;
const HSTRING = @import("../../root.zig").HSTRING;
const IIterable = @import("../../Foundation/Collections.zig").IIterable;
const IInspectable = @import("../../Foundation.zig").IInspectable;
const Uri = @import("../../Foundation.zig").Uri;
const HRESULT = @import("../../root.zig").HRESULT;
const core = @import("../../root.zig").core;
const IAsyncOperation = @import("../../Foundation.zig").IAsyncOperation;
const IAsyncAction = @import("../../Foundation.zig").IAsyncAction;
