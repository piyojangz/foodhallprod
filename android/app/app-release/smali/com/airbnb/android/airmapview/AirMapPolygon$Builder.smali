.class public Lcom/airbnb/android/airmapview/AirMapPolygon$Builder;
.super Ljava/lang/Object;
.source "AirMapPolygon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/airmapview/AirMapPolygon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private id:J

.field private object:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final polygonOptions:Lcom/google/android/gms/maps/model/PolygonOptions;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 51
    .local p0, "this":Lcom/airbnb/android/airmapview/AirMapPolygon$Builder;, "Lcom/airbnb/android/airmapview/AirMapPolygon$Builder<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Lcom/google/android/gms/maps/model/PolygonOptions;

    invoke-direct {v0}, Lcom/google/android/gms/maps/model/PolygonOptions;-><init>()V

    iput-object v0, p0, Lcom/airbnb/android/airmapview/AirMapPolygon$Builder;->polygonOptions:Lcom/google/android/gms/maps/model/PolygonOptions;

    .line 52
    iget-object v0, p0, Lcom/airbnb/android/airmapview/AirMapPolygon$Builder;->polygonOptions:Lcom/google/android/gms/maps/model/PolygonOptions;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/PolygonOptions;->strokeWidth(F)Lcom/google/android/gms/maps/model/PolygonOptions;

    .line 53
    iget-object v0, p0, Lcom/airbnb/android/airmapview/AirMapPolygon$Builder;->polygonOptions:Lcom/google/android/gms/maps/model/PolygonOptions;

    const v1, -0xffff01

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/PolygonOptions;->strokeColor(I)Lcom/google/android/gms/maps/model/PolygonOptions;

    .line 54
    return-void
.end method


# virtual methods
.method public add(Lcom/google/android/gms/maps/model/LatLng;)Lcom/airbnb/android/airmapview/AirMapPolygon$Builder;
    .locals 1
    .param p1, "point"    # Lcom/google/android/gms/maps/model/LatLng;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ")",
            "Lcom/airbnb/android/airmapview/AirMapPolygon$Builder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 97
    .local p0, "this":Lcom/airbnb/android/airmapview/AirMapPolygon$Builder;, "Lcom/airbnb/android/airmapview/AirMapPolygon$Builder<TT;>;"
    iget-object v0, p0, Lcom/airbnb/android/airmapview/AirMapPolygon$Builder;->polygonOptions:Lcom/google/android/gms/maps/model/PolygonOptions;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/model/PolygonOptions;->add(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/PolygonOptions;

    .line 98
    return-object p0
.end method

.method public varargs add([Lcom/google/android/gms/maps/model/LatLng;)Lcom/airbnb/android/airmapview/AirMapPolygon$Builder;
    .locals 1
    .param p1, "points"    # [Lcom/google/android/gms/maps/model/LatLng;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ")",
            "Lcom/airbnb/android/airmapview/AirMapPolygon$Builder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 102
    .local p0, "this":Lcom/airbnb/android/airmapview/AirMapPolygon$Builder;, "Lcom/airbnb/android/airmapview/AirMapPolygon$Builder<TT;>;"
    iget-object v0, p0, Lcom/airbnb/android/airmapview/AirMapPolygon$Builder;->polygonOptions:Lcom/google/android/gms/maps/model/PolygonOptions;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/model/PolygonOptions;->add([Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/PolygonOptions;

    .line 103
    return-object p0
.end method

.method public addAll(Ljava/lang/Iterable;)Lcom/airbnb/android/airmapview/AirMapPolygon$Builder;
    .locals 1
    .param p1    # Ljava/lang/Iterable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;)",
            "Lcom/airbnb/android/airmapview/AirMapPolygon$Builder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 107
    .local p0, "this":Lcom/airbnb/android/airmapview/AirMapPolygon$Builder;, "Lcom/airbnb/android/airmapview/AirMapPolygon$Builder<TT;>;"
    .local p1, "points":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/google/android/gms/maps/model/LatLng;>;"
    iget-object v0, p0, Lcom/airbnb/android/airmapview/AirMapPolygon$Builder;->polygonOptions:Lcom/google/android/gms/maps/model/PolygonOptions;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/model/PolygonOptions;->addAll(Ljava/lang/Iterable;)Lcom/google/android/gms/maps/model/PolygonOptions;

    .line 108
    return-object p0
.end method

.method public addHole(Ljava/lang/Iterable;)Lcom/airbnb/android/airmapview/AirMapPolygon$Builder;
    .locals 1
    .param p1    # Ljava/lang/Iterable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;)",
            "Lcom/airbnb/android/airmapview/AirMapPolygon$Builder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 112
    .local p0, "this":Lcom/airbnb/android/airmapview/AirMapPolygon$Builder;, "Lcom/airbnb/android/airmapview/AirMapPolygon$Builder<TT;>;"
    .local p1, "points":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/google/android/gms/maps/model/LatLng;>;"
    iget-object v0, p0, Lcom/airbnb/android/airmapview/AirMapPolygon$Builder;->polygonOptions:Lcom/google/android/gms/maps/model/PolygonOptions;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/model/PolygonOptions;->addHole(Ljava/lang/Iterable;)Lcom/google/android/gms/maps/model/PolygonOptions;

    .line 113
    return-object p0
.end method

.method public build()Lcom/airbnb/android/airmapview/AirMapPolygon;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/airbnb/android/airmapview/AirMapPolygon",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 117
    .local p0, "this":Lcom/airbnb/android/airmapview/AirMapPolygon$Builder;, "Lcom/airbnb/android/airmapview/AirMapPolygon$Builder<TT;>;"
    new-instance v0, Lcom/airbnb/android/airmapview/AirMapPolygon;

    iget-object v1, p0, Lcom/airbnb/android/airmapview/AirMapPolygon$Builder;->object:Ljava/lang/Object;

    iget-wide v2, p0, Lcom/airbnb/android/airmapview/AirMapPolygon$Builder;->id:J

    iget-object v4, p0, Lcom/airbnb/android/airmapview/AirMapPolygon$Builder;->polygonOptions:Lcom/google/android/gms/maps/model/PolygonOptions;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/airbnb/android/airmapview/AirMapPolygon;-><init>(Ljava/lang/Object;JLcom/google/android/gms/maps/model/PolygonOptions;)V

    return-object v0
.end method

.method public fillColor(I)Lcom/airbnb/android/airmapview/AirMapPolygon$Builder;
    .locals 1
    .param p1, "color"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/airbnb/android/airmapview/AirMapPolygon$Builder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 77
    .local p0, "this":Lcom/airbnb/android/airmapview/AirMapPolygon$Builder;, "Lcom/airbnb/android/airmapview/AirMapPolygon$Builder<TT;>;"
    iget-object v0, p0, Lcom/airbnb/android/airmapview/AirMapPolygon$Builder;->polygonOptions:Lcom/google/android/gms/maps/model/PolygonOptions;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/model/PolygonOptions;->fillColor(I)Lcom/google/android/gms/maps/model/PolygonOptions;

    .line 78
    return-object p0
.end method

.method public geodesic(Z)Lcom/airbnb/android/airmapview/AirMapPolygon$Builder;
    .locals 1
    .param p1, "geodesic"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/airbnb/android/airmapview/AirMapPolygon$Builder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 82
    .local p0, "this":Lcom/airbnb/android/airmapview/AirMapPolygon$Builder;, "Lcom/airbnb/android/airmapview/AirMapPolygon$Builder<TT;>;"
    iget-object v0, p0, Lcom/airbnb/android/airmapview/AirMapPolygon$Builder;->polygonOptions:Lcom/google/android/gms/maps/model/PolygonOptions;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/model/PolygonOptions;->geodesic(Z)Lcom/google/android/gms/maps/model/PolygonOptions;

    .line 83
    return-object p0
.end method

.method public id(J)Lcom/airbnb/android/airmapview/AirMapPolygon$Builder;
    .locals 1
    .param p1, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lcom/airbnb/android/airmapview/AirMapPolygon$Builder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 62
    .local p0, "this":Lcom/airbnb/android/airmapview/AirMapPolygon$Builder;, "Lcom/airbnb/android/airmapview/AirMapPolygon$Builder<TT;>;"
    iput-wide p1, p0, Lcom/airbnb/android/airmapview/AirMapPolygon$Builder;->id:J

    .line 63
    return-object p0
.end method

.method public object(Ljava/lang/Object;)Lcom/airbnb/android/airmapview/AirMapPolygon$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/airbnb/android/airmapview/AirMapPolygon$Builder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 57
    .local p0, "this":Lcom/airbnb/android/airmapview/AirMapPolygon$Builder;, "Lcom/airbnb/android/airmapview/AirMapPolygon$Builder<TT;>;"
    .local p1, "object":Ljava/lang/Object;, "TT;"
    iput-object p1, p0, Lcom/airbnb/android/airmapview/AirMapPolygon$Builder;->object:Ljava/lang/Object;

    .line 58
    return-object p0
.end method

.method public strokeColor(I)Lcom/airbnb/android/airmapview/AirMapPolygon$Builder;
    .locals 1
    .param p1, "color"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/airbnb/android/airmapview/AirMapPolygon$Builder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 67
    .local p0, "this":Lcom/airbnb/android/airmapview/AirMapPolygon$Builder;, "Lcom/airbnb/android/airmapview/AirMapPolygon$Builder<TT;>;"
    iget-object v0, p0, Lcom/airbnb/android/airmapview/AirMapPolygon$Builder;->polygonOptions:Lcom/google/android/gms/maps/model/PolygonOptions;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/model/PolygonOptions;->strokeColor(I)Lcom/google/android/gms/maps/model/PolygonOptions;

    .line 68
    return-object p0
.end method

.method public strokeWidth(F)Lcom/airbnb/android/airmapview/AirMapPolygon$Builder;
    .locals 1
    .param p1, "width"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/airbnb/android/airmapview/AirMapPolygon$Builder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 72
    .local p0, "this":Lcom/airbnb/android/airmapview/AirMapPolygon$Builder;, "Lcom/airbnb/android/airmapview/AirMapPolygon$Builder<TT;>;"
    iget-object v0, p0, Lcom/airbnb/android/airmapview/AirMapPolygon$Builder;->polygonOptions:Lcom/google/android/gms/maps/model/PolygonOptions;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/model/PolygonOptions;->strokeWidth(F)Lcom/google/android/gms/maps/model/PolygonOptions;

    .line 73
    return-object p0
.end method

.method public visible(Z)Lcom/airbnb/android/airmapview/AirMapPolygon$Builder;
    .locals 1
    .param p1, "visible"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/airbnb/android/airmapview/AirMapPolygon$Builder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 92
    .local p0, "this":Lcom/airbnb/android/airmapview/AirMapPolygon$Builder;, "Lcom/airbnb/android/airmapview/AirMapPolygon$Builder<TT;>;"
    iget-object v0, p0, Lcom/airbnb/android/airmapview/AirMapPolygon$Builder;->polygonOptions:Lcom/google/android/gms/maps/model/PolygonOptions;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/model/PolygonOptions;->visible(Z)Lcom/google/android/gms/maps/model/PolygonOptions;

    .line 93
    return-object p0
.end method

.method public zIndex(F)Lcom/airbnb/android/airmapview/AirMapPolygon$Builder;
    .locals 1
    .param p1, "zIndex"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/airbnb/android/airmapview/AirMapPolygon$Builder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 87
    .local p0, "this":Lcom/airbnb/android/airmapview/AirMapPolygon$Builder;, "Lcom/airbnb/android/airmapview/AirMapPolygon$Builder<TT;>;"
    iget-object v0, p0, Lcom/airbnb/android/airmapview/AirMapPolygon$Builder;->polygonOptions:Lcom/google/android/gms/maps/model/PolygonOptions;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/model/PolygonOptions;->zIndex(F)Lcom/google/android/gms/maps/model/PolygonOptions;

    .line 88
    return-object p0
.end method
