.class public Lcom/airbnb/android/react/maps/AirMapUrlTileManager;
.super Lcom/facebook/react/uimanager/ViewGroupManager;
.source "AirMapUrlTileManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/react/uimanager/ViewGroupManager",
        "<",
        "Lcom/airbnb/android/react/maps/AirMapUrlTile;",
        ">;"
    }
.end annotation


# instance fields
.field private metrics:Landroid/util/DisplayMetrics;


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 2
    .param p1, "reactContext"    # Lcom/facebook/react/bridge/ReactApplicationContext;

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/facebook/react/uimanager/ViewGroupManager;-><init>()V

    .line 18
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 19
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/airbnb/android/react/maps/AirMapUrlTileManager;->metrics:Landroid/util/DisplayMetrics;

    .line 20
    const-string v0, "window"

    invoke-virtual {p1, v0}, Lcom/facebook/react/bridge/ReactApplicationContext;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 21
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/android/react/maps/AirMapUrlTileManager;->metrics:Landroid/util/DisplayMetrics;

    .line 22
    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 26
    :goto_0
    return-void

    .line 24
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/react/bridge/ReactApplicationContext;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/react/maps/AirMapUrlTileManager;->metrics:Landroid/util/DisplayMetrics;

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Landroid/view/View;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0, p1}, Lcom/airbnb/android/react/maps/AirMapUrlTileManager;->createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Lcom/airbnb/android/react/maps/AirMapUrlTile;

    move-result-object v0

    return-object v0
.end method

.method public createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Lcom/airbnb/android/react/maps/AirMapUrlTile;
    .locals 1
    .param p1, "context"    # Lcom/facebook/react/uimanager/ThemedReactContext;

    .prologue
    .line 35
    new-instance v0, Lcom/airbnb/android/react/maps/AirMapUrlTile;

    invoke-direct {v0, p1}, Lcom/airbnb/android/react/maps/AirMapUrlTile;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    const-string v0, "AIRMapUrlTile"

    return-object v0
.end method

.method public setUrlTemplate(Lcom/airbnb/android/react/maps/AirMapUrlTile;Ljava/lang/String;)V
    .locals 0
    .param p1, "view"    # Lcom/airbnb/android/react/maps/AirMapUrlTile;
    .param p2, "urlTemplate"    # Ljava/lang/String;
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "urlTemplate"
    .end annotation

    .prologue
    .line 40
    invoke-virtual {p1, p2}, Lcom/airbnb/android/react/maps/AirMapUrlTile;->setUrlTemplate(Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method public bridge synthetic setZIndex(Landroid/view/View;F)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultFloat = -1.0f
        name = "zIndex"
    .end annotation

    .prologue
    .line 13
    check-cast p1, Lcom/airbnb/android/react/maps/AirMapUrlTile;

    invoke-virtual {p0, p1, p2}, Lcom/airbnb/android/react/maps/AirMapUrlTileManager;->setZIndex(Lcom/airbnb/android/react/maps/AirMapUrlTile;F)V

    return-void
.end method

.method public setZIndex(Lcom/airbnb/android/react/maps/AirMapUrlTile;F)V
    .locals 0
    .param p1, "view"    # Lcom/airbnb/android/react/maps/AirMapUrlTile;
    .param p2, "zIndex"    # F
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultFloat = -1.0f
        name = "zIndex"
    .end annotation

    .prologue
    .line 45
    invoke-virtual {p1, p2}, Lcom/airbnb/android/react/maps/AirMapUrlTile;->setZIndex(F)V

    .line 46
    return-void
.end method
