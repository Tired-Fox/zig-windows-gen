// ----- This code is written and maintained by hand -----

/// Helper that maps a generic type to the appropriate base type that can be
/// used with T [IN] and *T [OUT]
///
/// based on rules of pass by value and pass by ref/pointer
pub fn genericArg(T: type) type {
    return if (@import("../core.zig").passByRef(T)) *T else T;
}
