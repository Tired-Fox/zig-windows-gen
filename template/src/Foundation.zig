// ----- This code is written and maintained by hand -----
pub const IInspectable = extern struct {
    vtable: *const VTable,

    /// Must call `deinit` or `IUnknown.Release` on returned pointer
    pub fn cast(self: *@This(), AS: type) !*AS {
        var _r: ?*AS = undefined;
        try IUnknown.QueryInterface(@ptrCast(self), &AS.IID, @ptrCast(&_r));
        return _r.?;
    }

    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }

    pub fn GetIids(self: *@This(), count: *u32, iids: *[*]const Guid) core.HResult!void {
        const _r = self.vtable.GetIids(@ptrCast(self), count, iids);
        try core.hresultToError(_r);
    }

    pub fn GetRuntimeClassName(self: *@This(), class_name: *?HSTRING) core.HResult!void {
        const _r = self.vtable.GetRuntimeClassName(@ptrCast(self), class_name);
        try core.hresultToError(_r);
    }

    pub fn GetTrustLevel(self: *@This(), trust_level: *TrustLevel) core.HResult!void {
        const _r = self.vtable.GetTrustLevel(@ptrCast(self), trust_level);
        try core.hresultToError(_r);
    }

    pub const GUID: []const u8 = "af86e2e0-b12d-4c6a-9c5a-d7aa65101e90";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = "cinterface(IInspectable)";

    pub const VTable = extern struct {
        QueryInterface: *const fn (self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn (self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn (
            self: *anyopaque,
        ) callconv(.winapi) u32,
        GetIids: *const fn (self: *anyopaque, iidCount: *u32, iids: *[*]const Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn (self: *anyopaque, className: *?HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn (self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
    };
};

pub const IActivationFactory = extern struct {
    vtable: *const VTable,

    pub fn ActivateInstance(self: *@This(), iid: *const Guid) core.HResult!*anyopaque {
        var inspectable: *IInspectable = undefined;
        if (self.vtable.ActivateInstance(self, &inspectable) != 0) {
            return core.HResult.E_NOINTERFACE;
        }

        var interface: ?*anyopaque = undefined;
        try IUnknown.QueryInterface(@ptrCast(inspectable), iid, &interface);

        return interface.?;
    }

    pub const GUID: []const u8 = "00000035-0000-0000-c000-000000000046";
    pub const IID: Guid = Guid.initString(GUID);
    pub const VTable = extern struct { QueryInterface: *const fn (self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT, AddRef: *const fn (self: *anyopaque) callconv(.winapi) u32, Release: *const fn (
        self: *anyopaque,
    ) callconv(.winapi) u32, GetIids: *const fn (self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT, GetRuntimeClassName: *const fn (self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT, GetTrustLevel: *const fn (self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT, ActivateInstance: *const fn (*IActivationFactory, **IInspectable) callconv(.c) HRESULT };
};
