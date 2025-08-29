pub const GameList = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn MergeEntriesAsync(left: *GameListEntry, right: *GameListEntry) core.HResult!*IAsyncOperation(GameListEntry) {
        const factory = @This().IGameListStatics2Cache.get();
        return try factory.MergeEntriesAsync(left, right);
    }
    pub fn UnmergeEntryAsync(mergedEntry: *GameListEntry) core.HResult!*IAsyncOperation(IVectorView(GameListEntry)) {
        const factory = @This().IGameListStatics2Cache.get();
        return try factory.UnmergeEntryAsync(mergedEntry);
    }
    pub fn FindAllAsync() core.HResult!*IAsyncOperation(IVectorView(GameListEntry)) {
        const factory = @This().IGameListStaticsCache.get();
        return try factory.FindAllAsync();
    }
    pub fn FindAllAsyncWithPackageFamilyName(packageFamilyName: HSTRING) core.HResult!*IAsyncOperation(IVectorView(GameListEntry)) {
        const factory = @This().IGameListStaticsCache.get();
        return try factory.FindAllAsyncWithPackageFamilyName(packageFamilyName);
    }
    pub fn add_GameAdded(handler: *GameListChangedEventHandler) core.HResult!EventRegistrationToken {
        const factory = @This().IGameListStaticsCache.get();
        return try factory.addGameAdded(handler);
    }
    pub fn remove_GameAdded(token: EventRegistrationToken) core.HResult!void {
        const factory = @This().IGameListStaticsCache.get();
        return try factory.removeGameAdded(token);
    }
    pub fn add_GameRemoved(handler: *GameListRemovedEventHandler) core.HResult!EventRegistrationToken {
        const factory = @This().IGameListStaticsCache.get();
        return try factory.addGameRemoved(handler);
    }
    pub fn remove_GameRemoved(token: EventRegistrationToken) core.HResult!void {
        const factory = @This().IGameListStaticsCache.get();
        return try factory.removeGameRemoved(token);
    }
    pub fn add_GameUpdated(handler: *GameListChangedEventHandler) core.HResult!EventRegistrationToken {
        const factory = @This().IGameListStaticsCache.get();
        return try factory.addGameUpdated(handler);
    }
    pub fn remove_GameUpdated(token: EventRegistrationToken) core.HResult!void {
        const factory = @This().IGameListStaticsCache.get();
        return try factory.removeGameUpdated(token);
    }
    pub const NAME: []const u8 = "Windows.Gaming.Preview.GamesEnumeration.GameList";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _IGameListStatics2Cache: FactoryCache(IGameListStatics2, RUNTIME_NAME) = .{};
    var _IGameListStaticsCache: FactoryCache(IGameListStatics, RUNTIME_NAME) = .{};
};
pub const GameListCategory = enum(i32) {
    Candidate = 0,
    ConfirmedBySystem = 1,
    ConfirmedByUser = 2,
};
pub const GameListChangedEventHandler = extern struct {
    vtable: *const VTable,
    _refs: @import("std").atomic.Value(u32),
    _cb: *const fn (context: ?*anyopaque) callconv(.winapi) void,
    _context: ?*anyopaque = null,
    /// This creates a heap allocated instance that only frees/destroys when all
    /// references are released including any references Windows makes.
    pub fn init(
        cb: *const fn(?*anyopaque, game: *GameListEntry) callconv(.winapi) void,
    ) !*@This() {
        const _r = try @import("std").heap.c_allocator.create(@This());
        _r.* = .{
            .vtable = &VTABLE,
            ._cb = cb,
            ._refs = .init(1),
        };
        return _r;
    }
    /// This creates a heap allocated instance that only frees/destroys when all
    /// references are released including any references Windows makes.
    pub fn initWithState(
        cb: *const fn(?*anyopaque, game: *GameListEntry) callconv(.winapi) void,
        context: anytype,
    ) !*@This() {
        const _r = try @import("std").heap.c_allocator.create(@This());
        _r.* = .{
            .vtable = &VTABLE,
            ._cb = cb,
            ._refs = .init(1),
            ._context = @ptrCast(context),
        };
        return _r;
    }
    /// This calls Release and voids the returned ref count. If ref count is 0 the memory is released,
    /// Otherwise the memory stays until all references are released, including all references Windows holds.
    ///
    /// The caller *MUST* always call deinit/Release at least once for every AddRef and init called.
    pub fn deinit(self: *@This()) void {
        _ = Release(@ptrCast(self));
    }
    fn QueryInterface(self: *anyopaque, riid: *const Guid, out: *?*anyopaque) callconv(.c) HRESULT {
        const me: *@This() = @ptrCast(@alignCast(self));
        // TODO: Handle IMarshal
        if (core.wiredGuidEql(riid, &IID) or
            core.wiredGuidEql(riid, &IUnknown.IID) or
            core.wiredGuidEql(riid, &IAgileObject.IID))
        {
            out.* = @as(?*anyopaque, @ptrCast(me));
            _ = AddRef(self);
            return 0;
        }
        out.* = null;
        return -2147467262; // E_NOINTERFACE
    }
    fn AddRef(self: *anyopaque) callconv(.c) u32 {
        const this: *@This() = @ptrCast(@alignCast(self));
        return this._refs.fetchAdd(1, .monotonic) + 1;
    }
    fn Release(self: *anyopaque) callconv(.c) u32 {
        const this: *@This() = @ptrCast(@alignCast(self));
        const left = this._refs.fetchSub(1, .acq_rel) - 1;
        if (left == 0) @import("std").heap.c_allocator.destroy(this);
        return left;
    }
    pub fn Invoke(self: *anyopaque, game: *GameListEntry) callconv(.winapi) HRESULT {
        const this: *@This() = @ptrCast(@alignCast(self));
        this._cb(this._context, game);
        return 0;
    }
    pub const NAME: []const u8 = "Windows.Gaming.Preview.GamesEnumeration.GameListChangedEventHandler";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "25f6a421-d8f5-4d91-b40e-53d5e86fde64";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.pinterface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        Invoke: *const fn(self: *anyopaque, game: *GameListEntry) callconv(.winapi) HRESULT
    };
    pub const VTABLE = VTable {
        .QueryInterface = QueryInterface,
        .AddRef = AddRef,
        .Release = Release,
        .Invoke = Invoke,
    };
};
pub const GameListEntry = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getDisplayInfo(self: *@This()) core.HResult!*AppDisplayInfo {
        const this: *IGameListEntry = @ptrCast(self);
        return try this.getDisplayInfo();
    }
    pub fn LaunchAsync(self: *@This()) core.HResult!*IAsyncOperation(bool) {
        const this: *IGameListEntry = @ptrCast(self);
        return try this.LaunchAsync();
    }
    pub fn getCategory(self: *@This()) core.HResult!GameListCategory {
        const this: *IGameListEntry = @ptrCast(self);
        return try this.getCategory();
    }
    pub fn getProperties(self: *@This()) core.HResult!*IMapView(HSTRING,IInspectable) {
        const this: *IGameListEntry = @ptrCast(self);
        return try this.getProperties();
    }
    pub fn SetCategoryAsync(self: *@This(), value: GameListCategory) core.HResult!*IAsyncAction {
        const this: *IGameListEntry = @ptrCast(self);
        return try this.SetCategoryAsync(value);
    }
    pub fn getLaunchableState(self: *@This()) core.HResult!GameListEntryLaunchableState {
        var this: ?*IGameListEntry2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IGameListEntry2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getLaunchableState();
    }
    pub fn getLauncherExecutable(self: *@This()) core.HResult!*IStorageFile {
        var this: ?*IGameListEntry2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IGameListEntry2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getLauncherExecutable();
    }
    pub fn getLaunchParameters(self: *@This()) core.HResult!HSTRING {
        var this: ?*IGameListEntry2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IGameListEntry2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getLaunchParameters();
    }
    pub fn SetLauncherExecutableFileAsync(self: *@This(), executableFile: *IStorageFile) core.HResult!*IAsyncAction {
        var this: ?*IGameListEntry2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IGameListEntry2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.SetLauncherExecutableFileAsync(executableFile);
    }
    pub fn SetLauncherExecutableFileAsyncWithLaunchParams(self: *@This(), executableFile: *IStorageFile, launchParams: HSTRING) core.HResult!*IAsyncAction {
        var this: ?*IGameListEntry2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IGameListEntry2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.SetLauncherExecutableFileAsyncWithLaunchParams(executableFile, launchParams);
    }
    pub fn getTitleId(self: *@This()) core.HResult!HSTRING {
        var this: ?*IGameListEntry2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IGameListEntry2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getTitleId();
    }
    pub fn SetTitleIdAsync(self: *@This(), id: HSTRING) core.HResult!*IAsyncAction {
        var this: ?*IGameListEntry2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IGameListEntry2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.SetTitleIdAsync(id);
    }
    pub fn getGameModeConfiguration(self: *@This()) core.HResult!*GameModeConfiguration {
        var this: ?*IGameListEntry2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IGameListEntry2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getGameModeConfiguration();
    }
    pub const NAME: []const u8 = "Windows.Gaming.Preview.GamesEnumeration.GameListEntry";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IGameListEntry.GUID;
    pub const IID: Guid = IGameListEntry.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IGameListEntry.SIGNATURE);
};
pub const GameListEntryLaunchableState = enum(i32) {
    NotLaunchable = 0,
    ByLastRunningFullPath = 1,
    ByUserProvidedPath = 2,
    ByTile = 3,
};
pub const GameListRemovedEventHandler = extern struct {
    vtable: *const VTable,
    _refs: @import("std").atomic.Value(u32),
    _cb: *const fn (context: ?*anyopaque) callconv(.winapi) void,
    _context: ?*anyopaque = null,
    /// This creates a heap allocated instance that only frees/destroys when all
    /// references are released including any references Windows makes.
    pub fn init(
        cb: *const fn(?*anyopaque, identifier: HSTRING) callconv(.winapi) void,
    ) !*@This() {
        const _r = try @import("std").heap.c_allocator.create(@This());
        _r.* = .{
            .vtable = &VTABLE,
            ._cb = cb,
            ._refs = .init(1),
        };
        return _r;
    }
    /// This creates a heap allocated instance that only frees/destroys when all
    /// references are released including any references Windows makes.
    pub fn initWithState(
        cb: *const fn(?*anyopaque, identifier: HSTRING) callconv(.winapi) void,
        context: anytype,
    ) !*@This() {
        const _r = try @import("std").heap.c_allocator.create(@This());
        _r.* = .{
            .vtable = &VTABLE,
            ._cb = cb,
            ._refs = .init(1),
            ._context = @ptrCast(context),
        };
        return _r;
    }
    /// This calls Release and voids the returned ref count. If ref count is 0 the memory is released,
    /// Otherwise the memory stays until all references are released, including all references Windows holds.
    ///
    /// The caller *MUST* always call deinit/Release at least once for every AddRef and init called.
    pub fn deinit(self: *@This()) void {
        _ = Release(@ptrCast(self));
    }
    fn QueryInterface(self: *anyopaque, riid: *const Guid, out: *?*anyopaque) callconv(.c) HRESULT {
        const me: *@This() = @ptrCast(@alignCast(self));
        // TODO: Handle IMarshal
        if (core.wiredGuidEql(riid, &IID) or
            core.wiredGuidEql(riid, &IUnknown.IID) or
            core.wiredGuidEql(riid, &IAgileObject.IID))
        {
            out.* = @as(?*anyopaque, @ptrCast(me));
            _ = AddRef(self);
            return 0;
        }
        out.* = null;
        return -2147467262; // E_NOINTERFACE
    }
    fn AddRef(self: *anyopaque) callconv(.c) u32 {
        const this: *@This() = @ptrCast(@alignCast(self));
        return this._refs.fetchAdd(1, .monotonic) + 1;
    }
    fn Release(self: *anyopaque) callconv(.c) u32 {
        const this: *@This() = @ptrCast(@alignCast(self));
        const left = this._refs.fetchSub(1, .acq_rel) - 1;
        if (left == 0) @import("std").heap.c_allocator.destroy(this);
        return left;
    }
    pub fn Invoke(self: *anyopaque, identifier: HSTRING) callconv(.winapi) HRESULT {
        const this: *@This() = @ptrCast(@alignCast(self));
        this._cb(this._context, identifier);
        return 0;
    }
    pub const NAME: []const u8 = "Windows.Gaming.Preview.GamesEnumeration.GameListRemovedEventHandler";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "10c5648f-6c8f-4712-9b38-474bc22e76d8";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.pinterface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        Invoke: *const fn(self: *anyopaque, identifier: HSTRING) callconv(.winapi) HRESULT
    };
    pub const VTABLE = VTable {
        .QueryInterface = QueryInterface,
        .AddRef = AddRef,
        .Release = Release,
        .Invoke = Invoke,
    };
};
pub const GameModeConfiguration = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getIsEnabled(self: *@This()) core.HResult!bool {
        const this: *IGameModeConfiguration = @ptrCast(self);
        return try this.getIsEnabled();
    }
    pub fn putIsEnabled(self: *@This(), value: bool) core.HResult!void {
        const this: *IGameModeConfiguration = @ptrCast(self);
        return try this.putIsEnabled(value);
    }
    pub fn getRelatedProcessNames(self: *@This()) core.HResult!*IVector(HSTRING) {
        const this: *IGameModeConfiguration = @ptrCast(self);
        return try this.getRelatedProcessNames();
    }
    pub fn getPercentGpuTimeAllocatedToGame(self: *@This()) core.HResult!*IReference(i32) {
        const this: *IGameModeConfiguration = @ptrCast(self);
        return try this.getPercentGpuTimeAllocatedToGame();
    }
    pub fn putPercentGpuTimeAllocatedToGame(self: *@This(), value: *IReference(i32)) core.HResult!void {
        const this: *IGameModeConfiguration = @ptrCast(self);
        return try this.putPercentGpuTimeAllocatedToGame(value);
    }
    pub fn getPercentGpuMemoryAllocatedToGame(self: *@This()) core.HResult!*IReference(i32) {
        const this: *IGameModeConfiguration = @ptrCast(self);
        return try this.getPercentGpuMemoryAllocatedToGame();
    }
    pub fn putPercentGpuMemoryAllocatedToGame(self: *@This(), value: *IReference(i32)) core.HResult!void {
        const this: *IGameModeConfiguration = @ptrCast(self);
        return try this.putPercentGpuMemoryAllocatedToGame(value);
    }
    pub fn getPercentGpuMemoryAllocatedToSystemCompositor(self: *@This()) core.HResult!*IReference(i32) {
        const this: *IGameModeConfiguration = @ptrCast(self);
        return try this.getPercentGpuMemoryAllocatedToSystemCompositor();
    }
    pub fn putPercentGpuMemoryAllocatedToSystemCompositor(self: *@This(), value: *IReference(i32)) core.HResult!void {
        const this: *IGameModeConfiguration = @ptrCast(self);
        return try this.putPercentGpuMemoryAllocatedToSystemCompositor(value);
    }
    pub fn getMaxCpuCount(self: *@This()) core.HResult!*IReference(i32) {
        const this: *IGameModeConfiguration = @ptrCast(self);
        return try this.getMaxCpuCount();
    }
    pub fn putMaxCpuCount(self: *@This(), value: *IReference(i32)) core.HResult!void {
        const this: *IGameModeConfiguration = @ptrCast(self);
        return try this.putMaxCpuCount(value);
    }
    pub fn getCpuExclusivityMaskLow(self: *@This()) core.HResult!*IReference(i32) {
        const this: *IGameModeConfiguration = @ptrCast(self);
        return try this.getCpuExclusivityMaskLow();
    }
    pub fn putCpuExclusivityMaskLow(self: *@This(), value: *IReference(i32)) core.HResult!void {
        const this: *IGameModeConfiguration = @ptrCast(self);
        return try this.putCpuExclusivityMaskLow(value);
    }
    pub fn getCpuExclusivityMaskHigh(self: *@This()) core.HResult!*IReference(i32) {
        const this: *IGameModeConfiguration = @ptrCast(self);
        return try this.getCpuExclusivityMaskHigh();
    }
    pub fn putCpuExclusivityMaskHigh(self: *@This(), value: *IReference(i32)) core.HResult!void {
        const this: *IGameModeConfiguration = @ptrCast(self);
        return try this.putCpuExclusivityMaskHigh(value);
    }
    pub fn getAffinitizeToExclusiveCpus(self: *@This()) core.HResult!bool {
        const this: *IGameModeConfiguration = @ptrCast(self);
        return try this.getAffinitizeToExclusiveCpus();
    }
    pub fn putAffinitizeToExclusiveCpus(self: *@This(), value: bool) core.HResult!void {
        const this: *IGameModeConfiguration = @ptrCast(self);
        return try this.putAffinitizeToExclusiveCpus(value);
    }
    pub fn SaveAsync(self: *@This()) core.HResult!*IAsyncAction {
        const this: *IGameModeConfiguration = @ptrCast(self);
        return try this.SaveAsync();
    }
    pub const NAME: []const u8 = "Windows.Gaming.Preview.GamesEnumeration.GameModeConfiguration";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IGameModeConfiguration.GUID;
    pub const IID: Guid = IGameModeConfiguration.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IGameModeConfiguration.SIGNATURE);
};
pub const GameModeUserConfiguration = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getGamingRelatedProcessNames(self: *@This()) core.HResult!*IVector(HSTRING) {
        const this: *IGameModeUserConfiguration = @ptrCast(self);
        return try this.getGamingRelatedProcessNames();
    }
    pub fn SaveAsync(self: *@This()) core.HResult!*IAsyncAction {
        const this: *IGameModeUserConfiguration = @ptrCast(self);
        return try this.SaveAsync();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn GetDefault() core.HResult!*GameModeUserConfiguration {
        const factory = @This().IGameModeUserConfigurationStaticsCache.get();
        return try factory.GetDefault();
    }
    pub const NAME: []const u8 = "Windows.Gaming.Preview.GamesEnumeration.GameModeUserConfiguration";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IGameModeUserConfiguration.GUID;
    pub const IID: Guid = IGameModeUserConfiguration.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IGameModeUserConfiguration.SIGNATURE);
    var _IGameModeUserConfigurationStaticsCache: FactoryCache(IGameModeUserConfigurationStatics, RUNTIME_NAME) = .{};
};
pub const IGameListEntry = extern struct {
    vtable: *const VTable,
    pub fn getDisplayInfo(self: *@This()) core.HResult!*AppDisplayInfo {
        var _r: *AppDisplayInfo = undefined;
        const _c = self.vtable.get_DisplayInfo(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn LaunchAsync(self: *@This()) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.LaunchAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCategory(self: *@This()) core.HResult!GameListCategory {
        var _r: GameListCategory = undefined;
        const _c = self.vtable.get_Category(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getProperties(self: *@This()) core.HResult!*IMapView(HSTRING,IInspectable) {
        var _r: *IMapView(HSTRING,IInspectable) = undefined;
        const _c = self.vtable.get_Properties(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetCategoryAsync(self: *@This(), value: GameListCategory) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.SetCategoryAsync(@ptrCast(self), value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Gaming.Preview.GamesEnumeration.IGameListEntry";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "735924d3-811f-4494-b69c-c641a0c61543";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_DisplayInfo: *const fn(self: *anyopaque, _r: **AppDisplayInfo) callconv(.winapi) HRESULT,
        LaunchAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
        get_Category: *const fn(self: *anyopaque, _r: *GameListCategory) callconv(.winapi) HRESULT,
        get_Properties: *const fn(self: *anyopaque, _r: **IMapView(HSTRING,IInspectable)) callconv(.winapi) HRESULT,
        SetCategoryAsync: *const fn(self: *anyopaque, value: GameListCategory, _r: **IAsyncAction) callconv(.winapi) HRESULT,
    };
};
pub const IGameListEntry2 = extern struct {
    vtable: *const VTable,
    pub fn getLaunchableState(self: *@This()) core.HResult!GameListEntryLaunchableState {
        var _r: GameListEntryLaunchableState = undefined;
        const _c = self.vtable.get_LaunchableState(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getLauncherExecutable(self: *@This()) core.HResult!*IStorageFile {
        var _r: *IStorageFile = undefined;
        const _c = self.vtable.get_LauncherExecutable(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getLaunchParameters(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_LaunchParameters(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetLauncherExecutableFileAsync(self: *@This(), executableFile: *IStorageFile) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.SetLauncherExecutableFileAsync(@ptrCast(self), executableFile, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetLauncherExecutableFileAsyncWithLaunchParams(self: *@This(), executableFile: *IStorageFile, launchParams: HSTRING) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.SetLauncherExecutableFileAsyncWithLaunchParams(@ptrCast(self), executableFile, launchParams, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTitleId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_TitleId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetTitleIdAsync(self: *@This(), id: HSTRING) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.SetTitleIdAsync(@ptrCast(self), id, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getGameModeConfiguration(self: *@This()) core.HResult!*GameModeConfiguration {
        var _r: *GameModeConfiguration = undefined;
        const _c = self.vtable.get_GameModeConfiguration(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Gaming.Preview.GamesEnumeration.IGameListEntry2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d84a8f8b-8749-4a25-90d3-f6c5a427886d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_LaunchableState: *const fn(self: *anyopaque, _r: *GameListEntryLaunchableState) callconv(.winapi) HRESULT,
        get_LauncherExecutable: *const fn(self: *anyopaque, _r: **IStorageFile) callconv(.winapi) HRESULT,
        get_LaunchParameters: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        SetLauncherExecutableFileAsync: *const fn(self: *anyopaque, executableFile: *IStorageFile, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        SetLauncherExecutableFileAsyncWithLaunchParams: *const fn(self: *anyopaque, executableFile: *IStorageFile, launchParams: HSTRING, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        get_TitleId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        SetTitleIdAsync: *const fn(self: *anyopaque, id: HSTRING, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        get_GameModeConfiguration: *const fn(self: *anyopaque, _r: **GameModeConfiguration) callconv(.winapi) HRESULT,
    };
};
pub const IGameListStatics = extern struct {
    vtable: *const VTable,
    pub fn FindAllAsync(self: *@This()) core.HResult!*IAsyncOperation(IVectorView(GameListEntry)) {
        var _r: *IAsyncOperation(IVectorView(GameListEntry)) = undefined;
        const _c = self.vtable.FindAllAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FindAllAsync(self: *@This(), packageFamilyName: HSTRING) core.HResult!*IAsyncOperation(IVectorView(GameListEntry)) {
        var _r: *IAsyncOperation(IVectorView(GameListEntry)) = undefined;
        const _c = self.vtable.FindAllAsync(@ptrCast(self), packageFamilyName, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addGameAdded(self: *@This(), handler: *GameListChangedEventHandler) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_GameAdded(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeGameAdded(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_GameAdded(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addGameRemoved(self: *@This(), handler: *GameListRemovedEventHandler) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_GameRemoved(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeGameRemoved(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_GameRemoved(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addGameUpdated(self: *@This(), handler: *GameListChangedEventHandler) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_GameUpdated(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeGameUpdated(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_GameUpdated(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Gaming.Preview.GamesEnumeration.IGameListStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2ddd0f6f-9c66-4b05-945c-d6ed78491b8c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        FindAllAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(IVectorView(GameListEntry))) callconv(.winapi) HRESULT,
        FindAllAsync: *const fn(self: *anyopaque, packageFamilyName: HSTRING, _r: **IAsyncOperation(IVectorView(GameListEntry))) callconv(.winapi) HRESULT,
        add_GameAdded: *const fn(self: *anyopaque, handler: *GameListChangedEventHandler, _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_GameAdded: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_GameRemoved: *const fn(self: *anyopaque, handler: *GameListRemovedEventHandler, _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_GameRemoved: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_GameUpdated: *const fn(self: *anyopaque, handler: *GameListChangedEventHandler, _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_GameUpdated: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IGameListStatics2 = extern struct {
    vtable: *const VTable,
    pub fn MergeEntriesAsync(self: *@This(), left: *GameListEntry, right: *GameListEntry) core.HResult!*IAsyncOperation(GameListEntry) {
        var _r: *IAsyncOperation(GameListEntry) = undefined;
        const _c = self.vtable.MergeEntriesAsync(@ptrCast(self), left, right, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn UnmergeEntryAsync(self: *@This(), mergedEntry: *GameListEntry) core.HResult!*IAsyncOperation(IVectorView(GameListEntry)) {
        var _r: *IAsyncOperation(IVectorView(GameListEntry)) = undefined;
        const _c = self.vtable.UnmergeEntryAsync(@ptrCast(self), mergedEntry, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Gaming.Preview.GamesEnumeration.IGameListStatics2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "395f2098-ea1a-45aa-9268-a83905686f27";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        MergeEntriesAsync: *const fn(self: *anyopaque, left: *GameListEntry, right: *GameListEntry, _r: **IAsyncOperation(GameListEntry)) callconv(.winapi) HRESULT,
        UnmergeEntryAsync: *const fn(self: *anyopaque, mergedEntry: *GameListEntry, _r: **IAsyncOperation(IVectorView(GameListEntry))) callconv(.winapi) HRESULT,
    };
};
pub const IGameModeConfiguration = extern struct {
    vtable: *const VTable,
    pub fn getIsEnabled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsEnabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIsEnabled(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsEnabled(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getRelatedProcessNames(self: *@This()) core.HResult!*IVector(HSTRING) {
        var _r: *IVector(HSTRING) = undefined;
        const _c = self.vtable.get_RelatedProcessNames(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPercentGpuTimeAllocatedToGame(self: *@This()) core.HResult!*IReference(i32) {
        var _r: *IReference(i32) = undefined;
        const _c = self.vtable.get_PercentGpuTimeAllocatedToGame(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putPercentGpuTimeAllocatedToGame(self: *@This(), value: *IReference(i32)) core.HResult!void {
        const _c = self.vtable.put_PercentGpuTimeAllocatedToGame(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getPercentGpuMemoryAllocatedToGame(self: *@This()) core.HResult!*IReference(i32) {
        var _r: *IReference(i32) = undefined;
        const _c = self.vtable.get_PercentGpuMemoryAllocatedToGame(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putPercentGpuMemoryAllocatedToGame(self: *@This(), value: *IReference(i32)) core.HResult!void {
        const _c = self.vtable.put_PercentGpuMemoryAllocatedToGame(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getPercentGpuMemoryAllocatedToSystemCompositor(self: *@This()) core.HResult!*IReference(i32) {
        var _r: *IReference(i32) = undefined;
        const _c = self.vtable.get_PercentGpuMemoryAllocatedToSystemCompositor(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putPercentGpuMemoryAllocatedToSystemCompositor(self: *@This(), value: *IReference(i32)) core.HResult!void {
        const _c = self.vtable.put_PercentGpuMemoryAllocatedToSystemCompositor(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getMaxCpuCount(self: *@This()) core.HResult!*IReference(i32) {
        var _r: *IReference(i32) = undefined;
        const _c = self.vtable.get_MaxCpuCount(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putMaxCpuCount(self: *@This(), value: *IReference(i32)) core.HResult!void {
        const _c = self.vtable.put_MaxCpuCount(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getCpuExclusivityMaskLow(self: *@This()) core.HResult!*IReference(i32) {
        var _r: *IReference(i32) = undefined;
        const _c = self.vtable.get_CpuExclusivityMaskLow(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putCpuExclusivityMaskLow(self: *@This(), value: *IReference(i32)) core.HResult!void {
        const _c = self.vtable.put_CpuExclusivityMaskLow(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getCpuExclusivityMaskHigh(self: *@This()) core.HResult!*IReference(i32) {
        var _r: *IReference(i32) = undefined;
        const _c = self.vtable.get_CpuExclusivityMaskHigh(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putCpuExclusivityMaskHigh(self: *@This(), value: *IReference(i32)) core.HResult!void {
        const _c = self.vtable.put_CpuExclusivityMaskHigh(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getAffinitizeToExclusiveCpus(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_AffinitizeToExclusiveCpus(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putAffinitizeToExclusiveCpus(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_AffinitizeToExclusiveCpus(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn SaveAsync(self: *@This()) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.SaveAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Gaming.Preview.GamesEnumeration.IGameModeConfiguration";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "78e591af-b142-4ef0-8830-55bc2be4f5ea";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IsEnabled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IsEnabled: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_RelatedProcessNames: *const fn(self: *anyopaque, _r: **IVector(HSTRING)) callconv(.winapi) HRESULT,
        get_PercentGpuTimeAllocatedToGame: *const fn(self: *anyopaque, _r: **IReference(i32)) callconv(.winapi) HRESULT,
        put_PercentGpuTimeAllocatedToGame: *const fn(self: *anyopaque, value: *IReference(i32)) callconv(.winapi) HRESULT,
        get_PercentGpuMemoryAllocatedToGame: *const fn(self: *anyopaque, _r: **IReference(i32)) callconv(.winapi) HRESULT,
        put_PercentGpuMemoryAllocatedToGame: *const fn(self: *anyopaque, value: *IReference(i32)) callconv(.winapi) HRESULT,
        get_PercentGpuMemoryAllocatedToSystemCompositor: *const fn(self: *anyopaque, _r: **IReference(i32)) callconv(.winapi) HRESULT,
        put_PercentGpuMemoryAllocatedToSystemCompositor: *const fn(self: *anyopaque, value: *IReference(i32)) callconv(.winapi) HRESULT,
        get_MaxCpuCount: *const fn(self: *anyopaque, _r: **IReference(i32)) callconv(.winapi) HRESULT,
        put_MaxCpuCount: *const fn(self: *anyopaque, value: *IReference(i32)) callconv(.winapi) HRESULT,
        get_CpuExclusivityMaskLow: *const fn(self: *anyopaque, _r: **IReference(i32)) callconv(.winapi) HRESULT,
        put_CpuExclusivityMaskLow: *const fn(self: *anyopaque, value: *IReference(i32)) callconv(.winapi) HRESULT,
        get_CpuExclusivityMaskHigh: *const fn(self: *anyopaque, _r: **IReference(i32)) callconv(.winapi) HRESULT,
        put_CpuExclusivityMaskHigh: *const fn(self: *anyopaque, value: *IReference(i32)) callconv(.winapi) HRESULT,
        get_AffinitizeToExclusiveCpus: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_AffinitizeToExclusiveCpus: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        SaveAsync: *const fn(self: *anyopaque, _r: **IAsyncAction) callconv(.winapi) HRESULT,
    };
};
pub const IGameModeUserConfiguration = extern struct {
    vtable: *const VTable,
    pub fn getGamingRelatedProcessNames(self: *@This()) core.HResult!*IVector(HSTRING) {
        var _r: *IVector(HSTRING) = undefined;
        const _c = self.vtable.get_GamingRelatedProcessNames(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SaveAsync(self: *@This()) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.SaveAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Gaming.Preview.GamesEnumeration.IGameModeUserConfiguration";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "72d34af4-756b-470f-a0c2-ba62a90795db";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_GamingRelatedProcessNames: *const fn(self: *anyopaque, _r: **IVector(HSTRING)) callconv(.winapi) HRESULT,
        SaveAsync: *const fn(self: *anyopaque, _r: **IAsyncAction) callconv(.winapi) HRESULT,
    };
};
pub const IGameModeUserConfigurationStatics = extern struct {
    vtable: *const VTable,
    pub fn GetDefault(self: *@This()) core.HResult!*GameModeUserConfiguration {
        var _r: *GameModeUserConfiguration = undefined;
        const _c = self.vtable.GetDefault(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Gaming.Preview.GamesEnumeration.IGameModeUserConfigurationStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "6e50d97c-66ea-478e-a4a1-f57c0e8d00e7";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetDefault: *const fn(self: *anyopaque, _r: **GameModeUserConfiguration) callconv(.winapi) HRESULT,
    };
};
const IUnknown = @import("../../root.zig").IUnknown;
const Guid = @import("../../root.zig").Guid;
const IVectorView = @import("../../Foundation/Collections.zig").IVectorView;
const IInspectable = @import("../../Foundation.zig").IInspectable;
const IMapView = @import("../../Foundation/Collections.zig").IMapView;
const IVector = @import("../../Foundation/Collections.zig").IVector;
const IAgileObject = @import("../../root.zig").IAgileObject;
const IReference = @import("../../Foundation.zig").IReference;
const AppDisplayInfo = @import("../../ApplicationModel.zig").AppDisplayInfo;
const HRESULT = @import("../../root.zig").HRESULT;
const IAsyncOperation = @import("../../Foundation.zig").IAsyncOperation;
const core = @import("../../root.zig").core;
const FactoryCache = @import("../../core.zig").FactoryCache;
const IStorageFile = @import("../../Storage.zig").IStorageFile;
const EventRegistrationToken = @import("../../Foundation.zig").EventRegistrationToken;
const TrustLevel = @import("../../root.zig").TrustLevel;
const IAsyncAction = @import("../../Foundation.zig").IAsyncAction;
const HSTRING = @import("../../root.zig").HSTRING;
