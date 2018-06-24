.class Lcom/airbnb/android/airmapview/WebViewMapFragment$MapsJavaScriptInterface;
.super Ljava/lang/Object;
.source "WebViewMapFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/airmapview/WebViewMapFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MapsJavaScriptInterface"
.end annotation


# instance fields
.field private final handler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/airbnb/android/airmapview/WebViewMapFragment;


# direct methods
.method private constructor <init>(Lcom/airbnb/android/airmapview/WebViewMapFragment;)V
    .locals 2

    .prologue
    .line 331
    iput-object p1, p0, Lcom/airbnb/android/airmapview/WebViewMapFragment$MapsJavaScriptInterface;->this$0:Lcom/airbnb/android/airmapview/WebViewMapFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 332
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/airbnb/android/airmapview/WebViewMapFragment$MapsJavaScriptInterface;->handler:Landroid/os/Handler;

    return-void
.end method

.method synthetic constructor <init>(Lcom/airbnb/android/airmapview/WebViewMapFragment;Lcom/airbnb/android/airmapview/WebViewMapFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/airbnb/android/airmapview/WebViewMapFragment;
    .param p2, "x1"    # Lcom/airbnb/android/airmapview/WebViewMapFragment$1;

    .prologue
    .line 331
    invoke-direct {p0, p1}, Lcom/airbnb/android/airmapview/WebViewMapFragment$MapsJavaScriptInterface;-><init>(Lcom/airbnb/android/airmapview/WebViewMapFragment;)V

    return-void
.end method


# virtual methods
.method public defaultInfoWindowClick(J)V
    .locals 3
    .param p1, "markerId"    # J
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 477
    iget-object v1, p0, Lcom/airbnb/android/airmapview/WebViewMapFragment$MapsJavaScriptInterface;->this$0:Lcom/airbnb/android/airmapview/WebViewMapFragment;

    invoke-static {v1}, Lcom/airbnb/android/airmapview/WebViewMapFragment;->access$1200(Lcom/airbnb/android/airmapview/WebViewMapFragment;)Ljava/util/Map;

    move-result-object v1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/airmapview/AirMapMarker;

    .line 478
    .local v0, "airMapMarker":Lcom/airbnb/android/airmapview/AirMapMarker;, "Lcom/airbnb/android/airmapview/AirMapMarker<*>;"
    iget-object v1, p0, Lcom/airbnb/android/airmapview/WebViewMapFragment$MapsJavaScriptInterface;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/airbnb/android/airmapview/WebViewMapFragment$MapsJavaScriptInterface$10;

    invoke-direct {v2, p0, v0}, Lcom/airbnb/android/airmapview/WebViewMapFragment$MapsJavaScriptInterface$10;-><init>(Lcom/airbnb/android/airmapview/WebViewMapFragment$MapsJavaScriptInterface;Lcom/airbnb/android/airmapview/AirMapMarker;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 485
    return-void
.end method

.method public getBoundsCallback(DDDD)V
    .locals 3
    .param p1, "neLat"    # D
    .param p3, "neLng"    # D
    .param p5, "swLat"    # D
    .param p7, "swLng"    # D
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 366
    new-instance v0, Lcom/google/android/gms/maps/model/LatLngBounds;

    new-instance v1, Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {v1, p5, p6, p7, p8}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    new-instance v2, Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {v2, p1, p2, p3, p4}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/maps/model/LatLngBounds;-><init>(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)V

    .line 368
    .local v0, "bounds":Lcom/google/android/gms/maps/model/LatLngBounds;
    iget-object v1, p0, Lcom/airbnb/android/airmapview/WebViewMapFragment$MapsJavaScriptInterface;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/airbnb/android/airmapview/WebViewMapFragment$MapsJavaScriptInterface$3;

    invoke-direct {v2, p0, v0}, Lcom/airbnb/android/airmapview/WebViewMapFragment$MapsJavaScriptInterface$3;-><init>(Lcom/airbnb/android/airmapview/WebViewMapFragment$MapsJavaScriptInterface;Lcom/google/android/gms/maps/model/LatLngBounds;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 373
    return-void
.end method

.method public getLatLngScreenLocationCallback(II)V
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 376
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    .line 377
    .local v0, "point":Landroid/graphics/Point;
    iget-object v1, p0, Lcom/airbnb/android/airmapview/WebViewMapFragment$MapsJavaScriptInterface;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/airbnb/android/airmapview/WebViewMapFragment$MapsJavaScriptInterface$4;

    invoke-direct {v2, p0, v0}, Lcom/airbnb/android/airmapview/WebViewMapFragment$MapsJavaScriptInterface$4;-><init>(Lcom/airbnb/android/airmapview/WebViewMapFragment$MapsJavaScriptInterface;Landroid/graphics/Point;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 382
    return-void
.end method

.method public isChinaMode()Z
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 335
    iget-object v0, p0, Lcom/airbnb/android/airmapview/WebViewMapFragment$MapsJavaScriptInterface;->this$0:Lcom/airbnb/android/airmapview/WebViewMapFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/airmapview/WebViewMapFragment;->isChinaMode()Z

    move-result v0

    return v0
.end method

.method public mapClick(DD)V
    .locals 7
    .param p1, "lat"    # D
    .param p3, "lng"    # D
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 352
    iget-object v6, p0, Lcom/airbnb/android/airmapview/WebViewMapFragment$MapsJavaScriptInterface;->handler:Landroid/os/Handler;

    new-instance v0, Lcom/airbnb/android/airmapview/WebViewMapFragment$MapsJavaScriptInterface$2;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/airbnb/android/airmapview/WebViewMapFragment$MapsJavaScriptInterface$2;-><init>(Lcom/airbnb/android/airmapview/WebViewMapFragment$MapsJavaScriptInterface;DD)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 362
    return-void
.end method

.method public mapMove(DDI)V
    .locals 3
    .param p1, "lat"    # D
    .param p3, "lng"    # D
    .param p5, "zoom"    # I
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 385
    iget-object v0, p0, Lcom/airbnb/android/airmapview/WebViewMapFragment$MapsJavaScriptInterface;->this$0:Lcom/airbnb/android/airmapview/WebViewMapFragment;

    new-instance v1, Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-static {v0, v1}, Lcom/airbnb/android/airmapview/WebViewMapFragment;->access$802(Lcom/airbnb/android/airmapview/WebViewMapFragment;Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/LatLng;

    .line 386
    iget-object v0, p0, Lcom/airbnb/android/airmapview/WebViewMapFragment$MapsJavaScriptInterface;->this$0:Lcom/airbnb/android/airmapview/WebViewMapFragment;

    invoke-static {v0, p5}, Lcom/airbnb/android/airmapview/WebViewMapFragment;->access$902(Lcom/airbnb/android/airmapview/WebViewMapFragment;I)I

    .line 388
    iget-object v0, p0, Lcom/airbnb/android/airmapview/WebViewMapFragment$MapsJavaScriptInterface;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/airbnb/android/airmapview/WebViewMapFragment$MapsJavaScriptInterface$5;

    invoke-direct {v1, p0}, Lcom/airbnb/android/airmapview/WebViewMapFragment$MapsJavaScriptInterface$5;-><init>(Lcom/airbnb/android/airmapview/WebViewMapFragment$MapsJavaScriptInterface;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 404
    return-void
.end method

.method public markerClick(J)V
    .locals 3
    .param p1, "markerId"    # J
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 407
    iget-object v1, p0, Lcom/airbnb/android/airmapview/WebViewMapFragment$MapsJavaScriptInterface;->this$0:Lcom/airbnb/android/airmapview/WebViewMapFragment;

    invoke-static {v1}, Lcom/airbnb/android/airmapview/WebViewMapFragment;->access$1200(Lcom/airbnb/android/airmapview/WebViewMapFragment;)Ljava/util/Map;

    move-result-object v1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/airmapview/AirMapMarker;

    .line 408
    .local v0, "airMapMarker":Lcom/airbnb/android/airmapview/AirMapMarker;, "Lcom/airbnb/android/airmapview/AirMapMarker<*>;"
    iget-object v1, p0, Lcom/airbnb/android/airmapview/WebViewMapFragment$MapsJavaScriptInterface;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/airbnb/android/airmapview/WebViewMapFragment$MapsJavaScriptInterface$6;

    invoke-direct {v2, p0, v0}, Lcom/airbnb/android/airmapview/WebViewMapFragment$MapsJavaScriptInterface$6;-><init>(Lcom/airbnb/android/airmapview/WebViewMapFragment$MapsJavaScriptInterface;Lcom/airbnb/android/airmapview/AirMapMarker;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 441
    return-void
.end method

.method public markerDrag(JDD)V
    .locals 9
    .param p1, "markerId"    # J
    .param p3, "lat"    # D
    .param p5, "lng"    # D
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 456
    iget-object v8, p0, Lcom/airbnb/android/airmapview/WebViewMapFragment$MapsJavaScriptInterface;->handler:Landroid/os/Handler;

    new-instance v0, Lcom/airbnb/android/airmapview/WebViewMapFragment$MapsJavaScriptInterface$8;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move-wide v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/airbnb/android/airmapview/WebViewMapFragment$MapsJavaScriptInterface$8;-><init>(Lcom/airbnb/android/airmapview/WebViewMapFragment$MapsJavaScriptInterface;JDD)V

    invoke-virtual {v8, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 463
    return-void
.end method

.method public markerDragEnd(JDD)V
    .locals 9
    .param p1, "markerId"    # J
    .param p3, "lat"    # D
    .param p5, "lng"    # D
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 467
    iget-object v8, p0, Lcom/airbnb/android/airmapview/WebViewMapFragment$MapsJavaScriptInterface;->handler:Landroid/os/Handler;

    new-instance v0, Lcom/airbnb/android/airmapview/WebViewMapFragment$MapsJavaScriptInterface$9;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move-wide v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/airbnb/android/airmapview/WebViewMapFragment$MapsJavaScriptInterface$9;-><init>(Lcom/airbnb/android/airmapview/WebViewMapFragment$MapsJavaScriptInterface;JDD)V

    invoke-virtual {v8, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 474
    return-void
.end method

.method public markerDragStart(JDD)V
    .locals 9
    .param p1, "markerId"    # J
    .param p3, "lat"    # D
    .param p5, "lng"    # D
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 445
    iget-object v8, p0, Lcom/airbnb/android/airmapview/WebViewMapFragment$MapsJavaScriptInterface;->handler:Landroid/os/Handler;

    new-instance v0, Lcom/airbnb/android/airmapview/WebViewMapFragment$MapsJavaScriptInterface$7;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move-wide v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/airbnb/android/airmapview/WebViewMapFragment$MapsJavaScriptInterface$7;-><init>(Lcom/airbnb/android/airmapview/WebViewMapFragment$MapsJavaScriptInterface;JDD)V

    invoke-virtual {v8, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 452
    return-void
.end method

.method public onMapLoaded()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 339
    iget-object v0, p0, Lcom/airbnb/android/airmapview/WebViewMapFragment$MapsJavaScriptInterface;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/airbnb/android/airmapview/WebViewMapFragment$MapsJavaScriptInterface$1;

    invoke-direct {v1, p0}, Lcom/airbnb/android/airmapview/WebViewMapFragment$MapsJavaScriptInterface$1;-><init>(Lcom/airbnb/android/airmapview/WebViewMapFragment$MapsJavaScriptInterface;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 349
    return-void
.end method
