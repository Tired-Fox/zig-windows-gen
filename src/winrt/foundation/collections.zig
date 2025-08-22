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
const S_OK = winrt.S_OK;

pub fn IIterable(T: type) type {
    return extern struct {
        vtable: *const VTable,

        pub usingnamespace IInspectable.Mixins(@This());

        pub fn first(self: *@This()) !*IIterator(T) {
            var result: *IIterable(T) = undefined;
            if (self.vtable.First(@ptrCast(self), &result) != S_OK) {
                return error.InitIterator;
            }
            return result;
        }

        pub const TYPE_NAME: []const u8 = "Windows.Foundation.Collections.IIterable";
        pub const RUNTIME_NAME: [:0]const u16 = std.unicode.utf8ToUtf16LeStringLiteral(TYPE_NAME);

        pub const SIGNATURE: []const u8 = Signature.pinterface("faa585ea-6214-4217-afda-7f46de5869b3", &.{ T.SIGNATURE });
        pub const IID: Guid = Signature.guid(SIGNATURE);
        pub const GUID: []const u8 = Signature.guid_string(IID);

        pub const VTable = Implements(.{ IInspectable.VTable }, struct {
            First: *const fn(*anyopaque, **T) callconv(.C) HRESULT,
        });
    };
}

pub fn IIterator(T: type) type {
    return extern struct {
        vtable: *const VTable,

        pub usingnamespace IInspectable.Mixins(@This());

        pub fn current(self: *@This()) !*T {
            var result: *T = undefined;
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

        pub fn getMany(self: *@This(), count: u32) []T {
            var result: [*]T = undefined;
            var actual: u32 = 0;
            _ = self.vtable.GetMany(@ptrCast(self), count, &result, &actual);
            return result[0..@as(usize, @intCast(actual))];
        }

        pub const TYPE_NAME: []const u8 = "Windows.Foundation.Collections.IIterator";
        pub const RUNTIME_NAME: [:0]const u16 = std.unicode.utf8ToUtf16LeStringLiteral(TYPE_NAME);

        pub const SIGNATURE: []const u8 = Signature.pinterface("6a79e863-4300-459a-9966-cbb660963ee1", &.{ T.SIGNATURE });
        pub const IID: Guid = Signature.guid(SIGNATURE);
        pub const GUID: []const u8 = Signature.guid_string(IID);

        pub const VTable = Implements(.{ IInspectable.VTable }, struct {
            Current: *const fn(*anyopaque, **T) callconv(.C) HRESULT,
            HasCurrent: *const fn(*anyopaque, *bool) callconv(.C) HRESULT,
            MoveNext: *const fn(*anyopaque, *bool) callconv(.C) HRESULT,
            GetMany: *const fn(*anyopaque, u32, *[*]T, *u32) callconv(.C) HRESULT,
        });
    };
}

pub fn IVectorView(T: type) type {
    return extern struct {
        vtable: *const VTable,

        pub usingnamespace IInspectable.Mixins(@This());

        pub fn getAt(self: *@This(), idx: u32) !*T {
            var result: *T = undefined;
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

        pub fn indexOf(self: *@This(), item: *T, ) ?u32 {
            var result: u32 = 0;
            var found: bool = false;
            _ = self.vtable.IndexOf(@ptrCast(self), item, &result, &found);
            return if (found) result else null;
        }

        pub fn getMany(self: *@This(), start: u32, end: u32) ![]T {
            var count: u32 = 0;
            var result: [*]T = undefined;
            if (self.vtable.GetMany(@ptrCast(self), start, end, &result, &count) != S_OK) {
                return error.OutOfBounds;
            }
            return result[0..count];
        }

        pub const TYPE_NAME: []const u8 = "Windows.Foundation.Collections.IVectorView";
        pub const RUNTIME_NAME: [:0]const u16 = std.unicode.utf8ToUtf16LeStringLiteral(TYPE_NAME);

        pub const SIGNATURE: []const u8 = Signature.pinterface("bbe1fa4c-b0e3-4583-baef-1f1b2e483e56", &.{ T.SIGNATURE });
        pub const IID: Guid = Signature.guid(SIGNATURE);
        pub const GUID: []const u8 = Signature.guid_string(IID);

        pub const VTable = Implements(.{ IInspectable.VTable }, struct {
            GetAt: *const fn(*anyopaque, u32, **T) callconv(.C) HRESULT,
            Size: *const fn(*anyopaque, *u32) callconv(.C) HRESULT,
            IndexOf: *const fn(*anyopaque, *T, *u32, *bool) callconv(.C) HRESULT,
            GetMany: *const fn(*anyopaque, u32, u32, *[*]T, *u32) callconv(.C) HRESULT,
        });
    };
}
