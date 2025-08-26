using System;
using System.Buffers;
using System.Collections.Generic;
using System.Collections.Immutable;
using System.IO;
using System.Linq;
using System.Reflection;
using System.Reflection.Metadata;
using System.Reflection.Metadata.Ecma335;
using System.Runtime.InteropServices;
using System.Text;
using System.Text.Json;
using System.Text.Json.Serialization;

// TODO:
//   - [ ] Parse Possible Exceptions
//   - [ ] Include all attributes for params
//   - [ ] Rewrite code to be stable and easier to read (currently hacked together)
//   - [ ] Test run generating individual parts and analyze what is missing

internal class Program
{
    static IEnumerable<string> FindWinmds(string root)
    {
        if (!Directory.Exists(root))
            yield break;

        foreach (var path in Directory.EnumerateFiles(root, "*.winmd", SearchOption.AllDirectories))
        {
            yield return path;
        }
    }

    private static int Main()
    {
        string dir = Path.Combine(Path.GetDirectoryName(Assembly.GetExecutingAssembly().Location!)!, "winmd");
        string outputDir = Path.GetFullPath(Path.Combine(Path.GetDirectoryName(Assembly.GetExecutingAssembly().Location!)!, "..", "..", "..", "output"));
        Directory.CreateDirectory(outputDir);

        var allTypes = new List<JsonTypeDef>();
        foreach (var winmd in FindWinmds(dir))
        {
            Console.WriteLine("Parsing: {0}", Path.GetFileNameWithoutExtension(winmd));
            try
            {
                using var fs = File.OpenRead(winmd);
                using var pe = new System.Reflection.PortableExecutable.PEReader(fs);
                var md = pe.GetMetadataReader();


                var ctx = new MetadataContext(winmd, md);
                var gen = new MetadataJsonGenerator(ctx);


                foreach (var tdHandle in md.TypeDefinitions)
                {
                    var td = md.GetTypeDefinition(tdHandle);
                    // Skip <Module>
                    if (md.GetString(td.Name) == "<Module>") continue;
                    var jt = gen.EmitType(tdHandle);
                    allTypes.Add(jt);
                }
            }
            catch (Exception ex)
            {
                Console.Error.WriteLine($"Failed '{winmd}': {ex.Message}");
                Console.Error.WriteLine(ex);
            }
        }

        var options = new JsonSerializerOptions
        {
            WriteIndented = true,
            DefaultIgnoreCondition = JsonIgnoreCondition.WhenWritingNull,
    		Encoder = System.Text.Encodings.Web.JavaScriptEncoder.UnsafeRelaxedJsonEscaping
        };

        foreach (var t in allTypes)
        {
            var nsDir = Path.Combine(outputDir, t.Namespace ?? "");
            Directory.CreateDirectory(nsDir);
            var file = Path.Combine(nsDir, $"{t.Name}.json");
            File.WriteAllText(file, JsonSerializer.Serialize(t, options));
        }
        Console.WriteLine($"Wrote {allTypes.Count} JSON files under {outputDir}");

        return 0;
    }
}

// -------------------------- Metadata Context ----------------------------
public sealed class MetadataContext
{
    public string FilePath { get; }
    public MetadataReader Reader { get; }

    public MetadataContext(string filePath, MetadataReader reader)
    {
        FilePath = filePath;
        Reader = reader;
    }
}

// -------------------------- Signature Provider --------------------------
public class TypeNameProvider : ISignatureTypeProvider<JsonTypeReference, object?>
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

	public JsonTypeReference GetGenericTypeParameter(object? genericContext, int index)
	{
	    return new JsonTypeReference
	    {
	        Name = "T" + index,  // type-level generic placeholder
	        Namespace = "",
			Kind = "Generic",
	        GenericArguments = new List<JsonTypeReference>()
	    };
	}

	public JsonTypeReference GetGenericMethodParameter(object? genericContext, int index)
	{
	    return new JsonTypeReference
	    {
	        Name = "M" + index,
	        Namespace = "",
			Kind = "Generic",
	        GenericArguments = new List<JsonTypeReference>()
	    };
	}

	public JsonTypeReference GetFunctionPointerType(MethodSignature<JsonTypeReference> signature)
	{
	    // Represent function pointers as a special type
	    return new JsonTypeReference
	    {
	        Name = "fnptr",
	        Namespace = "",
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
			Arity = arity > 0 ? arity : null,
            Namespace = reader.GetString(td.Namespace),
            GenericArguments = new List<JsonTypeReference>()
        };
    }

    public JsonTypeReference GetTypeFromReference(MetadataReader reader, TypeReferenceHandle handle, byte rawTypeKind)
    {
        var tr = reader.GetTypeReference(handle);

		var (typeName, arity) = MetadataHelpers.SplitGenericName(reader.GetString(tr.Name));

        return new JsonTypeReference
        {
            Name = typeName,
			Arity = arity > 0 ? arity : null,
            Namespace = reader.GetString(tr.Namespace),
            GenericArguments = new List<JsonTypeReference>()
        };
    }

    public JsonTypeReference GetGenericInstantiation(JsonTypeReference genericType, ImmutableArray<JsonTypeReference> typeArguments)
    {
        genericType.GenericArguments.AddRange(typeArguments);
        return genericType;
    }

    public JsonTypeReference GetArrayType(JsonTypeReference elementType, ArrayShape shape) {
		elementType.Kind = "Array";
		return elementType;
	}
    public JsonTypeReference GetPointerType(JsonTypeReference elementType) {
		elementType.Kind = "Pointer";
		return elementType;
	}
    public JsonTypeReference GetByReferenceType(JsonTypeReference elementType) {
		elementType.Kind = "Reference";
		return elementType;
	}
    public JsonTypeReference GetPrimitiveType(PrimitiveTypeCode typeCode) {
		return new JsonTypeReference {
			Name = typeCode.ToString(),
			Kind = "Native"
		};
	}
    public JsonTypeReference GetGenericParameter(object? genericContext, int index) {
		return new JsonTypeReference {
			Name = "T" + index,
			Kind = "Generic"
		};
	}
    public JsonTypeReference GetSZArrayType(JsonTypeReference elementType) {
		elementType.Kind = "Array";
		return elementType;
	}
    public JsonTypeReference GetTypeFromSpecification(MetadataReader reader, object? genericContext, TypeSpecificationHandle handle, byte rawTypeKind)
    {
        var spec = reader.GetTypeSpecification(handle);
        var blobReader = reader.GetBlobReader(spec.Signature);
 		var decoder = new SignatureDecoder<JsonTypeReference, object?>(this, reader, genericContext);
        return decoder.DecodeType(ref blobReader);
    }
}

// -------------------------- JSON Model Types ----------------------------
public sealed class JsonTypeDef
{
    public string? AssemblyPath { get; set; }
    public string Kind { get; set; } = "Type"; // class|interface|struct|enum|delegate
    public string? Namespace { get; set; }
    public string? Guid { get; set; }
    public string Name { get; set; } = default!;
    public int? Arity { get; set; } = default!;
    public JsonTypeReference? BaseType { get; set; }
    public List<string> Interfaces { get; set; } = new();
    public List<JsonGenericParam> GenericParameters { get; set; } = new();
    public List<JsonField> Fields { get; set; } = new();
    public List<JsonProperty> Properties { get; set; } = new();
    public List<JsonEvent> Events { get; set; } = new();
    public List<JsonMethod> Methods { get; set; } = new();
    public JsonTypeReference? EnumUnderlyingType { get; set; }
}

public class JsonType
{
    public string Name { get; set; } = "";
    public string Namespace { get; set; } = "";
    public string Kind { get; set; } = "";
    public List<JsonGenericParam> GenericParameters { get; set; } = new();
    public List<JsonMethod> Methods { get; set; } = new();
    public List<JsonProperty> Properties { get; set; } = new();
    public List<JsonEvent> Events { get; set; } = new();
}

public class JsonGenericParam
{
    public string Name { get; set; } = "";
    public List<JsonTypeReference> Constraints { get; set; } = new();
	public string? Alias { get; set; } = null;
}

public class JsonParameter
{
    public string Name { get; set; } = "";
    public JsonTypeReference Type { get; set; } = null!;
    public bool IsOptional { get; set; } = false;
    public bool IsOut { get; set; } = false;
}

public class JsonMethod
{
    public string Name { get; set; } = "";
    public JsonTypeReference ReturnType { get; set; } = null!;
    public List<JsonGenericParam> GenericParameters { get; set; } = new();
    public List<JsonParameter> Parameters { get; set; } = new();
    public bool Static { get; set; }
}

public class JsonProperty
{
    public string Name { get; set; } = "";
    public JsonTypeReference Type { get; set; } = null!;
    public bool CanRead { get; set; }
    public bool CanWrite { get; set; }
}

public class JsonEvent
{
    public string Name { get; set; } = "";
    public JsonTypeReference HandlerType { get; set; } = null!;
}

public class JsonField
{
    public string Name { get; set; } = "";
    public JsonTypeReference Type { get; set; } = null!;
    public string? Value { get; set; } = null;
}

public class JsonTypeReference
{
    public string Name { get; set; } = "";
    public string Namespace { get; set; } = "";
	public int? Arity { get; set; } = null;
    public List<JsonTypeReference> GenericArguments { get; set; } = new();
    public string Kind { get; set; }
}

// -------------------------- Generator -----------------------------------
public sealed class MetadataJsonGenerator
{
    private readonly MetadataContext _ctx;
    private readonly MetadataReader _r;
    private readonly TypeNameProvider _typeProvider;

    public MetadataJsonGenerator(MetadataContext ctx)
    {
        _ctx = ctx;
        _r = ctx.Reader;
        _typeProvider = new TypeNameProvider(_r);
    }

    public JsonTypeDef EmitType(TypeDefinitionHandle handle)
    {
        var td = _r.GetTypeDefinition(handle);
		var (typeName, arity) = MetadataHelpers.SplitGenericName(_r.GetString(td.Name));
        var jt = new JsonTypeDef
        {
            AssemblyPath = Path.GetFileName(_ctx.FilePath),
            Namespace = _r.GetString(td.Namespace),
            Name = typeName,
			Arity = arity > 0 ? arity : null,
        };

        jt.Kind = td.GetKind(_r);

        if (!td.BaseType.IsNil)
        {
            jt.BaseType = td.BaseType.Kind switch
            {
                HandleKind.TypeReference => _typeProvider.GetTypeFromReference(_r, (TypeReferenceHandle)td.BaseType, 0),
                HandleKind.TypeDefinition => _typeProvider.GetTypeFromDefinition(_r, (TypeDefinitionHandle)td.BaseType, 0),
                HandleKind.TypeSpecification => _typeProvider.GetTypeFromSpecification(_r, _ctx, (TypeSpecificationHandle)td.BaseType, 0),
                _ => null
            };
        }

        // Interfaces
        foreach (var ih in td.GetInterfaceImplementations())
        {
            var ii = _r.GetInterfaceImplementation(ih);
            var name = ii.Interface.Kind switch
            {
                HandleKind.TypeReference => _typeProvider.GetTypeFromReference(_r, (TypeReferenceHandle)ii.Interface, 0).Name,
                HandleKind.TypeDefinition => _typeProvider.GetTypeFromDefinition(_r, (TypeDefinitionHandle)ii.Interface, 0).Name,
                HandleKind.TypeSpecification => _typeProvider.GetTypeFromSpecification(_r, _ctx, (TypeSpecificationHandle)ii.Interface, 0).Name,
                _ => null
            };
            if (!string.IsNullOrEmpty(name)) jt.Interfaces.Add(name!);
        }

        // Generic params
		{
			var i = 0;
			foreach (var gpHandle in td.GetGenericParameters())
			{
				var gp = _r.GetGenericParameter(gpHandle);
				var gpj = new JsonGenericParam {
					Name = _r.GetString(gp.Name),
					Alias = "T" + i++,
				};
				foreach (var c in gp.GetConstraints())
				{
					var gc = _r.GetGenericParameterConstraint(c);
					var t = ResolveTypeName(gc.Type);
					if (t != null) gpj.Constraints.Add(t);
				}
				jt.GenericParameters.Add(gpj);
			}
		}

        // Enum underlying type
        if (jt.Kind == "enum")
        {
            foreach (var fh in td.GetFields())
            {
                var f = _r.GetFieldDefinition(fh);
                if ((_r.GetString(f.Name) == "value__"))
                {
                    var sig = f.DecodeSignature(_typeProvider, _ctx);
                    jt.EnumUnderlyingType = sig;
                    break;
                }
            }
        }

        // Fields
        foreach (var fh in td.GetFields())
        {
            var f = _r.GetFieldDefinition(fh);
            if (_r.GetString(f.Name) == "value__") continue;
            var fj = new JsonField
            {
                Name = _r.GetString(f.Name),
                Type = f.DecodeSignature(_typeProvider, _ctx),
            };

            var c = f.GetDefaultValue();
            if (!c.IsNil)
            {
                var dv = _r.GetConstant(c);
                fj.Value = dv.ReadAsString(_r);
            }
            jt.Fields.Add(fj);
        }

        // Properties
        foreach (var ph in td.GetProperties())
        {
            var p = _r.GetPropertyDefinition(ph);
            var accessors = p.GetAccessors();
            var sig = p.DecodeSignature(_typeProvider, _ctx);
            var pj = new JsonProperty
            {
                Name = _r.GetString(p.Name),
                Type = sig.ReturnType,
                CanRead = !accessors.Getter.IsNil,
                CanWrite = !accessors.Setter.IsNil,
            };
            jt.Properties.Add(pj);
        }

        // Events
		foreach (var evHandle in td.GetEvents())
		{
		    var evDef = _r.GetEventDefinition(evHandle);
			var evTypeHandle = evDef.Type;

			JsonTypeReference handlerType;
			switch (evTypeHandle.Kind)
			{
			    case HandleKind.TypeDefinition:
			        handlerType = _typeProvider.GetTypeFromDefinition(_r, (TypeDefinitionHandle)evTypeHandle, 0);
			        break;
			    case HandleKind.TypeReference:
			        handlerType = _typeProvider.GetTypeFromReference(_r, (TypeReferenceHandle)evTypeHandle, 0);
			        break;
			    case HandleKind.TypeSpecification:
			        var blobReader = _r.GetBlobReader(_r.GetTypeSpecification((TypeSpecificationHandle)evTypeHandle).Signature);
			        var decoder = new SignatureDecoder<JsonTypeReference, object?>(_typeProvider, _r, null);
			        handlerType = decoder.DecodeType(ref blobReader);
			        break;
			    default:
			        throw new NotSupportedException($"Unexpected handle kind: {evTypeHandle.Kind}");
			}
		
		    jt.Events.Add(new JsonEvent
		    {
		        Name = _r.GetString(evDef.Name),
		        HandlerType = handlerType,
		    });
		}

        // Methods (skip special methods that are event/property accessors, they'll still appear but fine)
        foreach (var mh in td.GetMethods())
        {
            var m = _r.GetMethodDefinition(mh);
			var ms = m.DecodeSignature(_typeProvider, _ctx);
            var mj = new JsonMethod
            {
                Name = _r.GetString(m.Name),
                ReturnType = ms.ReturnType,
 				Static = (m.Attributes & MethodAttributes.Static) != 0,
            };

            foreach (var gpHandle in m.GetGenericParameters())
            {
                var gp = _r.GetGenericParameter(gpHandle);
                var gpj = new JsonGenericParam { Name = _r.GetString(gp.Name) };
                foreach (var c in gp.GetConstraints())
                {
                    var gc = _r.GetGenericParameterConstraint(c);
                    var t = ResolveTypeName(gc.Type);
                    if (t != null) gpj.Constraints.Add(t);
                }
                mj.GenericParameters.Add(gpj);
            }

			var paramHandles = m.GetParameters().ToArray();
        	for (int i = 0; i < ms.ParameterTypes.Length; i++)
        	{
        	    ParameterHandle phandle = default;

        	    // Look for parameter with matching sequence index
        	    var seqIndex = i + 1; // return is 0
        	    var ph = paramHandles.FirstOrDefault(p => _r.GetParameter(p).SequenceNumber == seqIndex);
        	    if (!ph.IsNil)
        	        phandle = ph;

        	    var jp = ResolveParamType(_r, ms.ParameterTypes[i], phandle, i);
        	    mj.Parameters.Add(jp);
        	}

            jt.Methods.Add(mj);
        }

		Guid? typeGuid = MetadataHelpers.GetTypeGuid(_r, handle);
		if (typeGuid != null) {
			jt.Guid = typeGuid.ToString();
		}

        return jt;
    }

	private JsonParameter ResolveParamType(
	    MetadataReader reader,
	    JsonTypeReference paramType,
	    ParameterHandle paramHandle,
	    int index)
	{
	    string name = $"param{index}";
		bool isOptional = false;
		bool isOut = false;
	
	    if (!paramHandle.IsNil)
	    {
	        var param = reader.GetParameter(paramHandle);
	
	        if (!param.Name.IsNil)
	        {
	            name = reader.GetString(param.Name);
	        }
	
			var attrs = param.Attributes;
			isOptional = (attrs & ParameterAttributes.Optional) != 0;
			isOut = (attrs & ParameterAttributes.Out) != 0;
	    }

	    return new JsonParameter
	    {
	        Name = name,
	        Type = paramType,
	        IsOptional = isOptional,
	        IsOut = isOut,
	    };
	}

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

    private JsonTypeReference? ResolveTypeName(EntityHandle h) => h.Kind switch
    {
        HandleKind.TypeReference => _typeProvider.GetTypeFromReference(_r, (TypeReferenceHandle)h, 0),
        HandleKind.TypeDefinition => _typeProvider.GetTypeFromDefinition(_r, (TypeDefinitionHandle)h, 0),
        HandleKind.TypeSpecification => _typeProvider.GetTypeFromSpecification(_r, _ctx, (TypeSpecificationHandle)h, 0),
        _ => null
    };

    private JsonTypeReference? GetMemberRefTypeName(MemberReferenceHandle mrh)
    {
        var mr = _r.GetMemberReference(mrh);
        var parent = mr.Parent;
        return parent.Kind switch
        {
            HandleKind.TypeReference => _typeProvider.GetTypeFromReference(_r, (TypeReferenceHandle)parent, 0),
            HandleKind.TypeDefinition => _typeProvider.GetTypeFromDefinition(_r, (TypeDefinitionHandle)parent, 0),
            HandleKind.TypeSpecification => _typeProvider.GetTypeFromSpecification(_r, _ctx, (TypeSpecificationHandle)parent, 0),
            _ => null
        };
    }

    private string GetMethodDefTypeName(MethodDefinitionHandle mdh)
    {
        var md = _r.GetMethodDefinition(mdh);
        var td = _r.GetTypeDefinition(md.GetDeclaringType());
        var ns = _r.GetString(td.Namespace);
        var name = _r.GetString(td.Name);
        return string.IsNullOrEmpty(ns) ? name : ns + "." + name;
    }

	private static string ReadPrimitive(BlobReader blob, string type)
    {
        return type switch
        {
            "bool"   => blob.ReadByte() != 0 ? "true" : "false",
            "byte"   => blob.ReadByte().ToString(),
            "sbyte"  => blob.ReadSByte().ToString(),
            "short"  => blob.ReadInt16().ToString(),
            "ushort" => blob.ReadUInt16().ToString(),
            "int"    => blob.ReadInt32().ToString(),
            "uint"   => blob.ReadUInt32().ToString(),
            "long"   => blob.ReadInt64().ToString(),
            "ulong"  => blob.ReadUInt64().ToString(),
            "float"  => blob.ReadSingle().ToString(),
            "double" => blob.ReadDouble().ToString(),
            "char"   => ((ushort)blob.ReadChar()).ToString(),
            "string" => blob.ReadSerializedString() ?? "null",
            _        => "<unknown>"
        };
    }

    private static string ReadFixedArg(SignatureTypeCode tc, ref BlobReader value)
    {
        return tc switch
        {
            SignatureTypeCode.Boolean => value.ReadBoolean().ToString(),
            SignatureTypeCode.Char => ((ushort)value.ReadChar()).ToString(),
            SignatureTypeCode.SByte => value.ReadSByte().ToString(),
            SignatureTypeCode.Byte => value.ReadByte().ToString(),
            SignatureTypeCode.Int16 => value.ReadInt16().ToString(),
            SignatureTypeCode.UInt16 => value.ReadUInt16().ToString(),
            SignatureTypeCode.Int32 => value.ReadInt32().ToString(),
            SignatureTypeCode.UInt32 => value.ReadUInt32().ToString(),
            SignatureTypeCode.Int64 => value.ReadInt64().ToString(),
            SignatureTypeCode.UInt64 => value.ReadUInt64().ToString(),
            SignatureTypeCode.Single => value.ReadSingle().ToString(),
            SignatureTypeCode.Double => value.ReadDouble().ToString(),
            SignatureTypeCode.String => value.ReadSerializedString() ?? "null",
            _ => tc.ToString()
        };
    }
}

// ----------------------- Helpers / Extensions ---------------------------
public static class MetadataExtensions
{
    public static string GetKind(this TypeDefinition td, MetadataReader r)
    {
        if (td.Attributes.HasFlag(TypeAttributes.Interface)) return "interface";
        // Delegates are sealed classes deriving from System.MulticastDelegate
        string? baseType = null;
        if (!td.BaseType.IsNil)
        {
            baseType = td.BaseType.Kind switch
            {
                HandleKind.TypeReference => r.GetTypeReference((TypeReferenceHandle)td.BaseType).GetFullName(r),
                HandleKind.TypeDefinition => r.GetTypeDefinition((TypeDefinitionHandle)td.BaseType).GetFullName(r),
                _ => null
            };
        }
        if (baseType == "System.MulticastDelegate") return "delegate";
        if (td.Attributes.HasFlag(TypeAttributes.Sealed) && !td.Attributes.HasFlag(TypeAttributes.Abstract)) return "struct";
        // WinRT enums are value types with special field value__
        foreach (var fh in td.GetFields())
        {
            var f = r.GetFieldDefinition(fh);
            if (r.GetString(f.Name) == "value__") return "enum";
        }
        return "class";
    }

    public static string GetFullName(this TypeReference tr, MetadataReader r)
    {
        var ns = r.GetString(tr.Namespace);
        var name = r.GetString(tr.Name);
        return string.IsNullOrEmpty(ns) ? name : ns + "." + name;
    }

    public static string GetFullName(this TypeDefinition td, MetadataReader r)
    {
        var ns = r.GetString(td.Namespace);
        var name = r.GetString(td.Name);
        return string.IsNullOrEmpty(ns) ? name : ns + "." + name;
    }

    public static string ReadAsString(this Constant c, MetadataReader reader)
    {
        var br = reader.GetBlobReader(c.Value);   // convert BlobHandle → BlobReader

        return c.TypeCode switch
        {
            ConstantTypeCode.String => br.ReadSerializedString() ?? "null",
            ConstantTypeCode.Boolean => br.ReadBoolean().ToString(),
            ConstantTypeCode.Char => ((ushort)br.ReadChar()).ToString(),
            ConstantTypeCode.SByte => br.ReadSByte().ToString(),
            ConstantTypeCode.Byte => br.ReadByte().ToString(),
            ConstantTypeCode.Int16 => br.ReadInt16().ToString(),
            ConstantTypeCode.UInt16 => br.ReadUInt16().ToString(),
            ConstantTypeCode.Int32 => br.ReadInt32().ToString(),
            ConstantTypeCode.UInt32 => br.ReadUInt32().ToString(),
            ConstantTypeCode.Int64 => br.ReadInt64().ToString(),
            ConstantTypeCode.UInt64 => br.ReadUInt64().ToString(),
            ConstantTypeCode.Single => br.ReadSingle().ToString(),
            ConstantTypeCode.Double => br.ReadDouble().ToString(),
            _ => "<const>"
        };
    }
}
