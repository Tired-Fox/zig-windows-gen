/// Helper that maps a generic type to the appropriate base type that can be
/// used with T [IN] and *T [OUT]
///
/// based on rules of pass by value and pass by ref/pointer
pub fn Generic(T: type) type {
    return if (isInterface(T)) *T else T;
}

fn isInterface(T: type) bool {
    return @typeInfo(T) == .@"struct" and @hasField(T, "vtable");
}
