.class public Lcom/google/maps/android/geojson/GeoJsonGeometryCollection;
.super Ljava/lang/Object;
.source "GeoJsonGeometryCollection.java"

# interfaces
.implements Lcom/google/maps/android/geojson/GeoJsonGeometry;


# static fields
.field private static final GEOMETRY_TYPE:Ljava/lang/String; = "GeometryCollection"


# instance fields
.field private final mGeometries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/maps/android/geojson/GeoJsonGeometry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/maps/android/geojson/GeoJsonGeometry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 20
    .local p1, "geometries":Ljava/util/List;, "Ljava/util/List<Lcom/google/maps/android/geojson/GeoJsonGeometry;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    if-nez p1, :cond_0

    .line 22
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Geometries cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 24
    :cond_0
    iput-object p1, p0, Lcom/google/maps/android/geojson/GeoJsonGeometryCollection;->mGeometries:Ljava/util/List;

    .line 25
    return-void
.end method


# virtual methods
.method public getGeometries()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/maps/android/geojson/GeoJsonGeometry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/maps/android/geojson/GeoJsonGeometryCollection;->mGeometries:Ljava/util/List;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    const-string v0, "GeometryCollection"

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 44
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "GeometryCollection"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 45
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "\n Geometries="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/maps/android/geojson/GeoJsonGeometryCollection;->mGeometries:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 46
    const-string v1, "\n}\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
