# WinRT Metadata Generator

## Types

**Type Map**
    + `Object` → `IInterface`
    + `string` → `HSTRING`
    + `MulticastDelegate` → `IUnknown`: Delegates don't have the full `Object` base type and are more stripped down

Generic types are pass by ref/pointer when they are an interface, otherwise they are pass by value. e.g. `IMap<HSTRING>`  will have
the method signature of `HasKey(this, key: HSTRING) HRESULT` which is pass by value and `IMap<IInspectable>` will have the signature `HasKey(this, key: *IInspectable)` which is pass by ref/pointer. This applies for result types as well; e.g. `IMap<HSTRING>` will have the signature `Lookup(this, HSTRING, *HSTRING)` and `IMap<IInspectable>` will have the signature `Lookup(this, *IInspectable, **IInspectable)`.

## Signature

+ `pinterface(...)` → when the outer type is a generic interface or delegate (e.g., IVectorView\1, IMap\`2)
    + Arity > 0 or GenericParameters.Length > 0
    + Signature = `pinterface({OPEN_GUID}; <arg-sigs...>)`
+ `{...}` (bare IID) → when a type argument is a non-generic interface or delegate
    + Signature = `{INTERFACE_IID}`
+ `rc(Namespace.Type;{IID})` → when a type argument is a runtime class
    + IID is its default interface’s IID
    + When `Kind` is `Class`
+ `cinterface(IInspectable)` → when a type argument is Windows.Foundation.IInspectable (special token)
+ `String` → string (`HSTRING`)
+ `Guid` → guid
+ `Enum` → enum(Namespace.Type;<underlying-prim-token>)
+ `Struct` → struct(Namespace.Type;<field-prim-token>;<field-prim-token>;...)
+ `Numeric/char/bool` primitives → i1/u1/i2/u2/i4/u4/i8/u8/f4/f8/b1/c2
    + Number is the number of bytes, e.g. `i1` eq `i8`, `i4` eq `i32`, `c2` eq `u16`, etc.

