.class public Lcom/airbnb/android/react/maps/AirMapPolygonManager;
.super Lcom/facebook/react/uimanager/ViewGroupManager;
.source "AirMapPolygonManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/react/uimanager/ViewGroupManager",
        "<",
        "Lcom/airbnb/android/react/maps/AirMapPolygon;",
        ">;"
    }
.end annotation


# instance fields
.field private final metrics:Landroid/util/DisplayMetrics;


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 2
    .param p1, "reactContext"    # Lcom/facebook/react/bridge/ReactApplicationContext;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/facebook/react/uimanager/ViewGroupManager;-><init>()V

    .line 25
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 26
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/airbnb/android/react/maps/AirMapPolygonManager;->metrics:Landroid/util/DisplayMetrics;

    .line 27
    const-string v0, "window"

    invoke-virtual {p1, v0}, Lcom/facebook/react/bridge/ReactApplicationContext;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 28
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/android/react/maps/AirMapPolygonManager;->metrics:Landroid/util/DisplayMetrics;

    .line 29
    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 33
    :goto_0
    return-void

    .line 31
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/react/bridge/ReactApplicationContext;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/react/maps/AirMapPolygonManager;->metrics:Landroid/util/DisplayMetrics;

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Landroid/view/View;
    .locals 1

    .prologue
    .line 20
    invoke-virtual {p0, p1}, Lcom/airbnb/android/react/maps/AirMapPolygonManager;->createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Lcom/airbnb/android/react/maps/AirMapPolygon;

    move-result-object v0

    return-object v0
.end method

.method public createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Lcom/airbnb/android/react/maps/AirMapPolygon;
    .locals 1
    .param p1, "context"    # Lcom/facebook/react/uimanager/ThemedReactContext;

    .prologue
    .line 42
    new-instance v0, Lcom/airbnb/android/react/maps/AirMapPolygon;

    invoke-direct {v0, p1}, Lcom/airbnb/android/react/maps/AirMapPolygon;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getExportedCustomDirectEventTypeConstants()Ljava/util/Map;
    .locals 3
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 79
    const-string v0, "onPress"

    const-string v1, "registrationName"

    const-string v2, "onPress"

    .line 80
    invoke-static {v1, v2}, Lcom/facebook/react/common/MapBuilder;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    .line 79
    invoke-static {v0, v1}, Lcom/facebook/react/common/MapBuilder;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    const-string v0, "AIRMapPolygon"

    return-object v0
.end method

.method public setCoordinate(Lcom/airbnb/android/react/maps/AirMapPolygon;Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 0
    .param p1, "view"    # Lcom/airbnb/android/react/maps/AirMapPolygon;
    .param p2, "coordinates"    # Lcom/facebook/react/bridge/ReadableArray;
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "coordinates"
    .end annotation

    .prologue
    .line 47
    invoke-virtual {p1, p2}, Lcom/airbnb/android/react/maps/AirMapPolygon;->setCoordinates(Lcom/facebook/react/bridge/ReadableArray;)V

    .line 48
    return-void
.end method

.method public setFillColor(Lcom/airbnb/android/react/maps/AirMapPolygon;I)V
    .locals 0
    .param p1, "view"    # Lcom/airbnb/android/react/maps/AirMapPolygon;
    .param p2, "color"    # I
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        customType = "Color"
        defaultInt = -0x10000
        name = "fillColor"
    .end annotation

    .prologue
    .line 58
    invoke-virtual {p1, p2}, Lcom/airbnb/android/react/maps/AirMapPolygon;->setFillColor(I)V

    .line 59
    return-void
.end method

.method public setGeodesic(Lcom/airbnb/android/react/maps/AirMapPolygon;Z)V
    .locals 0
    .param p1, "view"    # Lcom/airbnb/android/react/maps/AirMapPolygon;
    .param p2, "geodesic"    # Z
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultBoolean = false
        name = "geodesic"
    .end annotation

    .prologue
    .line 68
    invoke-virtual {p1, p2}, Lcom/airbnb/android/react/maps/AirMapPolygon;->setGeodesic(Z)V

    .line 69
    return-void
.end method

.method public setStrokeColor(Lcom/airbnb/android/react/maps/AirMapPolygon;I)V
    .locals 0
    .param p1, "view"    # Lcom/airbnb/android/react/maps/AirMapPolygon;
    .param p2, "color"    # I
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        customType = "Color"
        defaultInt = -0x10000
        name = "strokeColor"
    .end annotation

    .prologue
    .line 63
    invoke-virtual {p1, p2}, Lcom/airbnb/android/react/maps/AirMapPolygon;->setStrokeColor(I)V

    .line 64
    return-void
.end method

.method public setStrokeWidth(Lcom/airbnb/android/react/maps/AirMapPolygon;F)V
    .locals 2
    .param p1, "view"    # Lcom/airbnb/android/react/maps/AirMapPolygon;
    .param p2, "widthInPoints"    # F
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultFloat = 1.0f
        name = "strokeWidth"
    .end annotation

    .prologue
    .line 52
    iget-object v1, p0, Lcom/airbnb/android/react/maps/AirMapPolygonManager;->metrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v1, p2

    .line 53
    .local v0, "widthInScreenPx":F
    invoke-virtual {p1, v0}, Lcom/airbnb/android/react/maps/AirMapPolygon;->setStrokeWidth(F)V

    .line 54
    return-void
.end method

.method public bridge synthetic setZIndex(Landroid/view/View;F)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultFloat = 1.0f
        name = "zIndex"
    .end annotation

    .prologue
    .line 20
    check-cast p1, Lcom/airbnb/android/react/maps/AirMapPolygon;

    invoke-virtual {p0, p1, p2}, Lcom/airbnb/android/react/maps/AirMapPolygonManager;->setZIndex(Lcom/airbnb/android/react/maps/AirMapPolygon;F)V

    return-void
.end method

.method public setZIndex(Lcom/airbnb/android/react/maps/AirMapPolygon;F)V
    .locals 0
    .param p1, "view"    # Lcom/airbnb/android/react/maps/AirMapPolygon;
    .param p2, "zIndex"    # F
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultFloat = 1.0f
        name = "zIndex"
    .end annotation

    .prologue
    .line 73
    invoke-virtual {p1, p2}, Lcom/airbnb/android/react/maps/AirMapPolygon;->setZIndex(F)V

    .line 74
    return-void
.end method
