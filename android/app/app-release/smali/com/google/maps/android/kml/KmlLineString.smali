.class public Lcom/google/maps/android/kml/KmlLineString;
.super Ljava/lang/Object;
.source "KmlLineString.java"

# interfaces
.implements Lcom/google/maps/android/kml/KmlGeometry;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/maps/android/kml/KmlGeometry",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/google/android/gms/maps/model/LatLng;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final GEOMETRY_TYPE:Ljava/lang/String; = "LineString"


# instance fields
.field final mCoordinates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 22
    .local p1, "coordinates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/gms/maps/model/LatLng;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    if-nez p1, :cond_0

    .line 24
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Coordinates cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 26
    :cond_0
    iput-object p1, p0, Lcom/google/maps/android/kml/KmlLineString;->mCoordinates:Ljava/util/ArrayList;

    .line 27
    return-void
.end method


# virtual methods
.method public bridge synthetic getGeometryObject()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/google/maps/android/kml/KmlLineString;->getGeometryObject()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getGeometryObject()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;"
        }
    .end annotation

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/maps/android/kml/KmlLineString;->mCoordinates:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getGeometryType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    const-string v0, "LineString"

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 50
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "LineString"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 51
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "\n coordinates="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/maps/android/kml/KmlLineString;->mCoordinates:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 52
    const-string v1, "\n}\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
