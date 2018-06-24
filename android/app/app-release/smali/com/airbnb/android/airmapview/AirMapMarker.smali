.class public Lcom/airbnb/android/airmapview/AirMapMarker;
.super Ljava/lang/Object;
.source "AirMapMarker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/airmapview/AirMapMarker$Builder;
    }
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
.field private final id:J

.field private marker:Lcom/google/android/gms/maps/model/Marker;

.field private final markerOptions:Lcom/google/android/gms/maps/model/MarkerOptions;

.field private final object:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/Object;JLcom/google/android/gms/maps/model/MarkerOptions;)V
    .locals 0
    .param p2, "id"    # J
    .param p4, "markerOptions"    # Lcom/google/android/gms/maps/model/MarkerOptions;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;J",
            "Lcom/google/android/gms/maps/model/MarkerOptions;",
            ")V"
        }
    .end annotation

    .prologue
    .line 22
    .local p0, "this":Lcom/airbnb/android/airmapview/AirMapMarker;, "Lcom/airbnb/android/airmapview/AirMapMarker<TT;>;"
    .local p1, "object":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/airbnb/android/airmapview/AirMapMarker;->object:Ljava/lang/Object;

    .line 24
    iput-wide p2, p0, Lcom/airbnb/android/airmapview/AirMapMarker;->id:J

    .line 25
    iput-object p4, p0, Lcom/airbnb/android/airmapview/AirMapMarker;->markerOptions:Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 26
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Object;JLcom/google/android/gms/maps/model/MarkerOptions;Lcom/airbnb/android/airmapview/AirMapMarker$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # J
    .param p4, "x2"    # Lcom/google/android/gms/maps/model/MarkerOptions;
    .param p5, "x3"    # Lcom/airbnb/android/airmapview/AirMapMarker$1;

    .prologue
    .line 15
    .local p0, "this":Lcom/airbnb/android/airmapview/AirMapMarker;, "Lcom/airbnb/android/airmapview/AirMapMarker<TT;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/airbnb/android/airmapview/AirMapMarker;-><init>(Ljava/lang/Object;JLcom/google/android/gms/maps/model/MarkerOptions;)V

    return-void
.end method


# virtual methods
.method public getId()J
    .locals 2

    .prologue
    .line 33
    .local p0, "this":Lcom/airbnb/android/airmapview/AirMapMarker;, "Lcom/airbnb/android/airmapview/AirMapMarker<TT;>;"
    iget-wide v0, p0, Lcom/airbnb/android/airmapview/AirMapMarker;->id:J

    return-wide v0
.end method

.method public getLatLng()Lcom/google/android/gms/maps/model/LatLng;
    .locals 1

    .prologue
    .line 37
    .local p0, "this":Lcom/airbnb/android/airmapview/AirMapMarker;, "Lcom/airbnb/android/airmapview/AirMapMarker<TT;>;"
    iget-object v0, p0, Lcom/airbnb/android/airmapview/AirMapMarker;->markerOptions:Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/MarkerOptions;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    return-object v0
.end method

.method public getMarker()Lcom/google/android/gms/maps/model/Marker;
    .locals 1

    .prologue
    .line 80
    .local p0, "this":Lcom/airbnb/android/airmapview/AirMapMarker;, "Lcom/airbnb/android/airmapview/AirMapMarker<TT;>;"
    iget-object v0, p0, Lcom/airbnb/android/airmapview/AirMapMarker;->marker:Lcom/google/android/gms/maps/model/Marker;

    return-object v0
.end method

.method public getMarkerOptions()Lcom/google/android/gms/maps/model/MarkerOptions;
    .locals 1

    .prologue
    .line 53
    .local p0, "this":Lcom/airbnb/android/airmapview/AirMapMarker;, "Lcom/airbnb/android/airmapview/AirMapMarker<TT;>;"
    iget-object v0, p0, Lcom/airbnb/android/airmapview/AirMapMarker;->markerOptions:Lcom/google/android/gms/maps/model/MarkerOptions;

    return-object v0
.end method

.method public getSnippet()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    .local p0, "this":Lcom/airbnb/android/airmapview/AirMapMarker;, "Lcom/airbnb/android/airmapview/AirMapMarker<TT;>;"
    iget-object v0, p0, Lcom/airbnb/android/airmapview/AirMapMarker;->markerOptions:Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/MarkerOptions;->getSnippet()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    .local p0, "this":Lcom/airbnb/android/airmapview/AirMapMarker;, "Lcom/airbnb/android/airmapview/AirMapMarker<TT;>;"
    iget-object v0, p0, Lcom/airbnb/android/airmapview/AirMapMarker;->markerOptions:Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/MarkerOptions;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public object()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 29
    .local p0, "this":Lcom/airbnb/android/airmapview/AirMapMarker;, "Lcom/airbnb/android/airmapview/AirMapMarker<TT;>;"
    iget-object v0, p0, Lcom/airbnb/android/airmapview/AirMapMarker;->object:Ljava/lang/Object;

    return-object v0
.end method

.method setGoogleMarker(Lcom/google/android/gms/maps/model/Marker;)V
    .locals 0
    .param p1, "marker"    # Lcom/google/android/gms/maps/model/Marker;

    .prologue
    .line 58
    .local p0, "this":Lcom/airbnb/android/airmapview/AirMapMarker;, "Lcom/airbnb/android/airmapview/AirMapMarker<TT;>;"
    iput-object p1, p0, Lcom/airbnb/android/airmapview/AirMapMarker;->marker:Lcom/google/android/gms/maps/model/Marker;

    .line 59
    return-void
.end method

.method setLatLng(Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 1
    .param p1, "latLng"    # Lcom/google/android/gms/maps/model/LatLng;

    .prologue
    .line 41
    .local p0, "this":Lcom/airbnb/android/airmapview/AirMapMarker;, "Lcom/airbnb/android/airmapview/AirMapMarker<TT;>;"
    iget-object v0, p0, Lcom/airbnb/android/airmapview/AirMapMarker;->markerOptions:Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 42
    return-void
.end method

.method public toBuilder()Lcom/airbnb/android/airmapview/AirMapMarker$Builder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/airbnb/android/airmapview/AirMapMarker$Builder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 62
    .local p0, "this":Lcom/airbnb/android/airmapview/AirMapMarker;, "Lcom/airbnb/android/airmapview/AirMapMarker<TT;>;"
    new-instance v0, Lcom/airbnb/android/airmapview/AirMapMarker$Builder;

    invoke-direct {v0}, Lcom/airbnb/android/airmapview/AirMapMarker$Builder;-><init>()V

    iget-wide v2, p0, Lcom/airbnb/android/airmapview/AirMapMarker;->id:J

    .line 63
    invoke-virtual {v0, v2, v3}, Lcom/airbnb/android/airmapview/AirMapMarker$Builder;->id(J)Lcom/airbnb/android/airmapview/AirMapMarker$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/android/airmapview/AirMapMarker;->object:Ljava/lang/Object;

    .line 64
    invoke-virtual {v0, v1}, Lcom/airbnb/android/airmapview/AirMapMarker$Builder;->object(Ljava/lang/Object;)Lcom/airbnb/android/airmapview/AirMapMarker$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/android/airmapview/AirMapMarker;->markerOptions:Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 65
    invoke-virtual {v1}, Lcom/google/android/gms/maps/model/MarkerOptions;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/airbnb/android/airmapview/AirMapMarker$Builder;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/airbnb/android/airmapview/AirMapMarker$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/android/airmapview/AirMapMarker;->markerOptions:Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 66
    invoke-virtual {v1}, Lcom/google/android/gms/maps/model/MarkerOptions;->getAlpha()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/airbnb/android/airmapview/AirMapMarker$Builder;->alpha(F)Lcom/airbnb/android/airmapview/AirMapMarker$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/android/airmapview/AirMapMarker;->markerOptions:Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 67
    invoke-virtual {v1}, Lcom/google/android/gms/maps/model/MarkerOptions;->getAnchorU()F

    move-result v1

    iget-object v2, p0, Lcom/airbnb/android/airmapview/AirMapMarker;->markerOptions:Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-virtual {v2}, Lcom/google/android/gms/maps/model/MarkerOptions;->getAnchorV()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/airbnb/android/airmapview/AirMapMarker$Builder;->anchor(FF)Lcom/airbnb/android/airmapview/AirMapMarker$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/android/airmapview/AirMapMarker;->markerOptions:Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 68
    invoke-virtual {v1}, Lcom/google/android/gms/maps/model/MarkerOptions;->getIcon()Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/airbnb/android/airmapview/AirMapMarker$Builder;->bitmapDescriptor(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/airbnb/android/airmapview/AirMapMarker$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/android/airmapview/AirMapMarker;->markerOptions:Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 69
    invoke-virtual {v1}, Lcom/google/android/gms/maps/model/MarkerOptions;->getInfoWindowAnchorU()F

    move-result v1

    iget-object v2, p0, Lcom/airbnb/android/airmapview/AirMapMarker;->markerOptions:Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-virtual {v2}, Lcom/google/android/gms/maps/model/MarkerOptions;->getInfoWindowAnchorV()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/airbnb/android/airmapview/AirMapMarker$Builder;->infoWindowAnchor(FF)Lcom/airbnb/android/airmapview/AirMapMarker$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/android/airmapview/AirMapMarker;->markerOptions:Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 70
    invoke-virtual {v1}, Lcom/google/android/gms/maps/model/MarkerOptions;->getSnippet()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/airbnb/android/airmapview/AirMapMarker$Builder;->snippet(Ljava/lang/String;)Lcom/airbnb/android/airmapview/AirMapMarker$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/android/airmapview/AirMapMarker;->markerOptions:Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 71
    invoke-virtual {v1}, Lcom/google/android/gms/maps/model/MarkerOptions;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/airbnb/android/airmapview/AirMapMarker$Builder;->title(Ljava/lang/String;)Lcom/airbnb/android/airmapview/AirMapMarker$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/android/airmapview/AirMapMarker;->markerOptions:Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 72
    invoke-virtual {v1}, Lcom/google/android/gms/maps/model/MarkerOptions;->isDraggable()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/airbnb/android/airmapview/AirMapMarker$Builder;->draggable(Z)Lcom/airbnb/android/airmapview/AirMapMarker$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/android/airmapview/AirMapMarker;->markerOptions:Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 73
    invoke-virtual {v1}, Lcom/google/android/gms/maps/model/MarkerOptions;->isVisible()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/airbnb/android/airmapview/AirMapMarker$Builder;->visible(Z)Lcom/airbnb/android/airmapview/AirMapMarker$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/android/airmapview/AirMapMarker;->markerOptions:Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 74
    invoke-virtual {v1}, Lcom/google/android/gms/maps/model/MarkerOptions;->getAlpha()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/airbnb/android/airmapview/AirMapMarker$Builder;->alpha(F)Lcom/airbnb/android/airmapview/AirMapMarker$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/android/airmapview/AirMapMarker;->markerOptions:Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 75
    invoke-virtual {v1}, Lcom/google/android/gms/maps/model/MarkerOptions;->getRotation()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/airbnb/android/airmapview/AirMapMarker$Builder;->rotation(F)Lcom/airbnb/android/airmapview/AirMapMarker$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/android/airmapview/AirMapMarker;->markerOptions:Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 76
    invoke-virtual {v1}, Lcom/google/android/gms/maps/model/MarkerOptions;->isFlat()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/airbnb/android/airmapview/AirMapMarker$Builder;->flat(Z)Lcom/airbnb/android/airmapview/AirMapMarker$Builder;

    move-result-object v0

    return-object v0
.end method
