using System.Reflection;
using System.Reflection.Metadata;
using System.Text.Json;
using System.Text.Json.Serialization;

// TODO:
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

    static bool HasFlag(string[] args, params string[] flags) {
        return args.Any(a => flags.Contains(a, StringComparer.Ordinal));
    }

    private static int Main(string[] args)
    {
        if(HasFlag(args, "--help", "-h"))
        {
            Console.WriteLine(@"WinRT Json Metadata Generator

USAGE: program.exe [OPTIONS]

OPTIONS:
    --minify, -m    Minify the json output
    --help,   -h    Print this message and exit
            ");
            return 0;
        }

        bool minify = HasFlag(args, "--minify", "-m");

        string dir = Path.Combine(Path.GetDirectoryName(Assembly.GetExecutingAssembly().Location!)!, "winmd");
        string outputDir = Path.GetFullPath(Path.Combine(Path.GetDirectoryName(Assembly.GetExecutingAssembly().Location!)!, "..", "..", "..", "output"));

        Console.WriteLine("[\x1b[34mINFO\x1b[39m] Setup Output Directory", outputDir);
        if (Directory.Exists(outputDir)) Directory.Delete(outputDir, true);
        Directory.CreateDirectory(outputDir);

        Console.WriteLine("[\x1b[34mINFO\x1b[39m] Parse WinMD files:", outputDir);
        var namespaces = new Dictionary<string, Dictionary<string, JsonTypeDef>>();
        foreach (var winmd in FindWinmds(dir))
        {
            Console.WriteLine("           \x1b[36m+\x1b[39m {0}", Path.GetFileNameWithoutExtension(winmd));
            try
            {
                using var fs = File.OpenRead(winmd);
                using var pe = new System.Reflection.PortableExecutable.PEReader(fs);
                var md = pe.GetMetadataReader(MetadataReaderOptions.None);


                var ctx = new MetadataContext(winmd, md);
                var gen = new MetadataJsonGenerator(ctx);


                foreach (var tdHandle in md.TypeDefinitions)
                {
                    var td = md.GetTypeDefinition(tdHandle);
                    // Skip <Module>
                    if (md.GetString(td.Name) == "<Module>") continue;
                    var jt = gen.EmitType(tdHandle);

                    var ns = jt.Namespace!;
                    if (!namespaces.ContainsKey(ns)) namespaces.Add(ns, new());
                    namespaces[ns].Add(jt.Name, jt);
                }
            }
            catch (Exception ex)
            {
                Console.Error.WriteLine($"               \x1b[31m-\x1b[39m Failed '{winmd}': {ex.Message}");
                Console.Error.WriteLine(ex);
            }
        }

        var options = new JsonSerializerOptions
        {
            WriteIndented = !minify,
            DefaultIgnoreCondition = JsonIgnoreCondition.WhenWritingNull,
            Encoder = System.Text.Encodings.Web.JavaScriptEncoder.UnsafeRelaxedJsonEscaping
        };

        var total = 0;
        foreach (var ns in namespaces)
        {
            var outFile = Path.Combine(outputDir, $"{ns.Key}.json");
            total += ns.Value.Values.Count;
            File.WriteAllText(outFile, JsonSerializer.Serialize(ns.Value.Values.ToList(), options));
        }

        var minified = minify ? "\x1b[1mminified\x1b[22m " : "";
        Console.WriteLine(
                $"[\x1b[34mINFO\x1b[39m] Wrote \x1b[33m{total}\x1b[39m type definitions as \x1b[33m{namespaces.Keys.Count}\x1b[39m {minified}JSON files under "
                + $"\x1b[4m\x1b]8;;file:///{outputDir}\x1b\\{outputDir}\x1b]8;;\x1b\\\x1b[0m"
        );

        return 0;
    }
}

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

public static class MetadataExtensions
{
    public static string GetKind(this TypeDefinition td, JsonTypeReference baseType, MetadataReader r)
    {
        if (td.Attributes.HasFlag(TypeAttributes.Interface)) return "Interface";

        if (baseType.Name == "MulticastDelegate")
            return "Delegate";

        if (baseType.Name == "Enum")
            return "Enum";

        // Value types that aren't enums are structs
        if (baseType.Name == "ValueType")
            return "Struct";

        return "Class";
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
