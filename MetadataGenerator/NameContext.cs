using System.Collections.Immutable;
using System.Reflection.Metadata;


public sealed record NameContext(
    ImmutableArray<string> TypeParameterNames,
    ImmutableArray<string> MethodParameterNames)
{
    public static NameContext ForType(MetadataReader r, TypeDefinition td)
        => new(GetTypeParamNames(r, td), ImmutableArray<string>.Empty);

    public static NameContext ForMethod(MetadataReader r, TypeDefinition td, MethodDefinition md)
        => new(GetTypeParamNames(r, td), GetMethodParamNames(r, md));

    // For nested types, prepend outer type param names (outer first, then inner)
    static ImmutableArray<string> GetTypeParamNames(MetadataReader r, TypeDefinition td)
    {
        var names = ImmutableArray.CreateBuilder<string>();

        // Walk outward to collect outer generic parameters first (optional but nice)
        var stack = new Stack<TypeDefinition>();
        var cur = td;
        while (true)
        {
            stack.Push(cur);
            var decl = cur.GetDeclaringType(); // returns default if not nested
            if (decl.IsNil) break;
            cur = r.GetTypeDefinition(decl);
        }

        while (stack.Count > 0)
        {
            var t = stack.Pop();
            foreach (var gph in t.GetGenericParameters())
            {
                var gp = r.GetGenericParameter(gph);
                names.Add(gp.Name.IsNil ? $"T{gp.Index}" : r.GetString(gp.Name));
            }
        }
        return names.ToImmutable();
    }

    static ImmutableArray<string> GetMethodParamNames(MetadataReader r, MethodDefinition md)
    {
        var names = ImmutableArray.CreateBuilder<string>();
        foreach (var gph in md.GetGenericParameters())
        {
            var gp = r.GetGenericParameter(gph);
            names.Add(gp.Name.IsNil ? $"M{gp.Index}" : r.GetString(gp.Name));
        }
        return names.ToImmutable();
    }
}
