public sealed class JsonFactoryInfo
{
    public List<string>? Interfaces { get; set; } = null; // fully-qualified names, e.g. Windows.UI.Notifications.IToastNotificationFactory
    public List<string>? Statics { get; set; } = null;    // e.g. Windows.UI.Notifications.IToastNotificationManagerStatics2
    public List<string>? Composable { get; set; } = null; // from [Composable]
    public bool HasDefault { get; set; }                  // use IActivationFactory if true
}

public sealed class JsonTypeDef
{
    public string? AssemblyPath { get; set; } = null;
    public string Kind { get; set; } = "Type"; // class|interface|struct|enum|delegate
    public string? Namespace { get; set; } = null;
    public string Name { get; set; } = default!;
    public string? Guid { get; set; }
    public bool Agile { get; set; }
    public JsonTypeReference? BaseType { get; set; } = null;
    public List<string>? GenericParameters { get; set; } = null;
    public JsonFactoryInfo? Factory { get; set; } = null;
    public string? DefaultInterface { get; set; } = null;
    public List<string>? Interfaces { get; set; } = null;
    public List<JsonField>? Fields { get; set; } = null;
    public List<JsonProperty>? Properties { get; set; } = null;
    public List<JsonEvent>? Events { get; set; } = null;
    public List<JsonMethod>? Methods { get; set; } = null;
    public List<JsonEnumValues>? Values { get; set; } = null;
}

public class JsonGenericParam
{
    public string Name { get; set; } = "";
    public List<JsonTypeReference>? Constraints { get; set; } = null;
}

public class JsonParameter
{
    public string Name { get; set; } = "";
    public JsonTypeReference Type { get; set; } = null!;
    public List<string>? Attributes { get; set; } = null;
}

public class JsonMethod
{
    public string Name { get; set; } = "";
    public bool Static { get; set; }
    public List<string>? GenericParameters { get; set; } = null;
    public List<JsonParameter>? Parameters { get; set; } = null;
    public JsonTypeReference ReturnType { get; set; } = null!;
}

public class JsonProperty
{
    public string Name { get; set; } = "";
    public JsonTypeReference Type { get; set; } = null!;
    public List<string>? Accessors { get; set; } = null;
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
    public string? Kind { get; set; } = null;
    public string? Namespace { get; set; } = null;
    public string Name { get; set; } = "";
    public List<JsonTypeReference>? GenericArguments { get; set; } = null;
}
public sealed class JsonEnumValues {
    public string Name { get; set; } = null!;
    public Int32 Value { get; set; } = 0;
}
