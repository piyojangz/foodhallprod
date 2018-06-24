.class public Lcom/airbnb/android/react/maps/AirMapManager;
.super Lcom/facebook/react/uimanager/ViewGroupManager;
.source "AirMapManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/react/uimanager/ViewGroupManager",
        "<",
        "Lcom/airbnb/android/react/maps/AirMapView;",
        ">;"
    }
.end annotation


# static fields
.field private static final ANIMATE_TO_COORDINATE:I = 0x2

.field private static final ANIMATE_TO_REGION:I = 0x1

.field private static final FIT_TO_COORDINATES:I = 0x5

.field private static final FIT_TO_ELEMENTS:I = 0x3

.field private static final FIT_TO_SUPPLIED_MARKERS:I = 0x4

.field private static final REACT_CLASS:Ljava/lang/String; = "AIRMap"


# instance fields
.field private final MAP_TYPES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final appContext:Lcom/facebook/react/bridge/ReactApplicationContext;

.field protected googleMapOptions:Lcom/google/android/gms/maps/GoogleMapOptions;


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 10
    .param p1, "context"    # Lcom/facebook/react/bridge/ReactApplicationContext;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/facebook/react/uimanager/ViewGroupManager;-><init>()V

    .line 36
    const-string v0, "standard"

    const/4 v1, 0x1

    .line 37
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "satellite"

    const/4 v3, 0x2

    .line 38
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "hybrid"

    const/4 v5, 0x4

    .line 39
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "terrain"

    const/4 v7, 0x3

    .line 40
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "none"

    const/4 v9, 0x0

    .line 41
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 36
    invoke-static/range {v0 .. v9}, Lcom/facebook/react/common/MapBuilder;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/react/maps/AirMapManager;->MAP_TYPES:Ljava/util/Map;

    .line 49
    iput-object p1, p0, Lcom/airbnb/android/react/maps/AirMapManager;->appContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    .line 50
    new-instance v0, Lcom/google/android/gms/maps/GoogleMapOptions;

    invoke-direct {v0}, Lcom/google/android/gms/maps/GoogleMapOptions;-><init>()V

    iput-object v0, p0, Lcom/airbnb/android/react/maps/AirMapManager;->googleMapOptions:Lcom/google/android/gms/maps/GoogleMapOptions;

    .line 51
    return-void
.end method

.method private emitMapError(Lcom/facebook/react/uimanager/ThemedReactContext;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Lcom/facebook/react/uimanager/ThemedReactContext;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 65
    .local v0, "error":Lcom/facebook/react/bridge/WritableMap;
    const-string v1, "message"

    invoke-interface {v0, v1, p2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    const-string v1, "type"

    invoke-interface {v0, v1, p3}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    const-class v1, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    .line 69
    invoke-virtual {p1, v1}, Lcom/facebook/react/uimanager/ThemedReactContext;->getJSModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/JavaScriptModule;

    move-result-object v1

    check-cast v1, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    const-string v2, "onError"

    .line 70
    invoke-interface {v1, v2, v0}, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;->emit(Ljava/lang/String;Ljava/lang/Object;)V

    .line 71
    return-void
.end method


# virtual methods
.method public bridge synthetic addView(Landroid/view/ViewGroup;Landroid/view/View;I)V
    .locals 0

    .prologue
    .line 27
    check-cast p1, Lcom/airbnb/android/react/maps/AirMapView;

    invoke-virtual {p0, p1, p2, p3}, Lcom/airbnb/android/react/maps/AirMapManager;->addView(Lcom/airbnb/android/react/maps/AirMapView;Landroid/view/View;I)V

    return-void
.end method

.method public addView(Lcom/airbnb/android/react/maps/AirMapView;Landroid/view/View;I)V
    .locals 0
    .param p1, "parent"    # Lcom/airbnb/android/react/maps/AirMapView;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "index"    # I

    .prologue
    .line 270
    invoke-virtual {p1, p2, p3}, Lcom/airbnb/android/react/maps/AirMapView;->addFeature(Landroid/view/View;I)V

    .line 271
    return-void
.end method

.method public createShadowNodeInstance()Lcom/facebook/react/uimanager/LayoutShadowNode;
    .locals 1

    .prologue
    .line 265
    new-instance v0, Lcom/airbnb/android/react/maps/SizeReportingShadowNode;

    invoke-direct {v0}, Lcom/airbnb/android/react/maps/SizeReportingShadowNode;-><init>()V

    return-object v0
.end method

.method public bridge synthetic createShadowNodeInstance()Lcom/facebook/react/uimanager/ReactShadowNode;
    .locals 1

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/airbnb/android/react/maps/AirMapManager;->createShadowNodeInstance()Lcom/facebook/react/uimanager/LayoutShadowNode;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Landroid/view/View;
    .locals 1

    .prologue
    .line 27
    invoke-virtual {p0, p1}, Lcom/airbnb/android/react/maps/AirMapManager;->createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Lcom/airbnb/android/react/maps/AirMapView;

    move-result-object v0

    return-object v0
.end method

.method protected createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Lcom/airbnb/android/react/maps/AirMapView;
    .locals 3
    .param p1, "context"    # Lcom/facebook/react/uimanager/ThemedReactContext;

    .prologue
    .line 60
    new-instance v0, Lcom/airbnb/android/react/maps/AirMapView;

    iget-object v1, p0, Lcom/airbnb/android/react/maps/AirMapManager;->appContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    iget-object v2, p0, Lcom/airbnb/android/react/maps/AirMapManager;->googleMapOptions:Lcom/google/android/gms/maps/GoogleMapOptions;

    invoke-direct {v0, p1, v1, p0, v2}, Lcom/airbnb/android/react/maps/AirMapView;-><init>(Lcom/facebook/react/uimanager/ThemedReactContext;Lcom/facebook/react/bridge/ReactApplicationContext;Lcom/airbnb/android/react/maps/AirMapManager;Lcom/google/android/gms/maps/GoogleMapOptions;)V

    return-object v0
.end method

.method public bridge synthetic getChildAt(Landroid/view/ViewGroup;I)Landroid/view/View;
    .locals 1

    .prologue
    .line 27
    check-cast p1, Lcom/airbnb/android/react/maps/AirMapView;

    invoke-virtual {p0, p1, p2}, Lcom/airbnb/android/react/maps/AirMapManager;->getChildAt(Lcom/airbnb/android/react/maps/AirMapView;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getChildAt(Lcom/airbnb/android/react/maps/AirMapView;I)Landroid/view/View;
    .locals 1
    .param p1, "view"    # Lcom/airbnb/android/react/maps/AirMapView;
    .param p2, "index"    # I

    .prologue
    .line 280
    invoke-virtual {p1, p2}, Lcom/airbnb/android/react/maps/AirMapView;->getFeatureAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getChildCount(Landroid/view/ViewGroup;)I
    .locals 1

    .prologue
    .line 27
    check-cast p1, Lcom/airbnb/android/react/maps/AirMapView;

    invoke-virtual {p0, p1}, Lcom/airbnb/android/react/maps/AirMapManager;->getChildCount(Lcom/airbnb/android/react/maps/AirMapView;)I

    move-result v0

    return v0
.end method

.method public getChildCount(Lcom/airbnb/android/react/maps/AirMapView;)I
    .locals 1
    .param p1, "view"    # Lcom/airbnb/android/react/maps/AirMapView;

    .prologue
    .line 275
    invoke-virtual {p1}, Lcom/airbnb/android/react/maps/AirMapView;->getFeatureCount()I

    move-result v0

    return v0
.end method

.method public getCommandsMap()Ljava/util/Map;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 252
    const-string v0, "animateToRegion"

    const/4 v1, 0x1

    .line 253
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "animateToCoordinate"

    const/4 v3, 0x2

    .line 254
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "fitToElements"

    const/4 v5, 0x3

    .line 255
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "fitToSuppliedMarkers"

    const/4 v7, 0x4

    .line 256
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "fitToCoordinates"

    const/4 v9, 0x5

    .line 257
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 252
    invoke-static/range {v0 .. v9}, Lcom/facebook/react/common/MapBuilder;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getExportedCustomDirectEventTypeConstants()Ljava/util/Map;
    .locals 16
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 229
    const-string v0, "onMapReady"

    const-string v1, "registrationName"

    const-string v2, "onMapReady"

    .line 230
    invoke-static {v1, v2}, Lcom/facebook/react/common/MapBuilder;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    const-string v2, "onPress"

    const-string v3, "registrationName"

    const-string v4, "onPress"

    .line 231
    invoke-static {v3, v4}, Lcom/facebook/react/common/MapBuilder;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v3

    const-string v4, "onLongPress"

    const-string v5, "registrationName"

    const-string v6, "onLongPress"

    .line 232
    invoke-static {v5, v6}, Lcom/facebook/react/common/MapBuilder;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v5

    const-string v6, "onMarkerPress"

    const-string v7, "registrationName"

    const-string v8, "onMarkerPress"

    .line 233
    invoke-static {v7, v8}, Lcom/facebook/react/common/MapBuilder;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v7

    const-string v8, "onMarkerSelect"

    const-string v9, "registrationName"

    const-string v10, "onMarkerSelect"

    .line 234
    invoke-static {v9, v10}, Lcom/facebook/react/common/MapBuilder;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v9

    const-string v10, "onMarkerDeselect"

    const-string v11, "registrationName"

    const-string v12, "onMarkerDeselect"

    .line 235
    invoke-static {v11, v12}, Lcom/facebook/react/common/MapBuilder;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v11

    const-string v12, "onCalloutPress"

    const-string v13, "registrationName"

    const-string v15, "onCalloutPress"

    .line 236
    invoke-static {v13, v15}, Lcom/facebook/react/common/MapBuilder;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v13

    .line 229
    invoke-static/range {v0 .. v13}, Lcom/facebook/react/common/MapBuilder;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v14

    .line 239
    .local v14, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    const-string v0, "onMarkerDragStart"

    const-string v1, "registrationName"

    const-string v2, "onMarkerDragStart"

    .line 240
    invoke-static {v1, v2}, Lcom/facebook/react/common/MapBuilder;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    const-string v2, "onMarkerDrag"

    const-string v3, "registrationName"

    const-string v4, "onMarkerDrag"

    .line 241
    invoke-static {v3, v4}, Lcom/facebook/react/common/MapBuilder;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v3

    const-string v4, "onMarkerDragEnd"

    const-string v5, "registrationName"

    const-string v6, "onMarkerDragEnd"

    .line 242
    invoke-static {v5, v6}, Lcom/facebook/react/common/MapBuilder;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v5

    const-string v6, "onPanDrag"

    const-string v7, "registrationName"

    const-string v8, "onPanDrag"

    .line 243
    invoke-static {v7, v8}, Lcom/facebook/react/common/MapBuilder;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v7

    .line 239
    invoke-static/range {v0 .. v7}, Lcom/facebook/react/common/MapBuilder;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v14, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 246
    return-object v14
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    const-string v0, "AIRMap"

    return-object v0
.end method

.method public bridge synthetic onDropViewInstance(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 27
    check-cast p1, Lcom/airbnb/android/react/maps/AirMapView;

    invoke-virtual {p0, p1}, Lcom/airbnb/android/react/maps/AirMapManager;->onDropViewInstance(Lcom/airbnb/android/react/maps/AirMapView;)V

    return-void
.end method

.method public onDropViewInstance(Lcom/airbnb/android/react/maps/AirMapView;)V
    .locals 0
    .param p1, "view"    # Lcom/airbnb/android/react/maps/AirMapView;

    .prologue
    .line 301
    invoke-virtual {p1}, Lcom/airbnb/android/react/maps/AirMapView;->doDestroy()V

    .line 302
    invoke-super {p0, p1}, Lcom/facebook/react/uimanager/ViewGroupManager;->onDropViewInstance(Landroid/view/View;)V

    .line 303
    return-void
.end method

.method pushEvent(Lcom/facebook/react/uimanager/ThemedReactContext;Landroid/view/View;Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V
    .locals 2
    .param p1, "context"    # Lcom/facebook/react/uimanager/ThemedReactContext;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "data"    # Lcom/facebook/react/bridge/WritableMap;

    .prologue
    .line 294
    const-class v0, Lcom/facebook/react/uimanager/events/RCTEventEmitter;

    invoke-virtual {p1, v0}, Lcom/facebook/react/uimanager/ThemedReactContext;->getJSModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/JavaScriptModule;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/uimanager/events/RCTEventEmitter;

    .line 295
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v1

    invoke-interface {v0, v1, p3, p4}, Lcom/facebook/react/uimanager/events/RCTEventEmitter;->receiveEvent(ILjava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    .line 296
    return-void
.end method

.method public bridge synthetic receiveCommand(Landroid/view/View;ILcom/facebook/react/bridge/ReadableArray;)V
    .locals 0
    .param p3    # Lcom/facebook/react/bridge/ReadableArray;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 27
    check-cast p1, Lcom/airbnb/android/react/maps/AirMapView;

    invoke-virtual {p0, p1, p2, p3}, Lcom/airbnb/android/react/maps/AirMapManager;->receiveCommand(Lcom/airbnb/android/react/maps/AirMapView;ILcom/facebook/react/bridge/ReadableArray;)V

    return-void
.end method

.method public receiveCommand(Lcom/airbnb/android/react/maps/AirMapView;ILcom/facebook/react/bridge/ReadableArray;)V
    .locals 20
    .param p1, "view"    # Lcom/airbnb/android/react/maps/AirMapView;
    .param p2, "commandId"    # I
    .param p3, "args"    # Lcom/facebook/react/bridge/ReadableArray;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 190
    packed-switch p2, :pswitch_data_0

    .line 224
    :goto_0
    return-void

    .line 192
    :pswitch_0
    const/4 v9, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v9}, Lcom/facebook/react/bridge/ReadableArray;->getMap(I)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v8

    .line 193
    .local v8, "region":Lcom/facebook/react/bridge/ReadableMap;
    const/4 v9, 0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v9}, Lcom/facebook/react/bridge/ReadableArray;->getInt(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 194
    .local v3, "duration":Ljava/lang/Integer;
    const-string v9, "longitude"

    invoke-interface {v8, v9}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    .line 195
    .local v6, "lng":Ljava/lang/Double;
    const-string v9, "latitude"

    invoke-interface {v8, v9}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    .line 196
    .local v4, "lat":Ljava/lang/Double;
    const-string v9, "longitudeDelta"

    invoke-interface {v8, v9}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    .line 197
    .local v7, "lngDelta":Ljava/lang/Double;
    const-string v9, "latitudeDelta"

    invoke-interface {v8, v9}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    .line 198
    .local v5, "latDelta":Ljava/lang/Double;
    new-instance v2, Lcom/google/android/gms/maps/model/LatLngBounds;

    new-instance v9, Lcom/google/android/gms/maps/model/LatLng;

    .line 199
    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    div-double/2addr v12, v14

    sub-double/2addr v10, v12

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    div-double v14, v14, v16

    sub-double/2addr v12, v14

    invoke-direct {v9, v10, v11, v12, v13}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    new-instance v10, Lcom/google/android/gms/maps/model/LatLng;

    .line 200
    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    div-double v14, v14, v16

    add-double/2addr v12, v14

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v16

    const-wide/high16 v18, 0x4000000000000000L    # 2.0

    div-double v16, v16, v18

    add-double v14, v14, v16

    invoke-direct {v10, v12, v13, v14, v15}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-direct {v2, v9, v10}, Lcom/google/android/gms/maps/model/LatLngBounds;-><init>(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)V

    .line 202
    .local v2, "bounds":Lcom/google/android/gms/maps/model/LatLngBounds;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v9

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v9}, Lcom/airbnb/android/react/maps/AirMapView;->animateToRegion(Lcom/google/android/gms/maps/model/LatLngBounds;I)V

    goto/16 :goto_0

    .line 206
    .end local v2    # "bounds":Lcom/google/android/gms/maps/model/LatLngBounds;
    .end local v3    # "duration":Ljava/lang/Integer;
    .end local v4    # "lat":Ljava/lang/Double;
    .end local v5    # "latDelta":Ljava/lang/Double;
    .end local v6    # "lng":Ljava/lang/Double;
    .end local v7    # "lngDelta":Ljava/lang/Double;
    .end local v8    # "region":Lcom/facebook/react/bridge/ReadableMap;
    :pswitch_1
    const/4 v9, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v9}, Lcom/facebook/react/bridge/ReadableArray;->getMap(I)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v8

    .line 207
    .restart local v8    # "region":Lcom/facebook/react/bridge/ReadableMap;
    const/4 v9, 0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v9}, Lcom/facebook/react/bridge/ReadableArray;->getInt(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 208
    .restart local v3    # "duration":Ljava/lang/Integer;
    const-string v9, "longitude"

    invoke-interface {v8, v9}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    .line 209
    .restart local v6    # "lng":Ljava/lang/Double;
    const-string v9, "latitude"

    invoke-interface {v8, v9}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    .line 210
    .restart local v4    # "lat":Ljava/lang/Double;
    new-instance v9, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    invoke-direct {v9, v10, v11, v12, v13}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v10

    move-object/from16 v0, p1

    invoke-virtual {v0, v9, v10}, Lcom/airbnb/android/react/maps/AirMapView;->animateToCoordinate(Lcom/google/android/gms/maps/model/LatLng;I)V

    goto/16 :goto_0

    .line 214
    .end local v3    # "duration":Ljava/lang/Integer;
    .end local v4    # "lat":Ljava/lang/Double;
    .end local v6    # "lng":Ljava/lang/Double;
    .end local v8    # "region":Lcom/facebook/react/bridge/ReadableMap;
    :pswitch_2
    const/4 v9, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v9}, Lcom/facebook/react/bridge/ReadableArray;->getBoolean(I)Z

    move-result v9

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Lcom/airbnb/android/react/maps/AirMapView;->fitToElements(Z)V

    goto/16 :goto_0

    .line 218
    :pswitch_3
    const/4 v9, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v9}, Lcom/facebook/react/bridge/ReadableArray;->getArray(I)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object v9

    const/4 v10, 0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v10}, Lcom/facebook/react/bridge/ReadableArray;->getBoolean(I)Z

    move-result v10

    move-object/from16 v0, p1

    invoke-virtual {v0, v9, v10}, Lcom/airbnb/android/react/maps/AirMapView;->fitToSuppliedMarkers(Lcom/facebook/react/bridge/ReadableArray;Z)V

    goto/16 :goto_0

    .line 221
    :pswitch_4
    const/4 v9, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v9}, Lcom/facebook/react/bridge/ReadableArray;->getArray(I)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object v9

    const/4 v10, 0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v10}, Lcom/facebook/react/bridge/ReadableArray;->getMap(I)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v10

    const/4 v11, 0x2

    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Lcom/facebook/react/bridge/ReadableArray;->getBoolean(I)Z

    move-result v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v9, v10, v11}, Lcom/airbnb/android/react/maps/AirMapView;->fitToCoordinates(Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/ReadableMap;Z)V

    goto/16 :goto_0

    .line 190
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public bridge synthetic removeViewAt(Landroid/view/ViewGroup;I)V
    .locals 0

    .prologue
    .line 27
    check-cast p1, Lcom/airbnb/android/react/maps/AirMapView;

    invoke-virtual {p0, p1, p2}, Lcom/airbnb/android/react/maps/AirMapManager;->removeViewAt(Lcom/airbnb/android/react/maps/AirMapView;I)V

    return-void
.end method

.method public removeViewAt(Lcom/airbnb/android/react/maps/AirMapView;I)V
    .locals 0
    .param p1, "parent"    # Lcom/airbnb/android/react/maps/AirMapView;
    .param p2, "index"    # I

    .prologue
    .line 285
    invoke-virtual {p1, p2}, Lcom/airbnb/android/react/maps/AirMapView;->removeFeatureAt(I)V

    .line 286
    return-void
.end method

.method public setCacheEnabled(Lcom/airbnb/android/react/maps/AirMapView;Z)V
    .locals 0
    .param p1, "view"    # Lcom/airbnb/android/react/maps/AirMapView;
    .param p2, "cacheEnabled"    # Z
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultBoolean = false
        name = "cacheEnabled"
    .end annotation

    .prologue
    .line 153
    invoke-virtual {p1, p2}, Lcom/airbnb/android/react/maps/AirMapView;->setCacheEnabled(Z)V

    .line 154
    return-void
.end method

.method public setHandlePanDrag(Lcom/airbnb/android/react/maps/AirMapView;Z)V
    .locals 0
    .param p1, "view"    # Lcom/airbnb/android/react/maps/AirMapView;
    .param p2, "handlePanDrag"    # Z
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultBoolean = false
        name = "handlePanDrag"
    .end annotation

    .prologue
    .line 108
    invoke-virtual {p1, p2}, Lcom/airbnb/android/react/maps/AirMapView;->setHandlePanDrag(Z)V

    .line 109
    return-void
.end method

.method public setLoadingBackgroundColor(Lcom/airbnb/android/react/maps/AirMapView;Ljava/lang/Integer;)V
    .locals 0
    .param p1, "view"    # Lcom/airbnb/android/react/maps/AirMapView;
    .param p2, "loadingBackgroundColor"    # Ljava/lang/Integer;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        customType = "Color"
        name = "loadingBackgroundColor"
    .end annotation

    .prologue
    .line 168
    invoke-virtual {p1, p2}, Lcom/airbnb/android/react/maps/AirMapView;->setLoadingBackgroundColor(Ljava/lang/Integer;)V

    .line 169
    return-void
.end method

.method public setLoadingEnabled(Lcom/airbnb/android/react/maps/AirMapView;Z)V
    .locals 0
    .param p1, "view"    # Lcom/airbnb/android/react/maps/AirMapView;
    .param p2, "loadingEnabled"    # Z
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultBoolean = false
        name = "loadingEnabled"
    .end annotation

    .prologue
    .line 158
    invoke-virtual {p1, p2}, Lcom/airbnb/android/react/maps/AirMapView;->enableMapLoading(Z)V

    .line 159
    return-void
.end method

.method public setLoadingIndicatorColor(Lcom/airbnb/android/react/maps/AirMapView;Ljava/lang/Integer;)V
    .locals 0
    .param p1, "view"    # Lcom/airbnb/android/react/maps/AirMapView;
    .param p2, "loadingIndicatorColor"    # Ljava/lang/Integer;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        customType = "Color"
        name = "loadingIndicatorColor"
    .end annotation

    .prologue
    .line 173
    invoke-virtual {p1, p2}, Lcom/airbnb/android/react/maps/AirMapView;->setLoadingIndicatorColor(Ljava/lang/Integer;)V

    .line 174
    return-void
.end method

.method public setMapStyle(Lcom/airbnb/android/react/maps/AirMapView;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Lcom/airbnb/android/react/maps/AirMapView;
    .param p2, "customMapStyleString"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "customMapStyleString"
    .end annotation

    .prologue
    .line 86
    iget-object v0, p1, Lcom/airbnb/android/react/maps/AirMapView;->map:Lcom/google/android/gms/maps/GoogleMap;

    new-instance v1, Lcom/google/android/gms/maps/model/MapStyleOptions;

    invoke-direct {v1, p2}, Lcom/google/android/gms/maps/model/MapStyleOptions;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->setMapStyle(Lcom/google/android/gms/maps/model/MapStyleOptions;)Z

    .line 87
    return-void
.end method

.method public setMapType(Lcom/airbnb/android/react/maps/AirMapView;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Lcom/airbnb/android/react/maps/AirMapView;
    .param p2, "mapType"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "mapType"
    .end annotation

    .prologue
    .line 80
    iget-object v1, p0, Lcom/airbnb/android/react/maps/AirMapManager;->MAP_TYPES:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 81
    .local v0, "typeId":I
    iget-object v1, p1, Lcom/airbnb/android/react/maps/AirMapView;->map:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/maps/GoogleMap;->setMapType(I)V

    .line 82
    return-void
.end method

.method public setMoveOnMarkerPress(Lcom/airbnb/android/react/maps/AirMapView;Z)V
    .locals 0
    .param p1, "view"    # Lcom/airbnb/android/react/maps/AirMapView;
    .param p2, "moveOnPress"    # Z
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultBoolean = true
        name = "moveOnMarkerPress"
    .end annotation

    .prologue
    .line 163
    invoke-virtual {p1, p2}, Lcom/airbnb/android/react/maps/AirMapView;->setMoveOnMarkerPress(Z)V

    .line 164
    return-void
.end method

.method public setPitchEnabled(Lcom/airbnb/android/react/maps/AirMapView;Z)V
    .locals 1
    .param p1, "view"    # Lcom/airbnb/android/react/maps/AirMapView;
    .param p2, "pitchEnabled"    # Z
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultBoolean = false
        name = "pitchEnabled"
    .end annotation

    .prologue
    .line 178
    iget-object v0, p1, Lcom/airbnb/android/react/maps/AirMapView;->map:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/GoogleMap;->getUiSettings()Lcom/google/android/gms/maps/UiSettings;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/gms/maps/UiSettings;->setTiltGesturesEnabled(Z)V

    .line 179
    return-void
.end method

.method public setRegion(Lcom/airbnb/android/react/maps/AirMapView;Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 0
    .param p1, "view"    # Lcom/airbnb/android/react/maps/AirMapView;
    .param p2, "region"    # Lcom/facebook/react/bridge/ReadableMap;
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "region"
    .end annotation

    .prologue
    .line 75
    invoke-virtual {p1, p2}, Lcom/airbnb/android/react/maps/AirMapView;->setRegion(Lcom/facebook/react/bridge/ReadableMap;)V

    .line 76
    return-void
.end method

.method public setRotateEnabled(Lcom/airbnb/android/react/maps/AirMapView;Z)V
    .locals 1
    .param p1, "view"    # Lcom/airbnb/android/react/maps/AirMapView;
    .param p2, "rotateEnabled"    # Z
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultBoolean = false
        name = "rotateEnabled"
    .end annotation

    .prologue
    .line 148
    iget-object v0, p1, Lcom/airbnb/android/react/maps/AirMapView;->map:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/GoogleMap;->getUiSettings()Lcom/google/android/gms/maps/UiSettings;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/gms/maps/UiSettings;->setRotateGesturesEnabled(Z)V

    .line 149
    return-void
.end method

.method public setScrollEnabled(Lcom/airbnb/android/react/maps/AirMapView;Z)V
    .locals 1
    .param p1, "view"    # Lcom/airbnb/android/react/maps/AirMapView;
    .param p2, "scrollEnabled"    # Z
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultBoolean = false
        name = "scrollEnabled"
    .end annotation

    .prologue
    .line 138
    iget-object v0, p1, Lcom/airbnb/android/react/maps/AirMapView;->map:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/GoogleMap;->getUiSettings()Lcom/google/android/gms/maps/UiSettings;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/gms/maps/UiSettings;->setScrollGesturesEnabled(Z)V

    .line 139
    return-void
.end method

.method public setShowBuildings(Lcom/airbnb/android/react/maps/AirMapView;Z)V
    .locals 1
    .param p1, "view"    # Lcom/airbnb/android/react/maps/AirMapView;
    .param p2, "showBuildings"    # Z
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultBoolean = false
        name = "showsBuildings"
    .end annotation

    .prologue
    .line 118
    iget-object v0, p1, Lcom/airbnb/android/react/maps/AirMapView;->map:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/maps/GoogleMap;->setBuildingsEnabled(Z)V

    .line 119
    return-void
.end method

.method public setShowIndoors(Lcom/airbnb/android/react/maps/AirMapView;Z)V
    .locals 1
    .param p1, "view"    # Lcom/airbnb/android/react/maps/AirMapView;
    .param p2, "showIndoors"    # Z
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultBoolean = false
        name = "showsIndoors"
    .end annotation

    .prologue
    .line 123
    iget-object v0, p1, Lcom/airbnb/android/react/maps/AirMapView;->map:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/maps/GoogleMap;->setIndoorEnabled(Z)Z

    .line 124
    return-void
.end method

.method public setShowTraffic(Lcom/airbnb/android/react/maps/AirMapView;Z)V
    .locals 1
    .param p1, "view"    # Lcom/airbnb/android/react/maps/AirMapView;
    .param p2, "showTraffic"    # Z
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultBoolean = false
        name = "showsTraffic"
    .end annotation

    .prologue
    .line 113
    iget-object v0, p1, Lcom/airbnb/android/react/maps/AirMapView;->map:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/maps/GoogleMap;->setTrafficEnabled(Z)V

    .line 114
    return-void
.end method

.method public setShowsCompass(Lcom/airbnb/android/react/maps/AirMapView;Z)V
    .locals 1
    .param p1, "view"    # Lcom/airbnb/android/react/maps/AirMapView;
    .param p2, "showsCompass"    # Z
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultBoolean = false
        name = "showsCompass"
    .end annotation

    .prologue
    .line 133
    iget-object v0, p1, Lcom/airbnb/android/react/maps/AirMapView;->map:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/GoogleMap;->getUiSettings()Lcom/google/android/gms/maps/UiSettings;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/gms/maps/UiSettings;->setCompassEnabled(Z)V

    .line 134
    return-void
.end method

.method public setShowsIndoorLevelPicker(Lcom/airbnb/android/react/maps/AirMapView;Z)V
    .locals 1
    .param p1, "view"    # Lcom/airbnb/android/react/maps/AirMapView;
    .param p2, "showsIndoorLevelPicker"    # Z
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultBoolean = false
        name = "showsIndoorLevelPicker"
    .end annotation

    .prologue
    .line 128
    iget-object v0, p1, Lcom/airbnb/android/react/maps/AirMapView;->map:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/GoogleMap;->getUiSettings()Lcom/google/android/gms/maps/UiSettings;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/gms/maps/UiSettings;->setIndoorLevelPickerEnabled(Z)V

    .line 129
    return-void
.end method

.method public setShowsMyLocationButton(Lcom/airbnb/android/react/maps/AirMapView;Z)V
    .locals 0
    .param p1, "view"    # Lcom/airbnb/android/react/maps/AirMapView;
    .param p2, "showMyLocationButton"    # Z
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultBoolean = true
        name = "showsMyLocationButton"
    .end annotation

    .prologue
    .line 96
    invoke-virtual {p1, p2}, Lcom/airbnb/android/react/maps/AirMapView;->setShowsMyLocationButton(Z)V

    .line 97
    return-void
.end method

.method public setShowsUserLocation(Lcom/airbnb/android/react/maps/AirMapView;Z)V
    .locals 0
    .param p1, "view"    # Lcom/airbnb/android/react/maps/AirMapView;
    .param p2, "showUserLocation"    # Z
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultBoolean = false
        name = "showsUserLocation"
    .end annotation

    .prologue
    .line 91
    invoke-virtual {p1, p2}, Lcom/airbnb/android/react/maps/AirMapView;->setShowsUserLocation(Z)V

    .line 92
    return-void
.end method

.method public setToolbarEnabled(Lcom/airbnb/android/react/maps/AirMapView;Z)V
    .locals 0
    .param p1, "view"    # Lcom/airbnb/android/react/maps/AirMapView;
    .param p2, "toolbarEnabled"    # Z
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultBoolean = true
        name = "toolbarEnabled"
    .end annotation

    .prologue
    .line 101
    invoke-virtual {p1, p2}, Lcom/airbnb/android/react/maps/AirMapView;->setToolbarEnabled(Z)V

    .line 102
    return-void
.end method

.method public setZoomEnabled(Lcom/airbnb/android/react/maps/AirMapView;Z)V
    .locals 1
    .param p1, "view"    # Lcom/airbnb/android/react/maps/AirMapView;
    .param p2, "zoomEnabled"    # Z
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultBoolean = false
        name = "zoomEnabled"
    .end annotation

    .prologue
    .line 143
    iget-object v0, p1, Lcom/airbnb/android/react/maps/AirMapView;->map:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/GoogleMap;->getUiSettings()Lcom/google/android/gms/maps/UiSettings;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/gms/maps/UiSettings;->setZoomGesturesEnabled(Z)V

    .line 144
    return-void
.end method

.method public bridge synthetic updateExtraData(Landroid/view/View;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 27
    check-cast p1, Lcom/airbnb/android/react/maps/AirMapView;

    invoke-virtual {p0, p1, p2}, Lcom/airbnb/android/react/maps/AirMapManager;->updateExtraData(Lcom/airbnb/android/react/maps/AirMapView;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic updateExtraData(Landroid/view/ViewGroup;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 27
    check-cast p1, Lcom/airbnb/android/react/maps/AirMapView;

    invoke-virtual {p0, p1, p2}, Lcom/airbnb/android/react/maps/AirMapManager;->updateExtraData(Lcom/airbnb/android/react/maps/AirMapView;Ljava/lang/Object;)V

    return-void
.end method

.method public updateExtraData(Lcom/airbnb/android/react/maps/AirMapView;Ljava/lang/Object;)V
    .locals 0
    .param p1, "view"    # Lcom/airbnb/android/react/maps/AirMapView;
    .param p2, "extraData"    # Ljava/lang/Object;

    .prologue
    .line 290
    invoke-virtual {p1, p2}, Lcom/airbnb/android/react/maps/AirMapView;->updateExtraData(Ljava/lang/Object;)V

    .line 291
    return-void
.end method
