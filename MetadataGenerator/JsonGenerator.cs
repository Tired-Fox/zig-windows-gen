using System.Buffers;
using System.Reflection;
using System.Reflection.Metadata;
using System.Reflection.Metadata.Ecma335;

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
        var nameCtx = NameContext.ForType(_r, td);

        var (typeName, arity) = MetadataHelpers.SplitGenericName(_r.GetString(td.Name));

        var tattrs = AttributeReader.ReadFactoryInfo(_r, handle);
        var jt = new JsonTypeDef
        {
            AssemblyPath = Path.GetFileName(_ctx.FilePath),
            Namespace = _r.GetString(td.Namespace),
            Name = typeName,
            Factory = tattrs.FactoryInfo(),
            Agile = tattrs.Agile,
        };

        if (!td.BaseType.IsNil)
        {
            jt.BaseType = td.BaseType.Kind switch
            {
                HandleKind.TypeReference => _typeProvider.GetTypeFromReference(_r, (TypeReferenceHandle)td.BaseType, 0),
                HandleKind.TypeDefinition => _typeProvider.GetTypeFromDefinition(_r, (TypeDefinitionHandle)td.BaseType, 0),
                HandleKind.TypeSpecification => _typeProvider.GetTypeFromSpecification(_r, nameCtx, (TypeSpecificationHandle)td.BaseType, 0),
                _ => null
            };
        }

        jt.Kind = td.GetKind(jt.BaseType!, _r);

        // Interfaces
        {
            List<string> interfaces = new();
            foreach (var ih in td.GetInterfaceImplementations())
            {
                var ii = _r.GetInterfaceImplementation(ih);
                var hasDefault = ii.GetCustomAttributes()
                        .Select(a => MetadataHelpers.GetAttributeTypeName(_r, _r.GetCustomAttribute(a).Constructor))
                        .Any(n => n == "Windows.Foundation.Metadata.DefaultAttribute");
                var name = ii.Interface.Kind switch
                {
                    HandleKind.TypeReference => _typeProvider.GetTypeFromReference(_r, (TypeReferenceHandle)ii.Interface, 0).Name,
                    HandleKind.TypeDefinition => _typeProvider.GetTypeFromDefinition(_r, (TypeDefinitionHandle)ii.Interface, 0).Name,
                    HandleKind.TypeSpecification => _typeProvider.GetTypeFromSpecification(_r, nameCtx, (TypeSpecificationHandle)ii.Interface, 0).Name,
                    _ => null
                };

                if (hasDefault) {
                    jt.DefaultInterface = name;
                }
                if (!string.IsNullOrEmpty(name)) interfaces.Add(name!);
            }
            if (interfaces.Count > 0)
                jt.Interfaces = interfaces;
        }

        // Generic params
        {
            List<string> genericParams = new();
            foreach (var gpHandle in td.GetGenericParameters())
            {
                var gp = _r.GetGenericParameter(gpHandle);
                // var gpj = new JsonGenericParam { Name = _r.GetString(gp.Name) };
                // List<JsonTypeReference> constraints = new();
                // foreach (var c in gp.GetConstraints())
                // {
                //     var gc = _r.GetGenericParameterConstraint(c);
                //     var t = ResolveTypeName(gc.Type, nameCtx);
                //     if (t != null) constraints.Add(t);
                // }
                // if (constraints.Count > 0)
                //     gpj.Constraints = constraints;
                genericParams.Add(_r.GetString(gp.Name));
            }
            if (genericParams.Count > 0)
                jt.GenericParameters = genericParams;
        }

        // Enum underlying type
        if (jt.Kind == "Enum")
        {
            List<JsonEnumValues> values = new();
            foreach (var fh in td.GetFields())
            {
                var f = _r.GetFieldDefinition(fh);
                var fn = _r.GetString(f.Name);
                if (fn == "_value" || fn == "value__") continue;

                var fdv = f.GetDefaultValue();
                if (fdv.IsNil) continue;

                var fc = _r.GetConstant(fdv);
                var br = _r.GetBlobReader(fc.Value);
                values.Add(new JsonEnumValues {
                    Name = fn,
                    Value = br.ReadInt32()
                });
            }
            jt.Values = values;
        } else {
            // Fields
            List<JsonField> fields = new();
            foreach (var fh in td.GetFields())
            {
                var f = _r.GetFieldDefinition(fh);
                if (_r.GetString(f.Name) == "value__") continue;
                var fj = new JsonField
                {
                    Name = _r.GetString(f.Name),
                    Type = f.DecodeSignature(_typeProvider, nameCtx),
                };

                var c = f.GetDefaultValue();
                if (!c.IsNil)
                {
                    var dv = _r.GetConstant(c);
                    fj.Value = dv.ReadAsString(_r);
                }
                fields.Add(fj);
            }
            if (fields.Count > 0)
            {
                jt.Fields = fields;
            }
        }

        // Properties
        {
            List<JsonProperty> properties = new();
            foreach (var ph in td.GetProperties())
            {
                var p = _r.GetPropertyDefinition(ph);
                var accessors = p.GetAccessors();
                var sig = p.DecodeSignature(_typeProvider, nameCtx);
                List<string> attributes = new();
                if (!accessors.Getter.IsNil)
                    attributes.Add("Getter");
                if (!accessors.Setter.IsNil)
                    attributes.Add("Setter");

                var pj = new JsonProperty
                {
                    Name = _r.GetString(p.Name),
                    Type = sig.ReturnType,
                    Accessors = attributes.Count > 0 ? attributes : null,
                };
                properties.Add(pj);
            }
            if (properties.Count > 0)
                jt.Properties = properties;
        }

        // Events
        {
            List<JsonEvent> events = new();
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
                        var decoder = new SignatureDecoder<JsonTypeReference, NameContext>(_typeProvider, _r, nameCtx);
                        handlerType = decoder.DecodeType(ref blobReader);
                        break;
                    default:
                        throw new NotSupportedException($"Unexpected handle kind: {evTypeHandle.Kind}");
                }

                events.Add(new JsonEvent
                        {
                        Name = _r.GetString(evDef.Name),
                        HandlerType = handlerType,
                        });
            }
            if (events.Count > 0)
                jt.Events = events;
        }

        // Methods (skip special methods that are event/property accessors, they'll still appear but fine)
        {
            List<JsonMethod> methods = new();
            foreach (var mh in td.GetMethods())
            {
                var m = _r.GetMethodDefinition(mh);

                var nctx = NameContext.ForMethod(_r, td, m);
                var ms = m.DecodeSignature(_typeProvider, nctx);
                var mj = new JsonMethod
                {
                    Name = _r.GetString(m.Name),
                    ReturnType = ms.ReturnType,
                    Static = (m.Attributes & MethodAttributes.Static) != 0,
                };

                {
                    List<string> generics = new();
                    foreach (var gpHandle in m.GetGenericParameters())
                    {
                        var gp = _r.GetGenericParameter(gpHandle);
                        // var gpj = new JsonGenericParam { Name = _r.GetString(gp.Name) };
                        // List<JsonTypeReference> constraints = new();
                        // foreach (var c in gp.GetConstraints())
                        // {
                        //     var gc = _r.GetGenericParameterConstraint(c);
                        //     var t = ResolveTypeName(gc.Type, nctx);
                        //     if (t != null) constraints.Add(t);
                        // }
                        // if (constraints.Count > 0)
                        //     gpj.Constraints = constraints;
                        generics.Add(_r.GetString(gp.Name));
                    }
                    if (generics.Count > 0)
                        mj.GenericParameters = generics;
                }

                {
                    List<JsonParameter> parameters = new();
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
                        parameters.Add(jp);
                    }
                    if (parameters.Count > 0)
                        mj.Parameters = parameters;
                }

                methods.Add(mj);
            }
            if (methods.Count > 0)
                jt.Methods = methods;
        }

        Guid? typeGuid = MetadataHelpers.GetTypeGuid(_r, handle);
        if (typeGuid != null)
        {
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
        List<string> attributes = new();

        if (!paramHandle.IsNil)
        {
            var param = reader.GetParameter(paramHandle);

            if (!param.Name.IsNil)
            {
                name = reader.GetString(param.Name);
            }

            var attrs = param.Attributes;
            if ((attrs & ParameterAttributes.Optional) != 0)
            {
                attributes.Add("Optional");
            }
            if ((attrs & ParameterAttributes.In) != 0)
            {
                attributes.Add("In");
            }
            if ((attrs & ParameterAttributes.Out) != 0)
            {
                attributes.Add("Out");
            }
        }

        return new JsonParameter
        {
            Name = name,
            Type = paramType,
            Attributes = attributes.Count > 0 ? attributes : null,
        };
    }

    private JsonTypeReference? ResolveTypeName(EntityHandle h, NameContext nameCtx)
    {
        return h.Kind switch
        {
            HandleKind.TypeReference => _typeProvider.GetTypeFromReference(_r, (TypeReferenceHandle)h, 0),
            HandleKind.TypeDefinition => _typeProvider.GetTypeFromDefinition(_r, (TypeDefinitionHandle)h, 0),
            HandleKind.TypeSpecification => _typeProvider.GetTypeFromSpecification(_r, nameCtx, (TypeSpecificationHandle)h, 0),
            _ => null
        };
    }

    private JsonTypeReference? GetMemberRefTypeName(MemberReferenceHandle mrh, NameContext nameCtx)
    {
        var mr = _r.GetMemberReference(mrh);
        var parent = mr.Parent;
        return parent.Kind switch
        {
            HandleKind.TypeReference => _typeProvider.GetTypeFromReference(_r, (TypeReferenceHandle)parent, 0),
            HandleKind.TypeDefinition => _typeProvider.GetTypeFromDefinition(_r, (TypeDefinitionHandle)parent, 0),
            HandleKind.TypeSpecification => _typeProvider.GetTypeFromSpecification(_r, nameCtx, (TypeSpecificationHandle)parent, 0),
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
            "bool" => blob.ReadByte() != 0 ? "true" : "false",
            "byte" => blob.ReadByte().ToString(),
            "sbyte" => blob.ReadSByte().ToString(),
            "short" => blob.ReadInt16().ToString(),
            "ushort" => blob.ReadUInt16().ToString(),
            "int" => blob.ReadInt32().ToString(),
            "uint" => blob.ReadUInt32().ToString(),
            "long" => blob.ReadInt64().ToString(),
            "ulong" => blob.ReadUInt64().ToString(),
            "float" => blob.ReadSingle().ToString(),
            "double" => blob.ReadDouble().ToString(),
            "char" => ((ushort)blob.ReadChar()).ToString(),
            "string" => blob.ReadSerializedString() ?? "null",
            _ => "<unknown>"
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
