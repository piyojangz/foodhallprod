.class public Lcom/google/maps/android/kml/KmlPolygon;
.super Ljava/lang/Object;
.source "KmlPolygon.java"

# interfaces
.implements Lcom/google/maps/android/kml/KmlGeometry;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/maps/android/kml/KmlGeometry",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/google/android/gms/maps/model/LatLng;",
        ">;>;>;"
    }
.end annotation


# static fields
.field public static final GEOMETRY_TYPE:Ljava/lang/String; = "Polygon"


# instance fields
.field private final mInnerBoundaryCoordinates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mOuterBoundaryCoordinates:Ljava/util/ArrayList;
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
.method public constructor <init>(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 26
    .local p1, "outerBoundaryCoordinates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/gms/maps/model/LatLng;>;"
    .local p2, "innerBoundaryCoordinates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/google/android/gms/maps/model/LatLng;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    if-nez p1, :cond_0

    .line 28
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Outer boundary coordinates cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 30
    :cond_0
    iput-object p1, p0, Lcom/google/maps/android/kml/KmlPolygon;->mOuterBoundaryCoordinates:Ljava/util/ArrayList;

    .line 31
    iput-object p2, p0, Lcom/google/maps/android/kml/KmlPolygon;->mInnerBoundaryCoordinates:Ljava/util/ArrayList;

    .line 33
    return-void
.end method


# virtual methods
.method public bridge synthetic getGeometryObject()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/google/maps/android/kml/KmlPolygon;->getGeometryObject()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getGeometryObject()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 70
    .local v0, "coordinates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/google/android/gms/maps/model/LatLng;>;>;"
    iget-object v1, p0, Lcom/google/maps/android/kml/KmlPolygon;->mOuterBoundaryCoordinates:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    iget-object v1, p0, Lcom/google/maps/android/kml/KmlPolygon;->mInnerBoundaryCoordinates:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 73
    iget-object v1, p0, Lcom/google/maps/android/kml/KmlPolygon;->mInnerBoundaryCoordinates:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 75
    :cond_0
    return-object v0
.end method

.method public getGeometryType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    const-string v0, "Polygon"

    return-object v0
.end method

.method public getInnerBoundaryCoordinates()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/maps/android/kml/KmlPolygon;->mInnerBoundaryCoordinates:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getOuterBoundaryCoordinates()Ljava/util/ArrayList;
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
    .line 51
    iget-object v0, p0, Lcom/google/maps/android/kml/KmlPolygon;->mOuterBoundaryCoordinates:Ljava/util/ArrayList;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 80
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Polygon"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 81
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "\n outer coordinates="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/maps/android/kml/KmlPolygon;->mOuterBoundaryCoordinates:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 82
    const-string v1, ",\n inner coordinates="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/maps/android/kml/KmlPolygon;->mInnerBoundaryCoordinates:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 83
    const-string v1, "\n}\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
