.class public abstract Lcom/airbnb/android/airmapview/WebViewMapFragment;
.super Landroid/support/v4/app/Fragment;
.source "WebViewMapFragment.java"

# interfaces
.implements Lcom/airbnb/android/airmapview/AirMapInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/airmapview/WebViewMapFragment$MapsJavaScriptInterface;,
        Lcom/airbnb/android/airmapview/WebViewMapFragment$GeoWebChromeClient;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private center:Lcom/google/android/gms/maps/model/LatLng;

.field private ignoreNextMapMove:Z

.field private infoWindowCreator:Lcom/airbnb/android/airmapview/listeners/InfoWindowCreator;

.field private infoWindowView:Landroid/view/View;

.field private loaded:Z

.field private mLayout:Landroid/view/ViewGroup;

.field private final markers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/airbnb/android/airmapview/AirMapMarker",
            "<*>;>;"
        }
    .end annotation
.end field

.field private onCameraChangeListener:Lcom/airbnb/android/airmapview/listeners/OnCameraChangeListener;

.field private onInfoWindowClickListener:Lcom/airbnb/android/airmapview/listeners/OnInfoWindowClickListener;

.field private onLatLngScreenLocationCallback:Lcom/airbnb/android/airmapview/listeners/OnLatLngScreenLocationCallback;

.field private onMapBoundsCallback:Lcom/airbnb/android/airmapview/listeners/OnMapBoundsCallback;

.field private onMapClickListener:Lcom/airbnb/android/airmapview/listeners/OnMapClickListener;

.field private onMapLoadedListener:Lcom/airbnb/android/airmapview/listeners/OnMapLoadedListener;

.field private onMapMarkerClickListener:Lcom/airbnb/android/airmapview/listeners/OnMapMarkerClickListener;

.field private onMapMarkerDragListener:Lcom/airbnb/android/airmapview/listeners/OnMapMarkerDragListener;

.field private trackUserLocation:Z

.field protected webView:Landroid/webkit/WebView;

.field private zoom:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-class v0, Lcom/airbnb/android/airmapview/WebViewMapFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/airbnb/android/airmapview/WebViewMapFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/airbnb/android/airmapview/WebViewMapFragment;->markers:Ljava/util/Map;

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/airbnb/android/airmapview/WebViewMapFragment;->trackUserLocation:Z

    return-void
.end method

.method static synthetic access$100(Lcom/airbnb/android/airmapview/WebViewMapFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/airbnb/android/airmapview/WebViewMapFragment;

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/airbnb/android/airmapview/WebViewMapFragment;->loaded:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/airbnb/android/airmapview/WebViewMapFragment;)Lcom/airbnb/android/airmapview/listeners/OnCameraChangeListener;
    .locals 1
    .param p0, "x0"    # Lcom/airbnb/android/airmapview/WebViewMapFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/airbnb/android/airmapview/WebViewMapFragment;->onCameraChangeListener:Lcom/airbnb/android/airmapview/listeners/OnCameraChangeListener;

    return-object v0
.end method

.method static synthetic access$102(Lcom/airbnb/android/airmapview/WebViewMapFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/airbnb/android/airmapview/WebViewMapFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/airbnb/android/airmapview/WebViewMapFragment;->loaded:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/airbnb/android/airmapview/WebViewMapFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/airbnb/android/airmapview/WebViewMapFragment;

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/airbnb/android/airmapview/WebViewMapFragment;->ignoreNextMapMove:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/airbnb/android/airmapview/WebViewMapFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/airbnb/android/airmapview/WebViewMapFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/airbnb/android/airmapview/WebViewMapFragment;->ignoreNextMapMove:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/airbnb/android/airmapview/WebViewMapFragment;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/airbnb/android/airmapview/WebViewMapFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/airbnb/android/airmapview/WebViewMapFragment;->markers:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/airbnb/android/airmapview/WebViewMapFragment;)Lcom/airbnb/android/airmapview/listeners/OnMapMarkerClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/airbnb/android/airmapview/WebViewMapFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/airbnb/android/airmapview/WebViewMapFragment;->onMapMarkerClickListener:Lcom/airbnb/android/airmapview/listeners/OnMapMarkerClickListener;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/airbnb/android/airmapview/WebViewMapFragment;)Lcom/airbnb/android/airmapview/listeners/InfoWindowCreator;
    .locals 1
    .param p0, "x0"    # Lcom/airbnb/android/airmapview/WebViewMapFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/airbnb/android/airmapview/WebViewMapFragment;->infoWindowCreator:Lcom/airbnb/android/airmapview/listeners/InfoWindowCreator;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/airbnb/android/airmapview/WebViewMapFragment;)Lcom/airbnb/android/airmapview/listeners/OnInfoWindowClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/airbnb/android/airmapview/WebViewMapFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/airbnb/android/airmapview/WebViewMapFragment;->onInfoWindowClickListener:Lcom/airbnb/android/airmapview/listeners/OnInfoWindowClickListener;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/airbnb/android/airmapview/WebViewMapFragment;)Lcom/airbnb/android/airmapview/listeners/OnMapMarkerDragListener;
    .locals 1
    .param p0, "x0"    # Lcom/airbnb/android/airmapview/WebViewMapFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/airbnb/android/airmapview/WebViewMapFragment;->onMapMarkerDragListener:Lcom/airbnb/android/airmapview/listeners/OnMapMarkerDragListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/airbnb/android/airmapview/WebViewMapFragment;)Lcom/airbnb/android/airmapview/listeners/OnMapLoadedListener;
    .locals 1
    .param p0, "x0"    # Lcom/airbnb/android/airmapview/WebViewMapFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/airbnb/android/airmapview/WebViewMapFragment;->onMapLoadedListener:Lcom/airbnb/android/airmapview/listeners/OnMapLoadedListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/airbnb/android/airmapview/WebViewMapFragment;)Lcom/airbnb/android/airmapview/listeners/OnMapClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/airbnb/android/airmapview/WebViewMapFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/airbnb/android/airmapview/WebViewMapFragment;->onMapClickListener:Lcom/airbnb/android/airmapview/listeners/OnMapClickListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/airbnb/android/airmapview/WebViewMapFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/airbnb/android/airmapview/WebViewMapFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/airbnb/android/airmapview/WebViewMapFragment;->infoWindowView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$402(Lcom/airbnb/android/airmapview/WebViewMapFragment;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .param p0, "x0"    # Lcom/airbnb/android/airmapview/WebViewMapFragment;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/airbnb/android/airmapview/WebViewMapFragment;->infoWindowView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$500(Lcom/airbnb/android/airmapview/WebViewMapFragment;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/airbnb/android/airmapview/WebViewMapFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/airbnb/android/airmapview/WebViewMapFragment;->mLayout:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$600(Lcom/airbnb/android/airmapview/WebViewMapFragment;)Lcom/airbnb/android/airmapview/listeners/OnMapBoundsCallback;
    .locals 1
    .param p0, "x0"    # Lcom/airbnb/android/airmapview/WebViewMapFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/airbnb/android/airmapview/WebViewMapFragment;->onMapBoundsCallback:Lcom/airbnb/android/airmapview/listeners/OnMapBoundsCallback;

    return-object v0
.end method

.method static synthetic access$700(Lcom/airbnb/android/airmapview/WebViewMapFragment;)Lcom/airbnb/android/airmapview/listeners/OnLatLngScreenLocationCallback;
    .locals 1
    .param p0, "x0"    # Lcom/airbnb/android/airmapview/WebViewMapFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/airbnb/android/airmapview/WebViewMapFragment;->onLatLngScreenLocationCallback:Lcom/airbnb/android/airmapview/listeners/OnLatLngScreenLocationCallback;

    return-object v0
.end method

.method static synthetic access$800(Lcom/airbnb/android/airmapview/WebViewMapFragment;)Lcom/google/android/gms/maps/model/LatLng;
    .locals 1
    .param p0, "x0"    # Lcom/airbnb/android/airmapview/WebViewMapFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/airbnb/android/airmapview/WebViewMapFragment;->center:Lcom/google/android/gms/maps/model/LatLng;

    return-object v0
.end method

.method static synthetic access$802(Lcom/airbnb/android/airmapview/WebViewMapFragment;Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/LatLng;
    .locals 0
    .param p0, "x0"    # Lcom/airbnb/android/airmapview/WebViewMapFragment;
    .param p1, "x1"    # Lcom/google/android/gms/maps/model/LatLng;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/airbnb/android/airmapview/WebViewMapFragment;->center:Lcom/google/android/gms/maps/model/LatLng;

    return-object p1
.end method

.method static synthetic access$900(Lcom/airbnb/android/airmapview/WebViewMapFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/airbnb/android/airmapview/WebViewMapFragment;

    .prologue
    .line 43
    iget v0, p0, Lcom/airbnb/android/airmapview/WebViewMapFragment;->zoom:I

    return v0
.end method

.method static synthetic access$902(Lcom/airbnb/android/airmapview/WebViewMapFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/airbnb/android/airmapview/WebViewMapFragment;
    .param p1, "x1"    # I

    .prologue
    .line 43
    iput p1, p0, Lcom/airbnb/android/airmapview/WebViewMapFragment;->zoom:I

    return p1
.end method


# virtual methods
.method public addMarker(Lcom/airbnb/android/airmapview/AirMapMarker;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/android/airmapview/AirMapMarker",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 164
    .local p1, "marker":Lcom/airbnb/android/airmapview/AirMapMarker;, "Lcom/airbnb/android/airmapview/AirMapMarker<*>;"
    invoke-virtual {p1}, Lcom/airbnb/android/airmapview/AirMapMarker;->getLatLng()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    .line 165
    .local v0, "latLng":Lcom/google/android/gms/maps/model/LatLng;
    iget-object v1, p0, Lcom/airbnb/android/airmapview/WebViewMapFragment;->markers:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/airbnb/android/airmapview/AirMapMarker;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    iget-object v1, p0, Lcom/airbnb/android/airmapview/WebViewMapFragment;->webView:Landroid/webkit/WebView;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "javascript:addMarkerWithId(%1$f, %2$f, %3$d, \'%4$s\', \'%5$s\', %6$b);"

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-wide v6, v0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    .line 169
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-wide v6, v0, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-virtual {p1}, Lcom/airbnb/android/airmapview/AirMapMarker;->getId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    invoke-virtual {p1}, Lcom/airbnb/android/airmapview/AirMapMarker;->getTitle()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    .line 170
    invoke-virtual {p1}, Lcom/airbnb/android/airmapview/AirMapMarker;->getSnippet()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x5

    invoke-virtual {p1}, Lcom/airbnb/android/airmapview/AirMapMarker;->getMarkerOptions()Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/maps/model/MarkerOptions;->isDraggable()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    .line 167
    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 166
    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 171
    return-void
.end method

.method public addPolygon(Lcom/airbnb/android/airmapview/AirMapPolygon;)V
    .locals 12
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
    .line 273
    .local p1, "polygon":Lcom/airbnb/android/airmapview/AirMapPolygon;, "Lcom/airbnb/android/airmapview/AirMapPolygon<TT;>;"
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 274
    .local v0, "array":Lorg/json/JSONArray;
    invoke-virtual {p1}, Lcom/airbnb/android/airmapview/AirMapPolygon;->getPolygonOptions()Lcom/google/android/gms/maps/model/PolygonOptions;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/maps/model/PolygonOptions;->getPoints()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/maps/model/LatLng;

    .line 275
    .local v3, "point":Lcom/google/android/gms/maps/model/LatLng;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 276
    .local v2, "json":Lorg/json/JSONObject;
    const-string v5, "lat"

    iget-wide v6, v3, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-virtual {v2, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 277
    const-string v5, "lng"

    iget-wide v6, v3, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-virtual {v2, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 278
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 287
    .end local v0    # "array":Lorg/json/JSONArray;
    .end local v2    # "json":Lorg/json/JSONObject;
    .end local v3    # "point":Lcom/google/android/gms/maps/model/LatLng;
    :catch_0
    move-exception v1

    .line 288
    .local v1, "e":Lorg/json/JSONException;
    sget-object v4, Lcom/airbnb/android/airmapview/WebViewMapFragment;->TAG:Ljava/lang/String;

    const-string v5, "error constructing polyline JSON"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 290
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_1
    return-void

    .line 281
    .restart local v0    # "array":Lorg/json/JSONArray;
    :cond_0
    :try_start_1
    iget-object v4, p0, Lcom/airbnb/android/airmapview/WebViewMapFragment;->webView:Landroid/webkit/WebView;

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "javascript:addPolygon("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 282
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", %1$d, %2$d, %3$d, %4$d);"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    .line 283
    invoke-virtual {p1}, Lcom/airbnb/android/airmapview/AirMapPolygon;->getId()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    .line 284
    invoke-virtual {p1}, Lcom/airbnb/android/airmapview/AirMapPolygon;->getPolygonOptions()Lcom/google/android/gms/maps/model/PolygonOptions;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/gms/maps/model/PolygonOptions;->getStrokeWidth()F

    move-result v9

    float-to-int v9, v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    .line 285
    invoke-virtual {p1}, Lcom/airbnb/android/airmapview/AirMapPolygon;->getPolygonOptions()Lcom/google/android/gms/maps/model/PolygonOptions;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/gms/maps/model/PolygonOptions;->getStrokeColor()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    .line 286
    invoke-virtual {p1}, Lcom/airbnb/android/airmapview/AirMapPolygon;->getPolygonOptions()Lcom/google/android/gms/maps/model/PolygonOptions;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/gms/maps/model/PolygonOptions;->getFillColor()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    .line 281
    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public addPolyline(Lcom/airbnb/android/airmapview/AirMapPolyline;)V
    .locals 10
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
    .line 251
    .local p1, "polyline":Lcom/airbnb/android/airmapview/AirMapPolyline;, "Lcom/airbnb/android/airmapview/AirMapPolyline<TT;>;"
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 252
    .local v0, "array":Lorg/json/JSONArray;
    invoke-virtual {p1}, Lcom/airbnb/android/airmapview/AirMapPolyline;->getPoints()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/maps/model/LatLng;

    .line 253
    .local v3, "point":Lcom/google/android/gms/maps/model/LatLng;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 254
    .local v2, "json":Lorg/json/JSONObject;
    const-string v5, "lat"

    iget-wide v6, v3, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-virtual {v2, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 255
    const-string v5, "lng"

    iget-wide v6, v3, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-virtual {v2, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 256
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 262
    .end local v0    # "array":Lorg/json/JSONArray;
    .end local v2    # "json":Lorg/json/JSONObject;
    .end local v3    # "point":Lcom/google/android/gms/maps/model/LatLng;
    :catch_0
    move-exception v1

    .line 263
    .local v1, "e":Lorg/json/JSONException;
    sget-object v4, Lcom/airbnb/android/airmapview/WebViewMapFragment;->TAG:Ljava/lang/String;

    const-string v5, "error constructing polyline JSON"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 265
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_1
    return-void

    .line 259
    .restart local v0    # "array":Lorg/json/JSONArray;
    :cond_0
    :try_start_1
    iget-object v4, p0, Lcom/airbnb/android/airmapview/WebViewMapFragment;->webView:Landroid/webkit/WebView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "javascript:addPolyline("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 260
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", %1$d, %2$d, %3$d);"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    .line 261
    invoke-virtual {p1}, Lcom/airbnb/android/airmapview/AirMapPolyline;->getId()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-virtual {p1}, Lcom/airbnb/android/airmapview/AirMapPolyline;->getStrokeWidth()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    invoke-virtual {p1}, Lcom/airbnb/android/airmapview/AirMapPolyline;->getStrokeColor()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    .line 259
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public animateCenter(Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 0
    .param p1, "latLng"    # Lcom/google/android/gms/maps/model/LatLng;

    .prologue
    .line 120
    invoke-virtual {p0, p1}, Lcom/airbnb/android/airmapview/WebViewMapFragment;->setCenter(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 121
    return-void
.end method

.method public animateCenterZoom(Lcom/google/android/gms/maps/model/LatLng;I)V
    .locals 0
    .param p1, "latLng"    # Lcom/google/android/gms/maps/model/LatLng;
    .param p2, "zoom"    # I

    .prologue
    .line 207
    invoke-virtual {p0, p1, p2}, Lcom/airbnb/android/airmapview/WebViewMapFragment;->setCenterZoom(Lcom/google/android/gms/maps/model/LatLng;I)V

    .line 208
    return-void
.end method

.method public clearGeoJsonLayer()V
    .locals 2

    .prologue
    .line 496
    iget-object v0, p0, Lcom/airbnb/android/airmapview/WebViewMapFragment;->webView:Landroid/webkit/WebView;

    const-string v1, "javascript:removeGeoJsonLayer();"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 497
    return-void
.end method

.method public clearMarkers()V
    .locals 2

    .prologue
    .line 186
    iget-object v0, p0, Lcom/airbnb/android/airmapview/WebViewMapFragment;->markers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 187
    iget-object v0, p0, Lcom/airbnb/android/airmapview/WebViewMapFragment;->webView:Landroid/webkit/WebView;

    const-string v1, "javascript:clearMarkers();"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 188
    return-void
.end method

.method public drawCircle(Lcom/google/android/gms/maps/model/LatLng;I)V
    .locals 1
    .param p1, "latLng"    # Lcom/google/android/gms/maps/model/LatLng;
    .param p2, "radius"    # I

    .prologue
    .line 128
    const/high16 v0, -0x1000000

    invoke-virtual {p0, p1, p2, v0}, Lcom/airbnb/android/airmapview/WebViewMapFragment;->drawCircle(Lcom/google/android/gms/maps/model/LatLng;II)V

    .line 129
    return-void
.end method

.method public drawCircle(Lcom/google/android/gms/maps/model/LatLng;II)V
    .locals 1
    .param p1, "latLng"    # Lcom/google/android/gms/maps/model/LatLng;
    .param p2, "radius"    # I
    .param p3, "borderColor"    # I

    .prologue
    .line 132
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/airbnb/android/airmapview/WebViewMapFragment;->drawCircle(Lcom/google/android/gms/maps/model/LatLng;III)V

    .line 133
    return-void
.end method

.method public drawCircle(Lcom/google/android/gms/maps/model/LatLng;III)V
    .locals 6
    .param p1, "latLng"    # Lcom/google/android/gms/maps/model/LatLng;
    .param p2, "radius"    # I
    .param p3, "borderColor"    # I
    .param p4, "borderWidth"    # I

    .prologue
    .line 136
    const v5, -0xff2e3f

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/airbnb/android/airmapview/WebViewMapFragment;->drawCircle(Lcom/google/android/gms/maps/model/LatLng;IIII)V

    .line 137
    return-void
.end method

.method public drawCircle(Lcom/google/android/gms/maps/model/LatLng;IIII)V
    .locals 8
    .param p1, "latLng"    # Lcom/google/android/gms/maps/model/LatLng;
    .param p2, "radius"    # I
    .param p3, "borderColor"    # I
    .param p4, "borderWidth"    # I
    .param p5, "fillColor"    # I

    .prologue
    .line 141
    iget-object v0, p0, Lcom/airbnb/android/airmapview/WebViewMapFragment;->webView:Landroid/webkit/WebView;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "javascript:addCircle(%1$f, %2$f, %3$d, %4$d, %5$d, %6$d);"

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-wide v6, p1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    .line 143
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-wide v6, p1, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    .line 144
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x5

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 142
    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 141
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 145
    return-void
.end method

.method public getCenter()Lcom/google/android/gms/maps/model/LatLng;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/airbnb/android/airmapview/WebViewMapFragment;->center:Lcom/google/android/gms/maps/model/LatLng;

    return-object v0
.end method

.method public getMapScreenBounds(Lcom/airbnb/android/airmapview/listeners/OnMapBoundsCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/airbnb/android/airmapview/listeners/OnMapBoundsCallback;

    .prologue
    .line 310
    iput-object p1, p0, Lcom/airbnb/android/airmapview/WebViewMapFragment;->onMapBoundsCallback:Lcom/airbnb/android/airmapview/listeners/OnMapBoundsCallback;

    .line 311
    iget-object v0, p0, Lcom/airbnb/android/airmapview/WebViewMapFragment;->webView:Landroid/webkit/WebView;

    const-string v1, "javascript:getBounds();"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 312
    return-void
.end method

.method public getScreenLocation(Lcom/google/android/gms/maps/model/LatLng;Lcom/airbnb/android/airmapview/listeners/OnLatLngScreenLocationCallback;)V
    .locals 8
    .param p1, "latLng"    # Lcom/google/android/gms/maps/model/LatLng;
    .param p2, "callback"    # Lcom/airbnb/android/airmapview/listeners/OnLatLngScreenLocationCallback;

    .prologue
    .line 315
    iput-object p2, p0, Lcom/airbnb/android/airmapview/WebViewMapFragment;->onLatLngScreenLocationCallback:Lcom/airbnb/android/airmapview/listeners/OnLatLngScreenLocationCallback;

    .line 316
    iget-object v0, p0, Lcom/airbnb/android/airmapview/WebViewMapFragment;->webView:Landroid/webkit/WebView;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "javascript:getScreenLocation(%1$f, %2$f);"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-wide v6, p1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    .line 317
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-wide v6, p1, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v3, v4

    .line 316
    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 318
    return-void
.end method

.method public getSnapshot(Lcom/airbnb/android/airmapview/listeners/OnSnapshotReadyListener;)V
    .locals 5
    .param p1, "listener"    # Lcom/airbnb/android/airmapview/listeners/OnSnapshotReadyListener;

    .prologue
    .line 500
    iget-object v3, p0, Lcom/airbnb/android/airmapview/WebViewMapFragment;->webView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->isDrawingCacheEnabled()Z

    move-result v1

    .line 501
    .local v1, "isDrawingCacheEnabled":Z
    iget-object v3, p0, Lcom/airbnb/android/airmapview/WebViewMapFragment;->webView:Landroid/webkit/WebView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->setDrawingCacheEnabled(Z)V

    .line 505
    iget-object v3, p0, Lcom/airbnb/android/airmapview/WebViewMapFragment;->webView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 506
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    .line 507
    .local v2, "newBitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 508
    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 511
    :cond_0
    iget-object v3, p0, Lcom/airbnb/android/airmapview/WebViewMapFragment;->webView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->destroyDrawingCache()V

    .line 512
    iget-object v3, p0, Lcom/airbnb/android/airmapview/WebViewMapFragment;->webView:Landroid/webkit/WebView;

    invoke-virtual {v3, v1}, Landroid/webkit/WebView;->setDrawingCacheEnabled(Z)V

    .line 514
    invoke-interface {p1, v2}, Lcom/airbnb/android/airmapview/listeners/OnSnapshotReadyListener;->onSnapshotReady(Landroid/graphics/Bitmap;)V

    .line 515
    return-void
.end method

.method public getZoom()I
    .locals 1

    .prologue
    .line 107
    iget v0, p0, Lcom/airbnb/android/airmapview/WebViewMapFragment;->zoom:I

    return v0
.end method

.method public highlightMarker(J)V
    .locals 7
    .param p1, "markerId"    # J

    .prologue
    .line 148
    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/airbnb/android/airmapview/WebViewMapFragment;->webView:Landroid/webkit/WebView;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "javascript:highlightMarker(%1$d);"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 151
    :cond_0
    return-void
.end method

.method protected isChinaMode()Z
    .locals 1

    .prologue
    .line 328
    const/4 v0, 0x0

    return v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/airbnb/android/airmapview/WebViewMapFragment;->webView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/airbnb/android/airmapview/WebViewMapFragment;->loaded:Z

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
    .line 242
    iget-boolean v0, p0, Lcom/airbnb/android/airmapview/WebViewMapFragment;->trackUserLocation:Z

    return v0
.end method

.method public moveMarker(Lcom/airbnb/android/airmapview/AirMapMarker;Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 8
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
    .line 174
    .local p1, "marker":Lcom/airbnb/android/airmapview/AirMapMarker;, "Lcom/airbnb/android/airmapview/AirMapMarker<*>;"
    invoke-virtual {p1, p2}, Lcom/airbnb/android/airmapview/AirMapMarker;->setLatLng(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 175
    iget-object v0, p0, Lcom/airbnb/android/airmapview/WebViewMapFragment;->webView:Landroid/webkit/WebView;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "javascript:moveMarker(%1$f, %2$f, \'%3$s\');"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-wide v6, p2, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    .line 177
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-wide v6, p2, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-virtual {p1}, Lcom/airbnb/android/airmapview/AirMapMarker;->getId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    .line 176
    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 175
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 178
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled",
            "AddJavascriptInterface"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 83
    sget v0, Lcom/airbnb/android/airmapview/R$layout;->fragment_webview:I

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    .line 85
    .local v7, "view":Landroid/view/View;
    sget v0, Lcom/airbnb/android/airmapview/R$id;->webview:I

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/airbnb/android/airmapview/WebViewMapFragment;->webView:Landroid/webkit/WebView;

    move-object v0, v7

    .line 86
    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/airbnb/android/airmapview/WebViewMapFragment;->mLayout:Landroid/view/ViewGroup;

    .line 88
    iget-object v0, p0, Lcom/airbnb/android/airmapview/WebViewMapFragment;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v8

    .line 89
    .local v8, "webViewSettings":Landroid/webkit/WebSettings;
    invoke-virtual {v8, v2}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 90
    invoke-virtual {v8, v1}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 91
    invoke-virtual {v8, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 92
    invoke-virtual {v8, v2}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    .line 93
    invoke-virtual {v8, v1}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 94
    invoke-virtual {v8, v1}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    .line 95
    iget-object v0, p0, Lcom/airbnb/android/airmapview/WebViewMapFragment;->webView:Landroid/webkit/WebView;

    new-instance v1, Lcom/airbnb/android/airmapview/WebViewMapFragment$GeoWebChromeClient;

    invoke-direct {v1, p0}, Lcom/airbnb/android/airmapview/WebViewMapFragment$GeoWebChromeClient;-><init>(Lcom/airbnb/android/airmapview/WebViewMapFragment;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 97
    invoke-virtual {p0}, Lcom/airbnb/android/airmapview/WebViewMapFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/android/airmapview/AirMapType;->fromBundle(Landroid/os/Bundle;)Lcom/airbnb/android/airmapview/AirMapType;

    move-result-object v6

    .line 98
    .local v6, "mapType":Lcom/airbnb/android/airmapview/AirMapType;
    iget-object v0, p0, Lcom/airbnb/android/airmapview/WebViewMapFragment;->webView:Landroid/webkit/WebView;

    invoke-virtual {v6}, Lcom/airbnb/android/airmapview/AirMapType;->getDomain()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/airbnb/android/airmapview/WebViewMapFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v6, v2}, Lcom/airbnb/android/airmapview/AirMapType;->getMapData(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "text/html"

    const-string v4, "base64"

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lcom/airbnb/android/airmapview/WebViewMapFragment;->webView:Landroid/webkit/WebView;

    new-instance v1, Lcom/airbnb/android/airmapview/WebViewMapFragment$MapsJavaScriptInterface;

    invoke-direct {v1, p0, v5}, Lcom/airbnb/android/airmapview/WebViewMapFragment$MapsJavaScriptInterface;-><init>(Lcom/airbnb/android/airmapview/WebViewMapFragment;Lcom/airbnb/android/airmapview/WebViewMapFragment$1;)V

    const-string v2, "AirMapView"

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    return-object v7
.end method

.method public onLocationPermissionsGranted()V
    .locals 2

    .prologue
    .line 232
    iget-object v0, p0, Lcom/airbnb/android/airmapview/WebViewMapFragment;->webView:Landroid/webkit/WebView;

    const-string v1, "javascript:startTrackingUserLocation();"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 233
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
    .line 237
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 238
    invoke-static {p0, p1, p3}, Lcom/airbnb/android/airmapview/RuntimePermissionUtils;->onRequestPermissionsResult(Lcom/airbnb/android/airmapview/AirMapInterface;I[I)V

    .line 239
    return-void
.end method

.method public removeMarker(Lcom/airbnb/android/airmapview/AirMapMarker;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/android/airmapview/AirMapMarker",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 181
    .local p1, "marker":Lcom/airbnb/android/airmapview/AirMapMarker;, "Lcom/airbnb/android/airmapview/AirMapMarker<*>;"
    iget-object v0, p0, Lcom/airbnb/android/airmapview/WebViewMapFragment;->markers:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/airbnb/android/airmapview/AirMapMarker;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    iget-object v0, p0, Lcom/airbnb/android/airmapview/WebViewMapFragment;->webView:Landroid/webkit/WebView;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "javascript:removeMarker(%1$d);"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/airbnb/android/airmapview/AirMapMarker;->getId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 183
    return-void
.end method

.method public removePolygon(Lcom/airbnb/android/airmapview/AirMapPolygon;)V
    .locals 8
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
    .line 293
    .local p1, "polygon":Lcom/airbnb/android/airmapview/AirMapPolygon;, "Lcom/airbnb/android/airmapview/AirMapPolygon<TT;>;"
    iget-object v0, p0, Lcom/airbnb/android/airmapview/WebViewMapFragment;->webView:Landroid/webkit/WebView;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "javascript:removePolygon(%1$d);"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/airbnb/android/airmapview/AirMapPolygon;->getId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 294
    return-void
.end method

.method public removePolyline(Lcom/airbnb/android/airmapview/AirMapPolyline;)V
    .locals 8
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
    .line 268
    .local p1, "polyline":Lcom/airbnb/android/airmapview/AirMapPolyline;, "Lcom/airbnb/android/airmapview/AirMapPolyline<TT;>;"
    iget-object v0, p0, Lcom/airbnb/android/airmapview/WebViewMapFragment;->webView:Landroid/webkit/WebView;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "javascript:removePolyline(%1$d);"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/airbnb/android/airmapview/AirMapPolyline;->getId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 269
    return-void
.end method

.method public setArguments(Lcom/airbnb/android/airmapview/AirMapType;)Lcom/airbnb/android/airmapview/WebViewMapFragment;
    .locals 1
    .param p1, "mapType"    # Lcom/airbnb/android/airmapview/AirMapType;

    .prologue
    .line 67
    invoke-virtual {p1}, Lcom/airbnb/android/airmapview/AirMapType;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/airbnb/android/airmapview/WebViewMapFragment;->setArguments(Landroid/os/Bundle;)V

    .line 68
    return-object p0
.end method

.method public setCenter(Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 8
    .param p1, "latLng"    # Lcom/google/android/gms/maps/model/LatLng;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/airbnb/android/airmapview/WebViewMapFragment;->webView:Landroid/webkit/WebView;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "javascript:centerMap(%1$f, %2$f);"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-wide v6, p1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-wide v6, p1, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    .line 116
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v3, v4

    .line 115
    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 117
    return-void
.end method

.method public setCenter(Lcom/google/android/gms/maps/model/LatLngBounds;I)V
    .locals 8
    .param p1, "bounds"    # Lcom/google/android/gms/maps/model/LatLngBounds;
    .param p2, "boundsPadding"    # I

    .prologue
    .line 321
    iget-object v0, p0, Lcom/airbnb/android/airmapview/WebViewMapFragment;->webView:Landroid/webkit/WebView;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "javascript:setBounds(%1$f, %2$f, %3$f, %4$f);"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p1, Lcom/google/android/gms/maps/model/LatLngBounds;->northeast:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v6, v5, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    .line 322
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p1, Lcom/google/android/gms/maps/model/LatLngBounds;->northeast:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v6, v5, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget-object v5, p1, Lcom/google/android/gms/maps/model/LatLngBounds;->southwest:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v6, v5, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    .line 323
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget-object v5, p1, Lcom/google/android/gms/maps/model/LatLngBounds;->southwest:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v6, v5, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    .line 324
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v3, v4

    .line 321
    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 325
    return-void
.end method

.method public setCenterZoom(Lcom/google/android/gms/maps/model/LatLng;I)V
    .locals 0
    .param p1, "latLng"    # Lcom/google/android/gms/maps/model/LatLng;
    .param p2, "zoom"    # I

    .prologue
    .line 202
    invoke-virtual {p0, p1}, Lcom/airbnb/android/airmapview/WebViewMapFragment;->setCenter(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 203
    invoke-virtual {p0, p2}, Lcom/airbnb/android/airmapview/WebViewMapFragment;->setZoom(I)V

    .line 204
    return-void
.end method

.method public setGeoJsonLayer(Lcom/airbnb/android/airmapview/AirMapGeoJsonLayer;)V
    .locals 6
    .param p1, "layer"    # Lcom/airbnb/android/airmapview/AirMapGeoJsonLayer;

    .prologue
    .line 490
    invoke-virtual {p0}, Lcom/airbnb/android/airmapview/WebViewMapFragment;->clearGeoJsonLayer()V

    .line 491
    iget-object v0, p0, Lcom/airbnb/android/airmapview/WebViewMapFragment;->webView:Landroid/webkit/WebView;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "javascript:addGeoJsonLayer(%1$s, %2$f, %3$d, %4$d);"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p1, Lcom/airbnb/android/airmapview/AirMapGeoJsonLayer;->geoJson:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget v5, p1, Lcom/airbnb/android/airmapview/AirMapGeoJsonLayer;->strokeWidth:F

    .line 492
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget v5, p1, Lcom/airbnb/android/airmapview/AirMapGeoJsonLayer;->strokeColor:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget v5, p1, Lcom/airbnb/android/airmapview/AirMapGeoJsonLayer;->fillColor:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 491
    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 493
    return-void
.end method

.method public setInfoWindowCreator(Lcom/google/android/gms/maps/GoogleMap$InfoWindowAdapter;Lcom/airbnb/android/airmapview/listeners/InfoWindowCreator;)V
    .locals 0
    .param p1, "adapter"    # Lcom/google/android/gms/maps/GoogleMap$InfoWindowAdapter;
    .param p2, "creator"    # Lcom/airbnb/android/airmapview/listeners/InfoWindowCreator;

    .prologue
    .line 306
    iput-object p2, p0, Lcom/airbnb/android/airmapview/WebViewMapFragment;->infoWindowCreator:Lcom/airbnb/android/airmapview/listeners/InfoWindowCreator;

    .line 307
    return-void
.end method

.method public setMapToolbarEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 247
    return-void
.end method

.method public setMyLocationEnabled(Z)V
    .locals 2
    .param p1, "trackUserLocationEnabled"    # Z

    .prologue
    .line 223
    iput-boolean p1, p0, Lcom/airbnb/android/airmapview/WebViewMapFragment;->trackUserLocation:Z

    .line 224
    if-eqz p1, :cond_0

    .line 225
    invoke-virtual {p0}, Lcom/airbnb/android/airmapview/WebViewMapFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/airbnb/android/airmapview/RuntimePermissionUtils;->checkLocationPermissions(Landroid/app/Activity;Lcom/airbnb/android/airmapview/AirMapInterface;)Z

    .line 229
    :goto_0
    return-void

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/airbnb/android/airmapview/WebViewMapFragment;->webView:Landroid/webkit/WebView;

    const-string v1, "javascript:stopTrackingUserLocation();"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setOnCameraChangeListener(Lcom/airbnb/android/airmapview/listeners/OnCameraChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/airbnb/android/airmapview/listeners/OnCameraChangeListener;

    .prologue
    .line 191
    iput-object p1, p0, Lcom/airbnb/android/airmapview/WebViewMapFragment;->onCameraChangeListener:Lcom/airbnb/android/airmapview/listeners/OnCameraChangeListener;

    .line 192
    return-void
.end method

.method public setOnInfoWindowClickListener(Lcom/airbnb/android/airmapview/listeners/OnInfoWindowClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/airbnb/android/airmapview/listeners/OnInfoWindowClickListener;

    .prologue
    .line 301
    iput-object p1, p0, Lcom/airbnb/android/airmapview/WebViewMapFragment;->onInfoWindowClickListener:Lcom/airbnb/android/airmapview/listeners/OnInfoWindowClickListener;

    .line 302
    return-void
.end method

.method public setOnMapClickListener(Lcom/airbnb/android/airmapview/listeners/OnMapClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/airbnb/android/airmapview/listeners/OnMapClickListener;

    .prologue
    .line 297
    iput-object p1, p0, Lcom/airbnb/android/airmapview/WebViewMapFragment;->onMapClickListener:Lcom/airbnb/android/airmapview/listeners/OnMapClickListener;

    .line 298
    return-void
.end method

.method public setOnMapLoadedListener(Lcom/airbnb/android/airmapview/listeners/OnMapLoadedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/airbnb/android/airmapview/listeners/OnMapLoadedListener;

    .prologue
    .line 195
    iput-object p1, p0, Lcom/airbnb/android/airmapview/WebViewMapFragment;->onMapLoadedListener:Lcom/airbnb/android/airmapview/listeners/OnMapLoadedListener;

    .line 196
    iget-boolean v0, p0, Lcom/airbnb/android/airmapview/WebViewMapFragment;->loaded:Z

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/airbnb/android/airmapview/WebViewMapFragment;->onMapLoadedListener:Lcom/airbnb/android/airmapview/listeners/OnMapLoadedListener;

    invoke-interface {v0}, Lcom/airbnb/android/airmapview/listeners/OnMapLoadedListener;->onMapLoaded()V

    .line 199
    :cond_0
    return-void
.end method

.method public setOnMarkerClickListener(Lcom/airbnb/android/airmapview/listeners/OnMapMarkerClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/airbnb/android/airmapview/listeners/OnMapMarkerClickListener;

    .prologue
    .line 211
    iput-object p1, p0, Lcom/airbnb/android/airmapview/WebViewMapFragment;->onMapMarkerClickListener:Lcom/airbnb/android/airmapview/listeners/OnMapMarkerClickListener;

    .line 212
    return-void
.end method

.method public setOnMarkerDragListener(Lcom/airbnb/android/airmapview/listeners/OnMapMarkerDragListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/airbnb/android/airmapview/listeners/OnMapMarkerDragListener;

    .prologue
    .line 215
    iput-object p1, p0, Lcom/airbnb/android/airmapview/WebViewMapFragment;->onMapMarkerDragListener:Lcom/airbnb/android/airmapview/listeners/OnMapMarkerDragListener;

    .line 216
    return-void
.end method

.method public setPadding(IIII)V
    .locals 0
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 220
    return-void
.end method

.method public setZoom(I)V
    .locals 6
    .param p1, "zoom"    # I

    .prologue
    .line 124
    iget-object v0, p0, Lcom/airbnb/android/airmapview/WebViewMapFragment;->webView:Landroid/webkit/WebView;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "javascript:setZoom(%1$d);"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 125
    return-void
.end method

.method public unhighlightMarker(J)V
    .locals 7
    .param p1, "markerId"    # J

    .prologue
    .line 154
    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/airbnb/android/airmapview/WebViewMapFragment;->webView:Landroid/webkit/WebView;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "javascript:unhighlightMarker(%1$d);"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 157
    :cond_0
    return-void
.end method
