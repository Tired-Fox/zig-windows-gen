const std = @import("std");
const core = @import("../core.zig");
const win32 = @import("win32");
const winrt = @import("../../root.zig");

const Guid = win32.zig.Guid;
const HRESULT = win32.foundation.HRESULT;
const HSTRING = winrt.HSTRING;

const IInspectable = winrt.IInspectable;
const Implements = core.Implements;

const Signature = core.Signature;
const E_OUTOFMEMORY = winrt.E_OUTOFMEMORY;
const TrustLevel = winrt.TrustLevel;
const WindowsGetString = winrt.WindowsGetString;
const S_OK = winrt.S_OK;

pub fn IIterable(I: type) type {
    return extern struct {
        vtable: *const VTable,

        pub fn queryInterface(self: *@This(), T: type) !*T {
            var result: *anyopaque = undefined;
            if (self.vtable.QueryInterface(@ptrCast(self), &T.IID, &result) != S_OK) {
                return error.NoInterface;
            }
            return @ptrCast(@alignCast(result));
        }

        pub fn addRef(self: *@This()) u32 {
            return self.vtable.AddRef(@ptrCast(self));
        }

        pub fn release(self: *@This()) u32 {
            return self.vtable.Release(@ptrCast(self));
        }

        pub fn getIids(self: *@This()) ![]const Guid {
            var count: u32 = 0;
            var iids: [*]Guid = undefined;
            if (self.vtable.GetIids(@ptrCast(self), &count, &iids) != S_OK) {
                return error.OutOfMemory;
            }
            return iids[0..@as(usize, @intCast(count))];
        }

        pub fn getRuntimeClassName(self: *@This()) ![]const u16 {
            var name: HSTRING = undefined;
            const code = self.vtable.GetRuntimeClassName(@ptrCast(self), &name);
            if (code == S_OK) {
                return WindowsGetString(name).?;
            } else if (code == E_OUTOFMEMORY) {
                return error.OutOfMemory;
            } else {
                return error.IllegalMethodCall;
            }
        }

        pub fn getTrustLevel(self: *@This()) TrustLevel {
            var trust: TrustLevel = undefined;
            _ = self.vtable.GetTrustLevel(@ptrCast(self), &trust);
            return trust;
        }

        pub fn first(self: *@This()) !*IIterator(I) {
            var result: *IIterable(I) = undefined;
            if (self.vtable.First(@ptrCast(self), &result) != S_OK) {
                return error.InitIterator;
            }
            return result;
        }

        pub const TYPE_NAME: []const u8 = "Windows.Foundation.Collections.IIterable";
        pub const RUNTIME_NAME: [:0]const u16 = std.unicode.utf8ToUtf16LeStringLiteral(TYPE_NAME);

        pub const SIGNATURE: []const u8 = Signature.pinterface("faa585ea-6214-4217-afda-7f46de5869b3", &.{ I.SIGNATURE });
        pub const IID: Guid = Signature.guid(SIGNATURE);
        pub const GUID: []const u8 = Signature.guid_string(IID);

        pub const VTable = Implements(IInspectable.VTable, struct {
            First: *const fn(*anyopaque, **I) callconv(.C) HRESULT,
        });
    };
}

pub fn IIterator(I: type) type {
    return extern struct {
        vtable: *const VTable,

        pub fn queryInterface(self: *@This(), T: type) !*T {
            var result: *anyopaque = undefined;
            if (self.vtable.QueryInterface(@ptrCast(self), &T.IID, &result) != S_OK) {
                return error.NoInterface;
            }
            return @ptrCast(@alignCast(result));
        }

        pub fn addRef(self: *@This()) u32 {
            return self.vtable.AddRef(@ptrCast(self));
        }

        pub fn release(self: *@This()) u32 {
            return self.vtable.Release(@ptrCast(self));
        }

        pub fn getIids(self: *@This()) ![]const Guid {
            var count: u32 = 0;
            var iids: [*]Guid = undefined;
            if (self.vtable.GetIids(@ptrCast(self), &count, &iids) != S_OK) {
                return error.OutOfMemory;
            }
            return iids[0..@as(usize, @intCast(count))];
        }

        pub fn getRuntimeClassName(self: *@This()) ![]const u16 {
            var name: HSTRING = undefined;
            const code = self.vtable.GetRuntimeClassName(@ptrCast(self), &name);
            if (code == S_OK) {
                return WindowsGetString(name).?;
            } else if (code == E_OUTOFMEMORY) {
                return error.OutOfMemory;
            } else {
                return error.IllegalMethodCall;
            }
        }

        pub fn getTrustLevel(self: *@This()) TrustLevel {
            var trust: TrustLevel = undefined;
            _ = self.vtable.GetTrustLevel(@ptrCast(self), &trust);
            return trust;
        }

        pub fn current(self: *@This()) !*I {
            var result: *I = undefined;
            if (self.vtable.Current(@ptrCast(self), &result) != S_OK) {
                return error.NoCurrentItem;
            }
            return result;
        }

        pub fn hasCurrent(self: *@This()) bool {
            var result: bool = false;
            _ = self.vtable.HasCurrent(@ptrCast(self), &result);
            return result;
        }

        pub fn moveNext(self: *@This()) bool {
            var result: bool = false;
            _ = self.vtable.MoveNext(@ptrCast(self), &result);
            return result;
        }

        pub fn getMany(self: *@This(), count: u32) []I {
            var result: [*]I = undefined;
            var actual: u32 = 0;
            _ = self.vtable.GetMany(@ptrCast(self), count, &result, &actual);
            return result[0..@as(usize, @intCast(actual))];
        }

        pub const TYPE_NAME: []const u8 = "Windows.Foundation.Collections.IIterator";
        pub const RUNTIME_NAME: [:0]const u16 = std.unicode.utf8ToUtf16LeStringLiteral(TYPE_NAME);

        pub const SIGNATURE: []const u8 = Signature.pinterface("6a79e863-4300-459a-9966-cbb660963ee1", &.{ I.SIGNATURE });
        pub const IID: Guid = Signature.guid(SIGNATURE);
        pub const GUID: []const u8 = Signature.guid_string(IID);

        pub const VTable = Implements(IInspectable.VTable, struct {
            Current: *const fn(*anyopaque, **I) callconv(.C) HRESULT,
            HasCurrent: *const fn(*anyopaque, *bool) callconv(.C) HRESULT,
            MoveNext: *const fn(*anyopaque, *bool) callconv(.C) HRESULT,
            GetMany: *const fn(*anyopaque, u32, *[*]I, *u32) callconv(.C) HRESULT,
        });
    };
}

pub fn IVectorView(I: type) type {
    return extern struct {
        vtable: *const VTable,

        pub fn queryInterface(self: *@This(), T: type) !*T {
            var result: *anyopaque = undefined;
            if (self.vtable.QueryInterface(@ptrCast(self), &T.IID, &result) != S_OK) {
                return error.NoInterface;
            }
            return @ptrCast(@alignCast(result));
        }

        pub fn addRef(self: *@This()) u32 {
            return self.vtable.AddRef(@ptrCast(self));
        }

        pub fn release(self: *@This()) u32 {
            return self.vtable.Release(@ptrCast(self));
        }

        pub fn getIids(self: *@This()) ![]const Guid {
            var count: u32 = 0;
            var iids: [*]Guid = undefined;
            if (self.vtable.GetIids(@ptrCast(self), &count, &iids) != S_OK) {
                return error.OutOfMemory;
            }
            return iids[0..@as(usize, @intCast(count))];
        }

        pub fn getRuntimeClassName(self: *@This()) ![]const u16 {
            var name: HSTRING = undefined;
            const code = self.vtable.GetRuntimeClassName(@ptrCast(self), &name);
            if (code == S_OK) {
                return WindowsGetString(name).?;
            } else if (code == E_OUTOFMEMORY) {
                return error.OutOfMemory;
            } else {
                return error.IllegalMethodCall;
            }
        }

        pub fn getTrustLevel(self: *@This()) TrustLevel {
            var trust: TrustLevel = undefined;
            _ = self.vtable.GetTrustLevel(@ptrCast(self), &trust);
            return trust;
        }

        pub fn getAt(self: *@This(), idx: u32) !*I {
            var result: *I = undefined;
            if (self.vtable.GetAt(@ptrCast(self), idx, &result) != S_OK) {
                return error.OutOfBounds;
            }
            return result;
        }

        pub fn size(self: *@This()) u32 {
            var result: u32 = 0;
            _ = self.vtable.Size(@ptrCast(self), &result);
            return result;
        }

        pub fn indexOf(self: *@This(), item: *I) ?u32 {
            var result: u32 = 0;
            var found: bool = false;
            _ = self.vtable.IndexOf(@ptrCast(self), item, &result, &found);
            return if (found) result else null;
        }

        pub fn getMany(self: *@This(), start: u32, end: u32) ![]I {
            var count: u32 = 0;
            var result: [*]I = undefined;
            if (self.vtable.GetMany(@ptrCast(self), start, end, &result, &count) != S_OK) {
                return error.OutOfBounds;
            }
            return result[0..count];
        }

        pub const TYPE_NAME: []const u8 = "Windows.Foundation.Collections.IVectorView";
        pub const RUNTIME_NAME: [:0]const u16 = std.unicode.utf8ToUtf16LeStringLiteral(TYPE_NAME);

        pub const SIGNATURE: []const u8 = Signature.pinterface("bbe1fa4c-b0e3-4583-baef-1f1b2e483e56", &.{ I.SIGNATURE });
        pub const IID: Guid = Signature.guid(SIGNATURE);
        pub const GUID: []const u8 = Signature.guid_string(IID);

        pub const VTable = Implements(IInspectable.VTable, struct {
            GetAt: *const fn(*anyopaque, u32, **I) callconv(.C) HRESULT,
            Size: *const fn(*anyopaque, *u32) callconv(.C) HRESULT,
            IndexOf: *const fn(*anyopaque, *I, *u32, *bool) callconv(.C) HRESULT,
            GetMany: *const fn(*anyopaque, u32, u32, *[*]I, *u32) callconv(.C) HRESULT,
        });
    };
}
