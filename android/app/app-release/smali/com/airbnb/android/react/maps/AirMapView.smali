.class public Lcom/airbnb/android/react/maps/AirMapView;
.super Lcom/google/android/gms/maps/MapView;
.source "AirMapView.java"

# interfaces
.implements Lcom/google/android/gms/maps/GoogleMap$InfoWindowAdapter;
.implements Lcom/google/android/gms/maps/GoogleMap$OnMarkerDragListener;
.implements Lcom/google/android/gms/maps/OnMapReadyCallback;


# static fields
.field private static final PERMISSIONS:[Ljava/lang/String;


# instance fields
.field private final baseMapPadding:I

.field private boundsToMove:Lcom/google/android/gms/maps/model/LatLngBounds;

.field private cacheEnabled:Z

.field private cacheImageView:Landroid/widget/ImageView;

.field private final context:Lcom/facebook/react/uimanager/ThemedReactContext;

.field private destroyed:Z

.field private final eventDispatcher:Lcom/facebook/react/uimanager/events/EventDispatcher;

.field private final features:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/react/maps/AirMapFeature;",
            ">;"
        }
    .end annotation
.end field

.field private final gestureDetector:Landroid/support/v4/view/GestureDetectorCompat;

.field private handlePanDrag:Z

.field private isMapLoaded:Ljava/lang/Boolean;

.field private isMonitoringRegion:Z

.field private isTouchDown:Z

.field private lastBoundsEmitted:Lcom/google/android/gms/maps/model/LatLngBounds;

.field private lifecycleListener:Lcom/facebook/react/bridge/LifecycleEventListener;

.field private loadingBackgroundColor:Ljava/lang/Integer;

.field private loadingIndicatorColor:Ljava/lang/Integer;

.field private final manager:Lcom/airbnb/android/react/maps/AirMapManager;

.field public map:Lcom/google/android/gms/maps/GoogleMap;

.field private mapLoadingLayout:Landroid/widget/RelativeLayout;

.field private mapLoadingProgressBar:Landroid/widget/ProgressBar;

.field private final markerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/maps/model/Marker;",
            "Lcom/airbnb/android/react/maps/AirMapMarker;",
            ">;"
        }
    .end annotation
.end field

.field private moveOnMarkerPress:Z

.field private paused:Z

.field private final polygonMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/maps/model/Polygon;",
            "Lcom/airbnb/android/react/maps/AirMapPolygon;",
            ">;"
        }
    .end annotation
.end field

.field private final polylineMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/maps/model/Polyline;",
            "Lcom/airbnb/android/react/maps/AirMapPolyline;",
            ">;"
        }
    .end annotation
.end field

.field private final scaleDetector:Landroid/view/ScaleGestureDetector;

.field private showUserLocation:Z

.field timerHandler:Landroid/os/Handler;

.field timerRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 74
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    aput-object v2, v0, v1

    sput-object v0, Lcom/airbnb/android/react/maps/AirMapView;->PERMISSIONS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/uimanager/ThemedReactContext;Lcom/facebook/react/bridge/ReactApplicationContext;Lcom/airbnb/android/react/maps/AirMapManager;Lcom/google/android/gms/maps/GoogleMapOptions;)V
    .locals 4
    .param p1, "reactContext"    # Lcom/facebook/react/uimanager/ThemedReactContext;
    .param p2, "appContext"    # Lcom/facebook/react/bridge/ReactApplicationContext;
    .param p3, "manager"    # Lcom/airbnb/android/react/maps/AirMapManager;
    .param p4, "googleMapOptions"    # Lcom/google/android/gms/maps/GoogleMapOptions;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 124
    invoke-static {p1, p2}, Lcom/airbnb/android/react/maps/AirMapView;->getNonBuggyContext(Lcom/facebook/react/uimanager/ThemedReactContext;Lcom/facebook/react/bridge/ReactApplicationContext;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1, p4}, Lcom/google/android/gms/maps/MapView;-><init>(Landroid/content/Context;Lcom/google/android/gms/maps/GoogleMapOptions;)V

    .line 61
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/airbnb/android/react/maps/AirMapView;->isMapLoaded:Ljava/lang/Boolean;

    .line 62
    iput-object v3, p0, Lcom/airbnb/android/react/maps/AirMapView;->loadingBackgroundColor:Ljava/lang/Integer;

    .line 63
    iput-object v3, p0, Lcom/airbnb/android/react/maps/AirMapView;->loadingIndicatorColor:Ljava/lang/Integer;

    .line 64
    const/16 v1, 0x32

    iput v1, p0, Lcom/airbnb/android/react/maps/AirMapView;->baseMapPadding:I

    .line 67
    iput-boolean v2, p0, Lcom/airbnb/android/react/maps/AirMapView;->showUserLocation:Z

    .line 68
    iput-boolean v2, p0, Lcom/airbnb/android/react/maps/AirMapView;->isMonitoringRegion:Z

    .line 69
    iput-boolean v2, p0, Lcom/airbnb/android/react/maps/AirMapView;->isTouchDown:Z

    .line 70
    iput-boolean v2, p0, Lcom/airbnb/android/react/maps/AirMapView;->handlePanDrag:Z

    .line 71
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/airbnb/android/react/maps/AirMapView;->moveOnMarkerPress:Z

    .line 72
    iput-boolean v2, p0, Lcom/airbnb/android/react/maps/AirMapView;->cacheEnabled:Z

    .line 77
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/airbnb/android/react/maps/AirMapView;->features:Ljava/util/List;

    .line 78
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/airbnb/android/react/maps/AirMapView;->markerMap:Ljava/util/Map;

    .line 79
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/airbnb/android/react/maps/AirMapView;->polylineMap:Ljava/util/Map;

    .line 80
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/airbnb/android/react/maps/AirMapView;->polygonMap:Ljava/util/Map;

    .line 85
    iput-boolean v2, p0, Lcom/airbnb/android/react/maps/AirMapView;->paused:Z

    .line 86
    iput-boolean v2, p0, Lcom/airbnb/android/react/maps/AirMapView;->destroyed:Z

    .line 715
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/airbnb/android/react/maps/AirMapView;->timerHandler:Landroid/os/Handler;

    .line 716
    new-instance v1, Lcom/airbnb/android/react/maps/AirMapView$13;

    invoke-direct {v1, p0}, Lcom/airbnb/android/react/maps/AirMapView$13;-><init>(Lcom/airbnb/android/react/maps/AirMapView;)V

    iput-object v1, p0, Lcom/airbnb/android/react/maps/AirMapView;->timerRunnable:Ljava/lang/Runnable;

    .line 126
    iput-object p3, p0, Lcom/airbnb/android/react/maps/AirMapView;->manager:Lcom/airbnb/android/react/maps/AirMapManager;

    .line 127
    iput-object p1, p0, Lcom/airbnb/android/react/maps/AirMapView;->context:Lcom/facebook/react/uimanager/ThemedReactContext;

    .line 129
    invoke-super {p0, v3}, Lcom/google/android/gms/maps/MapView;->onCreate(Landroid/os/Bundle;)V

    .line 131
    invoke-super {p0}, Lcom/google/android/gms/maps/MapView;->onResume()V

    .line 132
    invoke-super {p0, p0}, Lcom/google/android/gms/maps/MapView;->getMapAsync(Lcom/google/android/gms/maps/OnMapReadyCallback;)V

    .line 134
    move-object v0, p0

    .line 135
    .local v0, "view":Lcom/airbnb/android/react/maps/AirMapView;
    new-instance v1, Landroid/view/ScaleGestureDetector;

    new-instance v2, Lcom/airbnb/android/react/maps/AirMapView$1;

    invoke-direct {v2, p0, v0}, Lcom/airbnb/android/react/maps/AirMapView$1;-><init>(Lcom/airbnb/android/react/maps/AirMapView;Lcom/airbnb/android/react/maps/AirMapView;)V

    invoke-direct {v1, p1, v2}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v1, p0, Lcom/airbnb/android/react/maps/AirMapView;->scaleDetector:Landroid/view/ScaleGestureDetector;

    .line 145
    new-instance v1, Landroid/support/v4/view/GestureDetectorCompat;

    new-instance v2, Lcom/airbnb/android/react/maps/AirMapView$2;

    invoke-direct {v2, p0, v0}, Lcom/airbnb/android/react/maps/AirMapView$2;-><init>(Lcom/airbnb/android/react/maps/AirMapView;Lcom/airbnb/android/react/maps/AirMapView;)V

    invoke-direct {v1, p1, v2}, Landroid/support/v4/view/GestureDetectorCompat;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lcom/airbnb/android/react/maps/AirMapView;->gestureDetector:Landroid/support/v4/view/GestureDetectorCompat;

    .line 164
    new-instance v1, Lcom/airbnb/android/react/maps/AirMapView$3;

    invoke-direct {v1, p0}, Lcom/airbnb/android/react/maps/AirMapView$3;-><init>(Lcom/airbnb/android/react/maps/AirMapView;)V

    invoke-virtual {p0, v1}, Lcom/airbnb/android/react/maps/AirMapView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 173
    const-class v1, Lcom/facebook/react/uimanager/UIManagerModule;

    invoke-virtual {p1, v1}, Lcom/facebook/react/uimanager/ThemedReactContext;->getNativeModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/NativeModule;

    move-result-object v1

    check-cast v1, Lcom/facebook/react/uimanager/UIManagerModule;

    invoke-virtual {v1}, Lcom/facebook/react/uimanager/UIManagerModule;->getEventDispatcher()Lcom/facebook/react/uimanager/events/EventDispatcher;

    move-result-object v1

    iput-object v1, p0, Lcom/airbnb/android/react/maps/AirMapView;->eventDispatcher:Lcom/facebook/react/uimanager/events/EventDispatcher;

    .line 174
    return-void
.end method

.method static synthetic access$000(Lcom/airbnb/android/react/maps/AirMapView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/airbnb/android/react/maps/AirMapView;

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/airbnb/android/react/maps/AirMapView;->handlePanDrag:Z

    return v0
.end method

.method static synthetic access$100(Lcom/airbnb/android/react/maps/AirMapView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/airbnb/android/react/maps/AirMapView;

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/airbnb/android/react/maps/AirMapView;->paused:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/airbnb/android/react/maps/AirMapView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/airbnb/android/react/maps/AirMapView;

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/airbnb/android/react/maps/AirMapView;->isTouchDown:Z

    return v0
.end method

.method static synthetic access$102(Lcom/airbnb/android/react/maps/AirMapView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/airbnb/android/react/maps/AirMapView;
    .param p1, "x1"    # Z

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/airbnb/android/react/maps/AirMapView;->paused:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/airbnb/android/react/maps/AirMapView;)Lcom/facebook/react/uimanager/events/EventDispatcher;
    .locals 1
    .param p0, "x0"    # Lcom/airbnb/android/react/maps/AirMapView;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/airbnb/android/react/maps/AirMapView;->eventDispatcher:Lcom/facebook/react/uimanager/events/EventDispatcher;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/airbnb/android/react/maps/AirMapView;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .param p0, "x0"    # Lcom/airbnb/android/react/maps/AirMapView;
    .param p1, "x1"    # Ljava/lang/Boolean;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/airbnb/android/react/maps/AirMapView;->isMapLoaded:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/airbnb/android/react/maps/AirMapView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/airbnb/android/react/maps/AirMapView;

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/airbnb/android/react/maps/AirMapView;->hasPermissions()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/airbnb/android/react/maps/AirMapView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/airbnb/android/react/maps/AirMapView;

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/airbnb/android/react/maps/AirMapView;->showUserLocation:Z

    return v0
.end method

.method static synthetic access$1500(Lcom/airbnb/android/react/maps/AirMapView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/airbnb/android/react/maps/AirMapView;

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/airbnb/android/react/maps/AirMapView;->destroyed:Z

    return v0
.end method

.method static synthetic access$200(Lcom/airbnb/android/react/maps/AirMapView;)V
    .locals 0
    .param p0, "x0"    # Lcom/airbnb/android/react/maps/AirMapView;

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/airbnb/android/react/maps/AirMapView;->cacheView()V

    return-void
.end method

.method static synthetic access$300(Lcom/airbnb/android/react/maps/AirMapView;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/airbnb/android/react/maps/AirMapView;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/airbnb/android/react/maps/AirMapView;->markerMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$400(Lcom/airbnb/android/react/maps/AirMapView;)Lcom/facebook/react/uimanager/ThemedReactContext;
    .locals 1
    .param p0, "x0"    # Lcom/airbnb/android/react/maps/AirMapView;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/airbnb/android/react/maps/AirMapView;->context:Lcom/facebook/react/uimanager/ThemedReactContext;

    return-object v0
.end method

.method static synthetic access$500(Lcom/airbnb/android/react/maps/AirMapView;)Lcom/airbnb/android/react/maps/AirMapManager;
    .locals 1
    .param p0, "x0"    # Lcom/airbnb/android/react/maps/AirMapView;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/airbnb/android/react/maps/AirMapView;->manager:Lcom/airbnb/android/react/maps/AirMapManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/airbnb/android/react/maps/AirMapView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/airbnb/android/react/maps/AirMapView;

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/airbnb/android/react/maps/AirMapView;->moveOnMarkerPress:Z

    return v0
.end method

.method static synthetic access$700(Lcom/airbnb/android/react/maps/AirMapView;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/airbnb/android/react/maps/AirMapView;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/airbnb/android/react/maps/AirMapView;->polygonMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$800(Lcom/airbnb/android/react/maps/AirMapView;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/airbnb/android/react/maps/AirMapView;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/airbnb/android/react/maps/AirMapView;->polylineMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$900(Lcom/airbnb/android/react/maps/AirMapView;)Lcom/google/android/gms/maps/model/LatLngBounds;
    .locals 1
    .param p0, "x0"    # Lcom/airbnb/android/react/maps/AirMapView;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/airbnb/android/react/maps/AirMapView;->lastBoundsEmitted:Lcom/google/android/gms/maps/model/LatLngBounds;

    return-object v0
.end method

.method static synthetic access$902(Lcom/airbnb/android/react/maps/AirMapView;Lcom/google/android/gms/maps/model/LatLngBounds;)Lcom/google/android/gms/maps/model/LatLngBounds;
    .locals 0
    .param p0, "x0"    # Lcom/airbnb/android/react/maps/AirMapView;
    .param p1, "x1"    # Lcom/google/android/gms/maps/model/LatLngBounds;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/airbnb/android/react/maps/AirMapView;->lastBoundsEmitted:Lcom/google/android/gms/maps/model/LatLngBounds;

    return-object p1
.end method

.method private cacheView()V
    .locals 4

    .prologue
    .line 831
    iget-boolean v2, p0, Lcom/airbnb/android/react/maps/AirMapView;->cacheEnabled:Z

    if-eqz v2, :cond_1

    .line 832
    invoke-direct {p0}, Lcom/airbnb/android/react/maps/AirMapView;->getCacheImageView()Landroid/widget/ImageView;

    move-result-object v0

    .line 833
    .local v0, "cacheImageView":Landroid/widget/ImageView;
    invoke-direct {p0}, Lcom/airbnb/android/react/maps/AirMapView;->getMapLoadingLayoutView()Landroid/widget/RelativeLayout;

    move-result-object v1

    .line 834
    .local v1, "mapLoadingLayout":Landroid/widget/RelativeLayout;
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 835
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 836
    iget-object v2, p0, Lcom/airbnb/android/react/maps/AirMapView;->isMapLoaded:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 837
    iget-object v2, p0, Lcom/airbnb/android/react/maps/AirMapView;->map:Lcom/google/android/gms/maps/GoogleMap;

    new-instance v3, Lcom/airbnb/android/react/maps/AirMapView$14;

    invoke-direct {v3, p0, v0, v1}, Lcom/airbnb/android/react/maps/AirMapView$14;-><init>(Lcom/airbnb/android/react/maps/AirMapView;Landroid/widget/ImageView;Landroid/widget/RelativeLayout;)V

    invoke-virtual {v2, v3}, Lcom/google/android/gms/maps/GoogleMap;->snapshot(Lcom/google/android/gms/maps/GoogleMap$SnapshotReadyCallback;)V

    .line 851
    .end local v0    # "cacheImageView":Landroid/widget/ImageView;
    .end local v1    # "mapLoadingLayout":Landroid/widget/RelativeLayout;
    :cond_0
    :goto_0
    return-void

    .line 846
    :cond_1
    invoke-direct {p0}, Lcom/airbnb/android/react/maps/AirMapView;->removeCacheImageView()V

    .line 847
    iget-object v2, p0, Lcom/airbnb/android/react/maps/AirMapView;->isMapLoaded:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 848
    invoke-direct {p0}, Lcom/airbnb/android/react/maps/AirMapView;->removeMapLoadingLayoutView()V

    goto :goto_0
.end method

.method private static contextHasBug(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 91
    if-eqz p0, :cond_0

    .line 92
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 93
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 91
    :goto_0
    return v0

    .line 93
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getCacheImageView()Landroid/widget/ImageView;
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 798
    iget-object v0, p0, Lcom/airbnb/android/react/maps/AirMapView;->cacheImageView:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 799
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/airbnb/android/react/maps/AirMapView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/airbnb/android/react/maps/AirMapView;->cacheImageView:Landroid/widget/ImageView;

    .line 800
    iget-object v0, p0, Lcom/airbnb/android/react/maps/AirMapView;->cacheImageView:Landroid/widget/ImageView;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/airbnb/android/react/maps/AirMapView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 803
    iget-object v0, p0, Lcom/airbnb/android/react/maps/AirMapView;->cacheImageView:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 805
    :cond_0
    iget-object v0, p0, Lcom/airbnb/android/react/maps/AirMapView;->cacheImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method private getMapLoadingLayoutView()Landroid/widget/RelativeLayout;
    .locals 5

    .prologue
    const/4 v4, -0x1

    const/4 v3, -0x2

    .line 779
    iget-object v1, p0, Lcom/airbnb/android/react/maps/AirMapView;->mapLoadingLayout:Landroid/widget/RelativeLayout;

    if-nez v1, :cond_0

    .line 780
    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/airbnb/android/react/maps/AirMapView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/airbnb/android/react/maps/AirMapView;->mapLoadingLayout:Landroid/widget/RelativeLayout;

    .line 781
    iget-object v1, p0, Lcom/airbnb/android/react/maps/AirMapView;->mapLoadingLayout:Landroid/widget/RelativeLayout;

    const v2, -0x333334

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 782
    iget-object v1, p0, Lcom/airbnb/android/react/maps/AirMapView;->mapLoadingLayout:Landroid/widget/RelativeLayout;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v2}, Lcom/airbnb/android/react/maps/AirMapView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 786
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 788
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 789
    iget-object v1, p0, Lcom/airbnb/android/react/maps/AirMapView;->mapLoadingLayout:Landroid/widget/RelativeLayout;

    invoke-direct {p0}, Lcom/airbnb/android/react/maps/AirMapView;->getMapLoadingProgressBar()Landroid/widget/ProgressBar;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 791
    iget-object v1, p0, Lcom/airbnb/android/react/maps/AirMapView;->mapLoadingLayout:Landroid/widget/RelativeLayout;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 793
    .end local v0    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    iget-object v1, p0, Lcom/airbnb/android/react/maps/AirMapView;->loadingBackgroundColor:Ljava/lang/Integer;

    invoke-virtual {p0, v1}, Lcom/airbnb/android/react/maps/AirMapView;->setLoadingBackgroundColor(Ljava/lang/Integer;)V

    .line 794
    iget-object v1, p0, Lcom/airbnb/android/react/maps/AirMapView;->mapLoadingLayout:Landroid/widget/RelativeLayout;

    return-object v1
.end method

.method private getMapLoadingProgressBar()Landroid/widget/ProgressBar;
    .locals 2

    .prologue
    .line 768
    iget-object v0, p0, Lcom/airbnb/android/react/maps/AirMapView;->mapLoadingProgressBar:Landroid/widget/ProgressBar;

    if-nez v0, :cond_0

    .line 769
    new-instance v0, Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/airbnb/android/react/maps/AirMapView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/airbnb/android/react/maps/AirMapView;->mapLoadingProgressBar:Landroid/widget/ProgressBar;

    .line 770
    iget-object v0, p0, Lcom/airbnb/android/react/maps/AirMapView;->mapLoadingProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 772
    :cond_0
    iget-object v0, p0, Lcom/airbnb/android/react/maps/AirMapView;->loadingIndicatorColor:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 773
    iget-object v0, p0, Lcom/airbnb/android/react/maps/AirMapView;->loadingIndicatorColor:Ljava/lang/Integer;

    invoke-virtual {p0, v0}, Lcom/airbnb/android/react/maps/AirMapView;->setLoadingIndicatorColor(Ljava/lang/Integer;)V

    .line 775
    :cond_1
    iget-object v0, p0, Lcom/airbnb/android/react/maps/AirMapView;->mapLoadingProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method private static getNonBuggyContext(Lcom/facebook/react/uimanager/ThemedReactContext;Lcom/facebook/react/bridge/ReactApplicationContext;)Landroid/content/Context;
    .locals 2
    .param p0, "reactContext"    # Lcom/facebook/react/uimanager/ThemedReactContext;
    .param p1, "appContext"    # Lcom/facebook/react/bridge/ReactApplicationContext;

    .prologue
    .line 105
    move-object v0, p0

    .line 106
    .local v0, "superContext":Landroid/content/Context;
    invoke-virtual {p1}, Lcom/facebook/react/bridge/ReactApplicationContext;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/airbnb/android/react/maps/AirMapView;->contextHasBug(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 107
    invoke-virtual {p1}, Lcom/facebook/react/bridge/ReactApplicationContext;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 118
    :cond_0
    :goto_0
    return-object v0

    .line 108
    :cond_1
    invoke-static {v0}, Lcom/airbnb/android/react/maps/AirMapView;->contextHasBug(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 110
    invoke-virtual {p0}, Lcom/facebook/react/uimanager/ThemedReactContext;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/airbnb/android/react/maps/AirMapView;->contextHasBug(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 111
    invoke-virtual {p0}, Lcom/facebook/react/uimanager/ThemedReactContext;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    goto :goto_0

    .line 112
    :cond_2
    invoke-virtual {p0}, Lcom/facebook/react/uimanager/ThemedReactContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/airbnb/android/react/maps/AirMapView;->contextHasBug(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 113
    invoke-virtual {p0}, Lcom/facebook/react/uimanager/ThemedReactContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0
.end method

.method private hasPermissions()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 336
    invoke-virtual {p0}, Lcom/airbnb/android/react/maps/AirMapView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/airbnb/android/react/maps/AirMapView;->PERMISSIONS:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-static {v2, v3}, Landroid/support/v4/content/PermissionChecker;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 337
    invoke-virtual {p0}, Lcom/airbnb/android/react/maps/AirMapView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/airbnb/android/react/maps/AirMapView;->PERMISSIONS:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-static {v2, v3}, Landroid/support/v4/content/PermissionChecker;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move v0, v1

    .line 336
    :cond_1
    return v0
.end method

.method private removeCacheImageView()V
    .locals 2

    .prologue
    .line 809
    iget-object v0, p0, Lcom/airbnb/android/react/maps/AirMapView;->cacheImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 810
    iget-object v0, p0, Lcom/airbnb/android/react/maps/AirMapView;->cacheImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/airbnb/android/react/maps/AirMapView;->cacheImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 811
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/airbnb/android/react/maps/AirMapView;->cacheImageView:Landroid/widget/ImageView;

    .line 813
    :cond_0
    return-void
.end method

.method private removeMapLoadingLayoutView()V
    .locals 2

    .prologue
    .line 823
    invoke-direct {p0}, Lcom/airbnb/android/react/maps/AirMapView;->removeMapLoadingProgressBar()V

    .line 824
    iget-object v0, p0, Lcom/airbnb/android/react/maps/AirMapView;->mapLoadingLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 825
    iget-object v0, p0, Lcom/airbnb/android/react/maps/AirMapView;->mapLoadingLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/airbnb/android/react/maps/AirMapView;->mapLoadingLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 826
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/airbnb/android/react/maps/AirMapView;->mapLoadingLayout:Landroid/widget/RelativeLayout;

    .line 828
    :cond_0
    return-void
.end method

.method private removeMapLoadingProgressBar()V
    .locals 2

    .prologue
    .line 816
    iget-object v0, p0, Lcom/airbnb/android/react/maps/AirMapView;->mapLoadingProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 817
    iget-object v0, p0, Lcom/airbnb/android/react/maps/AirMapView;->mapLoadingProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/airbnb/android/react/maps/AirMapView;->mapLoadingProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 818
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/airbnb/android/react/maps/AirMapView;->mapLoadingProgressBar:Landroid/widget/ProgressBar;

    .line 820
    :cond_0
    return-void
.end method


# virtual methods
.method public addFeature(Landroid/view/View;I)V
    .locals 11
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I

    .prologue
    .line 468
    instance-of v10, p1, Lcom/airbnb/android/react/maps/AirMapMarker;

    if-eqz v10, :cond_1

    move-object v0, p1

    .line 469
    check-cast v0, Lcom/airbnb/android/react/maps/AirMapMarker;

    .line 470
    .local v0, "annotation":Lcom/airbnb/android/react/maps/AirMapMarker;
    iget-object v10, p0, Lcom/airbnb/android/react/maps/AirMapView;->map:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0, v10}, Lcom/airbnb/android/react/maps/AirMapMarker;->addToMap(Lcom/google/android/gms/maps/GoogleMap;)V

    .line 471
    iget-object v10, p0, Lcom/airbnb/android/react/maps/AirMapView;->features:Ljava/util/List;

    invoke-interface {v10, p2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 472
    invoke-virtual {v0}, Lcom/airbnb/android/react/maps/AirMapMarker;->getFeature()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/maps/model/Marker;

    .line 473
    .local v4, "marker":Lcom/google/android/gms/maps/model/Marker;
    iget-object v10, p0, Lcom/airbnb/android/react/maps/AirMapView;->markerMap:Ljava/util/Map;

    invoke-interface {v10, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 500
    .end local v0    # "annotation":Lcom/airbnb/android/react/maps/AirMapMarker;
    .end local v4    # "marker":Lcom/google/android/gms/maps/model/Marker;
    :cond_0
    :goto_0
    return-void

    .line 474
    :cond_1
    instance-of v10, p1, Lcom/airbnb/android/react/maps/AirMapPolyline;

    if-eqz v10, :cond_2

    move-object v8, p1

    .line 475
    check-cast v8, Lcom/airbnb/android/react/maps/AirMapPolyline;

    .line 476
    .local v8, "polylineView":Lcom/airbnb/android/react/maps/AirMapPolyline;
    iget-object v10, p0, Lcom/airbnb/android/react/maps/AirMapView;->map:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v8, v10}, Lcom/airbnb/android/react/maps/AirMapPolyline;->addToMap(Lcom/google/android/gms/maps/GoogleMap;)V

    .line 477
    iget-object v10, p0, Lcom/airbnb/android/react/maps/AirMapView;->features:Ljava/util/List;

    invoke-interface {v10, p2, v8}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 478
    invoke-virtual {v8}, Lcom/airbnb/android/react/maps/AirMapPolyline;->getFeature()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/maps/model/Polyline;

    .line 479
    .local v7, "polyline":Lcom/google/android/gms/maps/model/Polyline;
    iget-object v10, p0, Lcom/airbnb/android/react/maps/AirMapView;->polylineMap:Ljava/util/Map;

    invoke-interface {v10, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 480
    .end local v7    # "polyline":Lcom/google/android/gms/maps/model/Polyline;
    .end local v8    # "polylineView":Lcom/airbnb/android/react/maps/AirMapPolyline;
    :cond_2
    instance-of v10, p1, Lcom/airbnb/android/react/maps/AirMapPolygon;

    if-eqz v10, :cond_3

    move-object v6, p1

    .line 481
    check-cast v6, Lcom/airbnb/android/react/maps/AirMapPolygon;

    .line 482
    .local v6, "polygonView":Lcom/airbnb/android/react/maps/AirMapPolygon;
    iget-object v10, p0, Lcom/airbnb/android/react/maps/AirMapView;->map:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v6, v10}, Lcom/airbnb/android/react/maps/AirMapPolygon;->addToMap(Lcom/google/android/gms/maps/GoogleMap;)V

    .line 483
    iget-object v10, p0, Lcom/airbnb/android/react/maps/AirMapView;->features:Ljava/util/List;

    invoke-interface {v10, p2, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 484
    invoke-virtual {v6}, Lcom/airbnb/android/react/maps/AirMapPolygon;->getFeature()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/maps/model/Polygon;

    .line 485
    .local v5, "polygon":Lcom/google/android/gms/maps/model/Polygon;
    iget-object v10, p0, Lcom/airbnb/android/react/maps/AirMapView;->polygonMap:Ljava/util/Map;

    invoke-interface {v10, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 486
    .end local v5    # "polygon":Lcom/google/android/gms/maps/model/Polygon;
    .end local v6    # "polygonView":Lcom/airbnb/android/react/maps/AirMapPolygon;
    :cond_3
    instance-of v10, p1, Lcom/airbnb/android/react/maps/AirMapCircle;

    if-eqz v10, :cond_4

    move-object v2, p1

    .line 487
    check-cast v2, Lcom/airbnb/android/react/maps/AirMapCircle;

    .line 488
    .local v2, "circleView":Lcom/airbnb/android/react/maps/AirMapCircle;
    iget-object v10, p0, Lcom/airbnb/android/react/maps/AirMapView;->map:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v2, v10}, Lcom/airbnb/android/react/maps/AirMapCircle;->addToMap(Lcom/google/android/gms/maps/GoogleMap;)V

    .line 489
    iget-object v10, p0, Lcom/airbnb/android/react/maps/AirMapView;->features:Ljava/util/List;

    invoke-interface {v10, p2, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 490
    .end local v2    # "circleView":Lcom/airbnb/android/react/maps/AirMapCircle;
    :cond_4
    instance-of v10, p1, Lcom/airbnb/android/react/maps/AirMapUrlTile;

    if-eqz v10, :cond_5

    move-object v9, p1

    .line 491
    check-cast v9, Lcom/airbnb/android/react/maps/AirMapUrlTile;

    .line 492
    .local v9, "urlTileView":Lcom/airbnb/android/react/maps/AirMapUrlTile;
    iget-object v10, p0, Lcom/airbnb/android/react/maps/AirMapView;->map:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v9, v10}, Lcom/airbnb/android/react/maps/AirMapUrlTile;->addToMap(Lcom/google/android/gms/maps/GoogleMap;)V

    .line 493
    iget-object v10, p0, Lcom/airbnb/android/react/maps/AirMapView;->features:Ljava/util/List;

    invoke-interface {v10, p2, v9}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    .end local v9    # "urlTileView":Lcom/airbnb/android/react/maps/AirMapUrlTile;
    :cond_5
    move-object v1, p1

    .line 495
    check-cast v1, Landroid/view/ViewGroup;

    .line 496
    .local v1, "children":Landroid/view/ViewGroup;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v10

    if-ge v3, v10, :cond_0

    .line 497
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {p0, v10, p2}, Lcom/airbnb/android/react/maps/AirMapView;->addFeature(Landroid/view/View;I)V

    .line 496
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public animateToCoordinate(Lcom/google/android/gms/maps/model/LatLng;I)V
    .locals 3
    .param p1, "coordinate"    # Lcom/google/android/gms/maps/model/LatLng;
    .param p2, "duration"    # I

    .prologue
    .line 564
    iget-object v0, p0, Lcom/airbnb/android/react/maps/AirMapView;->map:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz v0, :cond_0

    .line 565
    invoke-virtual {p0}, Lcom/airbnb/android/react/maps/AirMapView;->startMonitoringRegion()V

    .line 566
    iget-object v0, p0, Lcom/airbnb/android/react/maps/AirMapView;->map:Lcom/google/android/gms/maps/GoogleMap;

    invoke-static {p1}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLng(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Lcom/google/android/gms/maps/GoogleMap;->animateCamera(Lcom/google/android/gms/maps/CameraUpdate;ILcom/google/android/gms/maps/GoogleMap$CancelableCallback;)V

    .line 568
    :cond_0
    return-void
.end method

.method public animateToRegion(Lcom/google/android/gms/maps/model/LatLngBounds;I)V
    .locals 3
    .param p1, "bounds"    # Lcom/google/android/gms/maps/model/LatLngBounds;
    .param p2, "duration"    # I

    .prologue
    .line 557
    iget-object v0, p0, Lcom/airbnb/android/react/maps/AirMapView;->map:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz v0, :cond_0

    .line 558
    invoke-virtual {p0}, Lcom/airbnb/android/react/maps/AirMapView;->startMonitoringRegion()V

    .line 559
    iget-object v0, p0, Lcom/airbnb/android/react/maps/AirMapView;->map:Lcom/google/android/gms/maps/GoogleMap;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLngBounds(Lcom/google/android/gms/maps/model/LatLngBounds;I)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Lcom/google/android/gms/maps/GoogleMap;->animateCamera(Lcom/google/android/gms/maps/CameraUpdate;ILcom/google/android/gms/maps/GoogleMap$CancelableCallback;)V

    .line 561
    :cond_0
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 675
    iget-object v3, p0, Lcom/airbnb/android/react/maps/AirMapView;->scaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v3, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 676
    iget-object v3, p0, Lcom/airbnb/android/react/maps/AirMapView;->gestureDetector:Landroid/support/v4/view/GestureDetectorCompat;

    invoke-virtual {v3, p1}, Landroid/support/v4/view/GestureDetectorCompat;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 678
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v0

    .line 680
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 695
    :goto_0
    invoke-super {p0, p1}, Lcom/google/android/gms/maps/MapView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 696
    return v2

    .line 682
    :pswitch_0
    invoke-virtual {p0}, Lcom/airbnb/android/react/maps/AirMapView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    iget-object v4, p0, Lcom/airbnb/android/react/maps/AirMapView;->map:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/airbnb/android/react/maps/AirMapView;->map:Lcom/google/android/gms/maps/GoogleMap;

    .line 683
    invoke-virtual {v4}, Lcom/google/android/gms/maps/GoogleMap;->getUiSettings()Lcom/google/android/gms/maps/UiSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/maps/UiSettings;->isScrollGesturesEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    move v1, v2

    .line 682
    :cond_0
    invoke-interface {v3, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 684
    iput-boolean v2, p0, Lcom/airbnb/android/react/maps/AirMapView;->isTouchDown:Z

    goto :goto_0

    .line 687
    :pswitch_1
    invoke-virtual {p0}, Lcom/airbnb/android/react/maps/AirMapView;->startMonitoringRegion()V

    goto :goto_0

    .line 691
    :pswitch_2
    invoke-virtual {p0}, Lcom/airbnb/android/react/maps/AirMapView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-interface {v3, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 692
    iput-boolean v1, p0, Lcom/airbnb/android/react/maps/AirMapView;->isTouchDown:Z

    goto :goto_0

    .line 680
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public declared-synchronized doDestroy()V
    .locals 2

    .prologue
    .line 345
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/airbnb/android/react/maps/AirMapView;->destroyed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 359
    :goto_0
    monitor-exit p0

    return-void

    .line 348
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/airbnb/android/react/maps/AirMapView;->destroyed:Z

    .line 350
    iget-object v0, p0, Lcom/airbnb/android/react/maps/AirMapView;->lifecycleListener:Lcom/facebook/react/bridge/LifecycleEventListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/airbnb/android/react/maps/AirMapView;->context:Lcom/facebook/react/uimanager/ThemedReactContext;

    if-eqz v0, :cond_1

    .line 351
    iget-object v0, p0, Lcom/airbnb/android/react/maps/AirMapView;->context:Lcom/facebook/react/uimanager/ThemedReactContext;

    iget-object v1, p0, Lcom/airbnb/android/react/maps/AirMapView;->lifecycleListener:Lcom/facebook/react/bridge/LifecycleEventListener;

    invoke-virtual {v0, v1}, Lcom/facebook/react/uimanager/ThemedReactContext;->removeLifecycleEventListener(Lcom/facebook/react/bridge/LifecycleEventListener;)V

    .line 352
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/airbnb/android/react/maps/AirMapView;->lifecycleListener:Lcom/facebook/react/bridge/LifecycleEventListener;

    .line 354
    :cond_1
    iget-boolean v0, p0, Lcom/airbnb/android/react/maps/AirMapView;->paused:Z

    if-nez v0, :cond_2

    .line 355
    invoke-virtual {p0}, Lcom/airbnb/android/react/maps/AirMapView;->onPause()V

    .line 356
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/airbnb/android/react/maps/AirMapView;->paused:Z

    .line 358
    :cond_2
    invoke-virtual {p0}, Lcom/airbnb/android/react/maps/AirMapView;->onDestroy()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 345
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public enableMapLoading(Z)V
    .locals 2
    .param p1, "loadingEnabled"    # Z

    .prologue
    .line 411
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/airbnb/android/react/maps/AirMapView;->isMapLoaded:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 412
    invoke-direct {p0}, Lcom/airbnb/android/react/maps/AirMapView;->getMapLoadingLayoutView()Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 414
    :cond_0
    return-void
.end method

.method public fitToCoordinates(Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/ReadableMap;Z)V
    .locals 12
    .param p1, "coordinatesArray"    # Lcom/facebook/react/bridge/ReadableArray;
    .param p2, "edgePadding"    # Lcom/facebook/react/bridge/ReadableMap;
    .param p3, "animated"    # Z

    .prologue
    .line 632
    new-instance v1, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;

    invoke-direct {v1}, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;-><init>()V

    .line 634
    .local v1, "builder":Lcom/google/android/gms/maps/model/LatLngBounds$Builder;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {p1}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v7

    if-ge v3, v7, :cond_0

    .line 635
    invoke-interface {p1, v3}, Lcom/facebook/react/bridge/ReadableArray;->getMap(I)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v5

    .line 636
    .local v5, "latLng":Lcom/facebook/react/bridge/ReadableMap;
    const-string v7, "latitude"

    invoke-interface {v5, v7}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    .line 637
    .local v4, "lat":Ljava/lang/Double;
    const-string v7, "longitude"

    invoke-interface {v5, v7}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    .line 638
    .local v6, "lng":Ljava/lang/Double;
    new-instance v7, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v1, v7}, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->include(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/LatLngBounds$Builder;

    .line 634
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 641
    .end local v4    # "lat":Ljava/lang/Double;
    .end local v5    # "latLng":Lcom/facebook/react/bridge/ReadableMap;
    .end local v6    # "lng":Ljava/lang/Double;
    :cond_0
    invoke-virtual {v1}, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->build()Lcom/google/android/gms/maps/model/LatLngBounds;

    move-result-object v0

    .line 642
    .local v0, "bounds":Lcom/google/android/gms/maps/model/LatLngBounds;
    const/16 v7, 0x32

    invoke-static {v0, v7}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLngBounds(Lcom/google/android/gms/maps/model/LatLngBounds;I)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v2

    .line 644
    .local v2, "cu":Lcom/google/android/gms/maps/CameraUpdate;
    if-eqz p2, :cond_1

    .line 645
    iget-object v7, p0, Lcom/airbnb/android/react/maps/AirMapView;->map:Lcom/google/android/gms/maps/GoogleMap;

    const-string v8, "left"

    invoke-interface {p2, v8}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v8

    const-string v9, "top"

    invoke-interface {p2, v9}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v9

    const-string v10, "right"

    .line 646
    invoke-interface {p2, v10}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v10

    const-string v11, "bottom"

    invoke-interface {p2, v11}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v11

    .line 645
    invoke-virtual {v7, v8, v9, v10, v11}, Lcom/google/android/gms/maps/GoogleMap;->setPadding(IIII)V

    .line 649
    :cond_1
    if-eqz p3, :cond_2

    .line 650
    invoke-virtual {p0}, Lcom/airbnb/android/react/maps/AirMapView;->startMonitoringRegion()V

    .line 651
    iget-object v7, p0, Lcom/airbnb/android/react/maps/AirMapView;->map:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v7, v2}, Lcom/google/android/gms/maps/GoogleMap;->animateCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    .line 655
    :goto_1
    iget-object v7, p0, Lcom/airbnb/android/react/maps/AirMapView;->map:Lcom/google/android/gms/maps/GoogleMap;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v7, v8, v9, v10, v11}, Lcom/google/android/gms/maps/GoogleMap;->setPadding(IIII)V

    .line 657
    return-void

    .line 653
    :cond_2
    iget-object v7, p0, Lcom/airbnb/android/react/maps/AirMapView;->map:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v7, v2}, Lcom/google/android/gms/maps/GoogleMap;->moveCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    goto :goto_1
.end method

.method public fitToElements(Z)V
    .locals 8
    .param p1, "animated"    # Z

    .prologue
    .line 571
    new-instance v2, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;

    invoke-direct {v2}, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;-><init>()V

    .line 573
    .local v2, "builder":Lcom/google/android/gms/maps/model/LatLngBounds$Builder;
    const/4 v0, 0x0

    .line 575
    .local v0, "addedPosition":Z
    iget-object v6, p0, Lcom/airbnb/android/react/maps/AirMapView;->features:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/airbnb/android/react/maps/AirMapFeature;

    .line 576
    .local v4, "feature":Lcom/airbnb/android/react/maps/AirMapFeature;
    instance-of v7, v4, Lcom/airbnb/android/react/maps/AirMapMarker;

    if-eqz v7, :cond_0

    .line 577
    invoke-virtual {v4}, Lcom/airbnb/android/react/maps/AirMapFeature;->getFeature()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/maps/model/Marker;

    .line 578
    .local v5, "marker":Lcom/google/android/gms/maps/model/Marker;
    invoke-virtual {v5}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->include(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/LatLngBounds$Builder;

    .line 579
    const/4 v0, 0x1

    goto :goto_0

    .line 583
    .end local v4    # "feature":Lcom/airbnb/android/react/maps/AirMapFeature;
    .end local v5    # "marker":Lcom/google/android/gms/maps/model/Marker;
    :cond_1
    if-eqz v0, :cond_2

    .line 584
    invoke-virtual {v2}, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->build()Lcom/google/android/gms/maps/model/LatLngBounds;

    move-result-object v1

    .line 585
    .local v1, "bounds":Lcom/google/android/gms/maps/model/LatLngBounds;
    const/16 v6, 0x32

    invoke-static {v1, v6}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLngBounds(Lcom/google/android/gms/maps/model/LatLngBounds;I)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v3

    .line 586
    .local v3, "cu":Lcom/google/android/gms/maps/CameraUpdate;
    if-eqz p1, :cond_3

    .line 587
    invoke-virtual {p0}, Lcom/airbnb/android/react/maps/AirMapView;->startMonitoringRegion()V

    .line 588
    iget-object v6, p0, Lcom/airbnb/android/react/maps/AirMapView;->map:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v6, v3}, Lcom/google/android/gms/maps/GoogleMap;->animateCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    .line 593
    .end local v1    # "bounds":Lcom/google/android/gms/maps/model/LatLngBounds;
    .end local v3    # "cu":Lcom/google/android/gms/maps/CameraUpdate;
    :cond_2
    :goto_1
    return-void

    .line 590
    .restart local v1    # "bounds":Lcom/google/android/gms/maps/model/LatLngBounds;
    .restart local v3    # "cu":Lcom/google/android/gms/maps/CameraUpdate;
    :cond_3
    iget-object v6, p0, Lcom/airbnb/android/react/maps/AirMapView;->map:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v6, v3}, Lcom/google/android/gms/maps/GoogleMap;->moveCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    goto :goto_1
.end method

.method public fitToSuppliedMarkers(Lcom/facebook/react/bridge/ReadableArray;Z)V
    .locals 12
    .param p1, "markerIDsArray"    # Lcom/facebook/react/bridge/ReadableArray;
    .param p2, "animated"    # Z

    .prologue
    .line 596
    new-instance v2, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;

    invoke-direct {v2}, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;-><init>()V

    .line 598
    .local v2, "builder":Lcom/google/android/gms/maps/model/LatLngBounds$Builder;
    invoke-interface {p1}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v10

    new-array v9, v10, [Ljava/lang/String;

    .line 599
    .local v9, "markerIDs":[Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-interface {p1}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v10

    if-ge v5, v10, :cond_0

    .line 600
    invoke-interface {p1, v5}, Lcom/facebook/react/bridge/ReadableArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v5

    .line 599
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 603
    :cond_0
    const/4 v0, 0x0

    .line 605
    .local v0, "addedPosition":Z
    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    .line 607
    .local v8, "markerIDList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v10, p0, Lcom/airbnb/android/react/maps/AirMapView;->features:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_1
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/airbnb/android/react/maps/AirMapFeature;

    .line 608
    .local v4, "feature":Lcom/airbnb/android/react/maps/AirMapFeature;
    instance-of v10, v4, Lcom/airbnb/android/react/maps/AirMapMarker;

    if-eqz v10, :cond_1

    move-object v10, v4

    .line 609
    check-cast v10, Lcom/airbnb/android/react/maps/AirMapMarker;

    invoke-virtual {v10}, Lcom/airbnb/android/react/maps/AirMapMarker;->getIdentifier()Ljava/lang/String;

    move-result-object v6

    .line 610
    .local v6, "identifier":Ljava/lang/String;
    invoke-virtual {v4}, Lcom/airbnb/android/react/maps/AirMapFeature;->getFeature()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/maps/model/Marker;

    .line 611
    .local v7, "marker":Lcom/google/android/gms/maps/model/Marker;
    invoke-interface {v8, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 612
    invoke-virtual {v7}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v10

    invoke-virtual {v2, v10}, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->include(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/LatLngBounds$Builder;

    .line 613
    const/4 v0, 0x1

    goto :goto_1

    .line 618
    .end local v4    # "feature":Lcom/airbnb/android/react/maps/AirMapFeature;
    .end local v6    # "identifier":Ljava/lang/String;
    .end local v7    # "marker":Lcom/google/android/gms/maps/model/Marker;
    :cond_2
    if-eqz v0, :cond_3

    .line 619
    invoke-virtual {v2}, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->build()Lcom/google/android/gms/maps/model/LatLngBounds;

    move-result-object v1

    .line 620
    .local v1, "bounds":Lcom/google/android/gms/maps/model/LatLngBounds;
    const/16 v10, 0x32

    invoke-static {v1, v10}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLngBounds(Lcom/google/android/gms/maps/model/LatLngBounds;I)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v3

    .line 621
    .local v3, "cu":Lcom/google/android/gms/maps/CameraUpdate;
    if-eqz p2, :cond_4

    .line 622
    invoke-virtual {p0}, Lcom/airbnb/android/react/maps/AirMapView;->startMonitoringRegion()V

    .line 623
    iget-object v10, p0, Lcom/airbnb/android/react/maps/AirMapView;->map:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v10, v3}, Lcom/google/android/gms/maps/GoogleMap;->animateCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    .line 628
    .end local v1    # "bounds":Lcom/google/android/gms/maps/model/LatLngBounds;
    .end local v3    # "cu":Lcom/google/android/gms/maps/CameraUpdate;
    :cond_3
    :goto_2
    return-void

    .line 625
    .restart local v1    # "bounds":Lcom/google/android/gms/maps/model/LatLngBounds;
    .restart local v3    # "cu":Lcom/google/android/gms/maps/CameraUpdate;
    :cond_4
    iget-object v10, p0, Lcom/airbnb/android/react/maps/AirMapView;->map:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v10, v3}, Lcom/google/android/gms/maps/GoogleMap;->moveCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    goto :goto_2
.end method

.method public getFeatureAt(I)Landroid/view/View;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 507
    iget-object v0, p0, Lcom/airbnb/android/react/maps/AirMapView;->features:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public getFeatureCount()I
    .locals 1

    .prologue
    .line 503
    iget-object v0, p0, Lcom/airbnb/android/react/maps/AirMapView;->features:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getInfoContents(Lcom/google/android/gms/maps/model/Marker;)Landroid/view/View;
    .locals 2
    .param p1, "marker"    # Lcom/google/android/gms/maps/model/Marker;

    .prologue
    .line 669
    iget-object v1, p0, Lcom/airbnb/android/react/maps/AirMapView;->markerMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/react/maps/AirMapMarker;

    .line 670
    .local v0, "markerView":Lcom/airbnb/android/react/maps/AirMapMarker;
    invoke-virtual {v0}, Lcom/airbnb/android/react/maps/AirMapMarker;->getInfoContents()Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public getInfoWindow(Lcom/google/android/gms/maps/model/Marker;)Landroid/view/View;
    .locals 2
    .param p1, "marker"    # Lcom/google/android/gms/maps/model/Marker;

    .prologue
    .line 663
    iget-object v1, p0, Lcom/airbnb/android/react/maps/AirMapView;->markerMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/react/maps/AirMapMarker;

    .line 664
    .local v0, "markerView":Lcom/airbnb/android/react/maps/AirMapMarker;
    invoke-virtual {v0}, Lcom/airbnb/android/react/maps/AirMapMarker;->getCallout()Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public makeClickEventData(Lcom/google/android/gms/maps/model/LatLng;)Lcom/facebook/react/bridge/WritableMap;
    .locals 8
    .param p1, "point"    # Lcom/google/android/gms/maps/model/LatLng;

    .prologue
    .line 519
    new-instance v1, Lcom/facebook/react/bridge/WritableNativeMap;

    invoke-direct {v1}, Lcom/facebook/react/bridge/WritableNativeMap;-><init>()V

    .line 521
    .local v1, "event":Lcom/facebook/react/bridge/WritableMap;
    new-instance v0, Lcom/facebook/react/bridge/WritableNativeMap;

    invoke-direct {v0}, Lcom/facebook/react/bridge/WritableNativeMap;-><init>()V

    .line 522
    .local v0, "coordinate":Lcom/facebook/react/bridge/WritableMap;
    const-string v5, "latitude"

    iget-wide v6, p1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-interface {v0, v5, v6, v7}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 523
    const-string v5, "longitude"

    iget-wide v6, p1, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-interface {v0, v5, v6, v7}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 524
    const-string v5, "coordinate"

    invoke-interface {v1, v5, v0}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    .line 526
    iget-object v5, p0, Lcom/airbnb/android/react/maps/AirMapView;->map:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v5}, Lcom/google/android/gms/maps/GoogleMap;->getProjection()Lcom/google/android/gms/maps/Projection;

    move-result-object v3

    .line 527
    .local v3, "projection":Lcom/google/android/gms/maps/Projection;
    invoke-virtual {v3, p1}, Lcom/google/android/gms/maps/Projection;->toScreenLocation(Lcom/google/android/gms/maps/model/LatLng;)Landroid/graphics/Point;

    move-result-object v4

    .line 529
    .local v4, "screenPoint":Landroid/graphics/Point;
    new-instance v2, Lcom/facebook/react/bridge/WritableNativeMap;

    invoke-direct {v2}, Lcom/facebook/react/bridge/WritableNativeMap;-><init>()V

    .line 530
    .local v2, "position":Lcom/facebook/react/bridge/WritableMap;
    const-string v5, "x"

    iget v6, v4, Landroid/graphics/Point;->x:I

    int-to-double v6, v6

    invoke-interface {v2, v5, v6, v7}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 531
    const-string v5, "y"

    iget v6, v4, Landroid/graphics/Point;->y:I

    int-to-double v6, v6

    invoke-interface {v2, v5, v6, v7}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 532
    const-string v5, "position"

    invoke-interface {v1, v5, v2}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    .line 534
    return-object v1
.end method

.method public onMapReady(Lcom/google/android/gms/maps/GoogleMap;)V
    .locals 5
    .param p1, "map"    # Lcom/google/android/gms/maps/GoogleMap;

    .prologue
    .line 178
    iget-boolean v1, p0, Lcom/airbnb/android/react/maps/AirMapView;->destroyed:Z

    if-eqz v1, :cond_0

    .line 333
    :goto_0
    return-void

    .line 181
    :cond_0
    iput-object p1, p0, Lcom/airbnb/android/react/maps/AirMapView;->map:Lcom/google/android/gms/maps/GoogleMap;

    .line 182
    iget-object v1, p0, Lcom/airbnb/android/react/maps/AirMapView;->map:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v1, p0}, Lcom/google/android/gms/maps/GoogleMap;->setInfoWindowAdapter(Lcom/google/android/gms/maps/GoogleMap$InfoWindowAdapter;)V

    .line 183
    iget-object v1, p0, Lcom/airbnb/android/react/maps/AirMapView;->map:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v1, p0}, Lcom/google/android/gms/maps/GoogleMap;->setOnMarkerDragListener(Lcom/google/android/gms/maps/GoogleMap$OnMarkerDragListener;)V

    .line 185
    iget-object v1, p0, Lcom/airbnb/android/react/maps/AirMapView;->manager:Lcom/airbnb/android/react/maps/AirMapManager;

    iget-object v2, p0, Lcom/airbnb/android/react/maps/AirMapView;->context:Lcom/facebook/react/uimanager/ThemedReactContext;

    const-string v3, "onMapReady"

    new-instance v4, Lcom/facebook/react/bridge/WritableNativeMap;

    invoke-direct {v4}, Lcom/facebook/react/bridge/WritableNativeMap;-><init>()V

    invoke-virtual {v1, v2, p0, v3, v4}, Lcom/airbnb/android/react/maps/AirMapManager;->pushEvent(Lcom/facebook/react/uimanager/ThemedReactContext;Landroid/view/View;Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    .line 187
    move-object v0, p0

    .line 189
    .local v0, "view":Lcom/airbnb/android/react/maps/AirMapView;
    new-instance v1, Lcom/airbnb/android/react/maps/AirMapView$4;

    invoke-direct {v1, p0, v0}, Lcom/airbnb/android/react/maps/AirMapView$4;-><init>(Lcom/airbnb/android/react/maps/AirMapView;Lcom/airbnb/android/react/maps/AirMapView;)V

    invoke-virtual {p1, v1}, Lcom/google/android/gms/maps/GoogleMap;->setOnMarkerClickListener(Lcom/google/android/gms/maps/GoogleMap$OnMarkerClickListener;)V

    .line 217
    new-instance v1, Lcom/airbnb/android/react/maps/AirMapView$5;

    invoke-direct {v1, p0}, Lcom/airbnb/android/react/maps/AirMapView$5;-><init>(Lcom/airbnb/android/react/maps/AirMapView;)V

    invoke-virtual {p1, v1}, Lcom/google/android/gms/maps/GoogleMap;->setOnPolygonClickListener(Lcom/google/android/gms/maps/GoogleMap$OnPolygonClickListener;)V

    .line 226
    new-instance v1, Lcom/airbnb/android/react/maps/AirMapView$6;

    invoke-direct {v1, p0}, Lcom/airbnb/android/react/maps/AirMapView$6;-><init>(Lcom/airbnb/android/react/maps/AirMapView;)V

    invoke-virtual {p1, v1}, Lcom/google/android/gms/maps/GoogleMap;->setOnPolylineClickListener(Lcom/google/android/gms/maps/GoogleMap$OnPolylineClickListener;)V

    .line 235
    new-instance v1, Lcom/airbnb/android/react/maps/AirMapView$7;

    invoke-direct {v1, p0, v0}, Lcom/airbnb/android/react/maps/AirMapView$7;-><init>(Lcom/airbnb/android/react/maps/AirMapView;Lcom/airbnb/android/react/maps/AirMapView;)V

    invoke-virtual {p1, v1}, Lcom/google/android/gms/maps/GoogleMap;->setOnInfoWindowClickListener(Lcom/google/android/gms/maps/GoogleMap$OnInfoWindowClickListener;)V

    .line 256
    new-instance v1, Lcom/airbnb/android/react/maps/AirMapView$8;

    invoke-direct {v1, p0, v0}, Lcom/airbnb/android/react/maps/AirMapView$8;-><init>(Lcom/airbnb/android/react/maps/AirMapView;Lcom/airbnb/android/react/maps/AirMapView;)V

    invoke-virtual {p1, v1}, Lcom/google/android/gms/maps/GoogleMap;->setOnMapClickListener(Lcom/google/android/gms/maps/GoogleMap$OnMapClickListener;)V

    .line 265
    new-instance v1, Lcom/airbnb/android/react/maps/AirMapView$9;

    invoke-direct {v1, p0, v0}, Lcom/airbnb/android/react/maps/AirMapView$9;-><init>(Lcom/airbnb/android/react/maps/AirMapView;Lcom/airbnb/android/react/maps/AirMapView;)V

    invoke-virtual {p1, v1}, Lcom/google/android/gms/maps/GoogleMap;->setOnMapLongClickListener(Lcom/google/android/gms/maps/GoogleMap$OnMapLongClickListener;)V

    .line 274
    new-instance v1, Lcom/airbnb/android/react/maps/AirMapView$10;

    invoke-direct {v1, p0, p1, v0}, Lcom/airbnb/android/react/maps/AirMapView$10;-><init>(Lcom/airbnb/android/react/maps/AirMapView;Lcom/google/android/gms/maps/GoogleMap;Lcom/airbnb/android/react/maps/AirMapView;)V

    invoke-virtual {p1, v1}, Lcom/google/android/gms/maps/GoogleMap;->setOnCameraChangeListener(Lcom/google/android/gms/maps/GoogleMap$OnCameraChangeListener;)V

    .line 285
    new-instance v1, Lcom/airbnb/android/react/maps/AirMapView$11;

    invoke-direct {v1, p0}, Lcom/airbnb/android/react/maps/AirMapView$11;-><init>(Lcom/airbnb/android/react/maps/AirMapView;)V

    invoke-virtual {p1, v1}, Lcom/google/android/gms/maps/GoogleMap;->setOnMapLoadedCallback(Lcom/google/android/gms/maps/GoogleMap$OnMapLoadedCallback;)V

    .line 299
    new-instance v1, Lcom/airbnb/android/react/maps/AirMapView$12;

    invoke-direct {v1, p0, p1}, Lcom/airbnb/android/react/maps/AirMapView$12;-><init>(Lcom/airbnb/android/react/maps/AirMapView;Lcom/google/android/gms/maps/GoogleMap;)V

    iput-object v1, p0, Lcom/airbnb/android/react/maps/AirMapView;->lifecycleListener:Lcom/facebook/react/bridge/LifecycleEventListener;

    .line 332
    iget-object v1, p0, Lcom/airbnb/android/react/maps/AirMapView;->context:Lcom/facebook/react/uimanager/ThemedReactContext;

    iget-object v2, p0, Lcom/airbnb/android/react/maps/AirMapView;->lifecycleListener:Lcom/facebook/react/bridge/LifecycleEventListener;

    invoke-virtual {v1, v2}, Lcom/facebook/react/uimanager/ThemedReactContext;->addLifecycleEventListener(Lcom/facebook/react/bridge/LifecycleEventListener;)V

    goto :goto_0
.end method

.method public onMarkerDrag(Lcom/google/android/gms/maps/model/Marker;)V
    .locals 5
    .param p1, "marker"    # Lcom/google/android/gms/maps/model/Marker;

    .prologue
    .line 749
    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/airbnb/android/react/maps/AirMapView;->makeClickEventData(Lcom/google/android/gms/maps/model/LatLng;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 750
    .local v0, "event":Lcom/facebook/react/bridge/WritableMap;
    iget-object v2, p0, Lcom/airbnb/android/react/maps/AirMapView;->manager:Lcom/airbnb/android/react/maps/AirMapManager;

    iget-object v3, p0, Lcom/airbnb/android/react/maps/AirMapView;->context:Lcom/facebook/react/uimanager/ThemedReactContext;

    const-string v4, "onMarkerDrag"

    invoke-virtual {v2, v3, p0, v4, v0}, Lcom/airbnb/android/react/maps/AirMapManager;->pushEvent(Lcom/facebook/react/uimanager/ThemedReactContext;Landroid/view/View;Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    .line 752
    iget-object v2, p0, Lcom/airbnb/android/react/maps/AirMapView;->markerMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/react/maps/AirMapMarker;

    .line 753
    .local v1, "markerView":Lcom/airbnb/android/react/maps/AirMapMarker;
    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/airbnb/android/react/maps/AirMapView;->makeClickEventData(Lcom/google/android/gms/maps/model/LatLng;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 754
    iget-object v2, p0, Lcom/airbnb/android/react/maps/AirMapView;->manager:Lcom/airbnb/android/react/maps/AirMapManager;

    iget-object v3, p0, Lcom/airbnb/android/react/maps/AirMapView;->context:Lcom/facebook/react/uimanager/ThemedReactContext;

    const-string v4, "onDrag"

    invoke-virtual {v2, v3, v1, v4, v0}, Lcom/airbnb/android/react/maps/AirMapManager;->pushEvent(Lcom/facebook/react/uimanager/ThemedReactContext;Landroid/view/View;Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    .line 755
    return-void
.end method

.method public onMarkerDragEnd(Lcom/google/android/gms/maps/model/Marker;)V
    .locals 5
    .param p1, "marker"    # Lcom/google/android/gms/maps/model/Marker;

    .prologue
    .line 759
    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/airbnb/android/react/maps/AirMapView;->makeClickEventData(Lcom/google/android/gms/maps/model/LatLng;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 760
    .local v0, "event":Lcom/facebook/react/bridge/WritableMap;
    iget-object v2, p0, Lcom/airbnb/android/react/maps/AirMapView;->manager:Lcom/airbnb/android/react/maps/AirMapManager;

    iget-object v3, p0, Lcom/airbnb/android/react/maps/AirMapView;->context:Lcom/facebook/react/uimanager/ThemedReactContext;

    const-string v4, "onMarkerDragEnd"

    invoke-virtual {v2, v3, p0, v4, v0}, Lcom/airbnb/android/react/maps/AirMapManager;->pushEvent(Lcom/facebook/react/uimanager/ThemedReactContext;Landroid/view/View;Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    .line 762
    iget-object v2, p0, Lcom/airbnb/android/react/maps/AirMapView;->markerMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/react/maps/AirMapMarker;

    .line 763
    .local v1, "markerView":Lcom/airbnb/android/react/maps/AirMapMarker;
    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/airbnb/android/react/maps/AirMapView;->makeClickEventData(Lcom/google/android/gms/maps/model/LatLng;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 764
    iget-object v2, p0, Lcom/airbnb/android/react/maps/AirMapView;->manager:Lcom/airbnb/android/react/maps/AirMapManager;

    iget-object v3, p0, Lcom/airbnb/android/react/maps/AirMapView;->context:Lcom/facebook/react/uimanager/ThemedReactContext;

    const-string v4, "onDragEnd"

    invoke-virtual {v2, v3, v1, v4, v0}, Lcom/airbnb/android/react/maps/AirMapManager;->pushEvent(Lcom/facebook/react/uimanager/ThemedReactContext;Landroid/view/View;Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    .line 765
    return-void
.end method

.method public onMarkerDragStart(Lcom/google/android/gms/maps/model/Marker;)V
    .locals 5
    .param p1, "marker"    # Lcom/google/android/gms/maps/model/Marker;

    .prologue
    .line 739
    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/airbnb/android/react/maps/AirMapView;->makeClickEventData(Lcom/google/android/gms/maps/model/LatLng;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 740
    .local v0, "event":Lcom/facebook/react/bridge/WritableMap;
    iget-object v2, p0, Lcom/airbnb/android/react/maps/AirMapView;->manager:Lcom/airbnb/android/react/maps/AirMapManager;

    iget-object v3, p0, Lcom/airbnb/android/react/maps/AirMapView;->context:Lcom/facebook/react/uimanager/ThemedReactContext;

    const-string v4, "onMarkerDragStart"

    invoke-virtual {v2, v3, p0, v4, v0}, Lcom/airbnb/android/react/maps/AirMapManager;->pushEvent(Lcom/facebook/react/uimanager/ThemedReactContext;Landroid/view/View;Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    .line 742
    iget-object v2, p0, Lcom/airbnb/android/react/maps/AirMapView;->markerMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/react/maps/AirMapMarker;

    .line 743
    .local v1, "markerView":Lcom/airbnb/android/react/maps/AirMapMarker;
    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/airbnb/android/react/maps/AirMapView;->makeClickEventData(Lcom/google/android/gms/maps/model/LatLng;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 744
    iget-object v2, p0, Lcom/airbnb/android/react/maps/AirMapView;->manager:Lcom/airbnb/android/react/maps/AirMapManager;

    iget-object v3, p0, Lcom/airbnb/android/react/maps/AirMapView;->context:Lcom/facebook/react/uimanager/ThemedReactContext;

    const-string v4, "onDragStart"

    invoke-virtual {v2, v3, v1, v4, v0}, Lcom/airbnb/android/react/maps/AirMapManager;->pushEvent(Lcom/facebook/react/uimanager/ThemedReactContext;Landroid/view/View;Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    .line 745
    return-void
.end method

.method public onPanDrag(Landroid/view/MotionEvent;)V
    .locals 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 854
    new-instance v2, Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    .line 855
    .local v2, "point":Landroid/graphics/Point;
    iget-object v3, p0, Lcom/airbnb/android/react/maps/AirMapView;->map:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v3}, Lcom/google/android/gms/maps/GoogleMap;->getProjection()Lcom/google/android/gms/maps/Projection;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/maps/Projection;->fromScreenLocation(Landroid/graphics/Point;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    .line 856
    .local v0, "coords":Lcom/google/android/gms/maps/model/LatLng;
    invoke-virtual {p0, v0}, Lcom/airbnb/android/react/maps/AirMapView;->makeClickEventData(Lcom/google/android/gms/maps/model/LatLng;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v1

    .line 857
    .local v1, "event":Lcom/facebook/react/bridge/WritableMap;
    iget-object v3, p0, Lcom/airbnb/android/react/maps/AirMapView;->manager:Lcom/airbnb/android/react/maps/AirMapManager;

    iget-object v4, p0, Lcom/airbnb/android/react/maps/AirMapView;->context:Lcom/facebook/react/uimanager/ThemedReactContext;

    const-string v5, "onPanDrag"

    invoke-virtual {v3, v4, p0, v5, v1}, Lcom/airbnb/android/react/maps/AirMapManager;->pushEvent(Lcom/facebook/react/uimanager/ThemedReactContext;Landroid/view/View;Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    .line 858
    return-void
.end method

.method public removeFeatureAt(I)V
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 511
    iget-object v1, p0, Lcom/airbnb/android/react/maps/AirMapView;->features:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/react/maps/AirMapFeature;

    .line 512
    .local v0, "feature":Lcom/airbnb/android/react/maps/AirMapFeature;
    instance-of v1, v0, Lcom/airbnb/android/react/maps/AirMapMarker;

    if-eqz v1, :cond_0

    .line 513
    iget-object v1, p0, Lcom/airbnb/android/react/maps/AirMapView;->markerMap:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/airbnb/android/react/maps/AirMapFeature;->getFeature()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 515
    :cond_0
    iget-object v1, p0, Lcom/airbnb/android/react/maps/AirMapView;->map:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0, v1}, Lcom/airbnb/android/react/maps/AirMapFeature;->removeFromMap(Lcom/google/android/gms/maps/GoogleMap;)V

    .line 516
    return-void
.end method

.method public setCacheEnabled(Z)V
    .locals 0
    .param p1, "cacheEnabled"    # Z

    .prologue
    .line 406
    iput-boolean p1, p0, Lcom/airbnb/android/react/maps/AirMapView;->cacheEnabled:Z

    .line 407
    invoke-direct {p0}, Lcom/airbnb/android/react/maps/AirMapView;->cacheView()V

    .line 408
    return-void
.end method

.method public setHandlePanDrag(Z)V
    .locals 0
    .param p1, "handlePanDrag"    # Z

    .prologue
    .line 462
    iput-boolean p1, p0, Lcom/airbnb/android/react/maps/AirMapView;->handlePanDrag:Z

    .line 463
    return-void
.end method

.method public setLoadingBackgroundColor(Ljava/lang/Integer;)V
    .locals 2
    .param p1, "loadingBackgroundColor"    # Ljava/lang/Integer;

    .prologue
    .line 421
    iput-object p1, p0, Lcom/airbnb/android/react/maps/AirMapView;->loadingBackgroundColor:Ljava/lang/Integer;

    .line 423
    iget-object v0, p0, Lcom/airbnb/android/react/maps/AirMapView;->mapLoadingLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 424
    if-nez p1, :cond_1

    .line 425
    iget-object v0, p0, Lcom/airbnb/android/react/maps/AirMapView;->mapLoadingLayout:Landroid/widget/RelativeLayout;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 430
    :cond_0
    :goto_0
    return-void

    .line 427
    :cond_1
    iget-object v0, p0, Lcom/airbnb/android/react/maps/AirMapView;->mapLoadingLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/airbnb/android/react/maps/AirMapView;->loadingBackgroundColor:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method public setLoadingIndicatorColor(Ljava/lang/Integer;)V
    .locals 7
    .param p1, "loadingIndicatorColor"    # Ljava/lang/Integer;

    .prologue
    .line 433
    iput-object p1, p0, Lcom/airbnb/android/react/maps/AirMapView;->loadingIndicatorColor:Ljava/lang/Integer;

    .line 434
    iget-object v5, p0, Lcom/airbnb/android/react/maps/AirMapView;->mapLoadingProgressBar:Landroid/widget/ProgressBar;

    if-eqz v5, :cond_1

    .line 435
    move-object v0, p1

    .line 436
    .local v0, "color":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 437
    const-string v5, "#606060"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 440
    :cond_0
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x15

    if-lt v5, v6, :cond_2

    .line 441
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    .line 442
    .local v3, "progressTintList":Landroid/content/res/ColorStateList;
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    .line 443
    .local v4, "secondaryProgressTintList":Landroid/content/res/ColorStateList;
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 445
    .local v1, "indeterminateTintList":Landroid/content/res/ColorStateList;
    iget-object v5, p0, Lcom/airbnb/android/react/maps/AirMapView;->mapLoadingProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v5, v3}, Landroid/widget/ProgressBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    .line 446
    iget-object v5, p0, Lcom/airbnb/android/react/maps/AirMapView;->mapLoadingProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v5, v4}, Landroid/widget/ProgressBar;->setSecondaryProgressTintList(Landroid/content/res/ColorStateList;)V

    .line 447
    iget-object v5, p0, Lcom/airbnb/android/react/maps/AirMapView;->mapLoadingProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v5, v1}, Landroid/widget/ProgressBar;->setIndeterminateTintList(Landroid/content/res/ColorStateList;)V

    .line 459
    .end local v0    # "color":Ljava/lang/Integer;
    .end local v1    # "indeterminateTintList":Landroid/content/res/ColorStateList;
    .end local v3    # "progressTintList":Landroid/content/res/ColorStateList;
    .end local v4    # "secondaryProgressTintList":Landroid/content/res/ColorStateList;
    :cond_1
    :goto_0
    return-void

    .line 449
    .restart local v0    # "color":Ljava/lang/Integer;
    :cond_2
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 450
    .local v2, "mode":Landroid/graphics/PorterDuff$Mode;
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0xa

    if-gt v5, v6, :cond_3

    .line 451
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    .line 453
    :cond_3
    iget-object v5, p0, Lcom/airbnb/android/react/maps/AirMapView;->mapLoadingProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v5}, Landroid/widget/ProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 454
    iget-object v5, p0, Lcom/airbnb/android/react/maps/AirMapView;->mapLoadingProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v5}, Landroid/widget/ProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v6, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 455
    :cond_4
    iget-object v5, p0, Lcom/airbnb/android/react/maps/AirMapView;->mapLoadingProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v5}, Landroid/widget/ProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 456
    iget-object v5, p0, Lcom/airbnb/android/react/maps/AirMapView;->mapLoadingProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v5}, Landroid/widget/ProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v6, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0
.end method

.method public setMoveOnMarkerPress(Z)V
    .locals 0
    .param p1, "moveOnPress"    # Z

    .prologue
    .line 417
    iput-boolean p1, p0, Lcom/airbnb/android/react/maps/AirMapView;->moveOnMarkerPress:Z

    .line 418
    return-void
.end method

.method public setRegion(Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 18
    .param p1, "region"    # Lcom/facebook/react/bridge/ReadableMap;

    .prologue
    .line 362
    if-nez p1, :cond_0

    .line 383
    :goto_0
    return-void

    .line 364
    :cond_0
    const-string v7, "longitude"

    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    .line 365
    .local v5, "lng":Ljava/lang/Double;
    const-string v7, "latitude"

    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    .line 366
    .local v3, "lat":Ljava/lang/Double;
    const-string v7, "longitudeDelta"

    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    .line 367
    .local v6, "lngDelta":Ljava/lang/Double;
    const-string v7, "latitudeDelta"

    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    .line 368
    .local v4, "latDelta":Ljava/lang/Double;
    new-instance v2, Lcom/google/android/gms/maps/model/LatLngBounds;

    new-instance v7, Lcom/google/android/gms/maps/model/LatLng;

    .line 369
    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    div-double/2addr v10, v12

    sub-double/2addr v8, v10

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    div-double/2addr v12, v14

    sub-double/2addr v10, v12

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    new-instance v8, Lcom/google/android/gms/maps/model/LatLng;

    .line 370
    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    div-double/2addr v12, v14

    add-double/2addr v10, v12

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    div-double v14, v14, v16

    add-double/2addr v12, v14

    invoke-direct {v8, v10, v11, v12, v13}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-direct {v2, v7, v8}, Lcom/google/android/gms/maps/model/LatLngBounds;-><init>(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)V

    .line 372
    .local v2, "bounds":Lcom/google/android/gms/maps/model/LatLngBounds;
    invoke-super/range {p0 .. p0}, Lcom/google/android/gms/maps/MapView;->getHeight()I

    move-result v7

    if-lez v7, :cond_1

    invoke-super/range {p0 .. p0}, Lcom/google/android/gms/maps/MapView;->getWidth()I

    move-result v7

    if-gtz v7, :cond_2

    .line 377
    :cond_1
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/airbnb/android/react/maps/AirMapView;->map:Lcom/google/android/gms/maps/GoogleMap;

    new-instance v8, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    invoke-direct {v8, v10, v11, v12, v13}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    const/high16 v9, 0x41200000    # 10.0f

    invoke-static {v8, v9}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLngZoom(Lcom/google/android/gms/maps/model/LatLng;F)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/android/gms/maps/GoogleMap;->moveCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    .line 378
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/airbnb/android/react/maps/AirMapView;->boundsToMove:Lcom/google/android/gms/maps/model/LatLngBounds;

    goto/16 :goto_0

    .line 380
    :cond_2
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/airbnb/android/react/maps/AirMapView;->map:Lcom/google/android/gms/maps/GoogleMap;

    const/4 v8, 0x0

    invoke-static {v2, v8}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLngBounds(Lcom/google/android/gms/maps/model/LatLngBounds;I)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/android/gms/maps/GoogleMap;->moveCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    .line 381
    const/4 v7, 0x0

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/airbnb/android/react/maps/AirMapView;->boundsToMove:Lcom/google/android/gms/maps/model/LatLngBounds;

    goto/16 :goto_0
.end method

.method public setShowsMyLocationButton(Z)V
    .locals 1
    .param p1, "showMyLocationButton"    # Z

    .prologue
    .line 394
    invoke-direct {p0}, Lcom/airbnb/android/react/maps/AirMapView;->hasPermissions()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 395
    iget-object v0, p0, Lcom/airbnb/android/react/maps/AirMapView;->map:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/GoogleMap;->getUiSettings()Lcom/google/android/gms/maps/UiSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/UiSettings;->setMyLocationButtonEnabled(Z)V

    .line 397
    :cond_0
    return-void
.end method

.method public setShowsUserLocation(Z)V
    .locals 1
    .param p1, "showUserLocation"    # Z

    .prologue
    .line 386
    iput-boolean p1, p0, Lcom/airbnb/android/react/maps/AirMapView;->showUserLocation:Z

    .line 387
    invoke-direct {p0}, Lcom/airbnb/android/react/maps/AirMapView;->hasPermissions()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 389
    iget-object v0, p0, Lcom/airbnb/android/react/maps/AirMapView;->map:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/GoogleMap;->setMyLocationEnabled(Z)V

    .line 391
    :cond_0
    return-void
.end method

.method public setToolbarEnabled(Z)V
    .locals 1
    .param p1, "toolbarEnabled"    # Z

    .prologue
    .line 400
    invoke-direct {p0}, Lcom/airbnb/android/react/maps/AirMapView;->hasPermissions()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 401
    iget-object v0, p0, Lcom/airbnb/android/react/maps/AirMapView;->map:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/GoogleMap;->getUiSettings()Lcom/google/android/gms/maps/UiSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/UiSettings;->setMapToolbarEnabled(Z)V

    .line 403
    :cond_0
    return-void
.end method

.method public startMonitoringRegion()V
    .locals 4

    .prologue
    .line 702
    iget-boolean v0, p0, Lcom/airbnb/android/react/maps/AirMapView;->isMonitoringRegion:Z

    if-eqz v0, :cond_0

    .line 705
    :goto_0
    return-void

    .line 703
    :cond_0
    iget-object v0, p0, Lcom/airbnb/android/react/maps/AirMapView;->timerHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/airbnb/android/react/maps/AirMapView;->timerRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 704
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/airbnb/android/react/maps/AirMapView;->isMonitoringRegion:Z

    goto :goto_0
.end method

.method public stopMonitoringRegion()V
    .locals 2

    .prologue
    .line 708
    iget-boolean v0, p0, Lcom/airbnb/android/react/maps/AirMapView;->isMonitoringRegion:Z

    if-nez v0, :cond_0

    .line 711
    :goto_0
    return-void

    .line 709
    :cond_0
    iget-object v0, p0, Lcom/airbnb/android/react/maps/AirMapView;->timerHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/airbnb/android/react/maps/AirMapView;->timerRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 710
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/airbnb/android/react/maps/AirMapView;->isMonitoringRegion:Z

    goto :goto_0
.end method

.method public updateExtraData(Ljava/lang/Object;)V
    .locals 8
    .param p1, "extraData"    # Ljava/lang/Object;

    .prologue
    .line 540
    iget-object v3, p0, Lcom/airbnb/android/react/maps/AirMapView;->boundsToMove:Lcom/google/android/gms/maps/model/LatLngBounds;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 541
    check-cast v0, Ljava/util/HashMap;

    .line 542
    .local v0, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Float;>;"
    const-string v3, "width"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 543
    .local v2, "width":F
    const-string v3, "height"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 544
    .local v1, "height":F
    iget-object v3, p0, Lcom/airbnb/android/react/maps/AirMapView;->map:Lcom/google/android/gms/maps/GoogleMap;

    iget-object v4, p0, Lcom/airbnb/android/react/maps/AirMapView;->boundsToMove:Lcom/google/android/gms/maps/model/LatLngBounds;

    float-to-int v5, v2

    float-to-int v6, v1

    const/4 v7, 0x0

    .line 545
    invoke-static {v4, v5, v6, v7}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLngBounds(Lcom/google/android/gms/maps/model/LatLngBounds;III)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v4

    .line 544
    invoke-virtual {v3, v4}, Lcom/google/android/gms/maps/GoogleMap;->moveCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    .line 552
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/airbnb/android/react/maps/AirMapView;->boundsToMove:Lcom/google/android/gms/maps/model/LatLngBounds;

    .line 554
    .end local v0    # "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Float;>;"
    .end local v1    # "height":F
    .end local v2    # "width":F
    :cond_0
    return-void
.end method
