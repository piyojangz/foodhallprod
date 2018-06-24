.class public Lcom/airbnb/android/react/maps/MapsPackage;
.super Ljava/lang/Object;
.source "MapsPackage.java"

# interfaces
.implements Lcom/facebook/react/ReactPackage;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method


# virtual methods
.method public createJSModules()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/facebook/react/bridge/JavaScriptModule;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 29
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public createNativeModules(Lcom/facebook/react/bridge/ReactApplicationContext;)Ljava/util/List;
    .locals 3
    .param p1, "reactContext"    # Lcom/facebook/react/bridge/ReactApplicationContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/react/bridge/ReactApplicationContext;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/react/bridge/NativeModule;",
            ">;"
        }
    .end annotation

    .prologue
    .line 24
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/facebook/react/bridge/NativeModule;

    const/4 v1, 0x0

    new-instance v2, Lcom/airbnb/android/react/maps/AirMapModule;

    invoke-direct {v2, p1}, Lcom/airbnb/android/react/maps/AirMapModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public createViewManagers(Lcom/facebook/react/bridge/ReactApplicationContext;)Ljava/util/List;
    .locals 10
    .param p1, "reactContext"    # Lcom/facebook/react/bridge/ReactApplicationContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/react/bridge/ReactApplicationContext;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/react/uimanager/ViewManager;",
            ">;"
        }
    .end annotation

    .prologue
    .line 34
    new-instance v1, Lcom/airbnb/android/react/maps/AirMapCalloutManager;

    invoke-direct {v1}, Lcom/airbnb/android/react/maps/AirMapCalloutManager;-><init>()V

    .line 35
    .local v1, "calloutManager":Lcom/airbnb/android/react/maps/AirMapCalloutManager;
    new-instance v0, Lcom/airbnb/android/react/maps/AirMapMarkerManager;

    invoke-direct {v0}, Lcom/airbnb/android/react/maps/AirMapMarkerManager;-><init>()V

    .line 36
    .local v0, "annotationManager":Lcom/airbnb/android/react/maps/AirMapMarkerManager;
    new-instance v6, Lcom/airbnb/android/react/maps/AirMapPolylineManager;

    invoke-direct {v6, p1}, Lcom/airbnb/android/react/maps/AirMapPolylineManager;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 37
    .local v6, "polylineManager":Lcom/airbnb/android/react/maps/AirMapPolylineManager;
    new-instance v5, Lcom/airbnb/android/react/maps/AirMapPolygonManager;

    invoke-direct {v5, p1}, Lcom/airbnb/android/react/maps/AirMapPolygonManager;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 38
    .local v5, "polygonManager":Lcom/airbnb/android/react/maps/AirMapPolygonManager;
    new-instance v2, Lcom/airbnb/android/react/maps/AirMapCircleManager;

    invoke-direct {v2, p1}, Lcom/airbnb/android/react/maps/AirMapCircleManager;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 39
    .local v2, "circleManager":Lcom/airbnb/android/react/maps/AirMapCircleManager;
    new-instance v4, Lcom/airbnb/android/react/maps/AirMapManager;

    invoke-direct {v4, p1}, Lcom/airbnb/android/react/maps/AirMapManager;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 40
    .local v4, "mapManager":Lcom/airbnb/android/react/maps/AirMapManager;
    new-instance v3, Lcom/airbnb/android/react/maps/AirMapLiteManager;

    invoke-direct {v3, p1}, Lcom/airbnb/android/react/maps/AirMapLiteManager;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 41
    .local v3, "mapLiteManager":Lcom/airbnb/android/react/maps/AirMapLiteManager;
    new-instance v7, Lcom/airbnb/android/react/maps/AirMapUrlTileManager;

    invoke-direct {v7, p1}, Lcom/airbnb/android/react/maps/AirMapUrlTileManager;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 43
    .local v7, "tileManager":Lcom/airbnb/android/react/maps/AirMapUrlTileManager;
    const/16 v8, 0x8

    new-array v8, v8, [Lcom/facebook/react/uimanager/ViewManager;

    const/4 v9, 0x0

    aput-object v1, v8, v9

    const/4 v9, 0x1

    aput-object v0, v8, v9

    const/4 v9, 0x2

    aput-object v6, v8, v9

    const/4 v9, 0x3

    aput-object v5, v8, v9

    const/4 v9, 0x4

    aput-object v2, v8, v9

    const/4 v9, 0x5

    aput-object v4, v8, v9

    const/4 v9, 0x6

    aput-object v3, v8, v9

    const/4 v9, 0x7

    aput-object v7, v8, v9

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    return-object v8
.end method
