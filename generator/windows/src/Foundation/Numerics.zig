pub const Matrix3x2 = extern struct {
    M11: f32,
    M12: f32,
    M21: f32,
    M22: f32,
    M31: f32,
    M32: f32,
};
pub const Matrix4x4 = extern struct {
    M11: f32,
    M12: f32,
    M13: f32,
    M14: f32,
    M21: f32,
    M22: f32,
    M23: f32,
    M24: f32,
    M31: f32,
    M32: f32,
    M33: f32,
    M34: f32,
    M41: f32,
    M42: f32,
    M43: f32,
    M44: f32,
};
pub const Plane = extern struct {
    Normal: Vector3,
    D: f32,
};
pub const Quaternion = extern struct {
    X: f32,
    Y: f32,
    Z: f32,
    W: f32,
};
pub const Rational = extern struct {
    Numerator: u32,
    Denominator: u32,
};
pub const Vector2 = extern struct {
    X: f32,
    Y: f32,
};
pub const Vector3 = extern struct {
    X: f32,
    Y: f32,
    Z: f32,
};
pub const Vector4 = extern struct {
    X: f32,
    Y: f32,
    Z: f32,
    W: f32,
};
