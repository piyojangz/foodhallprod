.class public Lcom/airbnb/android/airmapview/AirMapView;
.super Landroid/widget/FrameLayout;
.source "AirMapView.java"

# interfaces
.implements Lcom/airbnb/android/airmapview/listeners/OnCameraChangeListener;
.implements Lcom/airbnb/android/airmapview/listeners/OnMapClickListener;
.implements Lcom/airbnb/android/airmapview/listeners/OnMapMarkerDragListener;
.implements Lcom/airbnb/android/airmapview/listeners/OnMapMarkerClickListener;
.implements Lcom/airbnb/android/airmapview/listeners/OnMapLoadedListener;
.implements Lcom/airbnb/android/airmapview/listeners/OnInfoWindowClickListener;


# static fields
.field private static final INVALID_ZOOM:I = -0x1


# instance fields
.field private mOnCameraMoveTriggered:Z

.field protected mapInterface:Lcom/airbnb/android/airmapview/AirMapInterface;

.field private onCameraChangeListener:Lcom/airbnb/android/airmapview/listeners/OnCameraChangeListener;

.field private onCameraMoveListener:Lcom/airbnb/android/airmapview/listeners/OnCameraMoveListener;

.field private onInfoWindowClickListener:Lcom/airbnb/android/airmapview/listeners/OnInfoWindowClickListener;

.field private onMapClickListener:Lcom/airbnb/android/airmapview/listeners/OnMapClickListener;

.field private onMapInitializedListener:Lcom/airbnb/android/airmapview/listeners/OnMapInitializedListener;

.field private onMapMarkerClickListener:Lcom/airbnb/android/airmapview/listeners/OnMapMarkerClickListener;

.field private onMapMarkerDragListener:Lcom/airbnb/android/airmapview/listeners/OnMapMarkerDragListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 47
    invoke-direct {p0}, Lcom/airbnb/android/airmapview/AirMapView;->inflateView()V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    invoke-direct {p0}, Lcom/airbnb/android/airmapview/AirMapView;->inflateView()V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    invoke-direct {p0}, Lcom/airbnb/android/airmapview/AirMapView;->inflateView()V

    .line 58
    return-void
.end method

.method private inflateView()V
    .locals 2

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/airbnb/android/airmapview/AirMapView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/airbnb/android/airmapview/R$layout;->map_view:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 62
    return-void
.end method


# virtual methods
.method public addMarker(Lcom/airbnb/android/airmapview/AirMapMarker;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/android/airmapview/AirMapMarker",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 324
    .local p1, "marker":Lcom/airbnb/android/airmapview/AirMapMarker;, "Lcom/airbnb/android/airmapview/AirMapMarker<*>;"
    invoke-virtual {p0}, Lcom/airbnb/android/airmapview/AirMapView;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/airbnb/android/airmapview/AirMapView;->mapInterface:Lcom/airbnb/android/airmapview/AirMapInterface;

    invoke-interface {v0, p1}, Lcom/airbnb/android/airmapview/AirMapInterface;->addMarker(Lcom/airbnb/android/airmapview/AirMapMarker;)V

    .line 326
    const/4 v0, 0x1

    .line 328
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public addPolygon(Lcom/airbnb/android/airmapview/AirMapPolygon;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/airbnb/android/airmapview/AirMapPolygon",
            "<TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 290
    .local p1, "polygon":Lcom/airbnb/android/airmapview/AirMapPolygon;, "Lcom/airbnb/android/airmapview/AirMapPolygon<TT;>;"
    invoke-virtual {p0}, Lcom/airbnb/android/airmapview/AirMapView;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/airbnb/android/airmapview/AirMapView;->mapInterface:Lcom/airbnb/android/airmapview/AirMapInterface;

    invoke-interface {v0, p1}, Lcom/airbnb/android/airmapview/AirMapInterface;->addPolygon(Lcom/airbnb/android/airmapview/AirMapPolygon;)V

    .line 292
    const/4 v0, 0x1

    .line 294
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public addPolyline(Lcom/airbnb/android/airmapview/AirMapPolyline;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/airbnb/android/airmapview/AirMapPolyline",
            "<TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 270
    .local p1, "polyline":Lcom/airbnb/android/airmapview/AirMapPolyline;, "Lcom/airbnb/android/airmapview/AirMapPolyline<TT;>;"
    invoke-virtual {p0}, Lcom/airbnb/android/airmapview/AirMapView;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/airbnb/android/airmapview/AirMapView;->mapInterface:Lcom/airbnb/android/airmapview/AirMapInterface;

    invoke-interface {v0, p1}, Lcom/airbnb/android/airmapview/AirMapInterface;->addPolyline(Lcom/airbnb/android/airmapview/AirMapPolyline;)V

    .line 272
    const/4 v0, 0x1

    .line 274
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public animateCenter(Lcom/google/android/gms/maps/model/LatLng;)Z
    .locals 1
    .param p1, "latLng"    # Lcom/google/android/gms/maps/model/LatLng;

    .prologue
    .line 159
    invoke-virtual {p0}, Lcom/airbnb/android/airmapview/AirMapView;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/airbnb/android/airmapview/AirMapView;->mapInterface:Lcom/airbnb/android/airmapview/AirMapInterface;

    invoke-interface {v0, p1}, Lcom/airbnb/android/airmapview/AirMapInterface;->animateCenter(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 161
    const/4 v0, 0x1

    .line 163
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public animateCenterZoom(Lcom/google/android/gms/maps/model/LatLng;I)Z
    .locals 1
    .param p1, "latLng"    # Lcom/google/android/gms/maps/model/LatLng;
    .param p2, "zoom"    # I

    .prologue
    .line 183
    invoke-virtual {p0}, Lcom/airbnb/android/airmapview/AirMapView;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/airbnb/android/airmapview/AirMapView;->mapInterface:Lcom/airbnb/android/airmapview/AirMapInterface;

    invoke-interface {v0, p1, p2}, Lcom/airbnb/android/airmapview/AirMapInterface;->animateCenterZoom(Lcom/google/android/gms/maps/model/LatLng;I)V

    .line 185
    const/4 v0, 0x1

    .line 187
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public clearGeoJsonLayer()V
    .locals 1

    .prologue
    .line 313
    invoke-virtual {p0}, Lcom/airbnb/android/airmapview/AirMapView;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 317
    :goto_0
    return-void

    .line 316
    :cond_0
    iget-object v0, p0, Lcom/airbnb/android/airmapview/AirMapView;->mapInterface:Lcom/airbnb/android/airmapview/AirMapInterface;

    invoke-interface {v0}, Lcom/airbnb/android/airmapview/AirMapInterface;->clearGeoJsonLayer()V

    goto :goto_0
.end method

.method public clearMarkers()V
    .locals 1

    .prologue
    .line 264
    invoke-virtual {p0}, Lcom/airbnb/android/airmapview/AirMapView;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/airbnb/android/airmapview/AirMapView;->mapInterface:Lcom/airbnb/android/airmapview/AirMapInterface;

    invoke-interface {v0}, Lcom/airbnb/android/airmapview/AirMapInterface;->clearMarkers()V

    .line 267
    :cond_0
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x1

    .line 100
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 101
    iget-object v0, p0, Lcom/airbnb/android/airmapview/AirMapView;->onCameraMoveListener:Lcom/airbnb/android/airmapview/listeners/OnCameraMoveListener;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/airbnb/android/airmapview/AirMapView;->mOnCameraMoveTriggered:Z

    if-nez v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/airbnb/android/airmapview/AirMapView;->onCameraMoveListener:Lcom/airbnb/android/airmapview/listeners/OnCameraMoveListener;

    invoke-interface {v0}, Lcom/airbnb/android/airmapview/listeners/OnCameraMoveListener;->onCameraMove()V

    .line 103
    iput-boolean v2, p0, Lcom/airbnb/android/airmapview/AirMapView;->mOnCameraMoveTriggered:Z

    .line 109
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 105
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 106
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/airbnb/android/airmapview/AirMapView;->mOnCameraMoveTriggered:Z

    goto :goto_0
.end method

.method public drawCircle(Lcom/google/android/gms/maps/model/LatLng;I)V
    .locals 1
    .param p1, "latLng"    # Lcom/google/android/gms/maps/model/LatLng;
    .param p2, "radius"    # I

    .prologue
    .line 211
    invoke-virtual {p0}, Lcom/airbnb/android/airmapview/AirMapView;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/airbnb/android/airmapview/AirMapView;->mapInterface:Lcom/airbnb/android/airmapview/AirMapInterface;

    invoke-interface {v0, p1, p2}, Lcom/airbnb/android/airmapview/AirMapInterface;->drawCircle(Lcom/google/android/gms/maps/model/LatLng;I)V

    .line 214
    :cond_0
    return-void
.end method

.method public drawCircle(Lcom/google/android/gms/maps/model/LatLng;II)V
    .locals 1
    .param p1, "latLng"    # Lcom/google/android/gms/maps/model/LatLng;
    .param p2, "radius"    # I
    .param p3, "strokeColor"    # I

    .prologue
    .line 217
    invoke-virtual {p0}, Lcom/airbnb/android/airmapview/AirMapView;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/airbnb/android/airmapview/AirMapView;->mapInterface:Lcom/airbnb/android/airmapview/AirMapInterface;

    invoke-interface {v0, p1, p2, p3}, Lcom/airbnb/android/airmapview/AirMapInterface;->drawCircle(Lcom/google/android/gms/maps/model/LatLng;II)V

    .line 220
    :cond_0
    return-void
.end method

.method public drawCircle(Lcom/google/android/gms/maps/model/LatLng;III)V
    .locals 1
    .param p1, "latLng"    # Lcom/google/android/gms/maps/model/LatLng;
    .param p2, "radius"    # I
    .param p3, "strokeColor"    # I
    .param p4, "strokeWidth"    # I

    .prologue
    .line 223
    invoke-virtual {p0}, Lcom/airbnb/android/airmapview/AirMapView;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/airbnb/android/airmapview/AirMapView;->mapInterface:Lcom/airbnb/android/airmapview/AirMapInterface;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/airbnb/android/airmapview/AirMapInterface;->drawCircle(Lcom/google/android/gms/maps/model/LatLng;III)V

    .line 226
    :cond_0
    return-void
.end method

.method public drawCircle(Lcom/google/android/gms/maps/model/LatLng;IIII)V
    .locals 6
    .param p1, "latLng"    # Lcom/google/android/gms/maps/model/LatLng;
    .param p2, "radius"    # I
    .param p3, "strokeColor"    # I
    .param p4, "strokeWidth"    # I
    .param p5, "fillColor"    # I

    .prologue
    .line 230
    invoke-virtual {p0}, Lcom/airbnb/android/airmapview/AirMapView;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/airbnb/android/airmapview/AirMapView;->mapInterface:Lcom/airbnb/android/airmapview/AirMapInterface;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/airbnb/android/airmapview/AirMapInterface;->drawCircle(Lcom/google/android/gms/maps/model/LatLng;IIII)V

    .line 233
    :cond_0
    return-void
.end method

.method public getCenter()Lcom/google/android/gms/maps/model/LatLng;
    .locals 1

    .prologue
    .line 144
    invoke-virtual {p0}, Lcom/airbnb/android/airmapview/AirMapView;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/airbnb/android/airmapview/AirMapView;->mapInterface:Lcom/airbnb/android/airmapview/AirMapInterface;

    invoke-interface {v0}, Lcom/airbnb/android/airmapview/AirMapInterface;->getCenter()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    .line 147
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getMapInterface()Lcom/airbnb/android/airmapview/AirMapInterface;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/airbnb/android/airmapview/AirMapView;->mapInterface:Lcom/airbnb/android/airmapview/AirMapInterface;

    return-object v0
.end method

.method public getMapMarkerScreenLocation(Lcom/google/android/gms/maps/model/LatLng;Lcom/airbnb/android/airmapview/listeners/OnLatLngScreenLocationCallback;)V
    .locals 1
    .param p1, "latLng"    # Lcom/google/android/gms/maps/model/LatLng;
    .param p2, "callback"    # Lcom/airbnb/android/airmapview/listeners/OnLatLngScreenLocationCallback;

    .prologue
    .line 205
    invoke-virtual {p0}, Lcom/airbnb/android/airmapview/AirMapView;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/airbnb/android/airmapview/AirMapView;->mapInterface:Lcom/airbnb/android/airmapview/AirMapInterface;

    invoke-interface {v0, p1, p2}, Lcom/airbnb/android/airmapview/AirMapInterface;->getScreenLocation(Lcom/google/android/gms/maps/model/LatLng;Lcom/airbnb/android/airmapview/listeners/OnLatLngScreenLocationCallback;)V

    .line 208
    :cond_0
    return-void
.end method

.method public getScreenBounds(Lcom/airbnb/android/airmapview/listeners/OnMapBoundsCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/airbnb/android/airmapview/listeners/OnMapBoundsCallback;

    .prologue
    .line 199
    invoke-virtual {p0}, Lcom/airbnb/android/airmapview/AirMapView;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/airbnb/android/airmapview/AirMapView;->mapInterface:Lcom/airbnb/android/airmapview/AirMapInterface;

    invoke-interface {v0, p1}, Lcom/airbnb/android/airmapview/AirMapInterface;->getMapScreenBounds(Lcom/airbnb/android/airmapview/listeners/OnMapBoundsCallback;)V

    .line 202
    :cond_0
    return-void
.end method

.method public getZoom()I
    .locals 1

    .prologue
    .line 136
    invoke-virtual {p0}, Lcom/airbnb/android/airmapview/AirMapView;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/airbnb/android/airmapview/AirMapView;->mapInterface:Lcom/airbnb/android/airmapview/AirMapInterface;

    invoke-interface {v0}, Lcom/airbnb/android/airmapview/AirMapInterface;->getZoom()I

    move-result v0

    .line 140
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public initialize(Landroid/support/v4/app/FragmentManager;)V
    .locals 3
    .param p1, "fragmentManager"    # Landroid/support/v4/app/FragmentManager;

    .prologue
    .line 85
    sget v1, Lcom/airbnb/android/airmapview/R$id;->map_frame:I

    .line 86
    invoke-virtual {p1, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/airmapview/AirMapInterface;

    .line 88
    .local v0, "mapInterface":Lcom/airbnb/android/airmapview/AirMapInterface;
    if-eqz v0, :cond_0

    .line 89
    invoke-virtual {p0, p1, v0}, Lcom/airbnb/android/airmapview/AirMapView;->initialize(Landroid/support/v4/app/FragmentManager;Lcom/airbnb/android/airmapview/AirMapInterface;)V

    .line 93
    :goto_0
    return-void

    .line 91
    :cond_0
    new-instance v1, Lcom/airbnb/android/airmapview/DefaultAirMapViewBuilder;

    invoke-virtual {p0}, Lcom/airbnb/android/airmapview/AirMapView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/airbnb/android/airmapview/DefaultAirMapViewBuilder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/airbnb/android/airmapview/DefaultAirMapViewBuilder;->builder()Lcom/airbnb/android/airmapview/AirMapViewBuilder;

    move-result-object v1

    invoke-interface {v1}, Lcom/airbnb/android/airmapview/AirMapViewBuilder;->build()Lcom/airbnb/android/airmapview/AirMapInterface;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/airbnb/android/airmapview/AirMapView;->initialize(Landroid/support/v4/app/FragmentManager;Lcom/airbnb/android/airmapview/AirMapInterface;)V

    goto :goto_0
.end method

.method public initialize(Landroid/support/v4/app/FragmentManager;Lcom/airbnb/android/airmapview/AirMapInterface;)V
    .locals 3
    .param p1, "fragmentManager"    # Landroid/support/v4/app/FragmentManager;
    .param p2, "mapInterface"    # Lcom/airbnb/android/airmapview/AirMapInterface;

    .prologue
    .line 65
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 66
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Either mapInterface or fragmentManager is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_1
    iput-object p2, p0, Lcom/airbnb/android/airmapview/AirMapView;->mapInterface:Lcom/airbnb/android/airmapview/AirMapInterface;

    .line 70
    iget-object v0, p0, Lcom/airbnb/android/airmapview/AirMapView;->mapInterface:Lcom/airbnb/android/airmapview/AirMapInterface;

    invoke-interface {v0, p0}, Lcom/airbnb/android/airmapview/AirMapInterface;->setOnMapLoadedListener(Lcom/airbnb/android/airmapview/listeners/OnMapLoadedListener;)V

    .line 72
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 73
    invoke-virtual {p0}, Lcom/airbnb/android/airmapview/AirMapView;->getId()I

    move-result v2

    iget-object v0, p0, Lcom/airbnb/android/airmapview/AirMapView;->mapInterface:Lcom/airbnb/android/airmapview/AirMapInterface;

    check-cast v0, Landroid/support/v4/app/Fragment;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 74
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 76
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->executePendingTransactions()Z

    .line 77
    return-void
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lcom/airbnb/android/airmapview/AirMapView;->mapInterface:Lcom/airbnb/android/airmapview/AirMapInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/airbnb/android/airmapview/AirMapView;->mapInterface:Lcom/airbnb/android/airmapview/AirMapInterface;

    invoke-interface {v0}, Lcom/airbnb/android/airmapview/AirMapInterface;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public moveMarker(Lcom/airbnb/android/airmapview/AirMapMarker;Lcom/google/android/gms/maps/model/LatLng;)Z
    .locals 1
    .param p2, "to"    # Lcom/google/android/gms/maps/model/LatLng;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/android/airmapview/AirMapMarker",
            "<*>;",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 340
    .local p1, "marker":Lcom/airbnb/android/airmapview/AirMapMarker;, "Lcom/airbnb/android/airmapview/AirMapMarker<*>;"
    invoke-virtual {p0}, Lcom/airbnb/android/airmapview/AirMapView;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/airbnb/android/airmapview/AirMapView;->mapInterface:Lcom/airbnb/android/airmapview/AirMapInterface;

    invoke-interface {v0, p1, p2}, Lcom/airbnb/android/airmapview/AirMapInterface;->moveMarker(Lcom/airbnb/android/airmapview/AirMapMarker;Lcom/google/android/gms/maps/model/LatLng;)V

    .line 342
    const/4 v0, 0x1

    .line 344
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCameraChanged(Lcom/google/android/gms/maps/model/LatLng;I)V
    .locals 1
    .param p1, "latLng"    # Lcom/google/android/gms/maps/model/LatLng;
    .param p2, "zoom"    # I

    .prologue
    .line 352
    iget-object v0, p0, Lcom/airbnb/android/airmapview/AirMapView;->onCameraChangeListener:Lcom/airbnb/android/airmapview/listeners/OnCameraChangeListener;

    if-eqz v0, :cond_0

    .line 353
    iget-object v0, p0, Lcom/airbnb/android/airmapview/AirMapView;->onCameraChangeListener:Lcom/airbnb/android/airmapview/listeners/OnCameraChangeListener;

    invoke-interface {v0, p1, p2}, Lcom/airbnb/android/airmapview/listeners/OnCameraChangeListener;->onCameraChanged(Lcom/google/android/gms/maps/model/LatLng;I)V

    .line 355
    :cond_0
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 130
    invoke-virtual {p0}, Lcom/airbnb/android/airmapview/AirMapView;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/airbnb/android/airmapview/AirMapView;->mapInterface:Lcom/airbnb/android/airmapview/AirMapInterface;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/airbnb/android/airmapview/AirMapInterface;->setMyLocationEnabled(Z)V

    .line 133
    :cond_0
    return-void
.end method

.method public onInfoWindowClick(Lcom/airbnb/android/airmapview/AirMapMarker;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/android/airmapview/AirMapMarker",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 422
    .local p1, "airMarker":Lcom/airbnb/android/airmapview/AirMapMarker;, "Lcom/airbnb/android/airmapview/AirMapMarker<*>;"
    iget-object v0, p0, Lcom/airbnb/android/airmapview/AirMapView;->onInfoWindowClickListener:Lcom/airbnb/android/airmapview/listeners/OnInfoWindowClickListener;

    if-eqz v0, :cond_0

    .line 423
    iget-object v0, p0, Lcom/airbnb/android/airmapview/AirMapView;->onInfoWindowClickListener:Lcom/airbnb/android/airmapview/listeners/OnInfoWindowClickListener;

    invoke-interface {v0, p1}, Lcom/airbnb/android/airmapview/listeners/OnInfoWindowClickListener;->onInfoWindowClick(Lcom/airbnb/android/airmapview/AirMapMarker;)V

    .line 425
    :cond_0
    return-void
.end method

.method public onMapClick(Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 1
    .param p1, "latLng"    # Lcom/google/android/gms/maps/model/LatLng;

    .prologue
    .line 358
    iget-object v0, p0, Lcom/airbnb/android/airmapview/AirMapView;->onMapClickListener:Lcom/airbnb/android/airmapview/listeners/OnMapClickListener;

    if-eqz v0, :cond_0

    .line 359
    iget-object v0, p0, Lcom/airbnb/android/airmapview/AirMapView;->onMapClickListener:Lcom/airbnb/android/airmapview/listeners/OnMapClickListener;

    invoke-interface {v0, p1}, Lcom/airbnb/android/airmapview/listeners/OnMapClickListener;->onMapClick(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 361
    :cond_0
    return-void
.end method

.method public onMapLoaded()V
    .locals 1

    .prologue
    .line 406
    invoke-virtual {p0}, Lcom/airbnb/android/airmapview/AirMapView;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 407
    iget-object v0, p0, Lcom/airbnb/android/airmapview/AirMapView;->mapInterface:Lcom/airbnb/android/airmapview/AirMapInterface;

    invoke-interface {v0, p0}, Lcom/airbnb/android/airmapview/AirMapInterface;->setOnCameraChangeListener(Lcom/airbnb/android/airmapview/listeners/OnCameraChangeListener;)V

    .line 408
    iget-object v0, p0, Lcom/airbnb/android/airmapview/AirMapView;->mapInterface:Lcom/airbnb/android/airmapview/AirMapInterface;

    invoke-interface {v0, p0}, Lcom/airbnb/android/airmapview/AirMapInterface;->setOnMapClickListener(Lcom/airbnb/android/airmapview/listeners/OnMapClickListener;)V

    .line 409
    iget-object v0, p0, Lcom/airbnb/android/airmapview/AirMapView;->mapInterface:Lcom/airbnb/android/airmapview/AirMapInterface;

    invoke-interface {v0, p0}, Lcom/airbnb/android/airmapview/AirMapInterface;->setOnMarkerClickListener(Lcom/airbnb/android/airmapview/listeners/OnMapMarkerClickListener;)V

    .line 410
    iget-object v0, p0, Lcom/airbnb/android/airmapview/AirMapView;->mapInterface:Lcom/airbnb/android/airmapview/AirMapInterface;

    invoke-interface {v0, p0}, Lcom/airbnb/android/airmapview/AirMapInterface;->setOnMarkerDragListener(Lcom/airbnb/android/airmapview/listeners/OnMapMarkerDragListener;)V

    .line 411
    iget-object v0, p0, Lcom/airbnb/android/airmapview/AirMapView;->mapInterface:Lcom/airbnb/android/airmapview/AirMapInterface;

    invoke-interface {v0, p0}, Lcom/airbnb/android/airmapview/AirMapInterface;->setOnInfoWindowClickListener(Lcom/airbnb/android/airmapview/listeners/OnInfoWindowClickListener;)V

    .line 413
    iget-object v0, p0, Lcom/airbnb/android/airmapview/AirMapView;->onMapInitializedListener:Lcom/airbnb/android/airmapview/listeners/OnMapInitializedListener;

    if-eqz v0, :cond_0

    .line 416
    iget-object v0, p0, Lcom/airbnb/android/airmapview/AirMapView;->onMapInitializedListener:Lcom/airbnb/android/airmapview/listeners/OnMapInitializedListener;

    invoke-interface {v0}, Lcom/airbnb/android/airmapview/listeners/OnMapInitializedListener;->onMapInitialized()V

    .line 419
    :cond_0
    return-void
.end method

.method public onMapMarkerClick(Lcom/airbnb/android/airmapview/AirMapMarker;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/android/airmapview/AirMapMarker",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 364
    .local p1, "airMarker":Lcom/airbnb/android/airmapview/AirMapMarker;, "Lcom/airbnb/android/airmapview/AirMapMarker<*>;"
    iget-object v0, p0, Lcom/airbnb/android/airmapview/AirMapView;->onMapMarkerClickListener:Lcom/airbnb/android/airmapview/listeners/OnMapMarkerClickListener;

    if-eqz v0, :cond_0

    .line 365
    iget-object v0, p0, Lcom/airbnb/android/airmapview/AirMapView;->onMapMarkerClickListener:Lcom/airbnb/android/airmapview/listeners/OnMapMarkerClickListener;

    invoke-interface {v0, p1}, Lcom/airbnb/android/airmapview/listeners/OnMapMarkerClickListener;->onMapMarkerClick(Lcom/airbnb/android/airmapview/AirMapMarker;)V

    .line 367
    :cond_0
    return-void
.end method

.method public onMapMarkerDrag(JLcom/google/android/gms/maps/model/LatLng;)V
    .locals 1
    .param p1, "id"    # J
    .param p3, "latLng"    # Lcom/google/android/gms/maps/model/LatLng;

    .prologue
    .line 394
    iget-object v0, p0, Lcom/airbnb/android/airmapview/AirMapView;->onMapMarkerDragListener:Lcom/airbnb/android/airmapview/listeners/OnMapMarkerDragListener;

    if-eqz v0, :cond_0

    .line 395
    iget-object v0, p0, Lcom/airbnb/android/airmapview/AirMapView;->onMapMarkerDragListener:Lcom/airbnb/android/airmapview/listeners/OnMapMarkerDragListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/airbnb/android/airmapview/listeners/OnMapMarkerDragListener;->onMapMarkerDrag(JLcom/google/android/gms/maps/model/LatLng;)V

    .line 397
    :cond_0
    return-void
.end method

.method public onMapMarkerDrag(Lcom/google/android/gms/maps/model/Marker;)V
    .locals 1
    .param p1, "marker"    # Lcom/google/android/gms/maps/model/Marker;

    .prologue
    .line 376
    iget-object v0, p0, Lcom/airbnb/android/airmapview/AirMapView;->onMapMarkerDragListener:Lcom/airbnb/android/airmapview/listeners/OnMapMarkerDragListener;

    if-eqz v0, :cond_0

    .line 377
    iget-object v0, p0, Lcom/airbnb/android/airmapview/AirMapView;->onMapMarkerDragListener:Lcom/airbnb/android/airmapview/listeners/OnMapMarkerDragListener;

    invoke-interface {v0, p1}, Lcom/airbnb/android/airmapview/listeners/OnMapMarkerDragListener;->onMapMarkerDrag(Lcom/google/android/gms/maps/model/Marker;)V

    .line 379
    :cond_0
    return-void
.end method

.method public onMapMarkerDragEnd(JLcom/google/android/gms/maps/model/LatLng;)V
    .locals 1
    .param p1, "id"    # J
    .param p3, "latLng"    # Lcom/google/android/gms/maps/model/LatLng;

    .prologue
    .line 400
    iget-object v0, p0, Lcom/airbnb/android/airmapview/AirMapView;->onMapMarkerDragListener:Lcom/airbnb/android/airmapview/listeners/OnMapMarkerDragListener;

    if-eqz v0, :cond_0

    .line 401
    iget-object v0, p0, Lcom/airbnb/android/airmapview/AirMapView;->onMapMarkerDragListener:Lcom/airbnb/android/airmapview/listeners/OnMapMarkerDragListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/airbnb/android/airmapview/listeners/OnMapMarkerDragListener;->onMapMarkerDragEnd(JLcom/google/android/gms/maps/model/LatLng;)V

    .line 403
    :cond_0
    return-void
.end method

.method public onMapMarkerDragEnd(Lcom/google/android/gms/maps/model/Marker;)V
    .locals 1
    .param p1, "marker"    # Lcom/google/android/gms/maps/model/Marker;

    .prologue
    .line 382
    iget-object v0, p0, Lcom/airbnb/android/airmapview/AirMapView;->onMapMarkerDragListener:Lcom/airbnb/android/airmapview/listeners/OnMapMarkerDragListener;

    if-eqz v0, :cond_0

    .line 383
    iget-object v0, p0, Lcom/airbnb/android/airmapview/AirMapView;->onMapMarkerDragListener:Lcom/airbnb/android/airmapview/listeners/OnMapMarkerDragListener;

    invoke-interface {v0, p1}, Lcom/airbnb/android/airmapview/listeners/OnMapMarkerDragListener;->onMapMarkerDragEnd(Lcom/google/android/gms/maps/model/Marker;)V

    .line 385
    :cond_0
    return-void
.end method

.method public onMapMarkerDragStart(JLcom/google/android/gms/maps/model/LatLng;)V
    .locals 1
    .param p1, "id"    # J
    .param p3, "latLng"    # Lcom/google/android/gms/maps/model/LatLng;

    .prologue
    .line 388
    iget-object v0, p0, Lcom/airbnb/android/airmapview/AirMapView;->onMapMarkerDragListener:Lcom/airbnb/android/airmapview/listeners/OnMapMarkerDragListener;

    if-eqz v0, :cond_0

    .line 389
    iget-object v0, p0, Lcom/airbnb/android/airmapview/AirMapView;->onMapMarkerDragListener:Lcom/airbnb/android/airmapview/listeners/OnMapMarkerDragListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/airbnb/android/airmapview/listeners/OnMapMarkerDragListener;->onMapMarkerDragStart(JLcom/google/android/gms/maps/model/LatLng;)V

    .line 391
    :cond_0
    return-void
.end method

.method public onMapMarkerDragStart(Lcom/google/android/gms/maps/model/Marker;)V
    .locals 1
    .param p1, "marker"    # Lcom/google/android/gms/maps/model/Marker;

    .prologue
    .line 370
    iget-object v0, p0, Lcom/airbnb/android/airmapview/AirMapView;->onMapMarkerDragListener:Lcom/airbnb/android/airmapview/listeners/OnMapMarkerDragListener;

    if-eqz v0, :cond_0

    .line 371
    iget-object v0, p0, Lcom/airbnb/android/airmapview/AirMapView;->onMapMarkerDragListener:Lcom/airbnb/android/airmapview/listeners/OnMapMarkerDragListener;

    invoke-interface {v0, p1}, Lcom/airbnb/android/airmapview/listeners/OnMapMarkerDragListener;->onMapMarkerDragStart(Lcom/google/android/gms/maps/model/Marker;)V

    .line 373
    :cond_0
    return-void
.end method

.method public removeMarker(Lcom/airbnb/android/airmapview/AirMapMarker;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/android/airmapview/AirMapMarker",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 332
    .local p1, "marker":Lcom/airbnb/android/airmapview/AirMapMarker;, "Lcom/airbnb/android/airmapview/AirMapMarker<*>;"
    invoke-virtual {p0}, Lcom/airbnb/android/airmapview/AirMapView;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 333
    iget-object v0, p0, Lcom/airbnb/android/airmapview/AirMapView;->mapInterface:Lcom/airbnb/android/airmapview/AirMapInterface;

    invoke-interface {v0, p1}, Lcom/airbnb/android/airmapview/AirMapInterface;->removeMarker(Lcom/airbnb/android/airmapview/AirMapMarker;)V

    .line 334
    const/4 v0, 0x1

    .line 336
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removePolygon(Lcom/airbnb/android/airmapview/AirMapPolygon;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/airbnb/android/airmapview/AirMapPolygon",
            "<TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 298
    .local p1, "polygon":Lcom/airbnb/android/airmapview/AirMapPolygon;, "Lcom/airbnb/android/airmapview/AirMapPolygon<TT;>;"
    invoke-virtual {p0}, Lcom/airbnb/android/airmapview/AirMapView;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/airbnb/android/airmapview/AirMapView;->mapInterface:Lcom/airbnb/android/airmapview/AirMapInterface;

    invoke-interface {v0, p1}, Lcom/airbnb/android/airmapview/AirMapInterface;->removePolygon(Lcom/airbnb/android/airmapview/AirMapPolygon;)V

    .line 300
    const/4 v0, 0x1

    .line 302
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removePolyline(Lcom/airbnb/android/airmapview/AirMapPolyline;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/airbnb/android/airmapview/AirMapPolyline",
            "<TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 282
    .local p1, "polyline":Lcom/airbnb/android/airmapview/AirMapPolyline;, "Lcom/airbnb/android/airmapview/AirMapPolyline<TT;>;"
    invoke-virtual {p0}, Lcom/airbnb/android/airmapview/AirMapView;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/airbnb/android/airmapview/AirMapView;->mapInterface:Lcom/airbnb/android/airmapview/AirMapInterface;

    invoke-interface {v0, p1}, Lcom/airbnb/android/airmapview/AirMapInterface;->removePolyline(Lcom/airbnb/android/airmapview/AirMapPolyline;)V

    .line 284
    const/4 v0, 0x1

    .line 286
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setBounds(Lcom/google/android/gms/maps/model/LatLngBounds;I)Z
    .locals 1
    .param p1, "latLngBounds"    # Lcom/google/android/gms/maps/model/LatLngBounds;
    .param p2, "boundsPadding"    # I

    .prologue
    .line 191
    invoke-virtual {p0}, Lcom/airbnb/android/airmapview/AirMapView;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/airbnb/android/airmapview/AirMapView;->mapInterface:Lcom/airbnb/android/airmapview/AirMapInterface;

    invoke-interface {v0, p1, p2}, Lcom/airbnb/android/airmapview/AirMapInterface;->setCenter(Lcom/google/android/gms/maps/model/LatLngBounds;I)V

    .line 193
    const/4 v0, 0x1

    .line 195
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCenter(Lcom/google/android/gms/maps/model/LatLng;)Z
    .locals 1
    .param p1, "latLng"    # Lcom/google/android/gms/maps/model/LatLng;

    .prologue
    .line 151
    invoke-virtual {p0}, Lcom/airbnb/android/airmapview/AirMapView;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/airbnb/android/airmapview/AirMapView;->mapInterface:Lcom/airbnb/android/airmapview/AirMapInterface;

    invoke-interface {v0, p1}, Lcom/airbnb/android/airmapview/AirMapInterface;->setCenter(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 153
    const/4 v0, 0x1

    .line 155
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCenterZoom(Lcom/google/android/gms/maps/model/LatLng;I)Z
    .locals 1
    .param p1, "latLng"    # Lcom/google/android/gms/maps/model/LatLng;
    .param p2, "zoom"    # I

    .prologue
    .line 175
    invoke-virtual {p0}, Lcom/airbnb/android/airmapview/AirMapView;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/airbnb/android/airmapview/AirMapView;->mapInterface:Lcom/airbnb/android/airmapview/AirMapInterface;

    invoke-interface {v0, p1, p2}, Lcom/airbnb/android/airmapview/AirMapInterface;->setCenterZoom(Lcom/google/android/gms/maps/model/LatLng;I)V

    .line 177
    const/4 v0, 0x1

    .line 179
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setGeoJsonLayer(Lcom/airbnb/android/airmapview/AirMapGeoJsonLayer;)V
    .locals 1
    .param p1, "layer"    # Lcom/airbnb/android/airmapview/AirMapGeoJsonLayer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 306
    invoke-virtual {p0}, Lcom/airbnb/android/airmapview/AirMapView;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 310
    :goto_0
    return-void

    .line 309
    :cond_0
    iget-object v0, p0, Lcom/airbnb/android/airmapview/AirMapView;->mapInterface:Lcom/airbnb/android/airmapview/AirMapInterface;

    invoke-interface {v0, p1}, Lcom/airbnb/android/airmapview/AirMapInterface;->setGeoJsonLayer(Lcom/airbnb/android/airmapview/AirMapGeoJsonLayer;)V

    goto :goto_0
.end method

.method public setInfoWindowAdapter(Lcom/google/android/gms/maps/GoogleMap$InfoWindowAdapter;Lcom/airbnb/android/airmapview/listeners/InfoWindowCreator;)V
    .locals 1
    .param p1, "adapter"    # Lcom/google/android/gms/maps/GoogleMap$InfoWindowAdapter;
    .param p2, "creator"    # Lcom/airbnb/android/airmapview/listeners/InfoWindowCreator;

    .prologue
    .line 254
    invoke-virtual {p0}, Lcom/airbnb/android/airmapview/AirMapView;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/airbnb/android/airmapview/AirMapView;->mapInterface:Lcom/airbnb/android/airmapview/AirMapInterface;

    invoke-interface {v0, p1, p2}, Lcom/airbnb/android/airmapview/AirMapInterface;->setInfoWindowCreator(Lcom/google/android/gms/maps/GoogleMap$InfoWindowAdapter;Lcom/airbnb/android/airmapview/listeners/InfoWindowCreator;)V

    .line 257
    :cond_0
    return-void
.end method

.method public setMapType(Lcom/airbnb/android/airmapview/MapType;)V
    .locals 1
    .param p1, "mapType"    # Lcom/airbnb/android/airmapview/MapType;

    .prologue
    .line 278
    iget-object v0, p0, Lcom/airbnb/android/airmapview/AirMapView;->mapInterface:Lcom/airbnb/android/airmapview/AirMapInterface;

    invoke-interface {v0, p1}, Lcom/airbnb/android/airmapview/AirMapInterface;->setMapType(Lcom/airbnb/android/airmapview/MapType;)V

    .line 279
    return-void
.end method

.method public setMyLocationEnabled(Z)V
    .locals 1
    .param p1, "trackUserLocation"    # Z

    .prologue
    .line 348
    iget-object v0, p0, Lcom/airbnb/android/airmapview/AirMapView;->mapInterface:Lcom/airbnb/android/airmapview/AirMapInterface;

    invoke-interface {v0, p1}, Lcom/airbnb/android/airmapview/AirMapInterface;->setMyLocationEnabled(Z)V

    .line 349
    return-void
.end method

.method public setOnCameraChangeListener(Lcom/airbnb/android/airmapview/listeners/OnCameraChangeListener;)V
    .locals 0
    .param p1, "onCameraChangeListener"    # Lcom/airbnb/android/airmapview/listeners/OnCameraChangeListener;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/airbnb/android/airmapview/AirMapView;->onCameraChangeListener:Lcom/airbnb/android/airmapview/listeners/OnCameraChangeListener;

    .line 114
    return-void
.end method

.method public setOnCameraMoveListener(Lcom/airbnb/android/airmapview/listeners/OnCameraMoveListener;)V
    .locals 0
    .param p1, "onCameraMoveListener"    # Lcom/airbnb/android/airmapview/listeners/OnCameraMoveListener;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/airbnb/android/airmapview/AirMapView;->onCameraMoveListener:Lcom/airbnb/android/airmapview/listeners/OnCameraMoveListener;

    .line 123
    return-void
.end method

.method public setOnInfoWindowClickListener(Lcom/airbnb/android/airmapview/listeners/OnInfoWindowClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/airbnb/android/airmapview/listeners/OnInfoWindowClickListener;

    .prologue
    .line 260
    iput-object p1, p0, Lcom/airbnb/android/airmapview/AirMapView;->onInfoWindowClickListener:Lcom/airbnb/android/airmapview/listeners/OnInfoWindowClickListener;

    .line 261
    return-void
.end method

.method public setOnMapClickListener(Lcom/airbnb/android/airmapview/listeners/OnMapClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/airbnb/android/airmapview/listeners/OnMapClickListener;

    .prologue
    .line 250
    iput-object p1, p0, Lcom/airbnb/android/airmapview/AirMapView;->onMapClickListener:Lcom/airbnb/android/airmapview/listeners/OnMapClickListener;

    .line 251
    return-void
.end method

.method public setOnMapInitializedListener(Lcom/airbnb/android/airmapview/listeners/OnMapInitializedListener;)V
    .locals 0
    .param p1, "mapInitializedListener"    # Lcom/airbnb/android/airmapview/listeners/OnMapInitializedListener;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/airbnb/android/airmapview/AirMapView;->onMapInitializedListener:Lcom/airbnb/android/airmapview/listeners/OnMapInitializedListener;

    .line 97
    return-void
.end method

.method public setOnMarkerClickListener(Lcom/airbnb/android/airmapview/listeners/OnMapMarkerClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/airbnb/android/airmapview/listeners/OnMapMarkerClickListener;

    .prologue
    .line 242
    iput-object p1, p0, Lcom/airbnb/android/airmapview/AirMapView;->onMapMarkerClickListener:Lcom/airbnb/android/airmapview/listeners/OnMapMarkerClickListener;

    .line 243
    return-void
.end method

.method public setOnMarkerDragListener(Lcom/airbnb/android/airmapview/listeners/OnMapMarkerDragListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/airbnb/android/airmapview/listeners/OnMapMarkerDragListener;

    .prologue
    .line 246
    iput-object p1, p0, Lcom/airbnb/android/airmapview/AirMapView;->onMapMarkerDragListener:Lcom/airbnb/android/airmapview/listeners/OnMapMarkerDragListener;

    .line 247
    return-void
.end method

.method public setPadding(IIII)V
    .locals 1
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 236
    invoke-virtual {p0}, Lcom/airbnb/android/airmapview/AirMapView;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/airbnb/android/airmapview/AirMapView;->mapInterface:Lcom/airbnb/android/airmapview/AirMapInterface;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/airbnb/android/airmapview/AirMapInterface;->setPadding(IIII)V

    .line 239
    :cond_0
    return-void
.end method

.method public setZoom(I)Z
    .locals 1
    .param p1, "zoom"    # I

    .prologue
    .line 167
    invoke-virtual {p0}, Lcom/airbnb/android/airmapview/AirMapView;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/airbnb/android/airmapview/AirMapView;->mapInterface:Lcom/airbnb/android/airmapview/AirMapInterface;

    invoke-interface {v0, p1}, Lcom/airbnb/android/airmapview/AirMapInterface;->setZoom(I)V

    .line 169
    const/4 v0, 0x1

    .line 171
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
