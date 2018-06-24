.class public Lcom/google/maps/android/kml/KmlPoint;
.super Ljava/lang/Object;
.source "KmlPoint.java"

# interfaces
.implements Lcom/google/maps/android/kml/KmlGeometry;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/maps/android/kml/KmlGeometry",
        "<",
        "Lcom/google/android/gms/maps/model/LatLng;",
        ">;"
    }
.end annotation


# static fields
.field public static final GEOMETRY_TYPE:Ljava/lang/String; = "Point"


# instance fields
.field private final mCoordinate:Lcom/google/android/gms/maps/model/LatLng;


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

    const-string v1, "Coordinates cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 23
    :cond_0
    iput-object p1, p0, Lcom/google/maps/android/kml/KmlPoint;->mCoordinate:Lcom/google/android/gms/maps/model/LatLng;

    .line 24
    return-void
.end method


# virtual methods
.method public getGeometryObject()Lcom/google/android/gms/maps/model/LatLng;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/maps/android/kml/KmlPoint;->mCoordinate:Lcom/google/android/gms/maps/model/LatLng;

    return-object v0
.end method

.method public bridge synthetic getGeometryObject()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 8
    invoke-virtual {p0}, Lcom/google/maps/android/kml/KmlPoint;->getGeometryObject()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    return-object v0
.end method

.method public getGeometryType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    const-string v0, "Point"

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 48
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Point"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 49
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "\n coordinates="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/maps/android/kml/KmlPoint;->mCoordinate:Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 50
    const-string v1, "\n}\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
