.class public Lcom/airbnb/android/react/maps/AirMapPolygon;
.super Lcom/airbnb/android/react/maps/AirMapFeature;
.source "AirMapPolygon.java"


# instance fields
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

.field private fillColor:I

.field private geodesic:Z

.field private polygon:Lcom/google/android/gms/maps/model/Polygon;

.field private polygonOptions:Lcom/google/android/gms/maps/model/PolygonOptions;

.field private strokeColor:I

.field private strokeWidth:F

.field private zIndex:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/airbnb/android/react/maps/AirMapFeature;-><init>(Landroid/content/Context;)V

    .line 29
    return-void
.end method

.method private createPolygonOptions()Lcom/google/android/gms/maps/model/PolygonOptions;
    .locals 2

    .prologue
    .line 87
    new-instance v0, Lcom/google/android/gms/maps/model/PolygonOptions;

    invoke-direct {v0}, Lcom/google/android/gms/maps/model/PolygonOptions;-><init>()V

    .line 88
    .local v0, "options":Lcom/google/android/gms/maps/model/PolygonOptions;
    iget-object v1, p0, Lcom/airbnb/android/react/maps/AirMapPolygon;->coordinates:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/PolygonOptions;->addAll(Ljava/lang/Iterable;)Lcom/google/android/gms/maps/model/PolygonOptions;

    .line 89
    iget v1, p0, Lcom/airbnb/android/react/maps/AirMapPolygon;->fillColor:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/PolygonOptions;->fillColor(I)Lcom/google/android/gms/maps/model/PolygonOptions;

    .line 90
    iget v1, p0, Lcom/airbnb/android/react/maps/AirMapPolygon;->strokeColor:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/PolygonOptions;->strokeColor(I)Lcom/google/android/gms/maps/model/PolygonOptions;

    .line 91
    iget v1, p0, Lcom/airbnb/android/react/maps/AirMapPolygon;->strokeWidth:F

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/PolygonOptions;->strokeWidth(F)Lcom/google/android/gms/maps/model/PolygonOptions;

    .line 92
    iget-boolean v1, p0, Lcom/airbnb/android/react/maps/AirMapPolygon;->geodesic:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/PolygonOptions;->geodesic(Z)Lcom/google/android/gms/maps/model/PolygonOptions;

    .line 93
    iget v1, p0, Lcom/airbnb/android/react/maps/AirMapPolygon;->zIndex:F

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/PolygonOptions;->zIndex(F)Lcom/google/android/gms/maps/model/PolygonOptions;

    .line 94
    return-object v0
.end method


# virtual methods
.method public addToMap(Lcom/google/android/gms/maps/GoogleMap;)V
    .locals 2
    .param p1, "map"    # Lcom/google/android/gms/maps/GoogleMap;

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/airbnb/android/react/maps/AirMapPolygon;->getPolygonOptions()Lcom/google/android/gms/maps/model/PolygonOptions;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/GoogleMap;->addPolygon(Lcom/google/android/gms/maps/model/PolygonOptions;)Lcom/google/android/gms/maps/model/Polygon;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/react/maps/AirMapPolygon;->polygon:Lcom/google/android/gms/maps/model/Polygon;

    .line 105
    iget-object v0, p0, Lcom/airbnb/android/react/maps/AirMapPolygon;->polygon:Lcom/google/android/gms/maps/model/Polygon;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/Polygon;->setClickable(Z)V

    .line 106
    return-void
.end method

.method public getFeature()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/airbnb/android/react/maps/AirMapPolygon;->polygon:Lcom/google/android/gms/maps/model/Polygon;

    return-object v0
.end method

.method public getPolygonOptions()Lcom/google/android/gms/maps/model/PolygonOptions;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/airbnb/android/react/maps/AirMapPolygon;->polygonOptions:Lcom/google/android/gms/maps/model/PolygonOptions;

    if-nez v0, :cond_0

    .line 81
    invoke-direct {p0}, Lcom/airbnb/android/react/maps/AirMapPolygon;->createPolygonOptions()Lcom/google/android/gms/maps/model/PolygonOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/react/maps/AirMapPolygon;->polygonOptions:Lcom/google/android/gms/maps/model/PolygonOptions;

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/airbnb/android/react/maps/AirMapPolygon;->polygonOptions:Lcom/google/android/gms/maps/model/PolygonOptions;

    return-object v0
.end method

.method public removeFromMap(Lcom/google/android/gms/maps/GoogleMap;)V
    .locals 1
    .param p1, "map"    # Lcom/google/android/gms/maps/GoogleMap;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/airbnb/android/react/maps/AirMapPolygon;->polygon:Lcom/google/android/gms/maps/model/Polygon;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Polygon;->remove()V

    .line 111
    return-void
.end method

.method public setCoordinates(Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 8
    .param p1, "coordinates"    # Lcom/facebook/react/bridge/ReadableArray;

    .prologue
    .line 33
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p1}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/airbnb/android/react/maps/AirMapPolygon;->coordinates:Ljava/util/List;

    .line 34
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p1}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 35
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableArray;->getMap(I)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v0

    .line 36
    .local v0, "coordinate":Lcom/facebook/react/bridge/ReadableMap;
    iget-object v2, p0, Lcom/airbnb/android/react/maps/AirMapPolygon;->coordinates:Ljava/util/List;

    new-instance v3, Lcom/google/android/gms/maps/model/LatLng;

    const-string v4, "latitude"

    .line 37
    invoke-interface {v0, v4}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    const-string v6, "longitude"

    invoke-interface {v0, v6}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v6

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 36
    invoke-interface {v2, v1, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 34
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 39
    .end local v0    # "coordinate":Lcom/facebook/react/bridge/ReadableMap;
    :cond_0
    iget-object v2, p0, Lcom/airbnb/android/react/maps/AirMapPolygon;->polygon:Lcom/google/android/gms/maps/model/Polygon;

    if-eqz v2, :cond_1

    .line 40
    iget-object v2, p0, Lcom/airbnb/android/react/maps/AirMapPolygon;->polygon:Lcom/google/android/gms/maps/model/Polygon;

    iget-object v3, p0, Lcom/airbnb/android/react/maps/AirMapPolygon;->coordinates:Ljava/util/List;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/maps/model/Polygon;->setPoints(Ljava/util/List;)V

    .line 42
    :cond_1
    return-void
.end method

.method public setFillColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 45
    iput p1, p0, Lcom/airbnb/android/react/maps/AirMapPolygon;->fillColor:I

    .line 46
    iget-object v0, p0, Lcom/airbnb/android/react/maps/AirMapPolygon;->polygon:Lcom/google/android/gms/maps/model/Polygon;

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/airbnb/android/react/maps/AirMapPolygon;->polygon:Lcom/google/android/gms/maps/model/Polygon;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/model/Polygon;->setFillColor(I)V

    .line 49
    :cond_0
    return-void
.end method

.method public setGeodesic(Z)V
    .locals 1
    .param p1, "geodesic"    # Z

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/airbnb/android/react/maps/AirMapPolygon;->geodesic:Z

    .line 67
    iget-object v0, p0, Lcom/airbnb/android/react/maps/AirMapPolygon;->polygon:Lcom/google/android/gms/maps/model/Polygon;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/airbnb/android/react/maps/AirMapPolygon;->polygon:Lcom/google/android/gms/maps/model/Polygon;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/model/Polygon;->setGeodesic(Z)V

    .line 70
    :cond_0
    return-void
.end method

.method public setStrokeColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 52
    iput p1, p0, Lcom/airbnb/android/react/maps/AirMapPolygon;->strokeColor:I

    .line 53
    iget-object v0, p0, Lcom/airbnb/android/react/maps/AirMapPolygon;->polygon:Lcom/google/android/gms/maps/model/Polygon;

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/airbnb/android/react/maps/AirMapPolygon;->polygon:Lcom/google/android/gms/maps/model/Polygon;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/model/Polygon;->setStrokeColor(I)V

    .line 56
    :cond_0
    return-void
.end method

.method public setStrokeWidth(F)V
    .locals 1
    .param p1, "width"    # F

    .prologue
    .line 59
    iput p1, p0, Lcom/airbnb/android/react/maps/AirMapPolygon;->strokeWidth:F

    .line 60
    iget-object v0, p0, Lcom/airbnb/android/react/maps/AirMapPolygon;->polygon:Lcom/google/android/gms/maps/model/Polygon;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/airbnb/android/react/maps/AirMapPolygon;->polygon:Lcom/google/android/gms/maps/model/Polygon;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/model/Polygon;->setStrokeWidth(F)V

    .line 63
    :cond_0
    return-void
.end method

.method public setZIndex(F)V
    .locals 1
    .param p1, "zIndex"    # F

    .prologue
    .line 73
    iput p1, p0, Lcom/airbnb/android/react/maps/AirMapPolygon;->zIndex:F

    .line 74
    iget-object v0, p0, Lcom/airbnb/android/react/maps/AirMapPolygon;->polygon:Lcom/google/android/gms/maps/model/Polygon;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/airbnb/android/react/maps/AirMapPolygon;->polygon:Lcom/google/android/gms/maps/model/Polygon;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/model/Polygon;->setZIndex(F)V

    .line 77
    :cond_0
    return-void
.end method
