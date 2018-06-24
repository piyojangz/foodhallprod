.class public Lcom/airbnb/android/react/maps/AirMapPolyline;
.super Lcom/airbnb/android/react/maps/AirMapFeature;
.source "AirMapPolyline.java"


# instance fields
.field private color:I

.field private coordinates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;"
        }
    .end annotation
.end field

.field private geodesic:Z

.field private polyline:Lcom/google/android/gms/maps/model/Polyline;

.field private polylineOptions:Lcom/google/android/gms/maps/model/PolylineOptions;

.field private width:F

.field private zIndex:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/airbnb/android/react/maps/AirMapFeature;-><init>(Landroid/content/Context;)V

    .line 28
    return-void
.end method

.method private createPolylineOptions()Lcom/google/android/gms/maps/model/PolylineOptions;
    .locals 2

    .prologue
    .line 78
    new-instance v0, Lcom/google/android/gms/maps/model/PolylineOptions;

    invoke-direct {v0}, Lcom/google/android/gms/maps/model/PolylineOptions;-><init>()V

    .line 79
    .local v0, "options":Lcom/google/android/gms/maps/model/PolylineOptions;
    iget-object v1, p0, Lcom/airbnb/android/react/maps/AirMapPolyline;->coordinates:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/PolylineOptions;->addAll(Ljava/lang/Iterable;)Lcom/google/android/gms/maps/model/PolylineOptions;

    .line 80
    iget v1, p0, Lcom/airbnb/android/react/maps/AirMapPolyline;->color:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/PolylineOptions;->color(I)Lcom/google/android/gms/maps/model/PolylineOptions;

    .line 81
    iget v1, p0, Lcom/airbnb/android/react/maps/AirMapPolyline;->width:F

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/PolylineOptions;->width(F)Lcom/google/android/gms/maps/model/PolylineOptions;

    .line 82
    iget-boolean v1, p0, Lcom/airbnb/android/react/maps/AirMapPolyline;->geodesic:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/PolylineOptions;->geodesic(Z)Lcom/google/android/gms/maps/model/PolylineOptions;

    .line 83
    iget v1, p0, Lcom/airbnb/android/react/maps/AirMapPolyline;->zIndex:F

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/PolylineOptions;->zIndex(F)Lcom/google/android/gms/maps/model/PolylineOptions;

    .line 84
    return-object v0
.end method


# virtual methods
.method public addToMap(Lcom/google/android/gms/maps/GoogleMap;)V
    .locals 2
    .param p1, "map"    # Lcom/google/android/gms/maps/GoogleMap;

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/airbnb/android/react/maps/AirMapPolyline;->getPolylineOptions()Lcom/google/android/gms/maps/model/PolylineOptions;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/GoogleMap;->addPolyline(Lcom/google/android/gms/maps/model/PolylineOptions;)Lcom/google/android/gms/maps/model/Polyline;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/react/maps/AirMapPolyline;->polyline:Lcom/google/android/gms/maps/model/Polyline;

    .line 95
    iget-object v0, p0, Lcom/airbnb/android/react/maps/AirMapPolyline;->polyline:Lcom/google/android/gms/maps/model/Polyline;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/Polyline;->setClickable(Z)V

    .line 96
    return-void
.end method

.method public getFeature()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/airbnb/android/react/maps/AirMapPolyline;->polyline:Lcom/google/android/gms/maps/model/Polyline;

    return-object v0
.end method

.method public getPolylineOptions()Lcom/google/android/gms/maps/model/PolylineOptions;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/airbnb/android/react/maps/AirMapPolyline;->polylineOptions:Lcom/google/android/gms/maps/model/PolylineOptions;

    if-nez v0, :cond_0

    .line 72
    invoke-direct {p0}, Lcom/airbnb/android/react/maps/AirMapPolyline;->createPolylineOptions()Lcom/google/android/gms/maps/model/PolylineOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/react/maps/AirMapPolyline;->polylineOptions:Lcom/google/android/gms/maps/model/PolylineOptions;

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/airbnb/android/react/maps/AirMapPolyline;->polylineOptions:Lcom/google/android/gms/maps/model/PolylineOptions;

    return-object v0
.end method

.method public removeFromMap(Lcom/google/android/gms/maps/GoogleMap;)V
    .locals 1
    .param p1, "map"    # Lcom/google/android/gms/maps/GoogleMap;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/airbnb/android/react/maps/AirMapPolyline;->polyline:Lcom/google/android/gms/maps/model/Polyline;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Polyline;->remove()V

    .line 101
    return-void
.end method

.method public setColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 43
    iput p1, p0, Lcom/airbnb/android/react/maps/AirMapPolyline;->color:I

    .line 44
    iget-object v0, p0, Lcom/airbnb/android/react/maps/AirMapPolyline;->polyline:Lcom/google/android/gms/maps/model/Polyline;

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/airbnb/android/react/maps/AirMapPolyline;->polyline:Lcom/google/android/gms/maps/model/Polyline;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/model/Polyline;->setColor(I)V

    .line 47
    :cond_0
    return-void
.end method

.method public setCoordinates(Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 8
    .param p1, "coordinates"    # Lcom/facebook/react/bridge/ReadableArray;

    .prologue
    .line 31
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p1}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/airbnb/android/react/maps/AirMapPolyline;->coordinates:Ljava/util/List;

    .line 32
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p1}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 33
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableArray;->getMap(I)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v0

    .line 34
    .local v0, "coordinate":Lcom/facebook/react/bridge/ReadableMap;
    iget-object v2, p0, Lcom/airbnb/android/react/maps/AirMapPolyline;->coordinates:Ljava/util/List;

    new-instance v3, Lcom/google/android/gms/maps/model/LatLng;

    const-string v4, "latitude"

    .line 35
    invoke-interface {v0, v4}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    const-string v6, "longitude"

    invoke-interface {v0, v6}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v6

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 34
    invoke-interface {v2, v1, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 32
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 37
    .end local v0    # "coordinate":Lcom/facebook/react/bridge/ReadableMap;
    :cond_0
    iget-object v2, p0, Lcom/airbnb/android/react/maps/AirMapPolyline;->polyline:Lcom/google/android/gms/maps/model/Polyline;

    if-eqz v2, :cond_1

    .line 38
    iget-object v2, p0, Lcom/airbnb/android/react/maps/AirMapPolyline;->polyline:Lcom/google/android/gms/maps/model/Polyline;

    iget-object v3, p0, Lcom/airbnb/android/react/maps/AirMapPolyline;->coordinates:Ljava/util/List;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/maps/model/Polyline;->setPoints(Ljava/util/List;)V

    .line 40
    :cond_1
    return-void
.end method

.method public setGeodesic(Z)V
    .locals 1
    .param p1, "geodesic"    # Z

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/airbnb/android/react/maps/AirMapPolyline;->geodesic:Z

    .line 65
    iget-object v0, p0, Lcom/airbnb/android/react/maps/AirMapPolyline;->polyline:Lcom/google/android/gms/maps/model/Polyline;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/airbnb/android/react/maps/AirMapPolyline;->polyline:Lcom/google/android/gms/maps/model/Polyline;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/model/Polyline;->setGeodesic(Z)V

    .line 68
    :cond_0
    return-void
.end method

.method public setWidth(F)V
    .locals 1
    .param p1, "width"    # F

    .prologue
    .line 50
    iput p1, p0, Lcom/airbnb/android/react/maps/AirMapPolyline;->width:F

    .line 51
    iget-object v0, p0, Lcom/airbnb/android/react/maps/AirMapPolyline;->polyline:Lcom/google/android/gms/maps/model/Polyline;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/airbnb/android/react/maps/AirMapPolyline;->polyline:Lcom/google/android/gms/maps/model/Polyline;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/model/Polyline;->setWidth(F)V

    .line 54
    :cond_0
    return-void
.end method

.method public setZIndex(F)V
    .locals 1
    .param p1, "zIndex"    # F

    .prologue
    .line 57
    iput p1, p0, Lcom/airbnb/android/react/maps/AirMapPolyline;->zIndex:F

    .line 58
    iget-object v0, p0, Lcom/airbnb/android/react/maps/AirMapPolyline;->polyline:Lcom/google/android/gms/maps/model/Polyline;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/airbnb/android/react/maps/AirMapPolyline;->polyline:Lcom/google/android/gms/maps/model/Polyline;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/model/Polyline;->setZIndex(F)V

    .line 61
    :cond_0
    return-void
.end method
