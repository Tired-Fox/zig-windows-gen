pub const GuidanceAudioMeasurementSystem = enum(i32) {
    Meters = 0,
    MilesAndYards = 1,
    MilesAndFeet = 2,
};
pub const GuidanceAudioNotificationKind = enum(i32) {
    Maneuver = 0,
    Route = 1,
    Gps = 2,
    SpeedLimit = 3,
    Traffic = 4,
    TrafficCamera = 5,
};
pub const GuidanceAudioNotificationRequestedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getAudioNotification(self: *@This()) core.HResult!GuidanceAudioNotificationKind {
        const this: *IGuidanceAudioNotificationRequestedEventArgs = @ptrCast(self);
        return try this.getAudioNotification();
    }
    pub fn getAudioFilePaths(self: *@This()) core.HResult!*IVectorView(HSTRING) {
        const this: *IGuidanceAudioNotificationRequestedEventArgs = @ptrCast(self);
        return try this.getAudioFilePaths();
    }
    pub fn getAudioText(self: *@This()) core.HResult!HSTRING {
        const this: *IGuidanceAudioNotificationRequestedEventArgs = @ptrCast(self);
        return try this.getAudioText();
    }
    pub const NAME: []const u8 = "Windows.Services.Maps.Guidance.GuidanceAudioNotificationRequestedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IGuidanceAudioNotificationRequestedEventArgs.GUID;
    pub const IID: Guid = IGuidanceAudioNotificationRequestedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IGuidanceAudioNotificationRequestedEventArgs.SIGNATURE);
};
pub const GuidanceAudioNotifications = enum(i32) {
    None = 0,
    Maneuver = 1,
    Route = 2,
    Gps = 4,
    SpeedLimit = 8,
    Traffic = 16,
    TrafficCamera = 32,
};
pub const GuidanceLaneInfo = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getLaneMarkers(self: *@This()) core.HResult!GuidanceLaneMarkers {
        const this: *IGuidanceLaneInfo = @ptrCast(self);
        return try this.getLaneMarkers();
    }
    pub fn getIsOnRoute(self: *@This()) core.HResult!bool {
        const this: *IGuidanceLaneInfo = @ptrCast(self);
        return try this.getIsOnRoute();
    }
    pub const NAME: []const u8 = "Windows.Services.Maps.Guidance.GuidanceLaneInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IGuidanceLaneInfo.GUID;
    pub const IID: Guid = IGuidanceLaneInfo.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IGuidanceLaneInfo.SIGNATURE);
};
pub const GuidanceLaneMarkers = enum(i32) {
    None = 0,
    LightRight = 1,
    Right = 2,
    HardRight = 4,
    Straight = 8,
    UTurnLeft = 16,
    HardLeft = 32,
    Left = 64,
    LightLeft = 128,
    UTurnRight = 256,
    Unknown = -1,
};
pub const GuidanceManeuver = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getStartLocation(self: *@This()) core.HResult!*Geopoint {
        const this: *IGuidanceManeuver = @ptrCast(self);
        return try this.getStartLocation();
    }
    pub fn getDistanceFromRouteStart(self: *@This()) core.HResult!i32 {
        const this: *IGuidanceManeuver = @ptrCast(self);
        return try this.getDistanceFromRouteStart();
    }
    pub fn getDistanceFromPreviousManeuver(self: *@This()) core.HResult!i32 {
        const this: *IGuidanceManeuver = @ptrCast(self);
        return try this.getDistanceFromPreviousManeuver();
    }
    pub fn getDepartureRoadName(self: *@This()) core.HResult!HSTRING {
        const this: *IGuidanceManeuver = @ptrCast(self);
        return try this.getDepartureRoadName();
    }
    pub fn getNextRoadName(self: *@This()) core.HResult!HSTRING {
        const this: *IGuidanceManeuver = @ptrCast(self);
        return try this.getNextRoadName();
    }
    pub fn getDepartureShortRoadName(self: *@This()) core.HResult!HSTRING {
        const this: *IGuidanceManeuver = @ptrCast(self);
        return try this.getDepartureShortRoadName();
    }
    pub fn getNextShortRoadName(self: *@This()) core.HResult!HSTRING {
        const this: *IGuidanceManeuver = @ptrCast(self);
        return try this.getNextShortRoadName();
    }
    pub fn getKind(self: *@This()) core.HResult!GuidanceManeuverKind {
        const this: *IGuidanceManeuver = @ptrCast(self);
        return try this.getKind();
    }
    pub fn getStartAngle(self: *@This()) core.HResult!i32 {
        const this: *IGuidanceManeuver = @ptrCast(self);
        return try this.getStartAngle();
    }
    pub fn getEndAngle(self: *@This()) core.HResult!i32 {
        const this: *IGuidanceManeuver = @ptrCast(self);
        return try this.getEndAngle();
    }
    pub fn getRoadSignpost(self: *@This()) core.HResult!*GuidanceRoadSignpost {
        const this: *IGuidanceManeuver = @ptrCast(self);
        return try this.getRoadSignpost();
    }
    pub fn getInstructionText(self: *@This()) core.HResult!HSTRING {
        const this: *IGuidanceManeuver = @ptrCast(self);
        return try this.getInstructionText();
    }
    pub const NAME: []const u8 = "Windows.Services.Maps.Guidance.GuidanceManeuver";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IGuidanceManeuver.GUID;
    pub const IID: Guid = IGuidanceManeuver.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IGuidanceManeuver.SIGNATURE);
};
pub const GuidanceManeuverKind = enum(i32) {
    None = 0,
    GoStraight = 1,
    UTurnRight = 2,
    UTurnLeft = 3,
    TurnKeepRight = 4,
    TurnLightRight = 5,
    TurnRight = 6,
    TurnHardRight = 7,
    KeepMiddle = 8,
    TurnKeepLeft = 9,
    TurnLightLeft = 10,
    TurnLeft = 11,
    TurnHardLeft = 12,
    FreewayEnterRight = 13,
    FreewayEnterLeft = 14,
    FreewayLeaveRight = 15,
    FreewayLeaveLeft = 16,
    FreewayKeepRight = 17,
    FreewayKeepLeft = 18,
    TrafficCircleRight1 = 19,
    TrafficCircleRight2 = 20,
    TrafficCircleRight3 = 21,
    TrafficCircleRight4 = 22,
    TrafficCircleRight5 = 23,
    TrafficCircleRight6 = 24,
    TrafficCircleRight7 = 25,
    TrafficCircleRight8 = 26,
    TrafficCircleRight9 = 27,
    TrafficCircleRight10 = 28,
    TrafficCircleRight11 = 29,
    TrafficCircleRight12 = 30,
    TrafficCircleLeft1 = 31,
    TrafficCircleLeft2 = 32,
    TrafficCircleLeft3 = 33,
    TrafficCircleLeft4 = 34,
    TrafficCircleLeft5 = 35,
    TrafficCircleLeft6 = 36,
    TrafficCircleLeft7 = 37,
    TrafficCircleLeft8 = 38,
    TrafficCircleLeft9 = 39,
    TrafficCircleLeft10 = 40,
    TrafficCircleLeft11 = 41,
    TrafficCircleLeft12 = 42,
    Start = 43,
    End = 44,
    TakeFerry = 45,
    PassTransitStation = 46,
    LeaveTransitStation = 47,
};
pub const GuidanceMapMatchedCoordinate = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getLocation(self: *@This()) core.HResult!*Geopoint {
        const this: *IGuidanceMapMatchedCoordinate = @ptrCast(self);
        return try this.getLocation();
    }
    pub fn getCurrentHeading(self: *@This()) core.HResult!f64 {
        const this: *IGuidanceMapMatchedCoordinate = @ptrCast(self);
        return try this.getCurrentHeading();
    }
    pub fn getCurrentSpeed(self: *@This()) core.HResult!f64 {
        const this: *IGuidanceMapMatchedCoordinate = @ptrCast(self);
        return try this.getCurrentSpeed();
    }
    pub fn getIsOnStreet(self: *@This()) core.HResult!bool {
        const this: *IGuidanceMapMatchedCoordinate = @ptrCast(self);
        return try this.getIsOnStreet();
    }
    pub fn getRoad(self: *@This()) core.HResult!*GuidanceRoadSegment {
        const this: *IGuidanceMapMatchedCoordinate = @ptrCast(self);
        return try this.getRoad();
    }
    pub const NAME: []const u8 = "Windows.Services.Maps.Guidance.GuidanceMapMatchedCoordinate";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IGuidanceMapMatchedCoordinate.GUID;
    pub const IID: Guid = IGuidanceMapMatchedCoordinate.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IGuidanceMapMatchedCoordinate.SIGNATURE);
};
pub const GuidanceMode = enum(i32) {
    None = 0,
    Simulation = 1,
    Navigation = 2,
    Tracking = 3,
};
pub const GuidanceNavigator = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn StartNavigating(self: *@This(), route: *GuidanceRoute) core.HResult!void {
        const this: *IGuidanceNavigator = @ptrCast(self);
        return try this.StartNavigating(route);
    }
    pub fn StartSimulating(self: *@This(), route: *GuidanceRoute, speedInMetersPerSecond: i32) core.HResult!void {
        const this: *IGuidanceNavigator = @ptrCast(self);
        return try this.StartSimulating(route, speedInMetersPerSecond);
    }
    pub fn StartTracking(self: *@This()) core.HResult!void {
        const this: *IGuidanceNavigator = @ptrCast(self);
        return try this.StartTracking();
    }
    pub fn Pause(self: *@This()) core.HResult!void {
        const this: *IGuidanceNavigator = @ptrCast(self);
        return try this.Pause();
    }
    pub fn Resume(self: *@This()) core.HResult!void {
        const this: *IGuidanceNavigator = @ptrCast(self);
        return try this.Resume();
    }
    pub fn Stop(self: *@This()) core.HResult!void {
        const this: *IGuidanceNavigator = @ptrCast(self);
        return try this.Stop();
    }
    pub fn RepeatLastAudioNotification(self: *@This()) core.HResult!void {
        const this: *IGuidanceNavigator = @ptrCast(self);
        return try this.RepeatLastAudioNotification();
    }
    pub fn getAudioMeasurementSystem(self: *@This()) core.HResult!GuidanceAudioMeasurementSystem {
        const this: *IGuidanceNavigator = @ptrCast(self);
        return try this.getAudioMeasurementSystem();
    }
    pub fn putAudioMeasurementSystem(self: *@This(), value: GuidanceAudioMeasurementSystem) core.HResult!void {
        const this: *IGuidanceNavigator = @ptrCast(self);
        return try this.putAudioMeasurementSystem(value);
    }
    pub fn getAudioNotifications(self: *@This()) core.HResult!GuidanceAudioNotifications {
        const this: *IGuidanceNavigator = @ptrCast(self);
        return try this.getAudioNotifications();
    }
    pub fn putAudioNotifications(self: *@This(), value: GuidanceAudioNotifications) core.HResult!void {
        const this: *IGuidanceNavigator = @ptrCast(self);
        return try this.putAudioNotifications(value);
    }
    pub fn addGuidanceUpdated(self: *@This(), handler: *TypedEventHandler(GuidanceNavigator,GuidanceUpdatedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IGuidanceNavigator = @ptrCast(self);
        return try this.addGuidanceUpdated(handler);
    }
    pub fn removeGuidanceUpdated(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IGuidanceNavigator = @ptrCast(self);
        return try this.removeGuidanceUpdated(token);
    }
    pub fn addDestinationReached(self: *@This(), handler: *TypedEventHandler(GuidanceNavigator,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *IGuidanceNavigator = @ptrCast(self);
        return try this.addDestinationReached(handler);
    }
    pub fn removeDestinationReached(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IGuidanceNavigator = @ptrCast(self);
        return try this.removeDestinationReached(token);
    }
    pub fn addRerouting(self: *@This(), handler: *TypedEventHandler(GuidanceNavigator,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *IGuidanceNavigator = @ptrCast(self);
        return try this.addRerouting(handler);
    }
    pub fn removeRerouting(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IGuidanceNavigator = @ptrCast(self);
        return try this.removeRerouting(token);
    }
    pub fn addRerouted(self: *@This(), handler: *TypedEventHandler(GuidanceNavigator,GuidanceReroutedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IGuidanceNavigator = @ptrCast(self);
        return try this.addRerouted(handler);
    }
    pub fn removeRerouted(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IGuidanceNavigator = @ptrCast(self);
        return try this.removeRerouted(token);
    }
    pub fn addRerouteFailed(self: *@This(), handler: *TypedEventHandler(GuidanceNavigator,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *IGuidanceNavigator = @ptrCast(self);
        return try this.addRerouteFailed(handler);
    }
    pub fn removeRerouteFailed(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IGuidanceNavigator = @ptrCast(self);
        return try this.removeRerouteFailed(token);
    }
    pub fn addUserLocationLost(self: *@This(), handler: *TypedEventHandler(GuidanceNavigator,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *IGuidanceNavigator = @ptrCast(self);
        return try this.addUserLocationLost(handler);
    }
    pub fn removeUserLocationLost(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IGuidanceNavigator = @ptrCast(self);
        return try this.removeUserLocationLost(token);
    }
    pub fn addUserLocationRestored(self: *@This(), handler: *TypedEventHandler(GuidanceNavigator,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *IGuidanceNavigator = @ptrCast(self);
        return try this.addUserLocationRestored(handler);
    }
    pub fn removeUserLocationRestored(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IGuidanceNavigator = @ptrCast(self);
        return try this.removeUserLocationRestored(token);
    }
    pub fn SetGuidanceVoice(self: *@This(), voiceId: i32, voiceFolder: HSTRING) core.HResult!void {
        const this: *IGuidanceNavigator = @ptrCast(self);
        return try this.SetGuidanceVoice(voiceId, voiceFolder);
    }
    pub fn UpdateUserLocation(self: *@This(), userLocation: *Geocoordinate) core.HResult!void {
        const this: *IGuidanceNavigator = @ptrCast(self);
        return try this.UpdateUserLocation(userLocation);
    }
    pub fn UpdateUserLocation(self: *@This(), userLocation: *Geocoordinate, positionOverride: BasicGeoposition) core.HResult!void {
        const this: *IGuidanceNavigator = @ptrCast(self);
        return try this.UpdateUserLocation(userLocation, positionOverride);
    }
    pub fn addAudioNotificationRequested(self: *@This(), value: *TypedEventHandler(GuidanceNavigator,GuidanceAudioNotificationRequestedEventArgs)) core.HResult!EventRegistrationToken {
        var this: ?*IGuidanceNavigator2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IGuidanceNavigator2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addAudioNotificationRequested(value);
    }
    pub fn removeAudioNotificationRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        var this: ?*IGuidanceNavigator2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IGuidanceNavigator2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removeAudioNotificationRequested(token);
    }
    pub fn getIsGuidanceAudioMuted(self: *@This()) core.HResult!bool {
        var this: ?*IGuidanceNavigator2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IGuidanceNavigator2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsGuidanceAudioMuted();
    }
    pub fn putIsGuidanceAudioMuted(self: *@This(), value: bool) core.HResult!void {
        var this: ?*IGuidanceNavigator2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IGuidanceNavigator2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putIsGuidanceAudioMuted(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn GetCurrent() core.HResult!*GuidanceNavigator {
        const factory = @This().IGuidanceNavigatorStaticsCache.get();
        return try factory.GetCurrent();
    }
    pub fn getUseAppProvidedVoice() core.HResult!bool {
        const factory = @This().IGuidanceNavigatorStatics2Cache.get();
        return try factory.getUseAppProvidedVoice();
    }
    pub const NAME: []const u8 = "Windows.Services.Maps.Guidance.GuidanceNavigator";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IGuidanceNavigator.GUID;
    pub const IID: Guid = IGuidanceNavigator.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IGuidanceNavigator.SIGNATURE);
    var _IGuidanceNavigatorStaticsCache: FactoryCache(IGuidanceNavigatorStatics, RUNTIME_NAME) = .{};
    var _IGuidanceNavigatorStatics2Cache: FactoryCache(IGuidanceNavigatorStatics2, RUNTIME_NAME) = .{};
};
pub const GuidanceReroutedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getRoute(self: *@This()) core.HResult!*GuidanceRoute {
        const this: *IGuidanceReroutedEventArgs = @ptrCast(self);
        return try this.getRoute();
    }
    pub const NAME: []const u8 = "Windows.Services.Maps.Guidance.GuidanceReroutedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IGuidanceReroutedEventArgs.GUID;
    pub const IID: Guid = IGuidanceReroutedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IGuidanceReroutedEventArgs.SIGNATURE);
};
pub const GuidanceRoadSegment = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getRoadName(self: *@This()) core.HResult!HSTRING {
        const this: *IGuidanceRoadSegment = @ptrCast(self);
        return try this.getRoadName();
    }
    pub fn getShortRoadName(self: *@This()) core.HResult!HSTRING {
        const this: *IGuidanceRoadSegment = @ptrCast(self);
        return try this.getShortRoadName();
    }
    pub fn getSpeedLimit(self: *@This()) core.HResult!f64 {
        const this: *IGuidanceRoadSegment = @ptrCast(self);
        return try this.getSpeedLimit();
    }
    pub fn getTravelTime(self: *@This()) core.HResult!TimeSpan {
        const this: *IGuidanceRoadSegment = @ptrCast(self);
        return try this.getTravelTime();
    }
    pub fn getPath(self: *@This()) core.HResult!*Geopath {
        const this: *IGuidanceRoadSegment = @ptrCast(self);
        return try this.getPath();
    }
    pub fn getId(self: *@This()) core.HResult!HSTRING {
        const this: *IGuidanceRoadSegment = @ptrCast(self);
        return try this.getId();
    }
    pub fn getIsHighway(self: *@This()) core.HResult!bool {
        const this: *IGuidanceRoadSegment = @ptrCast(self);
        return try this.getIsHighway();
    }
    pub fn getIsTunnel(self: *@This()) core.HResult!bool {
        const this: *IGuidanceRoadSegment = @ptrCast(self);
        return try this.getIsTunnel();
    }
    pub fn getIsTollRoad(self: *@This()) core.HResult!bool {
        const this: *IGuidanceRoadSegment = @ptrCast(self);
        return try this.getIsTollRoad();
    }
    pub fn getIsScenic(self: *@This()) core.HResult!bool {
        var this: ?*IGuidanceRoadSegment2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IGuidanceRoadSegment2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsScenic();
    }
    pub const NAME: []const u8 = "Windows.Services.Maps.Guidance.GuidanceRoadSegment";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IGuidanceRoadSegment.GUID;
    pub const IID: Guid = IGuidanceRoadSegment.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IGuidanceRoadSegment.SIGNATURE);
};
pub const GuidanceRoadSignpost = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getExitNumber(self: *@This()) core.HResult!HSTRING {
        const this: *IGuidanceRoadSignpost = @ptrCast(self);
        return try this.getExitNumber();
    }
    pub fn getExit(self: *@This()) core.HResult!HSTRING {
        const this: *IGuidanceRoadSignpost = @ptrCast(self);
        return try this.getExit();
    }
    pub fn getBackgroundColor(self: *@This()) core.HResult!Color {
        const this: *IGuidanceRoadSignpost = @ptrCast(self);
        return try this.getBackgroundColor();
    }
    pub fn getForegroundColor(self: *@This()) core.HResult!Color {
        const this: *IGuidanceRoadSignpost = @ptrCast(self);
        return try this.getForegroundColor();
    }
    pub fn getExitDirections(self: *@This()) core.HResult!*IVectorView(HSTRING) {
        const this: *IGuidanceRoadSignpost = @ptrCast(self);
        return try this.getExitDirections();
    }
    pub const NAME: []const u8 = "Windows.Services.Maps.Guidance.GuidanceRoadSignpost";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IGuidanceRoadSignpost.GUID;
    pub const IID: Guid = IGuidanceRoadSignpost.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IGuidanceRoadSignpost.SIGNATURE);
};
pub const GuidanceRoute = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getDuration(self: *@This()) core.HResult!TimeSpan {
        const this: *IGuidanceRoute = @ptrCast(self);
        return try this.getDuration();
    }
    pub fn getDistance(self: *@This()) core.HResult!i32 {
        const this: *IGuidanceRoute = @ptrCast(self);
        return try this.getDistance();
    }
    pub fn getManeuvers(self: *@This()) core.HResult!*IVectorView(GuidanceManeuver) {
        const this: *IGuidanceRoute = @ptrCast(self);
        return try this.getManeuvers();
    }
    pub fn getBoundingBox(self: *@This()) core.HResult!*GeoboundingBox {
        const this: *IGuidanceRoute = @ptrCast(self);
        return try this.getBoundingBox();
    }
    pub fn getPath(self: *@This()) core.HResult!*Geopath {
        const this: *IGuidanceRoute = @ptrCast(self);
        return try this.getPath();
    }
    pub fn getRoadSegments(self: *@This()) core.HResult!*IVectorView(GuidanceRoadSegment) {
        const this: *IGuidanceRoute = @ptrCast(self);
        return try this.getRoadSegments();
    }
    pub fn ConvertToMapRoute(self: *@This()) core.HResult!*MapRoute {
        const this: *IGuidanceRoute = @ptrCast(self);
        return try this.ConvertToMapRoute();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CanCreateFromMapRoute(mapRoute: *MapRoute) core.HResult!bool {
        const factory = @This().IGuidanceRouteStaticsCache.get();
        return try factory.CanCreateFromMapRoute(mapRoute);
    }
    pub fn TryCreateFromMapRoute(mapRoute: *MapRoute) core.HResult!*GuidanceRoute {
        const factory = @This().IGuidanceRouteStaticsCache.get();
        return try factory.TryCreateFromMapRoute(mapRoute);
    }
    pub const NAME: []const u8 = "Windows.Services.Maps.Guidance.GuidanceRoute";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IGuidanceRoute.GUID;
    pub const IID: Guid = IGuidanceRoute.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IGuidanceRoute.SIGNATURE);
    var _IGuidanceRouteStaticsCache: FactoryCache(IGuidanceRouteStatics, RUNTIME_NAME) = .{};
};
pub const GuidanceTelemetryCollector = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getEnabled(self: *@This()) core.HResult!bool {
        const this: *IGuidanceTelemetryCollector = @ptrCast(self);
        return try this.getEnabled();
    }
    pub fn putEnabled(self: *@This(), value: bool) core.HResult!void {
        const this: *IGuidanceTelemetryCollector = @ptrCast(self);
        return try this.putEnabled(value);
    }
    pub fn ClearLocalData(self: *@This()) core.HResult!void {
        const this: *IGuidanceTelemetryCollector = @ptrCast(self);
        return try this.ClearLocalData();
    }
    pub fn getSpeedTrigger(self: *@This()) core.HResult!f64 {
        const this: *IGuidanceTelemetryCollector = @ptrCast(self);
        return try this.getSpeedTrigger();
    }
    pub fn putSpeedTrigger(self: *@This(), value: f64) core.HResult!void {
        const this: *IGuidanceTelemetryCollector = @ptrCast(self);
        return try this.putSpeedTrigger(value);
    }
    pub fn getUploadFrequency(self: *@This()) core.HResult!i32 {
        const this: *IGuidanceTelemetryCollector = @ptrCast(self);
        return try this.getUploadFrequency();
    }
    pub fn putUploadFrequency(self: *@This(), value: i32) core.HResult!void {
        const this: *IGuidanceTelemetryCollector = @ptrCast(self);
        return try this.putUploadFrequency(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn GetCurrent() core.HResult!*GuidanceTelemetryCollector {
        const factory = @This().IGuidanceTelemetryCollectorStaticsCache.get();
        return try factory.GetCurrent();
    }
    pub const NAME: []const u8 = "Windows.Services.Maps.Guidance.GuidanceTelemetryCollector";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IGuidanceTelemetryCollector.GUID;
    pub const IID: Guid = IGuidanceTelemetryCollector.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IGuidanceTelemetryCollector.SIGNATURE);
    var _IGuidanceTelemetryCollectorStaticsCache: FactoryCache(IGuidanceTelemetryCollectorStatics, RUNTIME_NAME) = .{};
};
pub const GuidanceUpdatedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getMode(self: *@This()) core.HResult!GuidanceMode {
        const this: *IGuidanceUpdatedEventArgs = @ptrCast(self);
        return try this.getMode();
    }
    pub fn getNextManeuver(self: *@This()) core.HResult!*GuidanceManeuver {
        const this: *IGuidanceUpdatedEventArgs = @ptrCast(self);
        return try this.getNextManeuver();
    }
    pub fn getNextManeuverDistance(self: *@This()) core.HResult!i32 {
        const this: *IGuidanceUpdatedEventArgs = @ptrCast(self);
        return try this.getNextManeuverDistance();
    }
    pub fn getAfterNextManeuver(self: *@This()) core.HResult!*GuidanceManeuver {
        const this: *IGuidanceUpdatedEventArgs = @ptrCast(self);
        return try this.getAfterNextManeuver();
    }
    pub fn getAfterNextManeuverDistance(self: *@This()) core.HResult!i32 {
        const this: *IGuidanceUpdatedEventArgs = @ptrCast(self);
        return try this.getAfterNextManeuverDistance();
    }
    pub fn getDistanceToDestination(self: *@This()) core.HResult!i32 {
        const this: *IGuidanceUpdatedEventArgs = @ptrCast(self);
        return try this.getDistanceToDestination();
    }
    pub fn getElapsedDistance(self: *@This()) core.HResult!i32 {
        const this: *IGuidanceUpdatedEventArgs = @ptrCast(self);
        return try this.getElapsedDistance();
    }
    pub fn getElapsedTime(self: *@This()) core.HResult!TimeSpan {
        const this: *IGuidanceUpdatedEventArgs = @ptrCast(self);
        return try this.getElapsedTime();
    }
    pub fn getTimeToDestination(self: *@This()) core.HResult!TimeSpan {
        const this: *IGuidanceUpdatedEventArgs = @ptrCast(self);
        return try this.getTimeToDestination();
    }
    pub fn getRoadName(self: *@This()) core.HResult!HSTRING {
        const this: *IGuidanceUpdatedEventArgs = @ptrCast(self);
        return try this.getRoadName();
    }
    pub fn getRoute(self: *@This()) core.HResult!*GuidanceRoute {
        const this: *IGuidanceUpdatedEventArgs = @ptrCast(self);
        return try this.getRoute();
    }
    pub fn getCurrentLocation(self: *@This()) core.HResult!*GuidanceMapMatchedCoordinate {
        const this: *IGuidanceUpdatedEventArgs = @ptrCast(self);
        return try this.getCurrentLocation();
    }
    pub fn getIsNewManeuver(self: *@This()) core.HResult!bool {
        const this: *IGuidanceUpdatedEventArgs = @ptrCast(self);
        return try this.getIsNewManeuver();
    }
    pub fn getLaneInfo(self: *@This()) core.HResult!*IVectorView(GuidanceLaneInfo) {
        const this: *IGuidanceUpdatedEventArgs = @ptrCast(self);
        return try this.getLaneInfo();
    }
    pub const NAME: []const u8 = "Windows.Services.Maps.Guidance.GuidanceUpdatedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IGuidanceUpdatedEventArgs.GUID;
    pub const IID: Guid = IGuidanceUpdatedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IGuidanceUpdatedEventArgs.SIGNATURE);
};
pub const IGuidanceAudioNotificationRequestedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getAudioNotification(self: *@This()) core.HResult!GuidanceAudioNotificationKind {
        var _r: GuidanceAudioNotificationKind = undefined;
        const _c = self.vtable.get_AudioNotification(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAudioFilePaths(self: *@This()) core.HResult!*IVectorView(HSTRING) {
        var _r: *IVectorView(HSTRING) = undefined;
        const _c = self.vtable.get_AudioFilePaths(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAudioText(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_AudioText(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Services.Maps.Guidance.IGuidanceAudioNotificationRequestedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ca2aa24a-c7c2-4d4c-9d7c-499576bceddb";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_AudioNotification: *const fn(self: *anyopaque, _r: *GuidanceAudioNotificationKind) callconv(.winapi) HRESULT,
        get_AudioFilePaths: *const fn(self: *anyopaque, _r: **IVectorView(HSTRING)) callconv(.winapi) HRESULT,
        get_AudioText: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IGuidanceLaneInfo = extern struct {
    vtable: *const VTable,
    pub fn getLaneMarkers(self: *@This()) core.HResult!GuidanceLaneMarkers {
        var _r: GuidanceLaneMarkers = undefined;
        const _c = self.vtable.get_LaneMarkers(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsOnRoute(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsOnRoute(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Services.Maps.Guidance.IGuidanceLaneInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "8404d114-6581-43b7-ac15-c9079bf90df1";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_LaneMarkers: *const fn(self: *anyopaque, _r: *GuidanceLaneMarkers) callconv(.winapi) HRESULT,
        get_IsOnRoute: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IGuidanceManeuver = extern struct {
    vtable: *const VTable,
    pub fn getStartLocation(self: *@This()) core.HResult!*Geopoint {
        var _r: *Geopoint = undefined;
        const _c = self.vtable.get_StartLocation(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDistanceFromRouteStart(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_DistanceFromRouteStart(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDistanceFromPreviousManeuver(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_DistanceFromPreviousManeuver(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDepartureRoadName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DepartureRoadName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getNextRoadName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_NextRoadName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDepartureShortRoadName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DepartureShortRoadName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getNextShortRoadName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_NextShortRoadName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getKind(self: *@This()) core.HResult!GuidanceManeuverKind {
        var _r: GuidanceManeuverKind = undefined;
        const _c = self.vtable.get_Kind(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getStartAngle(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_StartAngle(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getEndAngle(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_EndAngle(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRoadSignpost(self: *@This()) core.HResult!*GuidanceRoadSignpost {
        var _r: *GuidanceRoadSignpost = undefined;
        const _c = self.vtable.get_RoadSignpost(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getInstructionText(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_InstructionText(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Services.Maps.Guidance.IGuidanceManeuver";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "fc09326c-ecc9-4928-a2a1-7232b99b94a1";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_StartLocation: *const fn(self: *anyopaque, _r: **Geopoint) callconv(.winapi) HRESULT,
        get_DistanceFromRouteStart: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        get_DistanceFromPreviousManeuver: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        get_DepartureRoadName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_NextRoadName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_DepartureShortRoadName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_NextShortRoadName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Kind: *const fn(self: *anyopaque, _r: *GuidanceManeuverKind) callconv(.winapi) HRESULT,
        get_StartAngle: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        get_EndAngle: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        get_RoadSignpost: *const fn(self: *anyopaque, _r: **GuidanceRoadSignpost) callconv(.winapi) HRESULT,
        get_InstructionText: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IGuidanceMapMatchedCoordinate = extern struct {
    vtable: *const VTable,
    pub fn getLocation(self: *@This()) core.HResult!*Geopoint {
        var _r: *Geopoint = undefined;
        const _c = self.vtable.get_Location(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCurrentHeading(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_CurrentHeading(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCurrentSpeed(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_CurrentSpeed(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsOnStreet(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsOnStreet(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRoad(self: *@This()) core.HResult!*GuidanceRoadSegment {
        var _r: *GuidanceRoadSegment = undefined;
        const _c = self.vtable.get_Road(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Services.Maps.Guidance.IGuidanceMapMatchedCoordinate";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b7acb168-2912-4a99-aff1-798609b981fe";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Location: *const fn(self: *anyopaque, _r: **Geopoint) callconv(.winapi) HRESULT,
        get_CurrentHeading: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        get_CurrentSpeed: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        get_IsOnStreet: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_Road: *const fn(self: *anyopaque, _r: **GuidanceRoadSegment) callconv(.winapi) HRESULT,
    };
};
pub const IGuidanceNavigator = extern struct {
    vtable: *const VTable,
    pub fn StartNavigating(self: *@This(), route: *GuidanceRoute) core.HResult!void {
        const _c = self.vtable.StartNavigating(@ptrCast(self), route);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn StartSimulating(self: *@This(), route: *GuidanceRoute, speedInMetersPerSecond: i32) core.HResult!void {
        const _c = self.vtable.StartSimulating(@ptrCast(self), route, speedInMetersPerSecond);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn StartTracking(self: *@This()) core.HResult!void {
        const _c = self.vtable.StartTracking(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn Pause(self: *@This()) core.HResult!void {
        const _c = self.vtable.Pause(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn Resume(self: *@This()) core.HResult!void {
        const _c = self.vtable.Resume(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn Stop(self: *@This()) core.HResult!void {
        const _c = self.vtable.Stop(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn RepeatLastAudioNotification(self: *@This()) core.HResult!void {
        const _c = self.vtable.RepeatLastAudioNotification(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getAudioMeasurementSystem(self: *@This()) core.HResult!GuidanceAudioMeasurementSystem {
        var _r: GuidanceAudioMeasurementSystem = undefined;
        const _c = self.vtable.get_AudioMeasurementSystem(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putAudioMeasurementSystem(self: *@This(), value: GuidanceAudioMeasurementSystem) core.HResult!void {
        const _c = self.vtable.put_AudioMeasurementSystem(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getAudioNotifications(self: *@This()) core.HResult!GuidanceAudioNotifications {
        var _r: GuidanceAudioNotifications = undefined;
        const _c = self.vtable.get_AudioNotifications(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putAudioNotifications(self: *@This(), value: GuidanceAudioNotifications) core.HResult!void {
        const _c = self.vtable.put_AudioNotifications(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addGuidanceUpdated(self: *@This(), handler: *TypedEventHandler(GuidanceNavigator,GuidanceUpdatedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_GuidanceUpdated(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeGuidanceUpdated(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_GuidanceUpdated(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addDestinationReached(self: *@This(), handler: *TypedEventHandler(GuidanceNavigator,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_DestinationReached(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeDestinationReached(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_DestinationReached(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addRerouting(self: *@This(), handler: *TypedEventHandler(GuidanceNavigator,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_Rerouting(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeRerouting(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_Rerouting(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addRerouted(self: *@This(), handler: *TypedEventHandler(GuidanceNavigator,GuidanceReroutedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_Rerouted(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeRerouted(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_Rerouted(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addRerouteFailed(self: *@This(), handler: *TypedEventHandler(GuidanceNavigator,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_RerouteFailed(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeRerouteFailed(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_RerouteFailed(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addUserLocationLost(self: *@This(), handler: *TypedEventHandler(GuidanceNavigator,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_UserLocationLost(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeUserLocationLost(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_UserLocationLost(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addUserLocationRestored(self: *@This(), handler: *TypedEventHandler(GuidanceNavigator,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_UserLocationRestored(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeUserLocationRestored(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_UserLocationRestored(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn SetGuidanceVoice(self: *@This(), voiceId: i32, voiceFolder: HSTRING) core.HResult!void {
        const _c = self.vtable.SetGuidanceVoice(@ptrCast(self), voiceId, voiceFolder);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn UpdateUserLocation(self: *@This(), userLocation: *Geocoordinate) core.HResult!void {
        const _c = self.vtable.UpdateUserLocation(@ptrCast(self), userLocation);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn UpdateUserLocation(self: *@This(), userLocation: *Geocoordinate, positionOverride: BasicGeoposition) core.HResult!void {
        const _c = self.vtable.UpdateUserLocation(@ptrCast(self), userLocation, positionOverride);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Services.Maps.Guidance.IGuidanceNavigator";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "08f17ef7-8e3f-4d9a-be8a-108f9a012c67";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        StartNavigating: *const fn(self: *anyopaque, route: *GuidanceRoute) callconv(.winapi) HRESULT,
        StartSimulating: *const fn(self: *anyopaque, route: *GuidanceRoute, speedInMetersPerSecond: i32) callconv(.winapi) HRESULT,
        StartTracking: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        Pause: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        Resume: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        Stop: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        RepeatLastAudioNotification: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        get_AudioMeasurementSystem: *const fn(self: *anyopaque, _r: *GuidanceAudioMeasurementSystem) callconv(.winapi) HRESULT,
        put_AudioMeasurementSystem: *const fn(self: *anyopaque, value: GuidanceAudioMeasurementSystem) callconv(.winapi) HRESULT,
        get_AudioNotifications: *const fn(self: *anyopaque, _r: *GuidanceAudioNotifications) callconv(.winapi) HRESULT,
        put_AudioNotifications: *const fn(self: *anyopaque, value: GuidanceAudioNotifications) callconv(.winapi) HRESULT,
        add_GuidanceUpdated: *const fn(self: *anyopaque, handler: *TypedEventHandler(GuidanceNavigator,GuidanceUpdatedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_GuidanceUpdated: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_DestinationReached: *const fn(self: *anyopaque, handler: *TypedEventHandler(GuidanceNavigator,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_DestinationReached: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_Rerouting: *const fn(self: *anyopaque, handler: *TypedEventHandler(GuidanceNavigator,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_Rerouting: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_Rerouted: *const fn(self: *anyopaque, handler: *TypedEventHandler(GuidanceNavigator,GuidanceReroutedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_Rerouted: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_RerouteFailed: *const fn(self: *anyopaque, handler: *TypedEventHandler(GuidanceNavigator,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_RerouteFailed: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_UserLocationLost: *const fn(self: *anyopaque, handler: *TypedEventHandler(GuidanceNavigator,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_UserLocationLost: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_UserLocationRestored: *const fn(self: *anyopaque, handler: *TypedEventHandler(GuidanceNavigator,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_UserLocationRestored: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        SetGuidanceVoice: *const fn(self: *anyopaque, voiceId: i32, voiceFolder: HSTRING) callconv(.winapi) HRESULT,
        UpdateUserLocation: *const fn(self: *anyopaque, userLocation: *Geocoordinate) callconv(.winapi) HRESULT,
        UpdateUserLocation: *const fn(self: *anyopaque, userLocation: *Geocoordinate, positionOverride: BasicGeoposition) callconv(.winapi) HRESULT,
    };
};
pub const IGuidanceNavigator2 = extern struct {
    vtable: *const VTable,
    pub fn addAudioNotificationRequested(self: *@This(), value: *TypedEventHandler(GuidanceNavigator,GuidanceAudioNotificationRequestedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_AudioNotificationRequested(@ptrCast(self), value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeAudioNotificationRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_AudioNotificationRequested(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIsGuidanceAudioMuted(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsGuidanceAudioMuted(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIsGuidanceAudioMuted(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsGuidanceAudioMuted(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Services.Maps.Guidance.IGuidanceNavigator2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "6cdc50d1-041c-4bf3-b633-a101fc2f6b57";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        add_AudioNotificationRequested: *const fn(self: *anyopaque, value: *TypedEventHandler(GuidanceNavigator,GuidanceAudioNotificationRequestedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_AudioNotificationRequested: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        get_IsGuidanceAudioMuted: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IsGuidanceAudioMuted: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
    };
};
pub const IGuidanceNavigatorStatics = extern struct {
    vtable: *const VTable,
    pub fn GetCurrent(self: *@This()) core.HResult!*GuidanceNavigator {
        var _r: *GuidanceNavigator = undefined;
        const _c = self.vtable.GetCurrent(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Services.Maps.Guidance.IGuidanceNavigatorStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "00fd9513-4456-4e66-a143-3add6be08426";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetCurrent: *const fn(self: *anyopaque, _r: **GuidanceNavigator) callconv(.winapi) HRESULT,
    };
};
pub const IGuidanceNavigatorStatics2 = extern struct {
    vtable: *const VTable,
    pub fn getUseAppProvidedVoice(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_UseAppProvidedVoice(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Services.Maps.Guidance.IGuidanceNavigatorStatics2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "54c5c3e2-7784-4c85-8c95-d0c6efb43965";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_UseAppProvidedVoice: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IGuidanceReroutedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getRoute(self: *@This()) core.HResult!*GuidanceRoute {
        var _r: *GuidanceRoute = undefined;
        const _c = self.vtable.get_Route(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Services.Maps.Guidance.IGuidanceReroutedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "115d4008-d528-454e-bb94-a50341d2c9f1";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Route: *const fn(self: *anyopaque, _r: **GuidanceRoute) callconv(.winapi) HRESULT,
    };
};
pub const IGuidanceRoadSegment = extern struct {
    vtable: *const VTable,
    pub fn getRoadName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_RoadName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getShortRoadName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ShortRoadName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSpeedLimit(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_SpeedLimit(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTravelTime(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_TravelTime(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPath(self: *@This()) core.HResult!*Geopath {
        var _r: *Geopath = undefined;
        const _c = self.vtable.get_Path(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Id(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsHighway(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsHighway(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsTunnel(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsTunnel(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsTollRoad(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsTollRoad(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Services.Maps.Guidance.IGuidanceRoadSegment";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b32758a6-be78-4c63-afe7-6c2957479b3e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_RoadName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_ShortRoadName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_SpeedLimit: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        get_TravelTime: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
        get_Path: *const fn(self: *anyopaque, _r: **Geopath) callconv(.winapi) HRESULT,
        get_Id: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_IsHighway: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsTunnel: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsTollRoad: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IGuidanceRoadSegment2 = extern struct {
    vtable: *const VTable,
    pub fn getIsScenic(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsScenic(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Services.Maps.Guidance.IGuidanceRoadSegment2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2474a61d-1723-49f1-895b-47a2c4aa9c55";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IsScenic: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IGuidanceRoadSignpost = extern struct {
    vtable: *const VTable,
    pub fn getExitNumber(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ExitNumber(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getExit(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Exit(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getBackgroundColor(self: *@This()) core.HResult!Color {
        var _r: Color = undefined;
        const _c = self.vtable.get_BackgroundColor(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getForegroundColor(self: *@This()) core.HResult!Color {
        var _r: Color = undefined;
        const _c = self.vtable.get_ForegroundColor(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getExitDirections(self: *@This()) core.HResult!*IVectorView(HSTRING) {
        var _r: *IVectorView(HSTRING) = undefined;
        const _c = self.vtable.get_ExitDirections(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Services.Maps.Guidance.IGuidanceRoadSignpost";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f1a728b6-f77a-4742-8312-53300f9845f0";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ExitNumber: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Exit: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_BackgroundColor: *const fn(self: *anyopaque, _r: *Color) callconv(.winapi) HRESULT,
        get_ForegroundColor: *const fn(self: *anyopaque, _r: *Color) callconv(.winapi) HRESULT,
        get_ExitDirections: *const fn(self: *anyopaque, _r: **IVectorView(HSTRING)) callconv(.winapi) HRESULT,
    };
};
pub const IGuidanceRoute = extern struct {
    vtable: *const VTable,
    pub fn getDuration(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_Duration(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDistance(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_Distance(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getManeuvers(self: *@This()) core.HResult!*IVectorView(GuidanceManeuver) {
        var _r: *IVectorView(GuidanceManeuver) = undefined;
        const _c = self.vtable.get_Maneuvers(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getBoundingBox(self: *@This()) core.HResult!*GeoboundingBox {
        var _r: *GeoboundingBox = undefined;
        const _c = self.vtable.get_BoundingBox(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPath(self: *@This()) core.HResult!*Geopath {
        var _r: *Geopath = undefined;
        const _c = self.vtable.get_Path(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRoadSegments(self: *@This()) core.HResult!*IVectorView(GuidanceRoadSegment) {
        var _r: *IVectorView(GuidanceRoadSegment) = undefined;
        const _c = self.vtable.get_RoadSegments(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ConvertToMapRoute(self: *@This()) core.HResult!*MapRoute {
        var _r: *MapRoute = undefined;
        const _c = self.vtable.ConvertToMapRoute(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Services.Maps.Guidance.IGuidanceRoute";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3a14545d-801a-40bd-a286-afb2010cce6c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Duration: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
        get_Distance: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        get_Maneuvers: *const fn(self: *anyopaque, _r: **IVectorView(GuidanceManeuver)) callconv(.winapi) HRESULT,
        get_BoundingBox: *const fn(self: *anyopaque, _r: **GeoboundingBox) callconv(.winapi) HRESULT,
        get_Path: *const fn(self: *anyopaque, _r: **Geopath) callconv(.winapi) HRESULT,
        get_RoadSegments: *const fn(self: *anyopaque, _r: **IVectorView(GuidanceRoadSegment)) callconv(.winapi) HRESULT,
        ConvertToMapRoute: *const fn(self: *anyopaque, _r: **MapRoute) callconv(.winapi) HRESULT,
    };
};
pub const IGuidanceRouteStatics = extern struct {
    vtable: *const VTable,
    pub fn CanCreateFromMapRoute(self: *@This(), mapRoute: *MapRoute) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.CanCreateFromMapRoute(@ptrCast(self), mapRoute, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryCreateFromMapRoute(self: *@This(), mapRoute: *MapRoute) core.HResult!*GuidanceRoute {
        var _r: *GuidanceRoute = undefined;
        const _c = self.vtable.TryCreateFromMapRoute(@ptrCast(self), mapRoute, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Services.Maps.Guidance.IGuidanceRouteStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f56d926a-55ed-49c1-b09c-4b8223b50db3";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CanCreateFromMapRoute: *const fn(self: *anyopaque, mapRoute: *MapRoute, _r: *bool) callconv(.winapi) HRESULT,
        TryCreateFromMapRoute: *const fn(self: *anyopaque, mapRoute: *MapRoute, _r: **GuidanceRoute) callconv(.winapi) HRESULT,
    };
};
pub const IGuidanceTelemetryCollector = extern struct {
    vtable: *const VTable,
    pub fn getEnabled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_Enabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putEnabled(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_Enabled(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn ClearLocalData(self: *@This()) core.HResult!void {
        const _c = self.vtable.ClearLocalData(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getSpeedTrigger(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_SpeedTrigger(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSpeedTrigger(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_SpeedTrigger(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getUploadFrequency(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_UploadFrequency(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putUploadFrequency(self: *@This(), value: i32) core.HResult!void {
        const _c = self.vtable.put_UploadFrequency(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Services.Maps.Guidance.IGuidanceTelemetryCollector";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "db1f8da5-b878-4d92-98dd-347d23d38262";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Enabled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_Enabled: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        ClearLocalData: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        get_SpeedTrigger: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_SpeedTrigger: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
        get_UploadFrequency: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        put_UploadFrequency: *const fn(self: *anyopaque, value: i32) callconv(.winapi) HRESULT,
    };
};
pub const IGuidanceTelemetryCollectorStatics = extern struct {
    vtable: *const VTable,
    pub fn GetCurrent(self: *@This()) core.HResult!*GuidanceTelemetryCollector {
        var _r: *GuidanceTelemetryCollector = undefined;
        const _c = self.vtable.GetCurrent(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Services.Maps.Guidance.IGuidanceTelemetryCollectorStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "36532047-f160-44fb-b578-94577ca05990";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetCurrent: *const fn(self: *anyopaque, _r: **GuidanceTelemetryCollector) callconv(.winapi) HRESULT,
    };
};
pub const IGuidanceUpdatedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getMode(self: *@This()) core.HResult!GuidanceMode {
        var _r: GuidanceMode = undefined;
        const _c = self.vtable.get_Mode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getNextManeuver(self: *@This()) core.HResult!*GuidanceManeuver {
        var _r: *GuidanceManeuver = undefined;
        const _c = self.vtable.get_NextManeuver(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getNextManeuverDistance(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_NextManeuverDistance(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAfterNextManeuver(self: *@This()) core.HResult!*GuidanceManeuver {
        var _r: *GuidanceManeuver = undefined;
        const _c = self.vtable.get_AfterNextManeuver(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAfterNextManeuverDistance(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_AfterNextManeuverDistance(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDistanceToDestination(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_DistanceToDestination(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getElapsedDistance(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_ElapsedDistance(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getElapsedTime(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_ElapsedTime(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTimeToDestination(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_TimeToDestination(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRoadName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_RoadName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRoute(self: *@This()) core.HResult!*GuidanceRoute {
        var _r: *GuidanceRoute = undefined;
        const _c = self.vtable.get_Route(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCurrentLocation(self: *@This()) core.HResult!*GuidanceMapMatchedCoordinate {
        var _r: *GuidanceMapMatchedCoordinate = undefined;
        const _c = self.vtable.get_CurrentLocation(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsNewManeuver(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsNewManeuver(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getLaneInfo(self: *@This()) core.HResult!*IVectorView(GuidanceLaneInfo) {
        var _r: *IVectorView(GuidanceLaneInfo) = undefined;
        const _c = self.vtable.get_LaneInfo(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Services.Maps.Guidance.IGuidanceUpdatedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "fdac160b-9e8d-4de3-a9fa-b06321d18db9";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Mode: *const fn(self: *anyopaque, _r: *GuidanceMode) callconv(.winapi) HRESULT,
        get_NextManeuver: *const fn(self: *anyopaque, _r: **GuidanceManeuver) callconv(.winapi) HRESULT,
        get_NextManeuverDistance: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        get_AfterNextManeuver: *const fn(self: *anyopaque, _r: **GuidanceManeuver) callconv(.winapi) HRESULT,
        get_AfterNextManeuverDistance: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        get_DistanceToDestination: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        get_ElapsedDistance: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        get_ElapsedTime: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
        get_TimeToDestination: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
        get_RoadName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Route: *const fn(self: *anyopaque, _r: **GuidanceRoute) callconv(.winapi) HRESULT,
        get_CurrentLocation: *const fn(self: *anyopaque, _r: **GuidanceMapMatchedCoordinate) callconv(.winapi) HRESULT,
        get_IsNewManeuver: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_LaneInfo: *const fn(self: *anyopaque, _r: **IVectorView(GuidanceLaneInfo)) callconv(.winapi) HRESULT,
    };
};
const IUnknown = @import("../../root.zig").IUnknown;
const Guid = @import("../../root.zig").Guid;
const IVectorView = @import("../../Foundation/Collections.zig").IVectorView;
const Geocoordinate = @import("../../Devices/Geolocation.zig").Geocoordinate;
const BasicGeoposition = @import("../../Devices/Geolocation.zig").BasicGeoposition;
const FactoryCache = @import("../../core.zig").FactoryCache;
const TrustLevel = @import("../../root.zig").TrustLevel;
const TypedEventHandler = @import("../../Foundation.zig").TypedEventHandler;
const HSTRING = @import("../../root.zig").HSTRING;
const Color = @import("../../UI.zig").Color;
const IInspectable = @import("../../Foundation.zig").IInspectable;
const TimeSpan = @import("../../Foundation.zig").TimeSpan;
const Geopoint = @import("../../Devices/Geolocation.zig").Geopoint;
const HRESULT = @import("../../root.zig").HRESULT;
const core = @import("../../root.zig").core;
const GeoboundingBox = @import("../../Devices/Geolocation.zig").GeoboundingBox;
const Geopath = @import("../../Devices/Geolocation.zig").Geopath;
const EventRegistrationToken = @import("../../Foundation.zig").EventRegistrationToken;
const MapRoute = @import("../Maps.zig").MapRoute;
