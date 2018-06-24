.class public Lcom/airbnb/android/airmapview/AirMapMarker$Builder;
.super Ljava/lang/Object;
.source "AirMapMarker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/airmapview/AirMapMarker;
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

.field private final markerOptions:Lcom/google/android/gms/maps/model/MarkerOptions;

.field private object:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 88
    .local p0, "this":Lcom/airbnb/android/airmapview/AirMapMarker$Builder;, "Lcom/airbnb/android/airmapview/AirMapMarker$Builder<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    new-instance v0, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v0}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    iput-object v0, p0, Lcom/airbnb/android/airmapview/AirMapMarker$Builder;->markerOptions:Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 89
    return-void
.end method


# virtual methods
.method public alpha(F)Lcom/airbnb/android/airmapview/AirMapMarker$Builder;
    .locals 1
    .param p1, "alpha"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/airbnb/android/airmapview/AirMapMarker$Builder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 170
    .local p0, "this":Lcom/airbnb/android/airmapview/AirMapMarker$Builder;, "Lcom/airbnb/android/airmapview/AirMapMarker$Builder<TT;>;"
    iget-object v0, p0, Lcom/airbnb/android/airmapview/AirMapMarker$Builder;->markerOptions:Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/model/MarkerOptions;->alpha(F)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 171
    return-object p0
.end method

.method public anchor(FF)Lcom/airbnb/android/airmapview/AirMapMarker$Builder;
    .locals 1
    .param p1, "u"    # F
    .param p2, "v"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FF)",
            "Lcom/airbnb/android/airmapview/AirMapMarker$Builder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 107
    .local p0, "this":Lcom/airbnb/android/airmapview/AirMapMarker$Builder;, "Lcom/airbnb/android/airmapview/AirMapMarker$Builder<TT;>;"
    iget-object v0, p0, Lcom/airbnb/android/airmapview/AirMapMarker$Builder;->markerOptions:Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/maps/model/MarkerOptions;->anchor(FF)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 108
    return-object p0
.end method

.method public bitmap(Landroid/graphics/Bitmap;)Lcom/airbnb/android/airmapview/AirMapMarker$Builder;
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            ")",
            "Lcom/airbnb/android/airmapview/AirMapMarker$Builder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 137
    .local p0, "this":Lcom/airbnb/android/airmapview/AirMapMarker$Builder;, "Lcom/airbnb/android/airmapview/AirMapMarker$Builder<TT;>;"
    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/airbnb/android/airmapview/AirMapMarker$Builder;->bitmapDescriptor(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/airbnb/android/airmapview/AirMapMarker$Builder;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    :goto_0
    return-object p0

    .line 138
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public bitmapDescriptor(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/airbnb/android/airmapview/AirMapMarker$Builder;
    .locals 1
    .param p1, "bitmap"    # Lcom/google/android/gms/maps/model/BitmapDescriptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/maps/model/BitmapDescriptor;",
            ")",
            "Lcom/airbnb/android/airmapview/AirMapMarker$Builder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 145
    .local p0, "this":Lcom/airbnb/android/airmapview/AirMapMarker$Builder;, "Lcom/airbnb/android/airmapview/AirMapMarker$Builder<TT;>;"
    iget-object v0, p0, Lcom/airbnb/android/airmapview/AirMapMarker$Builder;->markerOptions:Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/model/MarkerOptions;->icon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 146
    return-object p0
.end method

.method public build()Lcom/airbnb/android/airmapview/AirMapMarker;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/airbnb/android/airmapview/AirMapMarker",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 175
    .local p0, "this":Lcom/airbnb/android/airmapview/AirMapMarker$Builder;, "Lcom/airbnb/android/airmapview/AirMapMarker$Builder<TT;>;"
    new-instance v0, Lcom/airbnb/android/airmapview/AirMapMarker;

    iget-object v1, p0, Lcom/airbnb/android/airmapview/AirMapMarker$Builder;->object:Ljava/lang/Object;

    iget-wide v2, p0, Lcom/airbnb/android/airmapview/AirMapMarker$Builder;->id:J

    iget-object v4, p0, Lcom/airbnb/android/airmapview/AirMapMarker$Builder;->markerOptions:Lcom/google/android/gms/maps/model/MarkerOptions;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/airbnb/android/airmapview/AirMapMarker;-><init>(Ljava/lang/Object;JLcom/google/android/gms/maps/model/MarkerOptions;Lcom/airbnb/android/airmapview/AirMapMarker$1;)V

    return-object v0
.end method

.method public draggable(Z)Lcom/airbnb/android/airmapview/AirMapMarker$Builder;
    .locals 1
    .param p1, "draggable"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/airbnb/android/airmapview/AirMapMarker$Builder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 150
    .local p0, "this":Lcom/airbnb/android/airmapview/AirMapMarker$Builder;, "Lcom/airbnb/android/airmapview/AirMapMarker$Builder<TT;>;"
    iget-object v0, p0, Lcom/airbnb/android/airmapview/AirMapMarker$Builder;->markerOptions:Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/model/MarkerOptions;->draggable(Z)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 151
    return-object p0
.end method

.method public flat(Z)Lcom/airbnb/android/airmapview/AirMapMarker$Builder;
    .locals 1
    .param p1, "flat"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/airbnb/android/airmapview/AirMapMarker$Builder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 160
    .local p0, "this":Lcom/airbnb/android/airmapview/AirMapMarker$Builder;, "Lcom/airbnb/android/airmapview/AirMapMarker$Builder<TT;>;"
    iget-object v0, p0, Lcom/airbnb/android/airmapview/AirMapMarker$Builder;->markerOptions:Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/model/MarkerOptions;->flat(Z)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 161
    return-object p0
.end method

.method public iconId(I)Lcom/airbnb/android/airmapview/AirMapMarker$Builder;
    .locals 2
    .param p1, "iconId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/airbnb/android/airmapview/AirMapMarker$Builder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 128
    .local p0, "this":Lcom/airbnb/android/airmapview/AirMapMarker$Builder;, "Lcom/airbnb/android/airmapview/AirMapMarker$Builder<TT;>;"
    :try_start_0
    iget-object v0, p0, Lcom/airbnb/android/airmapview/AirMapMarker$Builder;->markerOptions:Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-static {p1}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->fromResource(I)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/MarkerOptions;->icon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/MarkerOptions;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    :goto_0
    return-object p0

    .line 129
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public id(J)Lcom/airbnb/android/airmapview/AirMapMarker$Builder;
    .locals 1
    .param p1, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lcom/airbnb/android/airmapview/AirMapMarker$Builder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 97
    .local p0, "this":Lcom/airbnb/android/airmapview/AirMapMarker$Builder;, "Lcom/airbnb/android/airmapview/AirMapMarker$Builder<TT;>;"
    iput-wide p1, p0, Lcom/airbnb/android/airmapview/AirMapMarker$Builder;->id:J

    .line 98
    return-object p0
.end method

.method public infoWindowAnchor(FF)Lcom/airbnb/android/airmapview/AirMapMarker$Builder;
    .locals 1
    .param p1, "u"    # F
    .param p2, "v"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FF)",
            "Lcom/airbnb/android/airmapview/AirMapMarker$Builder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 112
    .local p0, "this":Lcom/airbnb/android/airmapview/AirMapMarker$Builder;, "Lcom/airbnb/android/airmapview/AirMapMarker$Builder<TT;>;"
    iget-object v0, p0, Lcom/airbnb/android/airmapview/AirMapMarker$Builder;->markerOptions:Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/maps/model/MarkerOptions;->infoWindowAnchor(FF)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 113
    return-object p0
.end method

.method public object(Ljava/lang/Object;)Lcom/airbnb/android/airmapview/AirMapMarker$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/airbnb/android/airmapview/AirMapMarker$Builder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 92
    .local p0, "this":Lcom/airbnb/android/airmapview/AirMapMarker$Builder;, "Lcom/airbnb/android/airmapview/AirMapMarker$Builder<TT;>;"
    .local p1, "object":Ljava/lang/Object;, "TT;"
    iput-object p1, p0, Lcom/airbnb/android/airmapview/AirMapMarker$Builder;->object:Ljava/lang/Object;

    .line 93
    return-object p0
.end method

.method public position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/airbnb/android/airmapview/AirMapMarker$Builder;
    .locals 1
    .param p1, "position"    # Lcom/google/android/gms/maps/model/LatLng;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ")",
            "Lcom/airbnb/android/airmapview/AirMapMarker$Builder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 102
    .local p0, "this":Lcom/airbnb/android/airmapview/AirMapMarker$Builder;, "Lcom/airbnb/android/airmapview/AirMapMarker$Builder<TT;>;"
    iget-object v0, p0, Lcom/airbnb/android/airmapview/AirMapMarker$Builder;->markerOptions:Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 103
    return-object p0
.end method

.method public rotation(F)Lcom/airbnb/android/airmapview/AirMapMarker$Builder;
    .locals 1
    .param p1, "rotation"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/airbnb/android/airmapview/AirMapMarker$Builder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 165
    .local p0, "this":Lcom/airbnb/android/airmapview/AirMapMarker$Builder;, "Lcom/airbnb/android/airmapview/AirMapMarker$Builder<TT;>;"
    iget-object v0, p0, Lcom/airbnb/android/airmapview/AirMapMarker$Builder;->markerOptions:Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/model/MarkerOptions;->rotation(F)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 166
    return-object p0
.end method

.method public snippet(Ljava/lang/String;)Lcom/airbnb/android/airmapview/AirMapMarker$Builder;
    .locals 1
    .param p1, "snippet"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/airbnb/android/airmapview/AirMapMarker$Builder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 122
    .local p0, "this":Lcom/airbnb/android/airmapview/AirMapMarker$Builder;, "Lcom/airbnb/android/airmapview/AirMapMarker$Builder<TT;>;"
    iget-object v0, p0, Lcom/airbnb/android/airmapview/AirMapMarker$Builder;->markerOptions:Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/model/MarkerOptions;->snippet(Ljava/lang/String;)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 123
    return-object p0
.end method

.method public title(Ljava/lang/String;)Lcom/airbnb/android/airmapview/AirMapMarker$Builder;
    .locals 1
    .param p1, "title"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/airbnb/android/airmapview/AirMapMarker$Builder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 117
    .local p0, "this":Lcom/airbnb/android/airmapview/AirMapMarker$Builder;, "Lcom/airbnb/android/airmapview/AirMapMarker$Builder<TT;>;"
    iget-object v0, p0, Lcom/airbnb/android/airmapview/AirMapMarker$Builder;->markerOptions:Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/model/MarkerOptions;->title(Ljava/lang/String;)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 118
    return-object p0
.end method

.method public visible(Z)Lcom/airbnb/android/airmapview/AirMapMarker$Builder;
    .locals 1
    .param p1, "visible"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/airbnb/android/airmapview/AirMapMarker$Builder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 155
    .local p0, "this":Lcom/airbnb/android/airmapview/AirMapMarker$Builder;, "Lcom/airbnb/android/airmapview/AirMapMarker$Builder<TT;>;"
    iget-object v0, p0, Lcom/airbnb/android/airmapview/AirMapMarker$Builder;->markerOptions:Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/model/MarkerOptions;->visible(Z)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 156
    return-object p0
.end method
