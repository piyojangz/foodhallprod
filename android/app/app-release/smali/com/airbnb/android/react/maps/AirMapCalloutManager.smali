.class public Lcom/airbnb/android/react/maps/AirMapCalloutManager;
.super Lcom/facebook/react/uimanager/ViewGroupManager;
.source "AirMapCalloutManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/react/uimanager/ViewGroupManager",
        "<",
        "Lcom/airbnb/android/react/maps/AirMapCallout;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/facebook/react/uimanager/ViewGroupManager;-><init>()V

    return-void
.end method


# virtual methods
.method public createShadowNodeInstance()Lcom/facebook/react/uimanager/LayoutShadowNode;
    .locals 1

    .prologue
    .line 41
    new-instance v0, Lcom/airbnb/android/react/maps/SizeReportingShadowNode;

    invoke-direct {v0}, Lcom/airbnb/android/react/maps/SizeReportingShadowNode;-><init>()V

    return-object v0
.end method

.method public bridge synthetic createShadowNodeInstance()Lcom/facebook/react/uimanager/ReactShadowNode;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/airbnb/android/react/maps/AirMapCalloutManager;->createShadowNodeInstance()Lcom/facebook/react/uimanager/LayoutShadowNode;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Landroid/view/View;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0, p1}, Lcom/airbnb/android/react/maps/AirMapCalloutManager;->createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Lcom/airbnb/android/react/maps/AirMapCallout;

    move-result-object v0

    return-object v0
.end method

.method public createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Lcom/airbnb/android/react/maps/AirMapCallout;
    .locals 1
    .param p1, "context"    # Lcom/facebook/react/uimanager/ThemedReactContext;

    .prologue
    .line 22
    new-instance v0, Lcom/airbnb/android/react/maps/AirMapCallout;

    invoke-direct {v0, p1}, Lcom/airbnb/android/react/maps/AirMapCallout;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getExportedCustomDirectEventTypeConstants()Ljava/util/Map;
    .locals 3
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 33
    const-string v0, "onPress"

    const-string v1, "registrationName"

    const-string v2, "onPress"

    invoke-static {v1, v2}, Lcom/facebook/react/common/MapBuilder;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/react/common/MapBuilder;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    const-string v0, "AIRMapCallout"

    return-object v0
.end method

.method public setTooltip(Lcom/airbnb/android/react/maps/AirMapCallout;Z)V
    .locals 0
    .param p1, "view"    # Lcom/airbnb/android/react/maps/AirMapCallout;
    .param p2, "tooltip"    # Z
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultBoolean = false
        name = "tooltip"
    .end annotation

    .prologue
    .line 27
    invoke-virtual {p1, p2}, Lcom/airbnb/android/react/maps/AirMapCallout;->setTooltip(Z)V

    .line 28
    return-void
.end method

.method public bridge synthetic updateExtraData(Landroid/view/View;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 13
    check-cast p1, Lcom/airbnb/android/react/maps/AirMapCallout;

    invoke-virtual {p0, p1, p2}, Lcom/airbnb/android/react/maps/AirMapCalloutManager;->updateExtraData(Lcom/airbnb/android/react/maps/AirMapCallout;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic updateExtraData(Landroid/view/ViewGroup;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 13
    check-cast p1, Lcom/airbnb/android/react/maps/AirMapCallout;

    invoke-virtual {p0, p1, p2}, Lcom/airbnb/android/react/maps/AirMapCalloutManager;->updateExtraData(Lcom/airbnb/android/react/maps/AirMapCallout;Ljava/lang/Object;)V

    return-void
.end method

.method public updateExtraData(Lcom/airbnb/android/react/maps/AirMapCallout;Ljava/lang/Object;)V
    .locals 4
    .param p1, "view"    # Lcom/airbnb/android/react/maps/AirMapCallout;
    .param p2, "extraData"    # Ljava/lang/Object;

    .prologue
    .line 49
    move-object v0, p2

    check-cast v0, Ljava/util/Map;

    .line 50
    .local v0, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Float;>;"
    const-string v3, "width"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 51
    .local v2, "width":F
    const-string v3, "height"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 52
    .local v1, "height":F
    float-to-int v3, v2

    iput v3, p1, Lcom/airbnb/android/react/maps/AirMapCallout;->width:I

    .line 53
    float-to-int v3, v1

    iput v3, p1, Lcom/airbnb/android/react/maps/AirMapCallout;->height:I

    .line 54
    return-void
.end method
