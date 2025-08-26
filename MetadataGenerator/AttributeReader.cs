using System.Reflection.Metadata;

public sealed class Attributes {
    public List<string> Factories { get; set; } = new();
    public List<string> Statics { get; set; } = new();
    public List<string> Composable { get; set; } = new();
    public bool HasDefaultActivation { get; set; }
    public bool Agile { get; set; }

    public JsonFactoryInfo? FactoryInfo()
    {
        if (!this.HasDefaultActivation && this.Factories.Count == 0 && this.Statics.Count == 0 && this.Composable.Count == 0)
            return null;
        return new JsonFactoryInfo {
            Interfaces = this.Factories.Count > 0 ? this.Factories : null,
            Statics = this.Statics.Count > 0 ? this.Statics : null,
            Composable = this.Composable.Count > 0 ? this.Composable : null,
            HasDefault = this.HasDefaultActivation,
        };
    }
};

public static class AttributeReader
{
    public static Attributes ReadFactoryInfo(MetadataReader r, TypeDefinitionHandle tdHandle)
    {
        var td = r.GetTypeDefinition(tdHandle);

        var attrs = new Attributes();
        foreach (var caHandle in td.GetCustomAttributes())
        {
            var ca = r.GetCustomAttribute(caHandle);

            // Identify the attribute type (namespace + name)
            var attrName = MetadataHelpers.GetAttributeTypeName(r, ca.Constructor);
            switch (attrName)
            {
                case "Windows.Foundation.Metadata.ActivatableAttribute":
                    {
                        var cav = ca.DecodeValue(new CaTypeProvider(r));
                        // If first arg is a System.Type -> factory interface
                        if (cav.FixedArguments.Length > 0 && IsSystemTypeArg(cav.FixedArguments[0]))
                        {
                            var factoryTypeName = (string)cav.FixedArguments[0].Value!;
                            attrs.Factories.Add(StripAssembly(factoryTypeName));
                        }
                        else
                        {
                            // Overload without Type → default activatable via IActivationFactory
                            attrs.HasDefaultActivation = true;
                        }
                        break;
                    }

                case "Windows.Foundation.Metadata.StaticAttribute":
                    {
                        var cav = ca.DecodeValue(new CaTypeProvider(r));
                        if (cav.FixedArguments.Length > 0 && IsSystemTypeArg(cav.FixedArguments[0]))
                        {
                            var staticsTypeName = (string)cav.FixedArguments[0].Value!;
                            attrs.Statics.Add(StripAssembly(staticsTypeName));
                        }
                        break;
                    }

                case "Windows.Foundation.Metadata.MarshalingBehaviorAttribute":
                    {
                        var cav = ca.DecodeValue(new CaTypeProvider(r));
                        // arg0: enum MarshalingType -> underlying Int32
                        var mt = (int)cav.FixedArguments[0].Value!;
                        // 2 == Agile, 1 == Standard, 0 == None (values per winmd)
                        attrs.Agile = mt == 2;
                        break;
                    }

                case "Windows.Foundation.Metadata.ComposableAttribute":
                    {
                        var cav = ca.DecodeValue(new CaTypeProvider(r));
                        if (cav.FixedArguments.Length > 0 && IsSystemTypeArg(cav.FixedArguments[0]))
                        {
                            var factoryTypeName = (string)cav.FixedArguments[0].Value!;
                            attrs.Composable.Add(StripAssembly(factoryTypeName));
                        }
                        break;
                    }
            }
        }

        return attrs;

        static bool IsSystemTypeArg(CustomAttributeTypedArgument<string> arg)
            => arg.Type is "System.Type" && arg.Value is string;

        static string StripAssembly(string serializedName)
        {
            // CustomAttribute decoder gives assembly-qualified names; keep Namespace.Type
            // Examples:
            //  "Windows.UI.Notifications.IToastNotificationFactory, Windows, Version=..."
            var comma = serializedName.IndexOf(',');
            return comma >= 0 ? serializedName[..comma] : serializedName;
        }
    }

}
