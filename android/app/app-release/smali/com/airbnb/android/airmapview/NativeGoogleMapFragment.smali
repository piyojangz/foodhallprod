.class public Lcom/airbnb/android/airmapview/NativeGoogleMapFragment;
.super Lcom/google/android/gms/maps/SupportMapFragment;
.source "NativeGoogleMapFragment.java"

# interfaces
.implements Lcom/airbnb/android/airmapview/AirMapInterface;


# instance fields
.field private googleMap:Lcom/google/android/gms/maps/GoogleMap;

.field private layerOnMap:Lcom/google/maps/android/geojson/GeoJsonLayer;

.field private final markers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/maps/model/Marker;",
            "Lcom/airbnb/android/airmapview/AirMapMarker",
            "<*>;>;"
        }
    .end annotation
.end field

.field private myLocationEnabled:Z

.field private onMapLoadedListener:Lcom/airbnb/android/airmapview/listeners/OnMapLoadedListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/google/android/gms/maps/SupportMapFragment;-><init>()V

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/airbnb/android/airmapview/NativeGoogleMapFragment;->markers:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$000(Lcom/airbnb/android/airmapview/NativeGoogleMapFragment;)Lcom/google/android/gms/maps/GoogleMap;
    .locals 1
    .param p0, "x0"    # Lcom/airbnb/android/airmapview/NativeGoogleMapFragment;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/airbnb/android/airmapview/NativeGoogleMapFragment;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    return-object v0
.end method

.method static synthetic access$002(Lcom/airbnb/android/airmapview/NativeGoogleMapFragment;Lcom/google/android/gms/maps/GoogleMap;)Lcom/google/android/gms/maps/GoogleMap;
    .locals 0
    .param p0, "x0"    # Lcom/airbnb/android/airmapview/NativeGoogleMapFragment;
    .param p1, "x1"    # Lcom/google/android/gms/maps/GoogleMap;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/airbnb/android/airmapview/NativeGoogleMapFragment;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    return-object p1
.end method

.method static synthetic access$100(Lcom/airbnb/android/airmapview/NativeGoogleMapFragment;)Lcom/airbnb/android/airmapview/listeners/OnMapLoadedListener;
    .locals 1
    .param p0, "x0"    # Lcom/airbnb/android/airmapview/NativeGoogleMapFragment;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/airbnb/android/airmapview/NativeGoogleMapFragment;->onMapLoadedListener:Lcom/airbnb/android/airmapview/listeners/OnMapLoadedListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/airbnb/android/airmapview/NativeGoogleMapFragment;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/airbnb/android/airmapview/NativeGoogleMapFragment;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/airbnb/android/airmapview/NativeGoogleMapFragment;->markers:Ljava/util/Map;

    return-object v0
.end method

.method public static newInstance(Lcom/airbnb/android/airmapview/AirGoogleMapOptions;)Lcom/airbnb/android/airmapview/NativeGoogleMapFragment;
    .locals 1
    .param p0, "options"    # Lcom/airbnb/android/airmapview/AirGoogleMapOptions;

    .prologue
    .line 50
    new-instance v0, Lcom/airbnb/android/airmapview/NativeGoogleMapFragment;

    invoke-direct {v0}, Lcom/airbnb/android/airmapview/NativeGoogleMapFragment;-><init>()V

    invoke-virtual {v0, p0}, Lcom/airbnb/android/airmapview/NativeGoogleMapFragment;->setArguments(Lcom/airbnb/android/airmapview/AirGoogleMapOptions;)Lcom/airbnb/android/airmapview/NativeGoogleMapFragment;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addMarker(Lcom/airbnb/android/airmapview/AirMapMarker;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/android/airmapview/AirMapMarker",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 95
    .local p1, "airMarker":Lcom/airbnb/android/airmapview/AirMapMarker;, "Lcom/airbnb/android/airmapview/AirMapMarker<*>;"
    iget-object v1, p0, Lcom/airbnb/android/airmapview/NativeGoogleMapFragment;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {p1}, Lcom/airbnb/android/airmapview/AirMapMarker;->getMarkerOptions()Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/GoogleMap;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/Marker;

    move-result-object v0

    .line 96
    .local v0, "marker":Lcom/google/android/gms/maps/model/Marker;
    invoke-virtual {p1, v0}, Lcom/airbnb/android/airmapview/AirMapMarker;->setGoogleMarker(Lcom/google/android/gms/maps/model/Marker;)V

    .line 97
    iget-object v1, p0, Lcom/airbnb/android/airmapview/NativeGoogleMapFragment;->markers:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    return-void
.end method

.method public addPolygon(Lcom/airbnb/android/airmapview/AirMapPolygon;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/airbnb/android/airmapview/AirMapPolygon",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 305
    .local p1, "polygon":Lcom/airbnb/android/airmapview/AirMapPolygon;, "Lcom/airbnb/android/airmapview/AirMapPolygon<TT;>;"
    iget-object v1, p0, Lcom/airbnb/android/airmapview/NativeGoogleMapFragment;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {p1}, Lcom/airbnb/android/airmapview/AirMapPolygon;->getPolygonOptions()Lcom/google/android/gms/maps/model/PolygonOptions;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/GoogleMap;->addPolygon(Lcom/google/android/gms/maps/model/PolygonOptions;)Lcom/google/android/gms/maps/model/Polygon;

    move-result-object v0

    .line 306
    .local v0, "googlePolygon":Lcom/google/android/gms/maps/model/Polygon;
    invoke-virtual {p1, v0}, Lcom/airbnb/android/airmapview/AirMapPolygon;->setGooglePolygon(Lcom/google/android/gms/maps/model/Polygon;)V

    .line 307
    return-void
.end method

.method public addPolyline(Lcom/airbnb/android/airmapview/AirMapPolyline;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/airbnb/android/airmapview/AirMapPolyline",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 297
    .local p1, "polyline":Lcom/airbnb/android/airmapview/AirMapPolyline;, "Lcom/airbnb/android/airmapview/AirMapPolyline<TT;>;"
    iget-object v0, p0, Lcom/airbnb/android/airmapview/NativeGoogleMapFragment;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {p1, v0}, Lcom/airbnb/android/airmapview/AirMapPolyline;->addToGoogleMap(Lcom/google/android/gms/maps/GoogleMap;)V

    .line 298
    return-void
.end method

.method public animateCenter(Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 2
    .param p1, "latLng"    # Lcom/google/android/gms/maps/model/LatLng;

    .prologue
    .line 182
    iget-object v0, p0, Lcom/airbnb/android/airmapview/NativeGoogleMapFragment;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-static {p1}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLng(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->animateCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    .line 183
    return-void
.end method

.method public animateCenterZoom(Lcom/google/android/gms/maps/model/LatLng;I)V
    .locals 2
    .param p1, "latLng"    # Lcom/google/android/gms/maps/model/LatLng;
    .param p2, "zoom"    # I

    .prologue
    .line 218
    iget-object v0, p0, Lcom/airbnb/android/airmapview/NativeGoogleMapFragment;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    int-to-float v1, p2

    invoke-static {p1, v1}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLngZoom(Lcom/google/android/gms/maps/model/LatLng;F)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->animateCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    .line 219
    return-void
.end method

.method public clearGeoJsonLayer()V
    .locals 1

    .prologue
    .line 353
    iget-object v0, p0, Lcom/airbnb/android/airmapview/NativeGoogleMapFragment;->layerOnMap:Lcom/google/maps/android/geojson/GeoJsonLayer;

    if-nez v0, :cond_0

    .line 358
    :goto_0
    return-void

    .line 356
    :cond_0
    iget-object v0, p0, Lcom/airbnb/android/airmapview/NativeGoogleMapFragment;->layerOnMap:Lcom/google/maps/android/geojson/GeoJsonLayer;

    invoke-virtual {v0}, Lcom/google/maps/android/geojson/GeoJsonLayer;->removeLayerFromMap()V

    .line 357
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/airbnb/android/airmapview/NativeGoogleMapFragment;->layerOnMap:Lcom/google/maps/android/geojson/GeoJsonLayer;

    goto :goto_0
.end method

.method public clearMarkers()V
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/airbnb/android/airmapview/NativeGoogleMapFragment;->markers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 91
    iget-object v0, p0, Lcom/airbnb/android/airmapview/NativeGoogleMapFragment;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/GoogleMap;->clear()V

    .line 92
    return-void
.end method

.method public drawCircle(Lcom/google/android/gms/maps/model/LatLng;I)V
    .locals 1
    .param p1, "latLng"    # Lcom/google/android/gms/maps/model/LatLng;
    .param p2, "radius"    # I

    .prologue
    .line 130
    const/high16 v0, -0x1000000

    invoke-virtual {p0, p1, p2, v0}, Lcom/airbnb/android/airmapview/NativeGoogleMapFragment;->drawCircle(Lcom/google/android/gms/maps/model/LatLng;II)V

    .line 131
    return-void
.end method

.method public drawCircle(Lcom/google/android/gms/maps/model/LatLng;II)V
    .locals 1
    .param p1, "latLng"    # Lcom/google/android/gms/maps/model/LatLng;
    .param p2, "radius"    # I
    .param p3, "borderColor"    # I

    .prologue
    .line 134
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/airbnb/android/airmapview/NativeGoogleMapFragment;->drawCircle(Lcom/google/android/gms/maps/model/LatLng;III)V

    .line 135
    return-void
.end method

.method public drawCircle(Lcom/google/android/gms/maps/model/LatLng;III)V
    .locals 6
    .param p1, "latLng"    # Lcom/google/android/gms/maps/model/LatLng;
    .param p2, "radius"    # I
    .param p3, "borderColor"    # I
    .param p4, "borderWidth"    # I

    .prologue
    .line 138
    const v5, -0xff2e3f

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/airbnb/android/airmapview/NativeGoogleMapFragment;->drawCircle(Lcom/google/android/gms/maps/model/LatLng;IIII)V

    .line 139
    return-void
.end method

.method public drawCircle(Lcom/google/android/gms/maps/model/LatLng;IIII)V
    .locals 4
    .param p1, "latLng"    # Lcom/google/android/gms/maps/model/LatLng;
    .param p2, "radius"    # I
    .param p3, "borderColor"    # I
    .param p4, "borderWidth"    # I
    .param p5, "fillColor"    # I

    .prologue
    .line 143
    iget-object v0, p0, Lcom/airbnb/android/airmapview/NativeGoogleMapFragment;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    new-instance v1, Lcom/google/android/gms/maps/model/CircleOptions;

    invoke-direct {v1}, Lcom/google/android/gms/maps/model/CircleOptions;-><init>()V

    .line 144
    invoke-virtual {v1, p1}, Lcom/google/android/gms/maps/model/CircleOptions;->center(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/CircleOptions;

    move-result-object v1

    .line 145
    invoke-virtual {v1, p3}, Lcom/google/android/gms/maps/model/CircleOptions;->strokeColor(I)Lcom/google/android/gms/maps/model/CircleOptions;

    move-result-object v1

    int-to-float v2, p4

    .line 146
    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/model/CircleOptions;->strokeWidth(F)Lcom/google/android/gms/maps/model/CircleOptions;

    move-result-object v1

    .line 147
    invoke-virtual {v1, p5}, Lcom/google/android/gms/maps/model/CircleOptions;->fillColor(I)Lcom/google/android/gms/maps/model/CircleOptions;

    move-result-object v1

    int-to-double v2, p2

    .line 148
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/maps/model/CircleOptions;->radius(D)Lcom/google/android/gms/maps/model/CircleOptions;

    move-result-object v1

    .line 143
    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->addCircle(Lcom/google/android/gms/maps/model/CircleOptions;)Lcom/google/android/gms/maps/model/Circle;

    .line 149
    return-void
.end method

.method public getCenter()Lcom/google/android/gms/maps/model/LatLng;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/airbnb/android/airmapview/NativeGoogleMapFragment;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/GoogleMap;->getCameraPosition()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/maps/model/CameraPosition;->target:Lcom/google/android/gms/maps/model/LatLng;

    return-object v0
.end method

.method public getGoogleMap()Lcom/google/android/gms/maps/GoogleMap;
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lcom/airbnb/android/airmapview/NativeGoogleMapFragment;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    return-object v0
.end method

.method public getMapScreenBounds(Lcom/airbnb/android/airmapview/listeners/OnMapBoundsCallback;)V
    .locals 7
    .param p1, "callback"    # Lcom/airbnb/android/airmapview/listeners/OnMapBoundsCallback;

    .prologue
    .line 152
    iget-object v4, p0, Lcom/airbnb/android/airmapview/NativeGoogleMapFragment;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v4}, Lcom/google/android/gms/maps/GoogleMap;->getProjection()Lcom/google/android/gms/maps/Projection;

    move-result-object v2

    .line 153
    .local v2, "projection":Lcom/google/android/gms/maps/Projection;
    invoke-virtual {p0}, Lcom/airbnb/android/airmapview/NativeGoogleMapFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/airbnb/android/airmapview/R$dimen;->map_horizontal_padding:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 154
    .local v1, "hOffset":I
    invoke-virtual {p0}, Lcom/airbnb/android/airmapview/NativeGoogleMapFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/airbnb/android/airmapview/R$dimen;->map_vertical_padding:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    .line 156
    .local v3, "vOffset":I
    invoke-static {}, Lcom/google/android/gms/maps/model/LatLngBounds;->builder()Lcom/google/android/gms/maps/model/LatLngBounds$Builder;

    move-result-object v0

    .line 157
    .local v0, "builder":Lcom/google/android/gms/maps/model/LatLngBounds$Builder;
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4, v1, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v2, v4}, Lcom/google/android/gms/maps/Projection;->fromScreenLocation(Landroid/graphics/Point;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->include(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/LatLngBounds$Builder;

    .line 158
    new-instance v4, Landroid/graphics/Point;

    .line 159
    invoke-virtual {p0}, Lcom/airbnb/android/airmapview/NativeGoogleMapFragment;->getView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    sub-int/2addr v5, v1

    invoke-direct {v4, v5, v3}, Landroid/graphics/Point;-><init>(II)V

    .line 158
    invoke-virtual {v2, v4}, Lcom/google/android/gms/maps/Projection;->fromScreenLocation(Landroid/graphics/Point;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->include(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/LatLngBounds$Builder;

    .line 160
    new-instance v4, Landroid/graphics/Point;

    .line 161
    invoke-virtual {p0}, Lcom/airbnb/android/airmapview/NativeGoogleMapFragment;->getView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    sub-int/2addr v5, v3

    invoke-direct {v4, v1, v5}, Landroid/graphics/Point;-><init>(II)V

    .line 160
    invoke-virtual {v2, v4}, Lcom/google/android/gms/maps/Projection;->fromScreenLocation(Landroid/graphics/Point;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->include(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/LatLngBounds$Builder;

    .line 162
    new-instance v4, Landroid/graphics/Point;

    invoke-virtual {p0}, Lcom/airbnb/android/airmapview/NativeGoogleMapFragment;->getView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    sub-int/2addr v5, v1

    .line 163
    invoke-virtual {p0}, Lcom/airbnb/android/airmapview/NativeGoogleMapFragment;->getView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    sub-int/2addr v6, v3

    invoke-direct {v4, v5, v6}, Landroid/graphics/Point;-><init>(II)V

    .line 162
    invoke-virtual {v2, v4}, Lcom/google/android/gms/maps/Projection;->fromScreenLocation(Landroid/graphics/Point;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->include(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/LatLngBounds$Builder;

    .line 165
    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->build()Lcom/google/android/gms/maps/model/LatLngBounds;

    move-result-object v4

    invoke-interface {p1, v4}, Lcom/airbnb/android/airmapview/listeners/OnMapBoundsCallback;->onMapBoundsReady(Lcom/google/android/gms/maps/model/LatLngBounds;)V

    .line 166
    return-void
.end method

.method public getScreenLocation(Lcom/google/android/gms/maps/model/LatLng;Lcom/airbnb/android/airmapview/listeners/OnLatLngScreenLocationCallback;)V
    .locals 1
    .param p1, "latLng"    # Lcom/google/android/gms/maps/model/LatLng;
    .param p2, "callback"    # Lcom/airbnb/android/airmapview/listeners/OnLatLngScreenLocationCallback;

    .prologue
    .line 169
    iget-object v0, p0, Lcom/airbnb/android/airmapview/NativeGoogleMapFragment;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/GoogleMap;->getProjection()Lcom/google/android/gms/maps/Projection;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/Projection;->toScreenLocation(Lcom/google/android/gms/maps/model/LatLng;)Landroid/graphics/Point;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/airbnb/android/airmapview/listeners/OnLatLngScreenLocationCallback;->onLatLngScreenLocationReady(Landroid/graphics/Point;)V

    .line 170
    return-void
.end method

.method public getSnapshot(Lcom/airbnb/android/airmapview/listeners/OnSnapshotReadyListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/airbnb/android/airmapview/listeners/OnSnapshotReadyListener;

    .prologue
    .line 361
    invoke-virtual {p0}, Lcom/airbnb/android/airmapview/NativeGoogleMapFragment;->getGoogleMap()Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v0

    new-instance v1, Lcom/airbnb/android/airmapview/NativeGoogleMapFragment$7;

    invoke-direct {v1, p0, p1}, Lcom/airbnb/android/airmapview/NativeGoogleMapFragment$7;-><init>(Lcom/airbnb/android/airmapview/NativeGoogleMapFragment;Lcom/airbnb/android/airmapview/listeners/OnSnapshotReadyListener;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->snapshot(Lcom/google/android/gms/maps/GoogleMap$SnapshotReadyCallback;)V

    .line 366
    return-void
.end method

.method public getZoom()I
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/airbnb/android/airmapview/NativeGoogleMapFragment;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/GoogleMap;->getCameraPosition()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v0

    iget v0, v0, Lcom/google/android/gms/maps/model/CameraPosition;->zoom:F

    float-to-int v0, v0

    return v0
.end method

.method public init()V
    .locals 1

    .prologue
    .line 68
    new-instance v0, Lcom/airbnb/android/airmapview/NativeGoogleMapFragment$1;

    invoke-direct {v0, p0}, Lcom/airbnb/android/airmapview/NativeGoogleMapFragment$1;-><init>(Lcom/airbnb/android/airmapview/NativeGoogleMapFragment;)V

    invoke-virtual {p0, v0}, Lcom/airbnb/android/airmapview/NativeGoogleMapFragment;->getMapAsync(Lcom/google/android/gms/maps/OnMapReadyCallback;)V

    .line 83
    return-void
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/airbnb/android/airmapview/NativeGoogleMapFragment;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/airbnb/android/airmapview/NativeGoogleMapFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMyLocationEnabled()Z
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lcom/airbnb/android/airmapview/NativeGoogleMapFragment;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/GoogleMap;->isMyLocationEnabled()Z

    move-result v0

    return v0
.end method

.method public moveMarker(Lcom/airbnb/android/airmapview/AirMapMarker;Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 1
    .param p2, "to"    # Lcom/google/android/gms/maps/model/LatLng;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/android/airmapview/AirMapMarker",
            "<*>;",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ")V"
        }
    .end annotation

    .prologue
    .line 101
    .local p1, "marker":Lcom/airbnb/android/airmapview/AirMapMarker;, "Lcom/airbnb/android/airmapview/AirMapMarker<*>;"
    invoke-virtual {p1, p2}, Lcom/airbnb/android/airmapview/AirMapMarker;->setLatLng(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 102
    invoke-virtual {p1}, Lcom/airbnb/android/airmapview/AirMapMarker;->getMarker()Lcom/google/android/gms/maps/model/Marker;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/gms/maps/model/Marker;->setPosition(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 103
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 60
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/gms/maps/SupportMapFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 62
    .local v0, "v":Landroid/view/View;
    invoke-virtual {p0}, Lcom/airbnb/android/airmapview/NativeGoogleMapFragment;->init()V

    .line 64
    return-object v0
.end method

.method public onDestroyView()V
    .locals 0

    .prologue
    .line 369
    invoke-virtual {p0}, Lcom/airbnb/android/airmapview/NativeGoogleMapFragment;->clearGeoJsonLayer()V

    .line 370
    invoke-super {p0}, Lcom/google/android/gms/maps/SupportMapFragment;->onDestroyView()V

    .line 371
    return-void
.end method

.method public onLocationPermissionsGranted()V
    .locals 2

    .prologue
    .line 279
    iget-object v0, p0, Lcom/airbnb/android/airmapview/NativeGoogleMapFragment;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    iget-boolean v1, p0, Lcom/airbnb/android/airmapview/NativeGoogleMapFragment;->myLocationEnabled:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->setMyLocationEnabled(Z)V

    .line 280
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "grantResults"    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 284
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/gms/maps/SupportMapFragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 285
    invoke-static {p0, p1, p3}, Lcom/airbnb/android/airmapview/RuntimePermissionUtils;->onRequestPermissionsResult(Lcom/airbnb/android/airmapview/AirMapInterface;I[I)V

    .line 286
    return-void
.end method

.method public removeMarker(Lcom/airbnb/android/airmapview/AirMapMarker;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/android/airmapview/AirMapMarker",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 106
    .local p1, "marker":Lcom/airbnb/android/airmapview/AirMapMarker;, "Lcom/airbnb/android/airmapview/AirMapMarker<*>;"
    invoke-virtual {p1}, Lcom/airbnb/android/airmapview/AirMapMarker;->getMarker()Lcom/google/android/gms/maps/model/Marker;

    move-result-object v0

    .line 107
    .local v0, "nativeMarker":Lcom/google/android/gms/maps/model/Marker;
    if-eqz v0, :cond_0

    .line 108
    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Marker;->remove()V

    .line 109
    iget-object v1, p0, Lcom/airbnb/android/airmapview/NativeGoogleMapFragment;->markers:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    :cond_0
    return-void
.end method

.method public removePolygon(Lcom/airbnb/android/airmapview/AirMapPolygon;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/airbnb/android/airmapview/AirMapPolygon",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 310
    .local p1, "polygon":Lcom/airbnb/android/airmapview/AirMapPolygon;, "Lcom/airbnb/android/airmapview/AirMapPolygon<TT;>;"
    invoke-virtual {p1}, Lcom/airbnb/android/airmapview/AirMapPolygon;->getGooglePolygon()Lcom/google/android/gms/maps/model/Polygon;

    move-result-object v0

    .line 311
    .local v0, "nativePolygon":Lcom/google/android/gms/maps/model/Polygon;
    if-eqz v0, :cond_0

    .line 312
    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Polygon;->remove()V

    .line 314
    :cond_0
    return-void
.end method

.method public removePolyline(Lcom/airbnb/android/airmapview/AirMapPolyline;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/airbnb/android/airmapview/AirMapPolyline",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 301
    .local p1, "polyline":Lcom/airbnb/android/airmapview/AirMapPolyline;, "Lcom/airbnb/android/airmapview/AirMapPolyline<TT;>;"
    invoke-virtual {p1}, Lcom/airbnb/android/airmapview/AirMapPolyline;->removeFromGoogleMap()Z

    .line 302
    return-void
.end method

.method public setArguments(Lcom/airbnb/android/airmapview/AirGoogleMapOptions;)Lcom/airbnb/android/airmapview/NativeGoogleMapFragment;
    .locals 1
    .param p1, "options"    # Lcom/airbnb/android/airmapview/AirGoogleMapOptions;

    .prologue
    .line 54
    invoke-virtual {p1}, Lcom/airbnb/android/airmapview/AirGoogleMapOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/airbnb/android/airmapview/NativeGoogleMapFragment;->setArguments(Landroid/os/Bundle;)V

    .line 55
    return-object p0
.end method

.method public setCenter(Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 2
    .param p1, "latLng"    # Lcom/google/android/gms/maps/model/LatLng;

    .prologue
    .line 186
    iget-object v0, p0, Lcom/airbnb/android/airmapview/NativeGoogleMapFragment;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-static {p1}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLng(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->moveCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    .line 187
    return-void
.end method

.method public setCenter(Lcom/google/android/gms/maps/model/LatLngBounds;I)V
    .locals 2
    .param p1, "latLngBounds"    # Lcom/google/android/gms/maps/model/LatLngBounds;
    .param p2, "boundsPadding"    # I

    .prologue
    .line 173
    iget-object v0, p0, Lcom/airbnb/android/airmapview/NativeGoogleMapFragment;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-static {p1, p2}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLngBounds(Lcom/google/android/gms/maps/model/LatLngBounds;I)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->moveCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    .line 174
    return-void
.end method

.method public setCenterZoom(Lcom/google/android/gms/maps/model/LatLng;I)V
    .locals 2
    .param p1, "latLng"    # Lcom/google/android/gms/maps/model/LatLng;
    .param p2, "zoom"    # I

    .prologue
    .line 214
    iget-object v0, p0, Lcom/airbnb/android/airmapview/NativeGoogleMapFragment;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    int-to-float v1, p2

    invoke-static {p1, v1}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLngZoom(Lcom/google/android/gms/maps/model/LatLng;F)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->moveCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    .line 215
    return-void
.end method

.method public setGeoJsonLayer(Lcom/airbnb/android/airmapview/AirMapGeoJsonLayer;)V
    .locals 5
    .param p1, "airMapGeoJsonLayer"    # Lcom/airbnb/android/airmapview/AirMapGeoJsonLayer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 342
    invoke-virtual {p0}, Lcom/airbnb/android/airmapview/NativeGoogleMapFragment;->clearGeoJsonLayer()V

    .line 344
    new-instance v1, Lcom/google/maps/android/geojson/GeoJsonLayer;

    iget-object v2, p0, Lcom/airbnb/android/airmapview/NativeGoogleMapFragment;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    new-instance v3, Lorg/json/JSONObject;

    iget-object v4, p1, Lcom/airbnb/android/airmapview/AirMapGeoJsonLayer;->geoJson:Ljava/lang/String;

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2, v3}, Lcom/google/maps/android/geojson/GeoJsonLayer;-><init>(Lcom/google/android/gms/maps/GoogleMap;Lorg/json/JSONObject;)V

    iput-object v1, p0, Lcom/airbnb/android/airmapview/NativeGoogleMapFragment;->layerOnMap:Lcom/google/maps/android/geojson/GeoJsonLayer;

    .line 345
    iget-object v1, p0, Lcom/airbnb/android/airmapview/NativeGoogleMapFragment;->layerOnMap:Lcom/google/maps/android/geojson/GeoJsonLayer;

    invoke-virtual {v1}, Lcom/google/maps/android/geojson/GeoJsonLayer;->getDefaultPolygonStyle()Lcom/google/maps/android/geojson/GeoJsonPolygonStyle;

    move-result-object v0

    .line 346
    .local v0, "style":Lcom/google/maps/android/geojson/GeoJsonPolygonStyle;
    iget v1, p1, Lcom/airbnb/android/airmapview/AirMapGeoJsonLayer;->strokeColor:I

    invoke-virtual {v0, v1}, Lcom/google/maps/android/geojson/GeoJsonPolygonStyle;->setStrokeColor(I)V

    .line 347
    iget v1, p1, Lcom/airbnb/android/airmapview/AirMapGeoJsonLayer;->strokeWidth:F

    invoke-virtual {v0, v1}, Lcom/google/maps/android/geojson/GeoJsonPolygonStyle;->setStrokeWidth(F)V

    .line 348
    iget v1, p1, Lcom/airbnb/android/airmapview/AirMapGeoJsonLayer;->fillColor:I

    invoke-virtual {v0, v1}, Lcom/google/maps/android/geojson/GeoJsonPolygonStyle;->setFillColor(I)V

    .line 349
    iget-object v1, p0, Lcom/airbnb/android/airmapview/NativeGoogleMapFragment;->layerOnMap:Lcom/google/maps/android/geojson/GeoJsonLayer;

    invoke-virtual {v1}, Lcom/google/maps/android/geojson/GeoJsonLayer;->addLayerToMap()V

    .line 350
    return-void
.end method

.method public setInfoWindowCreator(Lcom/google/android/gms/maps/GoogleMap$InfoWindowAdapter;Lcom/airbnb/android/airmapview/listeners/InfoWindowCreator;)V
    .locals 1
    .param p1, "adapter"    # Lcom/google/android/gms/maps/GoogleMap$InfoWindowAdapter;
    .param p2, "creator"    # Lcom/airbnb/android/airmapview/listeners/InfoWindowCreator;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/airbnb/android/airmapview/NativeGoogleMapFragment;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/GoogleMap;->setInfoWindowAdapter(Lcom/google/android/gms/maps/GoogleMap$InfoWindowAdapter;)V

    .line 127
    return-void
.end method

.method public setMapToolbarEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 293
    iget-object v0, p0, Lcom/airbnb/android/airmapview/NativeGoogleMapFragment;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/GoogleMap;->getUiSettings()Lcom/google/android/gms/maps/UiSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/UiSettings;->setMapToolbarEnabled(Z)V

    .line 294
    return-void
.end method

.method public setMapType(Lcom/airbnb/android/airmapview/MapType;)V
    .locals 2
    .param p1, "type"    # Lcom/airbnb/android/airmapview/MapType;

    .prologue
    .line 318
    sget-object v1, Lcom/airbnb/android/airmapview/MapType;->MAP_TYPE_NORMAL:Lcom/airbnb/android/airmapview/MapType;

    if-ne p1, v1, :cond_0

    .line 319
    const/4 v0, 0x1

    .line 327
    .local v0, "nativeType":I
    :goto_0
    iget-object v1, p0, Lcom/airbnb/android/airmapview/NativeGoogleMapFragment;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/maps/GoogleMap;->setMapType(I)V

    .line 328
    return-void

    .line 320
    .end local v0    # "nativeType":I
    :cond_0
    sget-object v1, Lcom/airbnb/android/airmapview/MapType;->MAP_TYPE_SATELLITE:Lcom/airbnb/android/airmapview/MapType;

    if-ne p1, v1, :cond_1

    .line 321
    const/4 v0, 0x2

    .restart local v0    # "nativeType":I
    goto :goto_0

    .line 322
    .end local v0    # "nativeType":I
    :cond_1
    sget-object v1, Lcom/airbnb/android/airmapview/MapType;->MAP_TYPE_TERRAIN:Lcom/airbnb/android/airmapview/MapType;

    if-ne p1, v1, :cond_2

    .line 323
    const/4 v0, 0x3

    .restart local v0    # "nativeType":I
    goto :goto_0

    .line 325
    .end local v0    # "nativeType":I
    :cond_2
    const/4 v0, 0x1

    .restart local v0    # "nativeType":I
    goto :goto_0
.end method

.method public setMyLocationEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 270
    iget-boolean v0, p0, Lcom/airbnb/android/airmapview/NativeGoogleMapFragment;->myLocationEnabled:Z

    if-eq v0, p1, :cond_0

    .line 271
    invoke-virtual {p0}, Lcom/airbnb/android/airmapview/NativeGoogleMapFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/airbnb/android/airmapview/RuntimePermissionUtils;->checkLocationPermissions(Landroid/app/Activity;Lcom/airbnb/android/airmapview/AirMapInterface;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 272
    iput-boolean p1, p0, Lcom/airbnb/android/airmapview/NativeGoogleMapFragment;->myLocationEnabled:Z

    .line 275
    :cond_0
    return-void
.end method

.method public setOnCameraChangeListener(Lcom/airbnb/android/airmapview/listeners/OnCameraChangeListener;)V
    .locals 2
    .param p1, "onCameraChangeListener"    # Lcom/airbnb/android/airmapview/listeners/OnCameraChangeListener;

    .prologue
    .line 199
    iget-object v0, p0, Lcom/airbnb/android/airmapview/NativeGoogleMapFragment;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    new-instance v1, Lcom/airbnb/android/airmapview/NativeGoogleMapFragment$3;

    invoke-direct {v1, p0, p1}, Lcom/airbnb/android/airmapview/NativeGoogleMapFragment$3;-><init>(Lcom/airbnb/android/airmapview/NativeGoogleMapFragment;Lcom/airbnb/android/airmapview/listeners/OnCameraChangeListener;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->setOnCameraChangeListener(Lcom/google/android/gms/maps/GoogleMap$OnCameraChangeListener;)V

    .line 207
    return-void
.end method

.method public setOnInfoWindowClickListener(Lcom/airbnb/android/airmapview/listeners/OnInfoWindowClickListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/airbnb/android/airmapview/listeners/OnInfoWindowClickListener;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/airbnb/android/airmapview/NativeGoogleMapFragment;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    new-instance v1, Lcom/airbnb/android/airmapview/NativeGoogleMapFragment$2;

    invoke-direct {v1, p0, p1}, Lcom/airbnb/android/airmapview/NativeGoogleMapFragment$2;-><init>(Lcom/airbnb/android/airmapview/NativeGoogleMapFragment;Lcom/airbnb/android/airmapview/listeners/OnInfoWindowClickListener;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->setOnInfoWindowClickListener(Lcom/google/android/gms/maps/GoogleMap$OnInfoWindowClickListener;)V

    .line 122
    return-void
.end method

.method public setOnMapClickListener(Lcom/airbnb/android/airmapview/listeners/OnMapClickListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/airbnb/android/airmapview/listeners/OnMapClickListener;

    .prologue
    .line 257
    iget-object v0, p0, Lcom/airbnb/android/airmapview/NativeGoogleMapFragment;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    new-instance v1, Lcom/airbnb/android/airmapview/NativeGoogleMapFragment$6;

    invoke-direct {v1, p0, p1}, Lcom/airbnb/android/airmapview/NativeGoogleMapFragment$6;-><init>(Lcom/airbnb/android/airmapview/NativeGoogleMapFragment;Lcom/airbnb/android/airmapview/listeners/OnMapClickListener;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->setOnMapClickListener(Lcom/google/android/gms/maps/GoogleMap$OnMapClickListener;)V

    .line 263
    return-void
.end method

.method public setOnMapLoadedListener(Lcom/airbnb/android/airmapview/listeners/OnMapLoadedListener;)V
    .locals 0
    .param p1, "onMapLoadedListener"    # Lcom/airbnb/android/airmapview/listeners/OnMapLoadedListener;

    .prologue
    .line 210
    iput-object p1, p0, Lcom/airbnb/android/airmapview/NativeGoogleMapFragment;->onMapLoadedListener:Lcom/airbnb/android/airmapview/listeners/OnMapLoadedListener;

    .line 211
    return-void
.end method

.method public setOnMarkerClickListener(Lcom/airbnb/android/airmapview/listeners/OnMapMarkerClickListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/airbnb/android/airmapview/listeners/OnMapMarkerClickListener;

    .prologue
    .line 222
    iget-object v0, p0, Lcom/airbnb/android/airmapview/NativeGoogleMapFragment;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    new-instance v1, Lcom/airbnb/android/airmapview/NativeGoogleMapFragment$4;

    invoke-direct {v1, p0, p1}, Lcom/airbnb/android/airmapview/NativeGoogleMapFragment$4;-><init>(Lcom/airbnb/android/airmapview/NativeGoogleMapFragment;Lcom/airbnb/android/airmapview/listeners/OnMapMarkerClickListener;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->setOnMarkerClickListener(Lcom/google/android/gms/maps/GoogleMap$OnMarkerClickListener;)V

    .line 231
    return-void
.end method

.method public setOnMarkerDragListener(Lcom/airbnb/android/airmapview/listeners/OnMapMarkerDragListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/airbnb/android/airmapview/listeners/OnMapMarkerDragListener;

    .prologue
    .line 234
    if-nez p1, :cond_0

    .line 235
    iget-object v0, p0, Lcom/airbnb/android/airmapview/NativeGoogleMapFragment;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->setOnMarkerDragListener(Lcom/google/android/gms/maps/GoogleMap$OnMarkerDragListener;)V

    .line 254
    :goto_0
    return-void

    .line 238
    :cond_0
    iget-object v0, p0, Lcom/airbnb/android/airmapview/NativeGoogleMapFragment;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    new-instance v1, Lcom/airbnb/android/airmapview/NativeGoogleMapFragment$5;

    invoke-direct {v1, p0, p1}, Lcom/airbnb/android/airmapview/NativeGoogleMapFragment$5;-><init>(Lcom/airbnb/android/airmapview/NativeGoogleMapFragment;Lcom/airbnb/android/airmapview/listeners/OnMapMarkerDragListener;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->setOnMarkerDragListener(Lcom/google/android/gms/maps/GoogleMap$OnMarkerDragListener;)V

    goto :goto_0
.end method

.method public setPadding(IIII)V
    .locals 1
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 266
    iget-object v0, p0, Lcom/airbnb/android/airmapview/NativeGoogleMapFragment;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/gms/maps/GoogleMap;->setPadding(IIII)V

    .line 267
    return-void
.end method

.method public setZoom(I)V
    .locals 3
    .param p1, "zoom"    # I

    .prologue
    .line 177
    iget-object v0, p0, Lcom/airbnb/android/airmapview/NativeGoogleMapFragment;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    iget-object v1, p0, Lcom/airbnb/android/airmapview/NativeGoogleMapFragment;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    .line 178
    invoke-virtual {v1}, Lcom/google/android/gms/maps/GoogleMap;->getCameraPosition()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/maps/model/CameraPosition;->target:Lcom/google/android/gms/maps/model/LatLng;

    int-to-float v2, p1

    invoke-static {v1, v2}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLngZoom(Lcom/google/android/gms/maps/model/LatLng;F)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v1

    .line 177
    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->animateCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    .line 179
    return-void
.end method
