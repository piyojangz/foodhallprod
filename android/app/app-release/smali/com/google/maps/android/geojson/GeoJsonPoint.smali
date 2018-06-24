.class public Lcom/google/maps/android/geojson/GeoJsonPoint;
.super Ljava/lang/Object;
.source "GeoJsonPoint.java"

# interfaces
.implements Lcom/google/maps/android/geojson/GeoJsonGeometry;


# static fields
.field private static final GEOMETRY_TYPE:Ljava/lang/String; = "Point"


# instance fields
.field private final mCoordinates:Lcom/google/android/gms/maps/model/LatLng;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 2
    .param p1, "coordinate"    # Lcom/google/android/gms/maps/model/LatLng;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    if-nez p1, :cond_0

    .line 21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Coordinate cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 23
    :cond_0
    iput-object p1, p0, Lcom/google/maps/android/geojson/GeoJsonPoint;->mCoordinates:Lcom/google/android/gms/maps/model/LatLng;

    .line 24
    return-void
.end method


# virtual methods
.method public getCoordinates()Lcom/google/android/gms/maps/model/LatLng;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/maps/android/geojson/GeoJsonPoint;->mCoordinates:Lcom/google/android/gms/maps/model/LatLng;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    const-string v0, "Point"

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 43
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Point"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 44
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "\n coordinates="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/maps/android/geojson/GeoJsonPoint;->mCoordinates:Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 45
    const-string v1, "\n}\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
