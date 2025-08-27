const std = @import("std");
const win32 = @import("win32");
const core = @import("../core.zig");

const wiredGuidEql = core.wiredGuidEql;

const CoCreateFreeThreadedMarshaler = win32.system.com.CoCreateFreeThreadedMarshaler;
const HRESULT = win32.foundation.HRESULT;
const IUnknown = win32.system.win_rt.IUnknown;
const IID_IMarshal = win32.system.com.IID_IMarshal;
const IMarshal = win32.system.com.IMarshal;
const IStream = win32.system.com.IStream;
const Guid = win32.zig.Guid;

pub fn marshaler(outer: *IUnknown, result: *?*anyopaque) !Marshaler {
    var base: ?*IUnknown = undefined;
    _ = CoCreateFreeThreadedMarshaler(null, &base);

    if (base) |interface| {
        var marshal: *anyopaque = undefined;
        const code = interface.vtable.QueryInterface(@ptrCast(base), IID_IMarshal, &marshal);
        if (code != 0) {
            interface.vtable.Release(@ptrCast(interface));
            return error.NoInterface;
        }

        return Marshaler {
            .vtable = &Marshaler.VTABLE,
            .outer = outer,
            .marshaler = @ptrCast(marshal),
            .count = .init(1),
        };
    }
}

pub const Marshaler = extern struct {
    vtable: *const IMarshal.VTable,
    outer: *IUnknown,
    marshaler: *IMarshal,
    count: std.atomic.Value(usize),

    pub fn QueryInterface(
        self: *@This(),
        iid: ?*const Guid,
        interface: **anyopaque,
    ) callconv(.winapi) HRESULT {
        if (iid == null) {
            return 0x80004003; // E_POINTER
        }

        if (std.mem.eql(u8, &iid.Bytes, &IID_IMarshal.Bytes) or wiredGuidEql(iid, IID_IMarshal)) {
            interface.* = @ptrCast(self);
            _ = self.count.fetchAdd(1, .monotonic);
            return 0;
        }

        return self.outer.vtable.QueryInterface(@ptrCast(self), iid, interface);
    }

    pub fn AddRef(self: *@This()) callconv(.winapi) u32 {
        return self.count.fetchAdd(1, .monotonic) + 1;
    }

    pub fn Release(self: *@This()) callconv(.winapi) u32 {
        return self.count.fetchSub(1, .acq_rel) - 1;
    }

    pub fn GetUnmarshalClass(
        self: *@This(),
        riid: ?*const Guid,
        pv: ?*anyopaque,
        dwdestcontext: u32,
        pvdestcontext: ?*anyopaque,
        mshlflags: u32,
        pcid: ?*Guid,
    ) callconv(.winapi) HRESULT {
        return self.marshaler.vtable.GetUnmarshalClass(
            @ptrCast(self),
            riid,
            pv,
            dwdestcontext,
            pvdestcontext,
            mshlflags,
            pcid,
        );
    }

    pub fn GetMarshalSizeMax(
        self: *@This(),
        riid: ?*const Guid,
        pv: ?*anyopaque,
        dwdestcontext: u32,
        pvdestcontext: ?*anyopaque,
        mshlflags: u32,
        psize: ?*u32,
    ) callconv(.winapi) HRESULT {
        return self.marshaler.vtable.GetMarshalSizeMax(
            @ptrCast(self),
            riid,
            pv,
            dwdestcontext,
            pvdestcontext,
            mshlflags,
            psize,
        );
    }

    pub fn MarshalInterface(
        self: *@This(),
        pstm: ?*IStream,
        riid: *const Guid,
        pv: ?*anyopaque,
        dwdestcontext: u32,
        pvdestcontext: ?*anyopaque,
        mshlflags: u32,
    ) callconv(.winapi) HRESULT {
        return self.marshaler.vtable.MarshalInterface(
            @ptrCast(self),
            pstm,
            riid,
            pv,
            dwdestcontext,
            pvdestcontext,
            mshlflags,
        );
    }

    pub fn UnmarshalInterface(
        self: *@This(),
        pstm: ?*IStream,
        riid: *const Guid,
        ppv: ?*?*anyopaque,
    ) callconv(.winapi) HRESULT {
        return self.marshaler.vtable.UnmarshalInterface(
            @ptrCast(self),
            pstm,
            riid,
            ppv,
        );
    }

    pub fn ReleaseMarshalData(self: *@This(), pstm: ?*IStream) callconv(.winapi) HRESULT {
        return self.marshaler.vtable.ReleaseMarshalData(
            @ptrCast(self),
            pstm,
        );
    }

    pub fn DisconnectObject(self: *@This(), dwreserved: u32) callconv(.winapi) HRESULT {
        return self.marshaler.vtable.DisconnectObject(
            @ptrCast(self),
            dwreserved,
        );
    }

    const VTABLE: IMarshal.VTable = IMarshal.VTable {
        .base = .{
            .QueryInterface = QueryInterface,
            .AddRef = AddRef,
            .Release = Release,
        },
        .GetUnmarshalClass = GetUnmarshalClass,
        .GetMarshalSizeMax = GetMarshalSizeMax,
        .MarshalInterface = MarshalInterface,
        .UnmarshalInterface = UnmarshalInterface,
        .ReleaseMarshalData = ReleaseMarshalData,
        .DisconnectObject = DisconnectObject,
    };
};
