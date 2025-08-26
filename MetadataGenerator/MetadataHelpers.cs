using System;
using System.Reflection.Metadata;
using System.Text;

public static class MetadataHelpers
{
    /// <summary>
    /// Safely gets the GUID of a TypeDefinition if present.
    /// Returns null if no GUID is found.
    /// </summary>
    public static Guid? GetTypeGuid(MetadataReader reader, TypeDefinitionHandle tdHandle)
    {
        var td = reader.GetTypeDefinition(tdHandle);
		var TName = reader.GetString(td.Name);

        foreach (var caHandle in td.GetCustomAttributes())
        {
            var ca = reader.GetCustomAttribute(caHandle);
            var ctorHandle = ca.Constructor;

            string? attrName = GetAttributeName(ctorHandle, reader);
            if (attrName != "GuidAttribute" && attrName != "WindowsRuntimeTypeAttribute")
                continue;

			return DecodeGuidAttribute(reader, ca);
        }

        // No GUID found
        return null;
    }

	public static (string BaseName, int Arity) SplitGenericName(string typeName)
	{
	    int backtickIndex = typeName.IndexOf('`');
	    if (backtickIndex < 0)
	        return (typeName, 0); // not generic
	
	    string baseName = typeName.Substring(0, backtickIndex);
	    string arityStr = typeName.Substring(backtickIndex + 1);
	
	    if (!int.TryParse(arityStr, out int arity))
	        arity = 0; // fallback if parsing fails
	
	    return (baseName, arity);
	}

	private static Guid? DecodeGuidAttribute(MetadataReader reader, CustomAttribute ca)
	{
	    var blobReader = reader.GetBlobReader(ca.Value);
	
	    // WinMD custom attribute prolog
	    if (blobReader.RemainingBytes < 2) return null;
	    ushort prolog = blobReader.ReadUInt16();
	    if (prolog != 0x0001) return null;
	
	    // Now read the GUID bytes
	    if (blobReader.RemainingBytes < 16) return null; // GUID is 16 bytes
	    byte[] guidBytes = blobReader.ReadBytes(16);
	
	    return new Guid(guidBytes);
	}

    /// <summary>
    /// Resolves the name of a custom attribute from its constructor handle.
    /// </summary>
    private static string? GetAttributeName(EntityHandle ctorHandle, MetadataReader reader)
    {
        switch (ctorHandle.Kind)
        {
            case HandleKind.MemberReference:
                var mr = reader.GetMemberReference((MemberReferenceHandle)ctorHandle);
                if (mr.Parent.Kind == HandleKind.TypeReference)
                {
                    var parentType = reader.GetTypeReference((TypeReferenceHandle)mr.Parent);
                    return reader.GetString(parentType.Name);
                }
                break;

            case HandleKind.MethodDefinition:
                var md = reader.GetMethodDefinition((MethodDefinitionHandle)ctorHandle);
                var parentDef = reader.GetTypeDefinition(md.GetDeclaringType());
                return reader.GetString(parentDef.Name);
        }

        return null;
    }
}
