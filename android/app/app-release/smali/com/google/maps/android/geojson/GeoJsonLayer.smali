.class public Lcom/google/maps/android/geojson/GeoJsonLayer;
.super Ljava/lang/Object;
.source "GeoJsonLayer.java"


# instance fields
.field private mBoundingBox:Lcom/google/android/gms/maps/model/LatLngBounds;

.field private final mRenderer:Lcom/google/maps/android/geojson/GeoJsonRenderer;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/maps/GoogleMap;ILandroid/content/Context;)V
    .locals 1
    .param p1, "map"    # Lcom/google/android/gms/maps/GoogleMap;
    .param p2, "resourceId"    # I
    .param p3, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 70
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/google/maps/android/geojson/GeoJsonLayer;->createJsonFileObject(Ljava/io/InputStream;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/maps/android/geojson/GeoJsonLayer;-><init>(Lcom/google/android/gms/maps/GoogleMap;Lorg/json/JSONObject;)V

    .line 71
    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/maps/GoogleMap;Lorg/json/JSONObject;)V
    .locals 6
    .param p1, "map"    # Lcom/google/android/gms/maps/GoogleMap;
    .param p2, "geoJsonFile"    # Lorg/json/JSONObject;

    .prologue
    const/4 v5, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    if-nez p2, :cond_0

    .line 45
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "GeoJSON file cannot be null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 48
    :cond_0
    iput-object v5, p0, Lcom/google/maps/android/geojson/GeoJsonLayer;->mBoundingBox:Lcom/google/android/gms/maps/model/LatLngBounds;

    .line 49
    new-instance v3, Lcom/google/maps/android/geojson/GeoJsonParser;

    invoke-direct {v3, p2}, Lcom/google/maps/android/geojson/GeoJsonParser;-><init>(Lorg/json/JSONObject;)V

    .line 51
    .local v3, "parser":Lcom/google/maps/android/geojson/GeoJsonParser;
    invoke-virtual {v3}, Lcom/google/maps/android/geojson/GeoJsonParser;->getBoundingBox()Lcom/google/android/gms/maps/model/LatLngBounds;

    move-result-object v4

    iput-object v4, p0, Lcom/google/maps/android/geojson/GeoJsonLayer;->mBoundingBox:Lcom/google/android/gms/maps/model/LatLngBounds;

    .line 52
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 53
    .local v1, "geoJsonFeatures":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/google/maps/android/geojson/GeoJsonFeature;Ljava/lang/Object;>;"
    invoke-virtual {v3}, Lcom/google/maps/android/geojson/GeoJsonParser;->getFeatures()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/android/geojson/GeoJsonFeature;

    .line 54
    .local v0, "feature":Lcom/google/maps/android/geojson/GeoJsonFeature;
    invoke-virtual {v1, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 56
    .end local v0    # "feature":Lcom/google/maps/android/geojson/GeoJsonFeature;
    :cond_1
    new-instance v4, Lcom/google/maps/android/geojson/GeoJsonRenderer;

    invoke-direct {v4, p1, v1}, Lcom/google/maps/android/geojson/GeoJsonRenderer;-><init>(Lcom/google/android/gms/maps/GoogleMap;Ljava/util/HashMap;)V

    iput-object v4, p0, Lcom/google/maps/android/geojson/GeoJsonLayer;->mRenderer:Lcom/google/maps/android/geojson/GeoJsonRenderer;

    .line 57
    return-void
.end method

.method private static createJsonFileObject(Ljava/io/InputStream;)Lorg/json/JSONObject;
    .locals 5
    .param p0, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 84
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 86
    .local v2, "result":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 89
    .local v1, "reader":Ljava/io/BufferedReader;
    :goto_0
    :try_start_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .local v0, "line":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 90
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 93
    .end local v0    # "line":Ljava/lang/String;
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    throw v3

    .restart local v0    # "line":Ljava/lang/String;
    :cond_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 96
    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    return-object v3
.end method


# virtual methods
.method public addFeature(Lcom/google/maps/android/geojson/GeoJsonFeature;)V
    .locals 2
    .param p1, "feature"    # Lcom/google/maps/android/geojson/GeoJsonFeature;

    .prologue
    .line 122
    if-nez p1, :cond_0

    .line 123
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Feature cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/google/maps/android/geojson/GeoJsonLayer;->mRenderer:Lcom/google/maps/android/geojson/GeoJsonRenderer;

    invoke-virtual {v0, p1}, Lcom/google/maps/android/geojson/GeoJsonRenderer;->addFeature(Lcom/google/maps/android/geojson/GeoJsonFeature;)V

    .line 126
    return-void
.end method

.method public addLayerToMap()V
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/google/maps/android/geojson/GeoJsonLayer;->mRenderer:Lcom/google/maps/android/geojson/GeoJsonRenderer;

    invoke-virtual {v0}, Lcom/google/maps/android/geojson/GeoJsonRenderer;->addLayerToMap()V

    .line 113
    return-void
.end method

.method public getBoundingBox()Lcom/google/android/gms/maps/model/LatLngBounds;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/google/maps/android/geojson/GeoJsonLayer;->mBoundingBox:Lcom/google/android/gms/maps/model/LatLngBounds;

    return-object v0
.end method

.method public getDefaultLineStringStyle()Lcom/google/maps/android/geojson/GeoJsonLineStringStyle;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/google/maps/android/geojson/GeoJsonLayer;->mRenderer:Lcom/google/maps/android/geojson/GeoJsonRenderer;

    invoke-virtual {v0}, Lcom/google/maps/android/geojson/GeoJsonRenderer;->getDefaultLineStringStyle()Lcom/google/maps/android/geojson/GeoJsonLineStringStyle;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultPointStyle()Lcom/google/maps/android/geojson/GeoJsonPointStyle;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/google/maps/android/geojson/GeoJsonLayer;->mRenderer:Lcom/google/maps/android/geojson/GeoJsonRenderer;

    invoke-virtual {v0}, Lcom/google/maps/android/geojson/GeoJsonRenderer;->getDefaultPointStyle()Lcom/google/maps/android/geojson/GeoJsonPointStyle;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultPolygonStyle()Lcom/google/maps/android/geojson/GeoJsonPolygonStyle;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/google/maps/android/geojson/GeoJsonLayer;->mRenderer:Lcom/google/maps/android/geojson/GeoJsonRenderer;

    invoke-virtual {v0}, Lcom/google/maps/android/geojson/GeoJsonRenderer;->getDefaultPolygonStyle()Lcom/google/maps/android/geojson/GeoJsonPolygonStyle;

    move-result-object v0

    return-object v0
.end method

.method public getFeatures()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/google/maps/android/geojson/GeoJsonFeature;",
            ">;"
        }
    .end annotation

    .prologue
    .line 105
    iget-object v0, p0, Lcom/google/maps/android/geojson/GeoJsonLayer;->mRenderer:Lcom/google/maps/android/geojson/GeoJsonRenderer;

    invoke-virtual {v0}, Lcom/google/maps/android/geojson/GeoJsonRenderer;->getFeatures()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getMap()Lcom/google/android/gms/maps/GoogleMap;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/google/maps/android/geojson/GeoJsonLayer;->mRenderer:Lcom/google/maps/android/geojson/GeoJsonRenderer;

    invoke-virtual {v0}, Lcom/google/maps/android/geojson/GeoJsonRenderer;->getMap()Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v0

    return-object v0
.end method

.method public isLayerOnMap()Z
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/google/maps/android/geojson/GeoJsonLayer;->mRenderer:Lcom/google/maps/android/geojson/GeoJsonRenderer;

    invoke-virtual {v0}, Lcom/google/maps/android/geojson/GeoJsonRenderer;->isLayerOnMap()Z

    move-result v0

    return v0
.end method

.method public removeFeature(Lcom/google/maps/android/geojson/GeoJsonFeature;)V
    .locals 2
    .param p1, "feature"    # Lcom/google/maps/android/geojson/GeoJsonFeature;

    .prologue
    .line 134
    if-nez p1, :cond_0

    .line 135
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Feature cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/google/maps/android/geojson/GeoJsonLayer;->mRenderer:Lcom/google/maps/android/geojson/GeoJsonRenderer;

    invoke-virtual {v0, p1}, Lcom/google/maps/android/geojson/GeoJsonRenderer;->removeFeature(Lcom/google/maps/android/geojson/GeoJsonFeature;)V

    .line 138
    return-void
.end method

.method public removeLayerFromMap()V
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/google/maps/android/geojson/GeoJsonLayer;->mRenderer:Lcom/google/maps/android/geojson/GeoJsonRenderer;

    invoke-virtual {v0}, Lcom/google/maps/android/geojson/GeoJsonRenderer;->removeLayerFromMap()V

    .line 164
    return-void
.end method

.method public setMap(Lcom/google/android/gms/maps/GoogleMap;)V
    .locals 1
    .param p1, "map"    # Lcom/google/android/gms/maps/GoogleMap;

    .prologue
    .line 156
    iget-object v0, p0, Lcom/google/maps/android/geojson/GeoJsonLayer;->mRenderer:Lcom/google/maps/android/geojson/GeoJsonRenderer;

    invoke-virtual {v0, p1}, Lcom/google/maps/android/geojson/GeoJsonRenderer;->setMap(Lcom/google/android/gms/maps/GoogleMap;)V

    .line 157
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Collection{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 219
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "\n Bounding box="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/maps/android/geojson/GeoJsonLayer;->mBoundingBox:Lcom/google/android/gms/maps/model/LatLngBounds;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 220
    const-string v1, "\n}\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
