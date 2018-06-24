.class public Lcom/airbnb/android/react/maps/AirMapCircleManager;
.super Lcom/facebook/react/uimanager/ViewGroupManager;
.source "AirMapCircleManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/react/uimanager/ViewGroupManager",
        "<",
        "Lcom/airbnb/android/react/maps/AirMapCircle;",
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
    .line 20
    invoke-direct {p0}, Lcom/facebook/react/uimanager/ViewGroupManager;-><init>()V

    .line 21
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 22
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/airbnb/android/react/maps/AirMapCircleManager;->metrics:Landroid/util/DisplayMetrics;

    .line 23
    const-string v0, "window"

    invoke-virtual {p1, v0}, Lcom/facebook/react/bridge/ReactApplicationContext;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 24
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/android/react/maps/AirMapCircleManager;->metrics:Landroid/util/DisplayMetrics;

    .line 25
    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 29
    :goto_0
    return-void

    .line 27
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/react/bridge/ReactApplicationContext;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/react/maps/AirMapCircleManager;->metrics:Landroid/util/DisplayMetrics;

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Landroid/view/View;
    .locals 1

    .prologue
    .line 16
    invoke-virtual {p0, p1}, Lcom/airbnb/android/react/maps/AirMapCircleManager;->createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Lcom/airbnb/android/react/maps/AirMapCircle;

    move-result-object v0

    return-object v0
.end method

.method public createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Lcom/airbnb/android/react/maps/AirMapCircle;
    .locals 1
    .param p1, "context"    # Lcom/facebook/react/uimanager/ThemedReactContext;

    .prologue
    .line 38
    new-instance v0, Lcom/airbnb/android/react/maps/AirMapCircle;

    invoke-direct {v0, p1}, Lcom/airbnb/android/react/maps/AirMapCircle;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    const-string v0, "AIRMapCircle"

    return-object v0
.end method

.method public setCenter(Lcom/airbnb/android/react/maps/AirMapCircle;Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 6
    .param p1, "view"    # Lcom/airbnb/android/react/maps/AirMapCircle;
    .param p2, "center"    # Lcom/facebook/react/bridge/ReadableMap;
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "center"
    .end annotation

    .prologue
    .line 43
    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    const-string v1, "latitude"

    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    const-string v1, "longitude"

    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {p1, v0}, Lcom/airbnb/android/react/maps/AirMapCircle;->setCenter(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 44
    return-void
.end method

.method public setFillColor(Lcom/airbnb/android/react/maps/AirMapCircle;I)V
    .locals 0
    .param p1, "view"    # Lcom/airbnb/android/react/maps/AirMapCircle;
    .param p2, "color"    # I
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        customType = "Color"
        defaultInt = -0x10000
        name = "fillColor"
    .end annotation

    .prologue
    .line 59
    invoke-virtual {p1, p2}, Lcom/airbnb/android/react/maps/AirMapCircle;->setFillColor(I)V

    .line 60
    return-void
.end method

.method public setRadius(Lcom/airbnb/android/react/maps/AirMapCircle;D)V
    .locals 0
    .param p1, "view"    # Lcom/airbnb/android/react/maps/AirMapCircle;
    .param p2, "radius"    # D
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultDouble = 0.0
        name = "radius"
    .end annotation

    .prologue
    .line 48
    invoke-virtual {p1, p2, p3}, Lcom/airbnb/android/react/maps/AirMapCircle;->setRadius(D)V

    .line 49
    return-void
.end method

.method public setStrokeColor(Lcom/airbnb/android/react/maps/AirMapCircle;I)V
    .locals 0
    .param p1, "view"    # Lcom/airbnb/android/react/maps/AirMapCircle;
    .param p2, "color"    # I
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        customType = "Color"
        defaultInt = -0x10000
        name = "strokeColor"
    .end annotation

    .prologue
    .line 64
    invoke-virtual {p1, p2}, Lcom/airbnb/android/react/maps/AirMapCircle;->setStrokeColor(I)V

    .line 65
    return-void
.end method

.method public setStrokeWidth(Lcom/airbnb/android/react/maps/AirMapCircle;F)V
    .locals 2
    .param p1, "view"    # Lcom/airbnb/android/react/maps/AirMapCircle;
    .param p2, "widthInPoints"    # F
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultFloat = 1.0f
        name = "strokeWidth"
    .end annotation

    .prologue
    .line 53
    iget-object v1, p0, Lcom/airbnb/android/react/maps/AirMapCircleManager;->metrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v1, p2

    .line 54
    .local v0, "widthInScreenPx":F
    invoke-virtual {p1, v0}, Lcom/airbnb/android/react/maps/AirMapCircle;->setStrokeWidth(F)V

    .line 55
    return-void
.end method

.method public bridge synthetic setZIndex(Landroid/view/View;F)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultFloat = 1.0f
        name = "zIndex"
    .end annotation

    .prologue
    .line 16
    check-cast p1, Lcom/airbnb/android/react/maps/AirMapCircle;

    invoke-virtual {p0, p1, p2}, Lcom/airbnb/android/react/maps/AirMapCircleManager;->setZIndex(Lcom/airbnb/android/react/maps/AirMapCircle;F)V

    return-void
.end method

.method public setZIndex(Lcom/airbnb/android/react/maps/AirMapCircle;F)V
    .locals 0
    .param p1, "view"    # Lcom/airbnb/android/react/maps/AirMapCircle;
    .param p2, "zIndex"    # F
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultFloat = 1.0f
        name = "zIndex"
    .end annotation

    .prologue
    .line 69
    invoke-virtual {p1, p2}, Lcom/airbnb/android/react/maps/AirMapCircle;->setZIndex(F)V

    .line 70
    return-void
.end method
