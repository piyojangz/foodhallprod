.class public Lcom/airbnb/android/react/maps/AirMapMarkerManager;
.super Lcom/facebook/react/uimanager/ViewGroupManager;
.source "AirMapMarkerManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/react/uimanager/ViewGroupManager",
        "<",
        "Lcom/airbnb/android/react/maps/AirMapMarker;",
        ">;"
    }
.end annotation


# static fields
.field private static final HIDE_INFO_WINDOW:I = 0x2

.field private static final SHOW_INFO_WINDOW:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/facebook/react/uimanager/ViewGroupManager;-><init>()V

    .line 26
    return-void
.end method


# virtual methods
.method public bridge synthetic addView(Landroid/view/ViewGroup;Landroid/view/View;I)V
    .locals 0

    .prologue
    .line 20
    check-cast p1, Lcom/airbnb/android/react/maps/AirMapMarker;

    invoke-virtual {p0, p1, p2, p3}, Lcom/airbnb/android/react/maps/AirMapMarkerManager;->addView(Lcom/airbnb/android/react/maps/AirMapMarker;Landroid/view/View;I)V

    return-void
.end method

.method public addView(Lcom/airbnb/android/react/maps/AirMapMarker;Landroid/view/View;I)V
    .locals 1
    .param p1, "parent"    # Lcom/airbnb/android/react/maps/AirMapMarker;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "index"    # I

    .prologue
    .line 138
    instance-of v0, p2, Lcom/airbnb/android/react/maps/AirMapCallout;

    if-eqz v0, :cond_0

    .line 139
    check-cast p2, Lcom/airbnb/android/react/maps/AirMapCallout;

    .end local p2    # "child":Landroid/view/View;
    invoke-virtual {p1, p2}, Lcom/airbnb/android/react/maps/AirMapMarker;->setCalloutView(Lcom/airbnb/android/react/maps/AirMapCallout;)V

    .line 144
    :goto_0
    return-void

    .line 141
    .restart local p2    # "child":Landroid/view/View;
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/facebook/react/uimanager/ViewGroupManager;->addView(Landroid/view/ViewGroup;Landroid/view/View;I)V

    .line 142
    invoke-virtual {p1}, Lcom/airbnb/android/react/maps/AirMapMarker;->update()V

    goto :goto_0
.end method

.method public createShadowNodeInstance()Lcom/facebook/react/uimanager/LayoutShadowNode;
    .locals 1

    .prologue
    .line 199
    new-instance v0, Lcom/airbnb/android/react/maps/SizeReportingShadowNode;

    invoke-direct {v0}, Lcom/airbnb/android/react/maps/SizeReportingShadowNode;-><init>()V

    return-object v0
.end method

.method public bridge synthetic createShadowNodeInstance()Lcom/facebook/react/uimanager/ReactShadowNode;
    .locals 1

    .prologue
    .line 20
    invoke-virtual {p0}, Lcom/airbnb/android/react/maps/AirMapMarkerManager;->createShadowNodeInstance()Lcom/facebook/react/uimanager/LayoutShadowNode;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Landroid/view/View;
    .locals 1

    .prologue
    .line 20
    invoke-virtual {p0, p1}, Lcom/airbnb/android/react/maps/AirMapMarkerManager;->createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Lcom/airbnb/android/react/maps/AirMapMarker;

    move-result-object v0

    return-object v0
.end method

.method public createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Lcom/airbnb/android/react/maps/AirMapMarker;
    .locals 1
    .param p1, "context"    # Lcom/facebook/react/uimanager/ThemedReactContext;

    .prologue
    .line 35
    new-instance v0, Lcom/airbnb/android/react/maps/AirMapMarker;

    invoke-direct {v0, p1}, Lcom/airbnb/android/react/maps/AirMapMarker;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getCommandsMap()Ljava/util/Map;
    .locals 4
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
    .line 155
    const-string v0, "showCallout"

    const/4 v1, 0x1

    .line 156
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "hideCallout"

    const/4 v3, 0x2

    .line 157
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 155
    invoke-static {v0, v1, v2, v3}, Lcom/facebook/react/common/MapBuilder;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getExportedCustomDirectEventTypeConstants()Ljava/util/Map;
    .locals 12
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 177
    const-string v0, "onPress"

    const-string v1, "registrationName"

    const-string v2, "onPress"

    .line 178
    invoke-static {v1, v2}, Lcom/facebook/react/common/MapBuilder;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    const-string v2, "onCalloutPress"

    const-string v3, "registrationName"

    const-string v4, "onCalloutPress"

    .line 179
    invoke-static {v3, v4}, Lcom/facebook/react/common/MapBuilder;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v3

    const-string v4, "onDragStart"

    const-string v5, "registrationName"

    const-string v6, "onDragStart"

    .line 180
    invoke-static {v5, v6}, Lcom/facebook/react/common/MapBuilder;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v5

    const-string v6, "onDrag"

    const-string v7, "registrationName"

    const-string v8, "onDrag"

    .line 181
    invoke-static {v7, v8}, Lcom/facebook/react/common/MapBuilder;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v7

    const-string v8, "onDragEnd"

    const-string v9, "registrationName"

    const-string v11, "onDragEnd"

    .line 182
    invoke-static {v9, v11}, Lcom/facebook/react/common/MapBuilder;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v9

    .line 177
    invoke-static/range {v0 .. v9}, Lcom/facebook/react/common/MapBuilder;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v10

    .line 185
    .local v10, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    const-string v0, "onDragStart"

    const-string v1, "registrationName"

    const-string v2, "onDragStart"

    .line 186
    invoke-static {v1, v2}, Lcom/facebook/react/common/MapBuilder;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    const-string v2, "onDrag"

    const-string v3, "registrationName"

    const-string v4, "onDrag"

    .line 187
    invoke-static {v3, v4}, Lcom/facebook/react/common/MapBuilder;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v3

    const-string v4, "onDragEnd"

    const-string v5, "registrationName"

    const-string v6, "onDragEnd"

    .line 188
    invoke-static {v5, v6}, Lcom/facebook/react/common/MapBuilder;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v5

    .line 185
    invoke-static/range {v0 .. v5}, Lcom/facebook/react/common/MapBuilder;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 191
    return-object v10
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    const-string v0, "AIRMapMarker"

    return-object v0
.end method

.method public bridge synthetic receiveCommand(Landroid/view/View;ILcom/facebook/react/bridge/ReadableArray;)V
    .locals 0
    .param p3    # Lcom/facebook/react/bridge/ReadableArray;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 20
    check-cast p1, Lcom/airbnb/android/react/maps/AirMapMarker;

    invoke-virtual {p0, p1, p2, p3}, Lcom/airbnb/android/react/maps/AirMapMarkerManager;->receiveCommand(Lcom/airbnb/android/react/maps/AirMapMarker;ILcom/facebook/react/bridge/ReadableArray;)V

    return-void
.end method

.method public receiveCommand(Lcom/airbnb/android/react/maps/AirMapMarker;ILcom/facebook/react/bridge/ReadableArray;)V
    .locals 1
    .param p1, "view"    # Lcom/airbnb/android/react/maps/AirMapMarker;
    .param p2, "commandId"    # I
    .param p3, "args"    # Lcom/facebook/react/bridge/ReadableArray;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 163
    packed-switch p2, :pswitch_data_0

    .line 172
    :goto_0
    return-void

    .line 165
    :pswitch_0
    invoke-virtual {p1}, Lcom/airbnb/android/react/maps/AirMapMarker;->getFeature()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Marker;->showInfoWindow()V

    goto :goto_0

    .line 169
    :pswitch_1
    invoke-virtual {p1}, Lcom/airbnb/android/react/maps/AirMapMarker;->getFeature()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Marker;->hideInfoWindow()V

    goto :goto_0

    .line 163
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public bridge synthetic removeViewAt(Landroid/view/ViewGroup;I)V
    .locals 0

    .prologue
    .line 20
    check-cast p1, Lcom/airbnb/android/react/maps/AirMapMarker;

    invoke-virtual {p0, p1, p2}, Lcom/airbnb/android/react/maps/AirMapMarkerManager;->removeViewAt(Lcom/airbnb/android/react/maps/AirMapMarker;I)V

    return-void
.end method

.method public removeViewAt(Lcom/airbnb/android/react/maps/AirMapMarker;I)V
    .locals 0
    .param p1, "parent"    # Lcom/airbnb/android/react/maps/AirMapMarker;
    .param p2, "index"    # I

    .prologue
    .line 148
    invoke-super {p0, p1, p2}, Lcom/facebook/react/uimanager/ViewGroupManager;->removeViewAt(Landroid/view/ViewGroup;I)V

    .line 149
    invoke-virtual {p1}, Lcom/airbnb/android/react/maps/AirMapMarker;->update()V

    .line 150
    return-void
.end method

.method public setAnchor(Lcom/airbnb/android/react/maps/AirMapMarker;Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 5
    .param p1, "view"    # Lcom/airbnb/android/react/maps/AirMapMarker;
    .param p2, "map"    # Lcom/facebook/react/bridge/ReadableMap;
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "anchor"
    .end annotation

    .prologue
    .line 75
    if-eqz p2, :cond_0

    const-string v4, "x"

    invoke-interface {p2, v4}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "x"

    invoke-interface {p2, v4}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 76
    .local v0, "x":D
    :goto_0
    if-eqz p2, :cond_1

    const-string v4, "y"

    invoke-interface {p2, v4}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "y"

    invoke-interface {p2, v4}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    .line 77
    .local v2, "y":D
    :goto_1
    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/airbnb/android/react/maps/AirMapMarker;->setAnchor(DD)V

    .line 78
    return-void

    .line 75
    .end local v0    # "x":D
    .end local v2    # "y":D
    :cond_0
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    goto :goto_0

    .line 76
    .restart local v0    # "x":D
    :cond_1
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    goto :goto_1
.end method

.method public setCalloutAnchor(Lcom/airbnb/android/react/maps/AirMapMarker;Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 5
    .param p1, "view"    # Lcom/airbnb/android/react/maps/AirMapMarker;
    .param p2, "map"    # Lcom/facebook/react/bridge/ReadableMap;
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "calloutAnchor"
    .end annotation

    .prologue
    .line 83
    if-eqz p2, :cond_0

    const-string v4, "x"

    invoke-interface {p2, v4}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "x"

    invoke-interface {p2, v4}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 84
    .local v0, "x":D
    :goto_0
    if-eqz p2, :cond_1

    const-string v4, "y"

    invoke-interface {p2, v4}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "y"

    invoke-interface {p2, v4}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    .line 85
    .local v2, "y":D
    :goto_1
    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/airbnb/android/react/maps/AirMapMarker;->setCalloutAnchor(DD)V

    .line 86
    return-void

    .line 83
    .end local v0    # "x":D
    .end local v2    # "y":D
    :cond_0
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    goto :goto_0

    .line 84
    .restart local v0    # "x":D
    :cond_1
    const-wide/16 v2, 0x0

    goto :goto_1
.end method

.method public setCoordinate(Lcom/airbnb/android/react/maps/AirMapMarker;Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 0
    .param p1, "view"    # Lcom/airbnb/android/react/maps/AirMapMarker;
    .param p2, "map"    # Lcom/facebook/react/bridge/ReadableMap;
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "coordinate"
    .end annotation

    .prologue
    .line 40
    invoke-virtual {p1, p2}, Lcom/airbnb/android/react/maps/AirMapMarker;->setCoordinate(Lcom/facebook/react/bridge/ReadableMap;)V

    .line 41
    return-void
.end method

.method public setDescription(Lcom/airbnb/android/react/maps/AirMapMarker;Ljava/lang/String;)V
    .locals 0
    .param p1, "view"    # Lcom/airbnb/android/react/maps/AirMapMarker;
    .param p2, "description"    # Ljava/lang/String;
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "description"
    .end annotation

    .prologue
    .line 55
    invoke-virtual {p1, p2}, Lcom/airbnb/android/react/maps/AirMapMarker;->setSnippet(Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method public setDraggable(Lcom/airbnb/android/react/maps/AirMapMarker;Z)V
    .locals 0
    .param p1, "view"    # Lcom/airbnb/android/react/maps/AirMapMarker;
    .param p2, "draggable"    # Z
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultBoolean = false
        name = "draggable"
    .end annotation

    .prologue
    .line 116
    invoke-virtual {p1, p2}, Lcom/airbnb/android/react/maps/AirMapMarker;->setDraggable(Z)V

    .line 117
    return-void
.end method

.method public setFlat(Lcom/airbnb/android/react/maps/AirMapMarker;Z)V
    .locals 0
    .param p1, "view"    # Lcom/airbnb/android/react/maps/AirMapMarker;
    .param p2, "flat"    # Z
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultBoolean = false
        name = "flat"
    .end annotation

    .prologue
    .line 111
    invoke-virtual {p1, p2}, Lcom/airbnb/android/react/maps/AirMapMarker;->setFlat(Z)V

    .line 112
    return-void
.end method

.method public setIdentifier(Lcom/airbnb/android/react/maps/AirMapMarker;Ljava/lang/String;)V
    .locals 0
    .param p1, "view"    # Lcom/airbnb/android/react/maps/AirMapMarker;
    .param p2, "identifier"    # Ljava/lang/String;
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "identifier"
    .end annotation

    .prologue
    .line 50
    invoke-virtual {p1, p2}, Lcom/airbnb/android/react/maps/AirMapMarker;->setIdentifier(Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method public setImage(Lcom/airbnb/android/react/maps/AirMapMarker;Ljava/lang/String;)V
    .locals 0
    .param p1, "view"    # Lcom/airbnb/android/react/maps/AirMapMarker;
    .param p2, "source"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "image"
    .end annotation

    .prologue
    .line 90
    invoke-virtual {p1, p2}, Lcom/airbnb/android/react/maps/AirMapMarker;->setImage(Ljava/lang/String;)V

    .line 91
    return-void
.end method

.method public setMarkerRotation(Lcom/airbnb/android/react/maps/AirMapMarker;F)V
    .locals 0
    .param p1, "view"    # Lcom/airbnb/android/react/maps/AirMapMarker;
    .param p2, "rotation"    # F
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultFloat = 0.0f
        name = "rotation"
    .end annotation

    .prologue
    .line 106
    invoke-virtual {p1, p2}, Lcom/airbnb/android/react/maps/AirMapMarker;->setRotation(F)V

    .line 107
    return-void
.end method

.method public bridge synthetic setOpacity(Landroid/view/View;F)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultFloat = 1.0f
        name = "opacity"
    .end annotation

    .prologue
    .line 20
    check-cast p1, Lcom/airbnb/android/react/maps/AirMapMarker;

    invoke-virtual {p0, p1, p2}, Lcom/airbnb/android/react/maps/AirMapMarkerManager;->setOpacity(Lcom/airbnb/android/react/maps/AirMapMarker;F)V

    return-void
.end method

.method public setOpacity(Lcom/airbnb/android/react/maps/AirMapMarker;F)V
    .locals 0
    .param p1, "view"    # Lcom/airbnb/android/react/maps/AirMapMarker;
    .param p2, "opacity"    # F
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultFloat = 1.0f
        name = "opacity"
    .end annotation

    .prologue
    .line 130
    invoke-super {p0, p1, p2}, Lcom/facebook/react/uimanager/ViewGroupManager;->setOpacity(Landroid/view/View;F)V

    .line 131
    invoke-virtual {p1, p2}, Lcom/airbnb/android/react/maps/AirMapMarker;->setOpacity(F)V

    .line 132
    return-void
.end method

.method public setPinColor(Lcom/airbnb/android/react/maps/AirMapMarker;I)V
    .locals 2
    .param p1, "view"    # Lcom/airbnb/android/react/maps/AirMapMarker;
    .param p2, "pinColor"    # I
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        customType = "Color"
        defaultInt = -0x10000
        name = "pinColor"
    .end annotation

    .prologue
    .line 98
    const/4 v1, 0x3

    new-array v0, v1, [F

    .line 99
    .local v0, "hsv":[F
    invoke-static {p2, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 101
    const/4 v1, 0x0

    aget v1, v0, v1

    invoke-virtual {p1, v1}, Lcom/airbnb/android/react/maps/AirMapMarker;->setMarkerHue(F)V

    .line 102
    return-void
.end method

.method public setTitle(Lcom/airbnb/android/react/maps/AirMapMarker;Ljava/lang/String;)V
    .locals 0
    .param p1, "view"    # Lcom/airbnb/android/react/maps/AirMapMarker;
    .param p2, "title"    # Ljava/lang/String;
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "title"
    .end annotation

    .prologue
    .line 45
    invoke-virtual {p1, p2}, Lcom/airbnb/android/react/maps/AirMapMarker;->setTitle(Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method public bridge synthetic setZIndex(Landroid/view/View;F)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultFloat = 0.0f
        name = "zIndex"
    .end annotation

    .prologue
    .line 20
    check-cast p1, Lcom/airbnb/android/react/maps/AirMapMarker;

    invoke-virtual {p0, p1, p2}, Lcom/airbnb/android/react/maps/AirMapMarkerManager;->setZIndex(Lcom/airbnb/android/react/maps/AirMapMarker;F)V

    return-void
.end method

.method public setZIndex(Lcom/airbnb/android/react/maps/AirMapMarker;F)V
    .locals 1
    .param p1, "view"    # Lcom/airbnb/android/react/maps/AirMapMarker;
    .param p2, "zIndex"    # F
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultFloat = 0.0f
        name = "zIndex"
    .end annotation

    .prologue
    .line 122
    invoke-super {p0, p1, p2}, Lcom/facebook/react/uimanager/ViewGroupManager;->setZIndex(Landroid/view/View;F)V

    .line 123
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 124
    .local v0, "integerZIndex":I
    invoke-virtual {p1, v0}, Lcom/airbnb/android/react/maps/AirMapMarker;->setZIndex(I)V

    .line 125
    return-void
.end method

.method public bridge synthetic updateExtraData(Landroid/view/View;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 20
    check-cast p1, Lcom/airbnb/android/react/maps/AirMapMarker;

    invoke-virtual {p0, p1, p2}, Lcom/airbnb/android/react/maps/AirMapMarkerManager;->updateExtraData(Lcom/airbnb/android/react/maps/AirMapMarker;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic updateExtraData(Landroid/view/ViewGroup;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 20
    check-cast p1, Lcom/airbnb/android/react/maps/AirMapMarker;

    invoke-virtual {p0, p1, p2}, Lcom/airbnb/android/react/maps/AirMapMarkerManager;->updateExtraData(Lcom/airbnb/android/react/maps/AirMapMarker;Ljava/lang/Object;)V

    return-void
.end method

.method public updateExtraData(Lcom/airbnb/android/react/maps/AirMapMarker;Ljava/lang/Object;)V
    .locals 5
    .param p1, "view"    # Lcom/airbnb/android/react/maps/AirMapMarker;
    .param p2, "extraData"    # Ljava/lang/Object;

    .prologue
    .line 206
    move-object v0, p2

    check-cast v0, Ljava/util/HashMap;

    .line 207
    .local v0, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Float;>;"
    const-string v3, "width"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 208
    .local v2, "width":F
    const-string v3, "height"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 209
    .local v1, "height":F
    float-to-int v3, v2

    float-to-int v4, v1

    invoke-virtual {p1, v3, v4}, Lcom/airbnb/android/react/maps/AirMapMarker;->update(II)V

    .line 210
    return-void
.end method
