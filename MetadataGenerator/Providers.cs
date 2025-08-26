using System.Collections.Immutable;
using System.Reflection.Metadata;
using System.Reflection.Metadata.Ecma335;

public class TypeNameProvider : ISignatureTypeProvider<JsonTypeReference, NameContext>
{
    private readonly MetadataReader _reader;
    public TypeNameProvider(MetadataReader reader) => _reader = reader;

    public JsonTypeReference GetPinnedType(JsonTypeReference elementType)
    {
        // For JSON purposes, we can ignore the pinned modifier
        return elementType;
    }

    public JsonTypeReference GetModifiedType(JsonTypeReference modifierType, JsonTypeReference unmodifiedType, bool isRequired)
    {
        // For JSON purposes, we can ignore the modifier and just return the underlying type
        return unmodifiedType;
    }

    public JsonTypeReference GetGenericTypeParameter(NameContext ctx, int index)
    {
        var tname = index < ctx.TypeParameterNames.Length ? ctx.TypeParameterNames[index] : $"T{index}";
        return new JsonTypeReference
        {
            Name = tname,
            Kind = "Generic",
        };
    }

    public JsonTypeReference GetGenericMethodParameter(NameContext ctx, int index)
    {
        var mname = index < ctx.MethodParameterNames.Length ? ctx.MethodParameterNames[index] : $"M{index}";
        return new JsonTypeReference
        {
            Name = mname,
            Kind = "Generic",
        };
    }

    public JsonTypeReference GetFunctionPointerType(MethodSignature<JsonTypeReference> signature)
    {
        // Represent function pointers as a special type
        return new JsonTypeReference
        {
            Name = "fnptr",
            Kind = "FunctionPointer",
            GenericArguments = new List<JsonTypeReference>()
            {
                signature.ReturnType
            }.Concat(signature.ParameterTypes).ToList()
        };
    }

    public JsonTypeReference GetTypeFromDefinition(MetadataReader reader, TypeDefinitionHandle handle, byte rawTypeKind)
    {
        var td = reader.GetTypeDefinition(handle);

        var (typeName, arity) = MetadataHelpers.SplitGenericName(reader.GetString(td.Name));

        return new JsonTypeReference
        {
            Name = typeName,
            Namespace = reader.GetString(td.Namespace),
        };
    }

    public JsonTypeReference GetTypeFromReference(MetadataReader reader, TypeReferenceHandle handle, byte rawTypeKind)
    {
        var tr = reader.GetTypeReference(handle);

        var (typeName, arity) = MetadataHelpers.SplitGenericName(reader.GetString(tr.Name));

        return new JsonTypeReference
        {
            Name = typeName,
            Namespace = reader.GetString(tr.Namespace),
        };
    }

    public JsonTypeReference GetGenericInstantiation(JsonTypeReference genericType, ImmutableArray<JsonTypeReference> typeArguments)
    {
        if (genericType.GenericArguments == null)
        {
            genericType.GenericArguments = typeArguments.ToList();
        }
        else
        {
            genericType.GenericArguments.AddRange(typeArguments);
        }
        return genericType;
    }

    public JsonTypeReference GetArrayType(JsonTypeReference elementType, ArrayShape shape)
    {
        elementType.Kind = "Array";
        return elementType;
    }

    public JsonTypeReference GetPointerType(JsonTypeReference elementType)
    {
        elementType.Kind = "Pointer";
        return elementType;
    }

    public JsonTypeReference GetByReferenceType(JsonTypeReference elementType)
    {
        elementType.Kind = "Reference";
        return elementType;
    }

    public JsonTypeReference GetPrimitiveType(PrimitiveTypeCode typeCode)
    {
        return new JsonTypeReference
        {
            Name = typeCode.ToString(),
            Kind = "Native"
        };
    }

    public JsonTypeReference GetGenericParameter(object? genericContext, int index)
    {
        return new JsonTypeReference
        {
            Name = "T" + index,
            Kind = "Generic"
        };
    }

    public JsonTypeReference GetSZArrayType(JsonTypeReference elementType)
    {
        elementType.Kind = "Array";
        return elementType;
    }

    public JsonTypeReference GetTypeFromSpecification(MetadataReader reader, NameContext genericContext, TypeSpecificationHandle handle, byte rawTypeKind)
    {
        var spec = reader.GetTypeSpecification(handle);
        var blobReader = reader.GetBlobReader(spec.Signature);
        var decoder = new SignatureDecoder<JsonTypeReference, NameContext>(this, reader, genericContext);
        return decoder.DecodeType(ref blobReader);
    }
}

/// Minimal CA type provider so DecodeValue can parse System.Type args
public sealed class CaTypeProvider :
    ICustomAttributeTypeProvider<string>,
    ISignatureTypeProvider<string, object?>,
    IConstructedTypeProvider<string>
{
    private readonly MetadataReader _r;
    public CaTypeProvider(MetadataReader r) { _r = r; }

    // ICustomAttributeTypeProvider
    public bool IsSystemType(string t) => t == "System.Type";
    public string GetSystemType() => "System.Type";
    public string GetTypeFromSerializedName(string name) => name;
    public PrimitiveTypeCode GetUnderlyingEnumType(string name) => PrimitiveTypeCode.Int32;

    // Signature pieces used by decoder (basic implementations)
    public string GetPrimitiveType(PrimitiveTypeCode typeCode) => typeCode.ToString();
    public string GetSZArrayType(string elementType) => elementType + "[]";
    public string GetArrayType(string elementType, ArrayShape shape)
        => shape.Rank == 1 && shape.Sizes.Count() == 0 && shape.LowerBounds.Count() == 0
           ? elementType + "[]"
           : $"{elementType}[{new string(',', shape.Rank - 1)}]";
    public string GetPointerType(string elementType) => elementType + "*";
    public string GetByReferenceType(string elementType) => elementType + "&";
    public string GetPinnedType(string elementType) => elementType;
    public string GetModifiedType(string modifier, string unmodifiedType, bool isRequired) => unmodifiedType;
    public string GetFunctionPointerType(MethodSignature<string> signature) => "fnptr";
    public string GetGenericInstantiation(string genericType, ImmutableArray<string> typeArguments)
        => $"{genericType}<{string.Join(", ", typeArguments)}>";
    public string GetGenericTypeParameter(object? ctx, int index) => $"!{index}";
    public string GetGenericMethodParameter(object? ctx, int index) => $"!!{index}";
    public string GetTypeFromDefinition(MetadataReader r, TypeDefinitionHandle h, byte _)
    {
        var td = r.GetTypeDefinition(h);
        var ns = r.GetString(td.Namespace);
        var name = r.GetString(td.Name);
        return string.IsNullOrEmpty(ns) ? name : $"{ns}.{name}";
    }
    public string GetTypeFromReference(MetadataReader r, TypeReferenceHandle h, byte _)
    {
        var tr = r.GetTypeReference(h);
        var ns = r.GetString(tr.Namespace);
        var name = r.GetString(tr.Name);
        if (tr.ResolutionScope.Kind == HandleKind.TypeReference)
        {
            var outer = (TypeReferenceHandle)tr.ResolutionScope;
            return $"{GetTypeFromReference(r, outer, 0)}.{name}";
        }
        return string.IsNullOrEmpty(ns) ? name : $"{ns}.{name}";
    }
    public string GetTypeFromSpecification(MetadataReader r, object? ctx, TypeSpecificationHandle h, byte _)
    {
        var blob = r.GetBlobReader(r.GetTypeSpecification(h).Signature);
        var dec = new SignatureDecoder<string, object?>(this, r, null);
        return dec.DecodeType(ref blob);
    }
}
