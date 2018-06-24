.class public Lcom/airbnb/android/airmapview/AirMapPolyline;
.super Ljava/lang/Object;
.source "AirMapPolyline.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final STROKE_COLOR:I = -0xffff01

.field private static final STROKE_WIDTH:I = 0x1


# instance fields
.field private googlePolyline:Lcom/google/android/gms/maps/model/Polyline;

.field private id:J

.field private object:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private points:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;"
        }
    .end annotation
.end field

.field private strokeColor:I

.field private strokeWidth:I

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/util/List;J)V
    .locals 9
    .param p3, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 34
    .local p0, "this":Lcom/airbnb/android/airmapview/AirMapPolyline;, "Lcom/airbnb/android/airmapview/AirMapPolyline<TT;>;"
    .local p1, "object":Ljava/lang/Object;, "TT;"
    .local p2, "points":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/gms/maps/model/LatLng;>;"
    const/4 v6, 0x1

    const v7, -0xffff01

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-direct/range {v1 .. v7}, Lcom/airbnb/android/airmapview/AirMapPolyline;-><init>(Ljava/lang/Object;Ljava/util/List;JII)V

    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/util/List;JII)V
    .locals 1
    .param p3, "id"    # J
    .param p5, "strokeWidth"    # I
    .param p6, "strokeColor"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;JII)V"
        }
    .end annotation

    .prologue
    .line 37
    .local p0, "this":Lcom/airbnb/android/airmapview/AirMapPolyline;, "Lcom/airbnb/android/airmapview/AirMapPolyline<TT;>;"
    .local p1, "object":Ljava/lang/Object;, "TT;"
    .local p2, "points":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/gms/maps/model/LatLng;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/airbnb/android/airmapview/AirMapPolyline;->object:Ljava/lang/Object;

    .line 39
    iput-object p2, p0, Lcom/airbnb/android/airmapview/AirMapPolyline;->points:Ljava/util/List;

    .line 40
    iput-wide p3, p0, Lcom/airbnb/android/airmapview/AirMapPolyline;->id:J

    .line 41
    iput p5, p0, Lcom/airbnb/android/airmapview/AirMapPolyline;->strokeWidth:I

    .line 42
    iput p6, p0, Lcom/airbnb/android/airmapview/AirMapPolyline;->strokeColor:I

    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/util/List;J)V
    .locals 2
    .param p2, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 30
    .local p0, "this":Lcom/airbnb/android/airmapview/AirMapPolyline;, "Lcom/airbnb/android/airmapview/AirMapPolyline<TT;>;"
    .local p1, "points":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/gms/maps/model/LatLng;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/airbnb/android/airmapview/AirMapPolyline;-><init>(Ljava/lang/Object;Ljava/util/List;J)V

    .line 31
    return-void
.end method


# virtual methods
.method public addToGoogleMap(Lcom/google/android/gms/maps/GoogleMap;)V
    .locals 2
    .param p1, "googleMap"    # Lcom/google/android/gms/maps/GoogleMap;

    .prologue
    .line 92
    .local p0, "this":Lcom/airbnb/android/airmapview/AirMapPolyline;, "Lcom/airbnb/android/airmapview/AirMapPolyline<TT;>;"
    new-instance v0, Lcom/google/android/gms/maps/model/PolylineOptions;

    invoke-direct {v0}, Lcom/google/android/gms/maps/model/PolylineOptions;-><init>()V

    iget-object v1, p0, Lcom/airbnb/android/airmapview/AirMapPolyline;->points:Ljava/util/List;

    .line 93
    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/PolylineOptions;->addAll(Ljava/lang/Iterable;)Lcom/google/android/gms/maps/model/PolylineOptions;

    move-result-object v0

    iget v1, p0, Lcom/airbnb/android/airmapview/AirMapPolyline;->strokeWidth:I

    int-to-float v1, v1

    .line 94
    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/PolylineOptions;->width(F)Lcom/google/android/gms/maps/model/PolylineOptions;

    move-result-object v0

    iget v1, p0, Lcom/airbnb/android/airmapview/AirMapPolyline;->strokeColor:I

    .line 95
    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/PolylineOptions;->color(I)Lcom/google/android/gms/maps/model/PolylineOptions;

    move-result-object v0

    .line 92
    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/GoogleMap;->addPolyline(Lcom/google/android/gms/maps/model/PolylineOptions;)Lcom/google/android/gms/maps/model/Polyline;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/airmapview/AirMapPolyline;->googlePolyline:Lcom/google/android/gms/maps/model/Polyline;

    .line 96
    return-void
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 46
    .local p0, "this":Lcom/airbnb/android/airmapview/AirMapPolyline;, "Lcom/airbnb/android/airmapview/AirMapPolyline<TT;>;"
    iget-wide v0, p0, Lcom/airbnb/android/airmapview/AirMapPolyline;->id:J

    return-wide v0
.end method

.method public getObject()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 70
    .local p0, "this":Lcom/airbnb/android/airmapview/AirMapPolyline;, "Lcom/airbnb/android/airmapview/AirMapPolyline<TT;>;"
    iget-object v0, p0, Lcom/airbnb/android/airmapview/AirMapPolyline;->object:Ljava/lang/Object;

    return-object v0
.end method

.method public getPoints()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;"
        }
    .end annotation

    .prologue
    .line 54
    .local p0, "this":Lcom/airbnb/android/airmapview/AirMapPolyline;, "Lcom/airbnb/android/airmapview/AirMapPolyline<TT;>;"
    iget-object v0, p0, Lcom/airbnb/android/airmapview/AirMapPolyline;->points:Ljava/util/List;

    return-object v0
.end method

.method public getStrokeColor()I
    .locals 1

    .prologue
    .line 82
    .local p0, "this":Lcom/airbnb/android/airmapview/AirMapPolyline;, "Lcom/airbnb/android/airmapview/AirMapPolyline<TT;>;"
    iget v0, p0, Lcom/airbnb/android/airmapview/AirMapPolyline;->strokeColor:I

    return v0
.end method

.method public getStrokeWidth()I
    .locals 1

    .prologue
    .line 78
    .local p0, "this":Lcom/airbnb/android/airmapview/AirMapPolyline;, "Lcom/airbnb/android/airmapview/AirMapPolyline<TT;>;"
    iget v0, p0, Lcom/airbnb/android/airmapview/AirMapPolyline;->strokeWidth:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    .local p0, "this":Lcom/airbnb/android/airmapview/AirMapPolyline;, "Lcom/airbnb/android/airmapview/AirMapPolyline<TT;>;"
    iget-object v0, p0, Lcom/airbnb/android/airmapview/AirMapPolyline;->title:Ljava/lang/String;

    return-object v0
.end method

.method public removeFromGoogleMap()Z
    .locals 1

    .prologue
    .line 104
    .local p0, "this":Lcom/airbnb/android/airmapview/AirMapPolyline;, "Lcom/airbnb/android/airmapview/AirMapPolyline<TT;>;"
    iget-object v0, p0, Lcom/airbnb/android/airmapview/AirMapPolyline;->googlePolyline:Lcom/google/android/gms/maps/model/Polyline;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/airbnb/android/airmapview/AirMapPolyline;->googlePolyline:Lcom/google/android/gms/maps/model/Polyline;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Polyline;->remove()V

    .line 106
    const/4 v0, 0x1

    .line 108
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setId(J)V
    .locals 1
    .param p1, "id"    # J

    .prologue
    .line 50
    .local p0, "this":Lcom/airbnb/android/airmapview/AirMapPolyline;, "Lcom/airbnb/android/airmapview/AirMapPolyline<TT;>;"
    iput-wide p1, p0, Lcom/airbnb/android/airmapview/AirMapPolyline;->id:J

    .line 51
    return-void
.end method

.method public setObject(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 74
    .local p0, "this":Lcom/airbnb/android/airmapview/AirMapPolyline;, "Lcom/airbnb/android/airmapview/AirMapPolyline<TT;>;"
    .local p1, "object":Ljava/lang/Object;, "TT;"
    iput-object p1, p0, Lcom/airbnb/android/airmapview/AirMapPolyline;->object:Ljava/lang/Object;

    .line 75
    return-void
.end method

.method public setPoints(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 58
    .local p0, "this":Lcom/airbnb/android/airmapview/AirMapPolyline;, "Lcom/airbnb/android/airmapview/AirMapPolyline<TT;>;"
    .local p1, "points":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/gms/maps/model/LatLng;>;"
    iput-object p1, p0, Lcom/airbnb/android/airmapview/AirMapPolyline;->points:Ljava/util/List;

    .line 59
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 66
    .local p0, "this":Lcom/airbnb/android/airmapview/AirMapPolyline;, "Lcom/airbnb/android/airmapview/AirMapPolyline<TT;>;"
    iput-object p1, p0, Lcom/airbnb/android/airmapview/AirMapPolyline;->title:Ljava/lang/String;

    .line 67
    return-void
.end method
