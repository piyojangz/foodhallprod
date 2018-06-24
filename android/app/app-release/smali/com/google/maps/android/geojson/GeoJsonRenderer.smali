.class Lcom/google/maps/android/geojson/GeoJsonRenderer;
.super Ljava/lang/Object;
.source "GeoJsonRenderer.java"

# interfaces
.implements Ljava/util/Observer;


# static fields
.field private static final FEATURE_NOT_ON_MAP:Ljava/lang/Object;

.field private static final POLYGON_INNER_COORDINATE_INDEX:I = 0x1

.field private static final POLYGON_OUTER_COORDINATE_INDEX:I


# instance fields
.field private final mDefaultLineStringStyle:Lcom/google/maps/android/geojson/GeoJsonLineStringStyle;

.field private final mDefaultPointStyle:Lcom/google/maps/android/geojson/GeoJsonPointStyle;

.field private final mDefaultPolygonStyle:Lcom/google/maps/android/geojson/GeoJsonPolygonStyle;

.field private final mFeatures:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/google/maps/android/geojson/GeoJsonFeature;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mLayerOnMap:Z

.field private mMap:Lcom/google/android/gms/maps/GoogleMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    sput-object v0, Lcom/google/maps/android/geojson/GeoJsonRenderer;->FEATURE_NOT_ON_MAP:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/maps/GoogleMap;Ljava/util/HashMap;)V
    .locals 3
    .param p1, "map"    # Lcom/google/android/gms/maps/GoogleMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/maps/GoogleMap;",
            "Ljava/util/HashMap",
            "<",
            "Lcom/google/maps/android/geojson/GeoJsonFeature;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 51
    .local p2, "features":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/google/maps/android/geojson/GeoJsonFeature;Ljava/lang/Object;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/google/maps/android/geojson/GeoJsonRenderer;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    .line 53
    iput-object p2, p0, Lcom/google/maps/android/geojson/GeoJsonRenderer;->mFeatures:Ljava/util/HashMap;

    .line 54
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/maps/android/geojson/GeoJsonRenderer;->mLayerOnMap:Z

    .line 55
    new-instance v2, Lcom/google/maps/android/geojson/GeoJsonPointStyle;

    invoke-direct {v2}, Lcom/google/maps/android/geojson/GeoJsonPointStyle;-><init>()V

    iput-object v2, p0, Lcom/google/maps/android/geojson/GeoJsonRenderer;->mDefaultPointStyle:Lcom/google/maps/android/geojson/GeoJsonPointStyle;

    .line 56
    new-instance v2, Lcom/google/maps/android/geojson/GeoJsonLineStringStyle;

    invoke-direct {v2}, Lcom/google/maps/android/geojson/GeoJsonLineStringStyle;-><init>()V

    iput-object v2, p0, Lcom/google/maps/android/geojson/GeoJsonRenderer;->mDefaultLineStringStyle:Lcom/google/maps/android/geojson/GeoJsonLineStringStyle;

    .line 57
    new-instance v2, Lcom/google/maps/android/geojson/GeoJsonPolygonStyle;

    invoke-direct {v2}, Lcom/google/maps/android/geojson/GeoJsonPolygonStyle;-><init>()V

    iput-object v2, p0, Lcom/google/maps/android/geojson/GeoJsonRenderer;->mDefaultPolygonStyle:Lcom/google/maps/android/geojson/GeoJsonPolygonStyle;

    .line 60
    invoke-virtual {p0}, Lcom/google/maps/android/geojson/GeoJsonRenderer;->getFeatures()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/android/geojson/GeoJsonFeature;

    .line 61
    .local v0, "feature":Lcom/google/maps/android/geojson/GeoJsonFeature;
    invoke-direct {p0, v0}, Lcom/google/maps/android/geojson/GeoJsonRenderer;->setFeatureDefaultStyles(Lcom/google/maps/android/geojson/GeoJsonFeature;)V

    goto :goto_0

    .line 63
    .end local v0    # "feature":Lcom/google/maps/android/geojson/GeoJsonFeature;
    :cond_0
    return-void
.end method

.method private addFeatureToMap(Lcom/google/maps/android/geojson/GeoJsonFeature;Lcom/google/maps/android/geojson/GeoJsonGeometry;)Ljava/lang/Object;
    .locals 2
    .param p1, "feature"    # Lcom/google/maps/android/geojson/GeoJsonFeature;
    .param p2, "geometry"    # Lcom/google/maps/android/geojson/GeoJsonGeometry;

    .prologue
    .line 234
    invoke-interface {p2}, Lcom/google/maps/android/geojson/GeoJsonGeometry;->getType()Ljava/lang/String;

    move-result-object v0

    .line 235
    .local v0, "geometryType":Ljava/lang/String;
    const-string v1, "Point"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 236
    invoke-virtual {p1}, Lcom/google/maps/android/geojson/GeoJsonFeature;->getPointStyle()Lcom/google/maps/android/geojson/GeoJsonPointStyle;

    move-result-object v1

    check-cast p2, Lcom/google/maps/android/geojson/GeoJsonPoint;

    .end local p2    # "geometry":Lcom/google/maps/android/geojson/GeoJsonGeometry;
    invoke-direct {p0, v1, p2}, Lcom/google/maps/android/geojson/GeoJsonRenderer;->addPointToMap(Lcom/google/maps/android/geojson/GeoJsonPointStyle;Lcom/google/maps/android/geojson/GeoJsonPoint;)Lcom/google/android/gms/maps/model/Marker;

    move-result-object v1

    .line 256
    :goto_0
    return-object v1

    .line 237
    .restart local p2    # "geometry":Lcom/google/maps/android/geojson/GeoJsonGeometry;
    :cond_0
    const-string v1, "LineString"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 238
    invoke-virtual {p1}, Lcom/google/maps/android/geojson/GeoJsonFeature;->getLineStringStyle()Lcom/google/maps/android/geojson/GeoJsonLineStringStyle;

    move-result-object v1

    check-cast p2, Lcom/google/maps/android/geojson/GeoJsonLineString;

    .end local p2    # "geometry":Lcom/google/maps/android/geojson/GeoJsonGeometry;
    invoke-direct {p0, v1, p2}, Lcom/google/maps/android/geojson/GeoJsonRenderer;->addLineStringToMap(Lcom/google/maps/android/geojson/GeoJsonLineStringStyle;Lcom/google/maps/android/geojson/GeoJsonLineString;)Lcom/google/android/gms/maps/model/Polyline;

    move-result-object v1

    goto :goto_0

    .line 240
    .restart local p2    # "geometry":Lcom/google/maps/android/geojson/GeoJsonGeometry;
    :cond_1
    const-string v1, "Polygon"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 241
    invoke-virtual {p1}, Lcom/google/maps/android/geojson/GeoJsonFeature;->getPolygonStyle()Lcom/google/maps/android/geojson/GeoJsonPolygonStyle;

    move-result-object v1

    check-cast p2, Lcom/google/maps/android/geojson/GeoJsonPolygon;

    .end local p2    # "geometry":Lcom/google/maps/android/geojson/GeoJsonGeometry;
    invoke-direct {p0, v1, p2}, Lcom/google/maps/android/geojson/GeoJsonRenderer;->addPolygonToMap(Lcom/google/maps/android/geojson/GeoJsonPolygonStyle;Lcom/google/maps/android/geojson/GeoJsonPolygon;)Lcom/google/android/gms/maps/model/Polygon;

    move-result-object v1

    goto :goto_0

    .line 243
    .restart local p2    # "geometry":Lcom/google/maps/android/geojson/GeoJsonGeometry;
    :cond_2
    const-string v1, "MultiPoint"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 244
    invoke-virtual {p1}, Lcom/google/maps/android/geojson/GeoJsonFeature;->getPointStyle()Lcom/google/maps/android/geojson/GeoJsonPointStyle;

    move-result-object v1

    check-cast p2, Lcom/google/maps/android/geojson/GeoJsonMultiPoint;

    .end local p2    # "geometry":Lcom/google/maps/android/geojson/GeoJsonGeometry;
    invoke-direct {p0, v1, p2}, Lcom/google/maps/android/geojson/GeoJsonRenderer;->addMultiPointToMap(Lcom/google/maps/android/geojson/GeoJsonPointStyle;Lcom/google/maps/android/geojson/GeoJsonMultiPoint;)Ljava/util/ArrayList;

    move-result-object v1

    goto :goto_0

    .line 246
    .restart local p2    # "geometry":Lcom/google/maps/android/geojson/GeoJsonGeometry;
    :cond_3
    const-string v1, "MultiLineString"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 247
    invoke-virtual {p1}, Lcom/google/maps/android/geojson/GeoJsonFeature;->getLineStringStyle()Lcom/google/maps/android/geojson/GeoJsonLineStringStyle;

    move-result-object v1

    check-cast p2, Lcom/google/maps/android/geojson/GeoJsonMultiLineString;

    .end local p2    # "geometry":Lcom/google/maps/android/geojson/GeoJsonGeometry;
    invoke-direct {p0, v1, p2}, Lcom/google/maps/android/geojson/GeoJsonRenderer;->addMultiLineStringToMap(Lcom/google/maps/android/geojson/GeoJsonLineStringStyle;Lcom/google/maps/android/geojson/GeoJsonMultiLineString;)Ljava/util/ArrayList;

    move-result-object v1

    goto :goto_0

    .line 249
    .restart local p2    # "geometry":Lcom/google/maps/android/geojson/GeoJsonGeometry;
    :cond_4
    const-string v1, "MultiPolygon"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 250
    invoke-virtual {p1}, Lcom/google/maps/android/geojson/GeoJsonFeature;->getPolygonStyle()Lcom/google/maps/android/geojson/GeoJsonPolygonStyle;

    move-result-object v1

    check-cast p2, Lcom/google/maps/android/geojson/GeoJsonMultiPolygon;

    .end local p2    # "geometry":Lcom/google/maps/android/geojson/GeoJsonGeometry;
    invoke-direct {p0, v1, p2}, Lcom/google/maps/android/geojson/GeoJsonRenderer;->addMultiPolygonToMap(Lcom/google/maps/android/geojson/GeoJsonPolygonStyle;Lcom/google/maps/android/geojson/GeoJsonMultiPolygon;)Ljava/util/ArrayList;

    move-result-object v1

    goto :goto_0

    .line 252
    .restart local p2    # "geometry":Lcom/google/maps/android/geojson/GeoJsonGeometry;
    :cond_5
    const-string v1, "GeometryCollection"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 253
    check-cast p2, Lcom/google/maps/android/geojson/GeoJsonGeometryCollection;

    .end local p2    # "geometry":Lcom/google/maps/android/geojson/GeoJsonGeometry;
    invoke-virtual {p2}, Lcom/google/maps/android/geojson/GeoJsonGeometryCollection;->getGeometries()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/google/maps/android/geojson/GeoJsonRenderer;->addGeometryCollectionToMap(Lcom/google/maps/android/geojson/GeoJsonFeature;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v1

    goto :goto_0

    .line 256
    .restart local p2    # "geometry":Lcom/google/maps/android/geojson/GeoJsonGeometry;
    :cond_6
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private addGeometryCollectionToMap(Lcom/google/maps/android/geojson/GeoJsonFeature;Ljava/util/List;)Ljava/util/ArrayList;
    .locals 4
    .param p1, "feature"    # Lcom/google/maps/android/geojson/GeoJsonFeature;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/maps/android/geojson/GeoJsonFeature;",
            "Ljava/util/List",
            "<",
            "Lcom/google/maps/android/geojson/GeoJsonGeometry;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 366
    .local p2, "geoJsonGeometries":Ljava/util/List;, "Ljava/util/List<Lcom/google/maps/android/geojson/GeoJsonGeometry;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 367
    .local v0, "geometries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/maps/android/geojson/GeoJsonGeometry;

    .line 368
    .local v1, "geometry":Lcom/google/maps/android/geojson/GeoJsonGeometry;
    invoke-direct {p0, p1, v1}, Lcom/google/maps/android/geojson/GeoJsonRenderer;->addFeatureToMap(Lcom/google/maps/android/geojson/GeoJsonFeature;Lcom/google/maps/android/geojson/GeoJsonGeometry;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 370
    .end local v1    # "geometry":Lcom/google/maps/android/geojson/GeoJsonGeometry;
    :cond_0
    return-object v0
.end method

.method private addLineStringToMap(Lcom/google/maps/android/geojson/GeoJsonLineStringStyle;Lcom/google/maps/android/geojson/GeoJsonLineString;)Lcom/google/android/gms/maps/model/Polyline;
    .locals 2
    .param p1, "lineStringStyle"    # Lcom/google/maps/android/geojson/GeoJsonLineStringStyle;
    .param p2, "lineString"    # Lcom/google/maps/android/geojson/GeoJsonLineString;

    .prologue
    .line 297
    invoke-virtual {p1}, Lcom/google/maps/android/geojson/GeoJsonLineStringStyle;->toPolylineOptions()Lcom/google/android/gms/maps/model/PolylineOptions;

    move-result-object v0

    .line 299
    .local v0, "polylineOptions":Lcom/google/android/gms/maps/model/PolylineOptions;
    invoke-virtual {p2}, Lcom/google/maps/android/geojson/GeoJsonLineString;->getCoordinates()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/PolylineOptions;->addAll(Ljava/lang/Iterable;)Lcom/google/android/gms/maps/model/PolylineOptions;

    .line 300
    iget-object v1, p0, Lcom/google/maps/android/geojson/GeoJsonRenderer;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/maps/GoogleMap;->addPolyline(Lcom/google/android/gms/maps/model/PolylineOptions;)Lcom/google/android/gms/maps/model/Polyline;

    move-result-object v1

    return-object v1
.end method

.method private addMultiLineStringToMap(Lcom/google/maps/android/geojson/GeoJsonLineStringStyle;Lcom/google/maps/android/geojson/GeoJsonMultiLineString;)Ljava/util/ArrayList;
    .locals 4
    .param p1, "lineStringStyle"    # Lcom/google/maps/android/geojson/GeoJsonLineStringStyle;
    .param p2, "multiLineString"    # Lcom/google/maps/android/geojson/GeoJsonMultiLineString;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/maps/android/geojson/GeoJsonLineStringStyle;",
            "Lcom/google/maps/android/geojson/GeoJsonMultiLineString;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/maps/model/Polyline;",
            ">;"
        }
    .end annotation

    .prologue
    .line 313
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 314
    .local v2, "polylines":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/gms/maps/model/Polyline;>;"
    invoke-virtual {p2}, Lcom/google/maps/android/geojson/GeoJsonMultiLineString;->getLineStrings()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/android/geojson/GeoJsonLineString;

    .line 315
    .local v0, "geoJsonLineString":Lcom/google/maps/android/geojson/GeoJsonLineString;
    invoke-direct {p0, p1, v0}, Lcom/google/maps/android/geojson/GeoJsonRenderer;->addLineStringToMap(Lcom/google/maps/android/geojson/GeoJsonLineStringStyle;Lcom/google/maps/android/geojson/GeoJsonLineString;)Lcom/google/android/gms/maps/model/Polyline;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 317
    .end local v0    # "geoJsonLineString":Lcom/google/maps/android/geojson/GeoJsonLineString;
    :cond_0
    return-object v2
.end method

.method private addMultiPointToMap(Lcom/google/maps/android/geojson/GeoJsonPointStyle;Lcom/google/maps/android/geojson/GeoJsonMultiPoint;)Ljava/util/ArrayList;
    .locals 4
    .param p1, "pointStyle"    # Lcom/google/maps/android/geojson/GeoJsonPointStyle;
    .param p2, "multiPoint"    # Lcom/google/maps/android/geojson/GeoJsonMultiPoint;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/maps/android/geojson/GeoJsonPointStyle;",
            "Lcom/google/maps/android/geojson/GeoJsonMultiPoint;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/maps/model/Marker;",
            ">;"
        }
    .end annotation

    .prologue
    .line 281
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 282
    .local v2, "markers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/gms/maps/model/Marker;>;"
    invoke-virtual {p2}, Lcom/google/maps/android/geojson/GeoJsonMultiPoint;->getPoints()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/android/geojson/GeoJsonPoint;

    .line 283
    .local v0, "geoJsonPoint":Lcom/google/maps/android/geojson/GeoJsonPoint;
    invoke-direct {p0, p1, v0}, Lcom/google/maps/android/geojson/GeoJsonRenderer;->addPointToMap(Lcom/google/maps/android/geojson/GeoJsonPointStyle;Lcom/google/maps/android/geojson/GeoJsonPoint;)Lcom/google/android/gms/maps/model/Marker;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 285
    .end local v0    # "geoJsonPoint":Lcom/google/maps/android/geojson/GeoJsonPoint;
    :cond_0
    return-object v2
.end method

.method private addMultiPolygonToMap(Lcom/google/maps/android/geojson/GeoJsonPolygonStyle;Lcom/google/maps/android/geojson/GeoJsonMultiPolygon;)Ljava/util/ArrayList;
    .locals 4
    .param p1, "polygonStyle"    # Lcom/google/maps/android/geojson/GeoJsonPolygonStyle;
    .param p2, "multiPolygon"    # Lcom/google/maps/android/geojson/GeoJsonMultiPolygon;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/maps/android/geojson/GeoJsonPolygonStyle;",
            "Lcom/google/maps/android/geojson/GeoJsonMultiPolygon;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/maps/model/Polygon;",
            ">;"
        }
    .end annotation

    .prologue
    .line 348
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 349
    .local v2, "polygons":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/gms/maps/model/Polygon;>;"
    invoke-virtual {p2}, Lcom/google/maps/android/geojson/GeoJsonMultiPolygon;->getPolygons()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/android/geojson/GeoJsonPolygon;

    .line 350
    .local v0, "geoJsonPolygon":Lcom/google/maps/android/geojson/GeoJsonPolygon;
    invoke-direct {p0, p1, v0}, Lcom/google/maps/android/geojson/GeoJsonRenderer;->addPolygonToMap(Lcom/google/maps/android/geojson/GeoJsonPolygonStyle;Lcom/google/maps/android/geojson/GeoJsonPolygon;)Lcom/google/android/gms/maps/model/Polygon;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 352
    .end local v0    # "geoJsonPolygon":Lcom/google/maps/android/geojson/GeoJsonPolygon;
    :cond_0
    return-object v2
.end method

.method private addPointToMap(Lcom/google/maps/android/geojson/GeoJsonPointStyle;Lcom/google/maps/android/geojson/GeoJsonPoint;)Lcom/google/android/gms/maps/model/Marker;
    .locals 2
    .param p1, "pointStyle"    # Lcom/google/maps/android/geojson/GeoJsonPointStyle;
    .param p2, "point"    # Lcom/google/maps/android/geojson/GeoJsonPoint;

    .prologue
    .line 267
    invoke-virtual {p1}, Lcom/google/maps/android/geojson/GeoJsonPointStyle;->toMarkerOptions()Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v0

    .line 268
    .local v0, "markerOptions":Lcom/google/android/gms/maps/model/MarkerOptions;
    invoke-virtual {p2}, Lcom/google/maps/android/geojson/GeoJsonPoint;->getCoordinates()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 269
    iget-object v1, p0, Lcom/google/maps/android/geojson/GeoJsonRenderer;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/maps/GoogleMap;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/Marker;

    move-result-object v1

    return-object v1
.end method

.method private addPolygonToMap(Lcom/google/maps/android/geojson/GeoJsonPolygonStyle;Lcom/google/maps/android/geojson/GeoJsonPolygon;)Lcom/google/android/gms/maps/model/Polygon;
    .locals 4
    .param p1, "polygonStyle"    # Lcom/google/maps/android/geojson/GeoJsonPolygonStyle;
    .param p2, "polygon"    # Lcom/google/maps/android/geojson/GeoJsonPolygon;

    .prologue
    .line 328
    invoke-virtual {p1}, Lcom/google/maps/android/geojson/GeoJsonPolygonStyle;->toPolygonOptions()Lcom/google/android/gms/maps/model/PolygonOptions;

    move-result-object v1

    .line 330
    .local v1, "polygonOptions":Lcom/google/android/gms/maps/model/PolygonOptions;
    invoke-virtual {p2}, Lcom/google/maps/android/geojson/GeoJsonPolygon;->getCoordinates()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/model/PolygonOptions;->addAll(Ljava/lang/Iterable;)Lcom/google/android/gms/maps/model/PolygonOptions;

    .line 332
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    invoke-virtual {p2}, Lcom/google/maps/android/geojson/GeoJsonPolygon;->getCoordinates()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 334
    invoke-virtual {p2}, Lcom/google/maps/android/geojson/GeoJsonPolygon;->getCoordinates()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/model/PolygonOptions;->addHole(Ljava/lang/Iterable;)Lcom/google/android/gms/maps/model/PolygonOptions;

    .line 333
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 336
    :cond_0
    iget-object v2, p0, Lcom/google/maps/android/geojson/GeoJsonRenderer;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/maps/GoogleMap;->addPolygon(Lcom/google/android/gms/maps/model/PolygonOptions;)Lcom/google/android/gms/maps/model/Polygon;

    move-result-object v2

    return-object v2
.end method

.method private redrawFeatureToMap(Lcom/google/maps/android/geojson/GeoJsonFeature;)V
    .locals 1
    .param p1, "feature"    # Lcom/google/maps/android/geojson/GeoJsonFeature;

    .prologue
    .line 380
    iget-object v0, p0, Lcom/google/maps/android/geojson/GeoJsonRenderer;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-direct {p0, p1, v0}, Lcom/google/maps/android/geojson/GeoJsonRenderer;->redrawFeatureToMap(Lcom/google/maps/android/geojson/GeoJsonFeature;Lcom/google/android/gms/maps/GoogleMap;)V

    .line 381
    return-void
.end method

.method private redrawFeatureToMap(Lcom/google/maps/android/geojson/GeoJsonFeature;Lcom/google/android/gms/maps/GoogleMap;)V
    .locals 2
    .param p1, "feature"    # Lcom/google/maps/android/geojson/GeoJsonFeature;
    .param p2, "map"    # Lcom/google/android/gms/maps/GoogleMap;

    .prologue
    .line 384
    iget-object v0, p0, Lcom/google/maps/android/geojson/GeoJsonRenderer;->mFeatures:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/maps/android/geojson/GeoJsonRenderer;->removeFromMap(Ljava/lang/Object;)V

    .line 385
    iget-object v0, p0, Lcom/google/maps/android/geojson/GeoJsonRenderer;->mFeatures:Ljava/util/HashMap;

    sget-object v1, Lcom/google/maps/android/geojson/GeoJsonRenderer;->FEATURE_NOT_ON_MAP:Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    iput-object p2, p0, Lcom/google/maps/android/geojson/GeoJsonRenderer;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    .line 387
    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/google/maps/android/geojson/GeoJsonFeature;->hasGeometry()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 388
    iget-object v0, p0, Lcom/google/maps/android/geojson/GeoJsonRenderer;->mFeatures:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/google/maps/android/geojson/GeoJsonFeature;->getGeometry()Lcom/google/maps/android/geojson/GeoJsonGeometry;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/google/maps/android/geojson/GeoJsonRenderer;->addFeatureToMap(Lcom/google/maps/android/geojson/GeoJsonFeature;Lcom/google/maps/android/geojson/GeoJsonGeometry;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    :cond_0
    return-void
.end method

.method private static removeFromMap(Ljava/lang/Object;)V
    .locals 3
    .param p0, "mapObject"    # Ljava/lang/Object;

    .prologue
    .line 71
    instance-of v2, p0, Lcom/google/android/gms/maps/model/Marker;

    if-eqz v2, :cond_1

    .line 72
    check-cast p0, Lcom/google/android/gms/maps/model/Marker;

    .end local p0    # "mapObject":Ljava/lang/Object;
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/Marker;->remove()V

    .line 82
    :cond_0
    :goto_0
    return-void

    .line 73
    .restart local p0    # "mapObject":Ljava/lang/Object;
    :cond_1
    instance-of v2, p0, Lcom/google/android/gms/maps/model/Polyline;

    if-eqz v2, :cond_2

    .line 74
    check-cast p0, Lcom/google/android/gms/maps/model/Polyline;

    .end local p0    # "mapObject":Ljava/lang/Object;
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/Polyline;->remove()V

    goto :goto_0

    .line 75
    .restart local p0    # "mapObject":Ljava/lang/Object;
    :cond_2
    instance-of v2, p0, Lcom/google/android/gms/maps/model/Polygon;

    if-eqz v2, :cond_3

    .line 76
    check-cast p0, Lcom/google/android/gms/maps/model/Polygon;

    .end local p0    # "mapObject":Ljava/lang/Object;
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/Polygon;->remove()V

    goto :goto_0

    .line 77
    .restart local p0    # "mapObject":Ljava/lang/Object;
    :cond_3
    instance-of v2, p0, Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 78
    check-cast p0, Ljava/util/ArrayList;

    .end local p0    # "mapObject":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 79
    .local v1, "mapObjectElement":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/maps/android/geojson/GeoJsonRenderer;->removeFromMap(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private setFeatureDefaultStyles(Lcom/google/maps/android/geojson/GeoJsonFeature;)V
    .locals 1
    .param p1, "feature"    # Lcom/google/maps/android/geojson/GeoJsonFeature;

    .prologue
    .line 137
    invoke-virtual {p1}, Lcom/google/maps/android/geojson/GeoJsonFeature;->getPointStyle()Lcom/google/maps/android/geojson/GeoJsonPointStyle;

    move-result-object v0

    if-nez v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/google/maps/android/geojson/GeoJsonRenderer;->mDefaultPointStyle:Lcom/google/maps/android/geojson/GeoJsonPointStyle;

    invoke-virtual {p1, v0}, Lcom/google/maps/android/geojson/GeoJsonFeature;->setPointStyle(Lcom/google/maps/android/geojson/GeoJsonPointStyle;)V

    .line 140
    :cond_0
    invoke-virtual {p1}, Lcom/google/maps/android/geojson/GeoJsonFeature;->getLineStringStyle()Lcom/google/maps/android/geojson/GeoJsonLineStringStyle;

    move-result-object v0

    if-nez v0, :cond_1

    .line 141
    iget-object v0, p0, Lcom/google/maps/android/geojson/GeoJsonRenderer;->mDefaultLineStringStyle:Lcom/google/maps/android/geojson/GeoJsonLineStringStyle;

    invoke-virtual {p1, v0}, Lcom/google/maps/android/geojson/GeoJsonFeature;->setLineStringStyle(Lcom/google/maps/android/geojson/GeoJsonLineStringStyle;)V

    .line 143
    :cond_1
    invoke-virtual {p1}, Lcom/google/maps/android/geojson/GeoJsonFeature;->getPolygonStyle()Lcom/google/maps/android/geojson/GeoJsonPolygonStyle;

    move-result-object v0

    if-nez v0, :cond_2

    .line 144
    iget-object v0, p0, Lcom/google/maps/android/geojson/GeoJsonRenderer;->mDefaultPolygonStyle:Lcom/google/maps/android/geojson/GeoJsonPolygonStyle;

    invoke-virtual {p1, v0}, Lcom/google/maps/android/geojson/GeoJsonFeature;->setPolygonStyle(Lcom/google/maps/android/geojson/GeoJsonPolygonStyle;)V

    .line 146
    :cond_2
    return-void
.end method


# virtual methods
.method addFeature(Lcom/google/maps/android/geojson/GeoJsonFeature;)V
    .locals 2
    .param p1, "feature"    # Lcom/google/maps/android/geojson/GeoJsonFeature;

    .prologue
    .line 154
    sget-object v0, Lcom/google/maps/android/geojson/GeoJsonRenderer;->FEATURE_NOT_ON_MAP:Ljava/lang/Object;

    .line 155
    .local v0, "mapObject":Ljava/lang/Object;
    invoke-direct {p0, p1}, Lcom/google/maps/android/geojson/GeoJsonRenderer;->setFeatureDefaultStyles(Lcom/google/maps/android/geojson/GeoJsonFeature;)V

    .line 156
    iget-boolean v1, p0, Lcom/google/maps/android/geojson/GeoJsonRenderer;->mLayerOnMap:Z

    if-eqz v1, :cond_1

    .line 157
    invoke-virtual {p1, p0}, Lcom/google/maps/android/geojson/GeoJsonFeature;->addObserver(Ljava/util/Observer;)V

    .line 159
    iget-object v1, p0, Lcom/google/maps/android/geojson/GeoJsonRenderer;->mFeatures:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 161
    iget-object v1, p0, Lcom/google/maps/android/geojson/GeoJsonRenderer;->mFeatures:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/google/maps/android/geojson/GeoJsonRenderer;->removeFromMap(Ljava/lang/Object;)V

    .line 164
    :cond_0
    invoke-virtual {p1}, Lcom/google/maps/android/geojson/GeoJsonFeature;->hasGeometry()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 166
    invoke-virtual {p1}, Lcom/google/maps/android/geojson/GeoJsonFeature;->getGeometry()Lcom/google/maps/android/geojson/GeoJsonGeometry;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/google/maps/android/geojson/GeoJsonRenderer;->addFeatureToMap(Lcom/google/maps/android/geojson/GeoJsonFeature;Lcom/google/maps/android/geojson/GeoJsonGeometry;)Ljava/lang/Object;

    move-result-object v0

    .line 169
    :cond_1
    iget-object v1, p0, Lcom/google/maps/android/geojson/GeoJsonRenderer;->mFeatures:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    return-void
.end method

.method addLayerToMap()V
    .locals 3

    .prologue
    .line 114
    iget-boolean v2, p0, Lcom/google/maps/android/geojson/GeoJsonRenderer;->mLayerOnMap:Z

    if-nez v2, :cond_0

    .line 115
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/maps/android/geojson/GeoJsonRenderer;->mLayerOnMap:Z

    .line 116
    invoke-virtual {p0}, Lcom/google/maps/android/geojson/GeoJsonRenderer;->getFeatures()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/android/geojson/GeoJsonFeature;

    .line 117
    .local v0, "feature":Lcom/google/maps/android/geojson/GeoJsonFeature;
    invoke-virtual {p0, v0}, Lcom/google/maps/android/geojson/GeoJsonRenderer;->addFeature(Lcom/google/maps/android/geojson/GeoJsonFeature;)V

    goto :goto_0

    .line 120
    .end local v0    # "feature":Lcom/google/maps/android/geojson/GeoJsonFeature;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method getDefaultLineStringStyle()Lcom/google/maps/android/geojson/GeoJsonLineStringStyle;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/google/maps/android/geojson/GeoJsonRenderer;->mDefaultLineStringStyle:Lcom/google/maps/android/geojson/GeoJsonLineStringStyle;

    return-object v0
.end method

.method getDefaultPointStyle()Lcom/google/maps/android/geojson/GeoJsonPointStyle;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/google/maps/android/geojson/GeoJsonRenderer;->mDefaultPointStyle:Lcom/google/maps/android/geojson/GeoJsonPointStyle;

    return-object v0
.end method

.method getDefaultPolygonStyle()Lcom/google/maps/android/geojson/GeoJsonPolygonStyle;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/google/maps/android/geojson/GeoJsonRenderer;->mDefaultPolygonStyle:Lcom/google/maps/android/geojson/GeoJsonPolygonStyle;

    return-object v0
.end method

.method getFeatures()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/google/maps/android/geojson/GeoJsonFeature;",
            ">;"
        }
    .end annotation

    .prologue
    .line 128
    iget-object v0, p0, Lcom/google/maps/android/geojson/GeoJsonRenderer;->mFeatures:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method getMap()Lcom/google/android/gms/maps/GoogleMap;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/google/maps/android/geojson/GeoJsonRenderer;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    return-object v0
.end method

.method isLayerOnMap()Z
    .locals 1

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/google/maps/android/geojson/GeoJsonRenderer;->mLayerOnMap:Z

    return v0
.end method

.method removeFeature(Lcom/google/maps/android/geojson/GeoJsonFeature;)V
    .locals 1
    .param p1, "feature"    # Lcom/google/maps/android/geojson/GeoJsonFeature;

    .prologue
    .line 193
    iget-object v0, p0, Lcom/google/maps/android/geojson/GeoJsonRenderer;->mFeatures:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/google/maps/android/geojson/GeoJsonRenderer;->mFeatures:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/maps/android/geojson/GeoJsonRenderer;->removeFromMap(Ljava/lang/Object;)V

    .line 195
    invoke-virtual {p1, p0}, Lcom/google/maps/android/geojson/GeoJsonFeature;->deleteObserver(Ljava/util/Observer;)V

    .line 197
    :cond_0
    return-void
.end method

.method removeLayerFromMap()V
    .locals 3

    .prologue
    .line 176
    iget-boolean v2, p0, Lcom/google/maps/android/geojson/GeoJsonRenderer;->mLayerOnMap:Z

    if-eqz v2, :cond_1

    .line 177
    iget-object v2, p0, Lcom/google/maps/android/geojson/GeoJsonRenderer;->mFeatures:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/android/geojson/GeoJsonFeature;

    .line 178
    .local v0, "feature":Lcom/google/maps/android/geojson/GeoJsonFeature;
    iget-object v2, p0, Lcom/google/maps/android/geojson/GeoJsonRenderer;->mFeatures:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/google/maps/android/geojson/GeoJsonRenderer;->removeFromMap(Ljava/lang/Object;)V

    .line 180
    invoke-virtual {v0, p0}, Lcom/google/maps/android/geojson/GeoJsonFeature;->deleteObserver(Ljava/util/Observer;)V

    goto :goto_0

    .line 182
    .end local v0    # "feature":Lcom/google/maps/android/geojson/GeoJsonFeature;
    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/maps/android/geojson/GeoJsonRenderer;->mLayerOnMap:Z

    .line 184
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method setMap(Lcom/google/android/gms/maps/GoogleMap;)V
    .locals 3
    .param p1, "map"    # Lcom/google/android/gms/maps/GoogleMap;

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/google/maps/android/geojson/GeoJsonRenderer;->getFeatures()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/android/geojson/GeoJsonFeature;

    .line 105
    .local v0, "feature":Lcom/google/maps/android/geojson/GeoJsonFeature;
    invoke-direct {p0, v0, p1}, Lcom/google/maps/android/geojson/GeoJsonRenderer;->redrawFeatureToMap(Lcom/google/maps/android/geojson/GeoJsonFeature;Lcom/google/android/gms/maps/GoogleMap;)V

    goto :goto_0

    .line 107
    .end local v0    # "feature":Lcom/google/maps/android/geojson/GeoJsonFeature;
    :cond_0
    return-void
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 4
    .param p1, "observable"    # Ljava/util/Observable;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 399
    instance-of v2, p1, Lcom/google/maps/android/geojson/GeoJsonFeature;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 400
    check-cast v0, Lcom/google/maps/android/geojson/GeoJsonFeature;

    .line 401
    .local v0, "feature":Lcom/google/maps/android/geojson/GeoJsonFeature;
    iget-object v2, p0, Lcom/google/maps/android/geojson/GeoJsonRenderer;->mFeatures:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/google/maps/android/geojson/GeoJsonRenderer;->FEATURE_NOT_ON_MAP:Ljava/lang/Object;

    if-eq v2, v3, :cond_1

    const/4 v1, 0x1

    .line 402
    .local v1, "featureIsOnMap":Z
    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/google/maps/android/geojson/GeoJsonFeature;->hasGeometry()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 405
    invoke-direct {p0, v0}, Lcom/google/maps/android/geojson/GeoJsonRenderer;->redrawFeatureToMap(Lcom/google/maps/android/geojson/GeoJsonFeature;)V

    .line 415
    .end local v0    # "feature":Lcom/google/maps/android/geojson/GeoJsonFeature;
    .end local v1    # "featureIsOnMap":Z
    :cond_0
    :goto_1
    return-void

    .line 401
    .restart local v0    # "feature":Lcom/google/maps/android/geojson/GeoJsonFeature;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 406
    .restart local v1    # "featureIsOnMap":Z
    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/google/maps/android/geojson/GeoJsonFeature;->hasGeometry()Z

    move-result v2

    if-nez v2, :cond_3

    .line 408
    iget-object v2, p0, Lcom/google/maps/android/geojson/GeoJsonRenderer;->mFeatures:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/google/maps/android/geojson/GeoJsonRenderer;->removeFromMap(Ljava/lang/Object;)V

    .line 409
    iget-object v2, p0, Lcom/google/maps/android/geojson/GeoJsonRenderer;->mFeatures:Ljava/util/HashMap;

    sget-object v3, Lcom/google/maps/android/geojson/GeoJsonRenderer;->FEATURE_NOT_ON_MAP:Ljava/lang/Object;

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 410
    :cond_3
    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/google/maps/android/geojson/GeoJsonFeature;->hasGeometry()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 412
    invoke-virtual {p0, v0}, Lcom/google/maps/android/geojson/GeoJsonRenderer;->addFeature(Lcom/google/maps/android/geojson/GeoJsonFeature;)V

    goto :goto_1
.end method
