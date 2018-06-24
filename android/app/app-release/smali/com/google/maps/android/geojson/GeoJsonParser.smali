.class Lcom/google/maps/android/geojson/GeoJsonParser;
.super Ljava/lang/Object;
.source "GeoJsonParser.java"


# static fields
.field private static final BOUNDING_BOX:Ljava/lang/String; = "bbox"

.field private static final FEATURE:Ljava/lang/String; = "Feature"

.field private static final FEATURE_COLLECTION:Ljava/lang/String; = "FeatureCollection"

.field private static final FEATURE_COLLECTION_ARRAY:Ljava/lang/String; = "features"

.field private static final FEATURE_GEOMETRY:Ljava/lang/String; = "geometry"

.field private static final FEATURE_ID:Ljava/lang/String; = "id"

.field private static final GEOMETRY_COLLECTION:Ljava/lang/String; = "GeometryCollection"

.field private static final GEOMETRY_COLLECTION_ARRAY:Ljava/lang/String; = "geometries"

.field private static final GEOMETRY_COORDINATES_ARRAY:Ljava/lang/String; = "coordinates"

.field private static final LINESTRING:Ljava/lang/String; = "LineString"

.field private static final LOG_TAG:Ljava/lang/String; = "GeoJsonParser"

.field private static final MULTILINESTRING:Ljava/lang/String; = "MultiLineString"

.field private static final MULTIPOINT:Ljava/lang/String; = "MultiPoint"

.field private static final MULTIPOLYGON:Ljava/lang/String; = "MultiPolygon"

.field private static final POINT:Ljava/lang/String; = "Point"

.field private static final POLYGON:Ljava/lang/String; = "Polygon"

.field private static final PROPERTIES:Ljava/lang/String; = "properties"


# instance fields
.field private mBoundingBox:Lcom/google/android/gms/maps/model/LatLngBounds;

.field private final mGeoJsonFeatures:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/maps/android/geojson/GeoJsonFeature;",
            ">;"
        }
    .end annotation
.end field

.field private final mGeoJsonFile:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "geoJsonFile"    # Lorg/json/JSONObject;

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Lcom/google/maps/android/geojson/GeoJsonParser;->mGeoJsonFile:Lorg/json/JSONObject;

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/maps/android/geojson/GeoJsonParser;->mGeoJsonFeatures:Ljava/util/ArrayList;

    .line 82
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/maps/android/geojson/GeoJsonParser;->mBoundingBox:Lcom/google/android/gms/maps/model/LatLngBounds;

    .line 83
    invoke-direct {p0}, Lcom/google/maps/android/geojson/GeoJsonParser;->parseGeoJson()V

    .line 84
    return-void
.end method

.method private static createGeometry(Ljava/lang/String;Lorg/json/JSONArray;)Lcom/google/maps/android/geojson/GeoJsonGeometry;
    .locals 1
    .param p0, "geometryType"    # Ljava/lang/String;
    .param p1, "geometryArray"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 215
    const-string v0, "Point"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 216
    invoke-static {p1}, Lcom/google/maps/android/geojson/GeoJsonParser;->createPoint(Lorg/json/JSONArray;)Lcom/google/maps/android/geojson/GeoJsonPoint;

    move-result-object v0

    .line 230
    :goto_0
    return-object v0

    .line 217
    :cond_0
    const-string v0, "MultiPoint"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 218
    invoke-static {p1}, Lcom/google/maps/android/geojson/GeoJsonParser;->createMultiPoint(Lorg/json/JSONArray;)Lcom/google/maps/android/geojson/GeoJsonMultiPoint;

    move-result-object v0

    goto :goto_0

    .line 219
    :cond_1
    const-string v0, "LineString"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 220
    invoke-static {p1}, Lcom/google/maps/android/geojson/GeoJsonParser;->createLineString(Lorg/json/JSONArray;)Lcom/google/maps/android/geojson/GeoJsonLineString;

    move-result-object v0

    goto :goto_0

    .line 221
    :cond_2
    const-string v0, "MultiLineString"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 222
    invoke-static {p1}, Lcom/google/maps/android/geojson/GeoJsonParser;->createMultiLineString(Lorg/json/JSONArray;)Lcom/google/maps/android/geojson/GeoJsonMultiLineString;

    move-result-object v0

    goto :goto_0

    .line 223
    :cond_3
    const-string v0, "Polygon"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 224
    invoke-static {p1}, Lcom/google/maps/android/geojson/GeoJsonParser;->createPolygon(Lorg/json/JSONArray;)Lcom/google/maps/android/geojson/GeoJsonPolygon;

    move-result-object v0

    goto :goto_0

    .line 225
    :cond_4
    const-string v0, "MultiPolygon"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 226
    invoke-static {p1}, Lcom/google/maps/android/geojson/GeoJsonParser;->createMultiPolygon(Lorg/json/JSONArray;)Lcom/google/maps/android/geojson/GeoJsonMultiPolygon;

    move-result-object v0

    goto :goto_0

    .line 227
    :cond_5
    const-string v0, "GeometryCollection"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 228
    invoke-static {p1}, Lcom/google/maps/android/geojson/GeoJsonParser;->createGeometryCollection(Lorg/json/JSONArray;)Lcom/google/maps/android/geojson/GeoJsonGeometryCollection;

    move-result-object v0

    goto :goto_0

    .line 230
    :cond_6
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static createGeometryCollection(Lorg/json/JSONArray;)Lcom/google/maps/android/geojson/GeoJsonGeometryCollection;
    .locals 5
    .param p0, "geometries"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 323
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 326
    .local v1, "geometryCollectionElements":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/maps/android/geojson/GeoJsonGeometry;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 327
    invoke-virtual {p0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 328
    .local v2, "geometryElement":Lorg/json/JSONObject;
    invoke-static {v2}, Lcom/google/maps/android/geojson/GeoJsonParser;->parseGeometry(Lorg/json/JSONObject;)Lcom/google/maps/android/geojson/GeoJsonGeometry;

    move-result-object v0

    .line 329
    .local v0, "geometry":Lcom/google/maps/android/geojson/GeoJsonGeometry;
    if-eqz v0, :cond_0

    .line 331
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 326
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 334
    .end local v0    # "geometry":Lcom/google/maps/android/geojson/GeoJsonGeometry;
    .end local v2    # "geometryElement":Lorg/json/JSONObject;
    :cond_1
    new-instance v4, Lcom/google/maps/android/geojson/GeoJsonGeometryCollection;

    invoke-direct {v4, v1}, Lcom/google/maps/android/geojson/GeoJsonGeometryCollection;-><init>(Ljava/util/List;)V

    return-object v4
.end method

.method private static createLineString(Lorg/json/JSONArray;)Lcom/google/maps/android/geojson/GeoJsonLineString;
    .locals 2
    .param p0, "coordinates"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 267
    new-instance v0, Lcom/google/maps/android/geojson/GeoJsonLineString;

    invoke-static {p0}, Lcom/google/maps/android/geojson/GeoJsonParser;->parseCoordinatesArray(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/maps/android/geojson/GeoJsonLineString;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method private static createMultiLineString(Lorg/json/JSONArray;)Lcom/google/maps/android/geojson/GeoJsonMultiLineString;
    .locals 3
    .param p0, "coordinates"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 279
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 280
    .local v0, "geoJsonLineStrings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/maps/android/geojson/GeoJsonLineString;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 281
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v2

    invoke-static {v2}, Lcom/google/maps/android/geojson/GeoJsonParser;->createLineString(Lorg/json/JSONArray;)Lcom/google/maps/android/geojson/GeoJsonLineString;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 280
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 283
    :cond_0
    new-instance v2, Lcom/google/maps/android/geojson/GeoJsonMultiLineString;

    invoke-direct {v2, v0}, Lcom/google/maps/android/geojson/GeoJsonMultiLineString;-><init>(Ljava/util/List;)V

    return-object v2
.end method

.method private static createMultiPoint(Lorg/json/JSONArray;)Lcom/google/maps/android/geojson/GeoJsonMultiPoint;
    .locals 3
    .param p0, "coordinates"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 252
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 253
    .local v0, "geoJsonPoints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/maps/android/geojson/GeoJsonPoint;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 254
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v2

    invoke-static {v2}, Lcom/google/maps/android/geojson/GeoJsonParser;->createPoint(Lorg/json/JSONArray;)Lcom/google/maps/android/geojson/GeoJsonPoint;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 253
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 256
    :cond_0
    new-instance v2, Lcom/google/maps/android/geojson/GeoJsonMultiPoint;

    invoke-direct {v2, v0}, Lcom/google/maps/android/geojson/GeoJsonMultiPoint;-><init>(Ljava/util/List;)V

    return-object v2
.end method

.method private static createMultiPolygon(Lorg/json/JSONArray;)Lcom/google/maps/android/geojson/GeoJsonMultiPolygon;
    .locals 3
    .param p0, "coordinates"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 306
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 307
    .local v0, "geoJsonPolygons":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/maps/android/geojson/GeoJsonPolygon;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 308
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v2

    invoke-static {v2}, Lcom/google/maps/android/geojson/GeoJsonParser;->createPolygon(Lorg/json/JSONArray;)Lcom/google/maps/android/geojson/GeoJsonPolygon;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 307
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 310
    :cond_0
    new-instance v2, Lcom/google/maps/android/geojson/GeoJsonMultiPolygon;

    invoke-direct {v2, v0}, Lcom/google/maps/android/geojson/GeoJsonMultiPolygon;-><init>(Ljava/util/List;)V

    return-object v2
.end method

.method private static createPoint(Lorg/json/JSONArray;)Lcom/google/maps/android/geojson/GeoJsonPoint;
    .locals 2
    .param p0, "coordinates"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 241
    new-instance v0, Lcom/google/maps/android/geojson/GeoJsonPoint;

    invoke-static {p0}, Lcom/google/maps/android/geojson/GeoJsonParser;->parseCoordinate(Lorg/json/JSONArray;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/maps/android/geojson/GeoJsonPoint;-><init>(Lcom/google/android/gms/maps/model/LatLng;)V

    return-object v0
.end method

.method private static createPolygon(Lorg/json/JSONArray;)Lcom/google/maps/android/geojson/GeoJsonPolygon;
    .locals 2
    .param p0, "coordinates"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 294
    new-instance v0, Lcom/google/maps/android/geojson/GeoJsonPolygon;

    invoke-static {p0}, Lcom/google/maps/android/geojson/GeoJsonParser;->parseCoordinatesArrays(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/maps/android/geojson/GeoJsonPolygon;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method private static isGeometry(Ljava/lang/String;)Z
    .locals 1
    .param p0, "type"    # Ljava/lang/String;

    .prologue
    .line 87
    const-string v0, "Point|MultiPoint|LineString|MultiLineString|Polygon|MultiPolygon|GeometryCollection"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static parseBoundingBox(Lorg/json/JSONArray;)Lcom/google/android/gms/maps/model/LatLngBounds;
    .locals 6
    .param p0, "coordinates"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 135
    new-instance v1, Lcom/google/android/gms/maps/model/LatLng;

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v2

    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 137
    .local v1, "southWestCorner":Lcom/google/android/gms/maps/model/LatLng;
    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v2

    const/4 v4, 0x2

    invoke-virtual {p0, v4}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v4

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 138
    .local v0, "northEastCorner":Lcom/google/android/gms/maps/model/LatLng;
    new-instance v2, Lcom/google/android/gms/maps/model/LatLngBounds;

    invoke-direct {v2, v1, v0}, Lcom/google/android/gms/maps/model/LatLngBounds;-><init>(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)V

    return-object v2
.end method

.method private static parseCoordinate(Lorg/json/JSONArray;)Lcom/google/android/gms/maps/model/LatLng;
    .locals 6
    .param p0, "coordinates"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 346
    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v2

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v4

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    return-object v0
.end method

.method private static parseCoordinatesArray(Lorg/json/JSONArray;)Ljava/util/ArrayList;
    .locals 3
    .param p0, "coordinates"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 358
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 360
    .local v0, "coordinatesArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/gms/maps/model/LatLng;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 361
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v2

    invoke-static {v2}, Lcom/google/maps/android/geojson/GeoJsonParser;->parseCoordinate(Lorg/json/JSONArray;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 360
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 363
    :cond_0
    return-object v0
.end method

.method private static parseCoordinatesArrays(Lorg/json/JSONArray;)Ljava/util/ArrayList;
    .locals 3
    .param p0, "coordinates"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 376
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 378
    .local v0, "coordinatesArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/google/android/gms/maps/model/LatLng;>;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 379
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v2

    invoke-static {v2}, Lcom/google/maps/android/geojson/GeoJsonParser;->parseCoordinatesArray(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 378
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 381
    :cond_0
    return-object v0
.end method

.method private static parseFeature(Lorg/json/JSONObject;)Lcom/google/maps/android/geojson/GeoJsonFeature;
    .locals 8
    .param p0, "geoJsonFeature"    # Lorg/json/JSONObject;

    .prologue
    .line 99
    const/4 v3, 0x0

    .line 100
    .local v3, "id":Ljava/lang/String;
    const/4 v0, 0x0

    .line 101
    .local v0, "boundingBox":Lcom/google/android/gms/maps/model/LatLngBounds;
    const/4 v2, 0x0

    .line 102
    .local v2, "geometry":Lcom/google/maps/android/geojson/GeoJsonGeometry;
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 105
    .local v4, "properties":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    const-string v5, "id"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 106
    const-string v5, "id"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 108
    :cond_0
    const-string v5, "bbox"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 109
    const-string v5, "bbox"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    invoke-static {v5}, Lcom/google/maps/android/geojson/GeoJsonParser;->parseBoundingBox(Lorg/json/JSONArray;)Lcom/google/android/gms/maps/model/LatLngBounds;

    move-result-object v0

    .line 111
    :cond_1
    const-string v5, "geometry"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "geometry"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 112
    const-string v5, "geometry"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-static {v5}, Lcom/google/maps/android/geojson/GeoJsonParser;->parseGeometry(Lorg/json/JSONObject;)Lcom/google/maps/android/geojson/GeoJsonGeometry;

    move-result-object v2

    .line 114
    :cond_2
    const-string v5, "properties"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "properties"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 115
    const-string v5, "properties"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-static {v5}, Lcom/google/maps/android/geojson/GeoJsonParser;->parseProperties(Lorg/json/JSONObject;)Ljava/util/HashMap;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 121
    :cond_3
    new-instance v5, Lcom/google/maps/android/geojson/GeoJsonFeature;

    invoke-direct {v5, v2, v3, v4, v0}, Lcom/google/maps/android/geojson/GeoJsonFeature;-><init>(Lcom/google/maps/android/geojson/GeoJsonGeometry;Ljava/lang/String;Ljava/util/HashMap;Lcom/google/android/gms/maps/model/LatLngBounds;)V

    :goto_0
    return-object v5

    .line 117
    :catch_0
    move-exception v1

    .line 118
    .local v1, "e":Lorg/json/JSONException;
    const-string v5, "GeoJsonParser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Feature could not be successfully parsed "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private parseFeatureCollection(Lorg/json/JSONObject;)Ljava/util/ArrayList;
    .locals 9
    .param p1, "geoJsonFeatureCollection"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/maps/android/geojson/GeoJsonFeature;",
            ">;"
        }
    .end annotation

    .prologue
    .line 423
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 425
    .local v2, "features":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/maps/android/geojson/GeoJsonFeature;>;"
    :try_start_0
    const-string v6, "features"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 426
    .local v3, "geoJsonFeatures":Lorg/json/JSONArray;
    const-string v6, "bbox"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 427
    const-string v6, "bbox"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    invoke-static {v6}, Lcom/google/maps/android/geojson/GeoJsonParser;->parseBoundingBox(Lorg/json/JSONArray;)Lcom/google/android/gms/maps/model/LatLngBounds;

    move-result-object v6

    iput-object v6, p0, Lcom/google/maps/android/geojson/GeoJsonParser;->mBoundingBox:Lcom/google/android/gms/maps/model/LatLngBounds;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 435
    :cond_0
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v4, v6, :cond_2

    .line 437
    :try_start_1
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 438
    .local v1, "feature":Lorg/json/JSONObject;
    const-string v6, "type"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "Feature"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 439
    invoke-static {v1}, Lcom/google/maps/android/geojson/GeoJsonParser;->parseFeature(Lorg/json/JSONObject;)Lcom/google/maps/android/geojson/GeoJsonFeature;

    move-result-object v5

    .line 440
    .local v5, "parsedFeature":Lcom/google/maps/android/geojson/GeoJsonFeature;
    if-eqz v5, :cond_3

    .line 442
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 435
    .end local v1    # "feature":Lorg/json/JSONObject;
    .end local v5    # "parsedFeature":Lcom/google/maps/android/geojson/GeoJsonFeature;
    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 430
    .end local v3    # "geoJsonFeatures":Lorg/json/JSONArray;
    .end local v4    # "i":I
    :catch_0
    move-exception v0

    .line 431
    .local v0, "e":Lorg/json/JSONException;
    const-string v6, "GeoJsonParser"

    const-string v7, "Feature Collection could not be created."

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_2
    return-object v2

    .line 444
    .restart local v1    # "feature":Lorg/json/JSONObject;
    .restart local v3    # "geoJsonFeatures":Lorg/json/JSONArray;
    .restart local v4    # "i":I
    .restart local v5    # "parsedFeature":Lcom/google/maps/android/geojson/GeoJsonFeature;
    :cond_3
    :try_start_2
    const-string v6, "GeoJsonParser"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Index of Feature in Feature Collection that could not be created: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 449
    .end local v1    # "feature":Lorg/json/JSONObject;
    .end local v5    # "parsedFeature":Lcom/google/maps/android/geojson/GeoJsonFeature;
    :catch_1
    move-exception v0

    .line 450
    .restart local v0    # "e":Lorg/json/JSONException;
    const-string v6, "GeoJsonParser"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Index of Feature in Feature Collection that could not be created: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private parseGeoJson()V
    .locals 5

    .prologue
    .line 391
    :try_start_0
    iget-object v3, p0, Lcom/google/maps/android/geojson/GeoJsonParser;->mGeoJsonFile:Lorg/json/JSONObject;

    const-string v4, "type"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 393
    .local v2, "type":Ljava/lang/String;
    const-string v3, "Feature"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 394
    iget-object v3, p0, Lcom/google/maps/android/geojson/GeoJsonParser;->mGeoJsonFile:Lorg/json/JSONObject;

    invoke-static {v3}, Lcom/google/maps/android/geojson/GeoJsonParser;->parseFeature(Lorg/json/JSONObject;)Lcom/google/maps/android/geojson/GeoJsonFeature;

    move-result-object v1

    .line 395
    .local v1, "feature":Lcom/google/maps/android/geojson/GeoJsonFeature;
    if-eqz v1, :cond_0

    .line 396
    iget-object v3, p0, Lcom/google/maps/android/geojson/GeoJsonParser;->mGeoJsonFeatures:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 412
    .end local v1    # "feature":Lcom/google/maps/android/geojson/GeoJsonFeature;
    .end local v2    # "type":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 398
    .restart local v2    # "type":Ljava/lang/String;
    :cond_1
    const-string v3, "FeatureCollection"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 399
    iget-object v3, p0, Lcom/google/maps/android/geojson/GeoJsonParser;->mGeoJsonFeatures:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/google/maps/android/geojson/GeoJsonParser;->mGeoJsonFile:Lorg/json/JSONObject;

    invoke-direct {p0, v4}, Lcom/google/maps/android/geojson/GeoJsonParser;->parseFeatureCollection(Lorg/json/JSONObject;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 409
    .end local v2    # "type":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 410
    .local v0, "e":Lorg/json/JSONException;
    const-string v3, "GeoJsonParser"

    const-string v4, "GeoJSON file could not be parsed."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 400
    .end local v0    # "e":Lorg/json/JSONException;
    .restart local v2    # "type":Ljava/lang/String;
    :cond_2
    :try_start_1
    invoke-static {v2}, Lcom/google/maps/android/geojson/GeoJsonParser;->isGeometry(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 401
    iget-object v3, p0, Lcom/google/maps/android/geojson/GeoJsonParser;->mGeoJsonFile:Lorg/json/JSONObject;

    invoke-static {v3}, Lcom/google/maps/android/geojson/GeoJsonParser;->parseGeometryToFeature(Lorg/json/JSONObject;)Lcom/google/maps/android/geojson/GeoJsonFeature;

    move-result-object v1

    .line 402
    .restart local v1    # "feature":Lcom/google/maps/android/geojson/GeoJsonFeature;
    if-eqz v1, :cond_0

    .line 404
    iget-object v3, p0, Lcom/google/maps/android/geojson/GeoJsonParser;->mGeoJsonFeatures:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 407
    .end local v1    # "feature":Lcom/google/maps/android/geojson/GeoJsonFeature;
    :cond_3
    const-string v3, "GeoJsonParser"

    const-string v4, "GeoJSON file could not be parsed."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private static parseGeometry(Lorg/json/JSONObject;)Lcom/google/maps/android/geojson/GeoJsonGeometry;
    .locals 5
    .param p0, "geoJsonGeometry"    # Lorg/json/JSONObject;

    .prologue
    const/4 v3, 0x0

    .line 151
    :try_start_0
    const-string v4, "type"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 154
    .local v2, "geometryType":Ljava/lang/String;
    const-string v4, "GeometryCollection"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 156
    const-string v4, "geometries"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 163
    .local v1, "geometryArray":Lorg/json/JSONArray;
    :goto_0
    invoke-static {v2, v1}, Lcom/google/maps/android/geojson/GeoJsonParser;->createGeometry(Ljava/lang/String;Lorg/json/JSONArray;)Lcom/google/maps/android/geojson/GeoJsonGeometry;

    move-result-object v3

    .line 165
    .end local v1    # "geometryArray":Lorg/json/JSONArray;
    .end local v2    # "geometryType":Ljava/lang/String;
    :cond_0
    :goto_1
    return-object v3

    .line 157
    .restart local v2    # "geometryType":Ljava/lang/String;
    :cond_1
    invoke-static {v2}, Lcom/google/maps/android/geojson/GeoJsonParser;->isGeometry(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 158
    const-string v4, "coordinates"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .restart local v1    # "geometryArray":Lorg/json/JSONArray;
    goto :goto_0

    .line 164
    .end local v1    # "geometryArray":Lorg/json/JSONArray;
    .end local v2    # "geometryType":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 165
    .local v0, "e":Lorg/json/JSONException;
    goto :goto_1
.end method

.method private static parseGeometryToFeature(Lorg/json/JSONObject;)Lcom/google/maps/android/geojson/GeoJsonFeature;
    .locals 4
    .param p0, "geoJsonGeometry"    # Lorg/json/JSONObject;

    .prologue
    const/4 v2, 0x0

    .line 177
    invoke-static {p0}, Lcom/google/maps/android/geojson/GeoJsonParser;->parseGeometry(Lorg/json/JSONObject;)Lcom/google/maps/android/geojson/GeoJsonGeometry;

    move-result-object v0

    .line 178
    .local v0, "geometry":Lcom/google/maps/android/geojson/GeoJsonGeometry;
    if-eqz v0, :cond_0

    .line 179
    new-instance v1, Lcom/google/maps/android/geojson/GeoJsonFeature;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-direct {v1, v0, v2, v3, v2}, Lcom/google/maps/android/geojson/GeoJsonFeature;-><init>(Lcom/google/maps/android/geojson/GeoJsonGeometry;Ljava/lang/String;Ljava/util/HashMap;Lcom/google/android/gms/maps/model/LatLngBounds;)V

    .line 182
    :goto_0
    return-object v1

    .line 181
    :cond_0
    const-string v1, "GeoJsonParser"

    const-string v3, "Geometry could not be parsed"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v2

    .line 182
    goto :goto_0
.end method

.method private static parseProperties(Lorg/json/JSONObject;)Ljava/util/HashMap;
    .locals 4
    .param p0, "properties"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 195
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 196
    .local v1, "propertiesMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 197
    .local v2, "propertyKeys":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 198
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 199
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 201
    .end local v0    # "key":Ljava/lang/String;
    :cond_0
    return-object v1
.end method


# virtual methods
.method getBoundingBox()Lcom/google/android/gms/maps/model/LatLngBounds;
    .locals 1

    .prologue
    .line 475
    iget-object v0, p0, Lcom/google/maps/android/geojson/GeoJsonParser;->mBoundingBox:Lcom/google/android/gms/maps/model/LatLngBounds;

    return-object v0
.end method

.method getFeatures()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/maps/android/geojson/GeoJsonFeature;",
            ">;"
        }
    .end annotation

    .prologue
    .line 463
    iget-object v0, p0, Lcom/google/maps/android/geojson/GeoJsonParser;->mGeoJsonFeatures:Ljava/util/ArrayList;

    return-object v0
.end method
