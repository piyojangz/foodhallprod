.class public Lcom/airbnb/android/react/maps/AirMapCircle;
.super Lcom/airbnb/android/react/maps/AirMapFeature;
.source "AirMapCircle.java"


# instance fields
.field private center:Lcom/google/android/gms/maps/model/LatLng;

.field private circle:Lcom/google/android/gms/maps/model/Circle;

.field private circleOptions:Lcom/google/android/gms/maps/model/CircleOptions;

.field private fillColor:I

.field private radius:D

.field private strokeColor:I

.field private strokeWidth:F

.field private zIndex:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/airbnb/android/react/maps/AirMapFeature;-><init>(Landroid/content/Context;)V

    .line 24
    return-void
.end method

.method private createCircleOptions()Lcom/google/android/gms/maps/model/CircleOptions;
    .locals 4

    .prologue
    .line 76
    new-instance v0, Lcom/google/android/gms/maps/model/CircleOptions;

    invoke-direct {v0}, Lcom/google/android/gms/maps/model/CircleOptions;-><init>()V

    .line 77
    .local v0, "options":Lcom/google/android/gms/maps/model/CircleOptions;
    iget-object v1, p0, Lcom/airbnb/android/react/maps/AirMapCircle;->center:Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/CircleOptions;->center(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/CircleOptions;

    .line 78
    iget-wide v2, p0, Lcom/airbnb/android/react/maps/AirMapCircle;->radius:D

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/maps/model/CircleOptions;->radius(D)Lcom/google/android/gms/maps/model/CircleOptions;

    .line 79
    iget v1, p0, Lcom/airbnb/android/react/maps/AirMapCircle;->fillColor:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/CircleOptions;->fillColor(I)Lcom/google/android/gms/maps/model/CircleOptions;

    .line 80
    iget v1, p0, Lcom/airbnb/android/react/maps/AirMapCircle;->strokeColor:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/CircleOptions;->strokeColor(I)Lcom/google/android/gms/maps/model/CircleOptions;

    .line 81
    iget v1, p0, Lcom/airbnb/android/react/maps/AirMapCircle;->strokeWidth:F

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/CircleOptions;->strokeWidth(F)Lcom/google/android/gms/maps/model/CircleOptions;

    .line 82
    iget v1, p0, Lcom/airbnb/android/react/maps/AirMapCircle;->zIndex:F

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/CircleOptions;->zIndex(F)Lcom/google/android/gms/maps/model/CircleOptions;

    .line 83
    return-object v0
.end method


# virtual methods
.method public addToMap(Lcom/google/android/gms/maps/GoogleMap;)V
    .locals 1
    .param p1, "map"    # Lcom/google/android/gms/maps/GoogleMap;

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/airbnb/android/react/maps/AirMapCircle;->getCircleOptions()Lcom/google/android/gms/maps/model/CircleOptions;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/GoogleMap;->addCircle(Lcom/google/android/gms/maps/model/CircleOptions;)Lcom/google/android/gms/maps/model/Circle;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/react/maps/AirMapCircle;->circle:Lcom/google/android/gms/maps/model/Circle;

    .line 94
    return-void
.end method

.method public getCircleOptions()Lcom/google/android/gms/maps/model/CircleOptions;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/airbnb/android/react/maps/AirMapCircle;->circleOptions:Lcom/google/android/gms/maps/model/CircleOptions;

    if-nez v0, :cond_0

    .line 70
    invoke-direct {p0}, Lcom/airbnb/android/react/maps/AirMapCircle;->createCircleOptions()Lcom/google/android/gms/maps/model/CircleOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/react/maps/AirMapCircle;->circleOptions:Lcom/google/android/gms/maps/model/CircleOptions;

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/airbnb/android/react/maps/AirMapCircle;->circleOptions:Lcom/google/android/gms/maps/model/CircleOptions;

    return-object v0
.end method

.method public getFeature()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/airbnb/android/react/maps/AirMapCircle;->circle:Lcom/google/android/gms/maps/model/Circle;

    return-object v0
.end method

.method public removeFromMap(Lcom/google/android/gms/maps/GoogleMap;)V
    .locals 1
    .param p1, "map"    # Lcom/google/android/gms/maps/GoogleMap;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/airbnb/android/react/maps/AirMapCircle;->circle:Lcom/google/android/gms/maps/model/Circle;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Circle;->remove()V

    .line 99
    return-void
.end method

.method public setCenter(Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 2
    .param p1, "center"    # Lcom/google/android/gms/maps/model/LatLng;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/airbnb/android/react/maps/AirMapCircle;->center:Lcom/google/android/gms/maps/model/LatLng;

    .line 28
    iget-object v0, p0, Lcom/airbnb/android/react/maps/AirMapCircle;->circle:Lcom/google/android/gms/maps/model/Circle;

    if-eqz v0, :cond_0

    .line 29
    iget-object v0, p0, Lcom/airbnb/android/react/maps/AirMapCircle;->circle:Lcom/google/android/gms/maps/model/Circle;

    iget-object v1, p0, Lcom/airbnb/android/react/maps/AirMapCircle;->center:Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/Circle;->setCenter(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 31
    :cond_0
    return-void
.end method

.method public setFillColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 41
    iput p1, p0, Lcom/airbnb/android/react/maps/AirMapCircle;->fillColor:I

    .line 42
    iget-object v0, p0, Lcom/airbnb/android/react/maps/AirMapCircle;->circle:Lcom/google/android/gms/maps/model/Circle;

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/airbnb/android/react/maps/AirMapCircle;->circle:Lcom/google/android/gms/maps/model/Circle;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/model/Circle;->setFillColor(I)V

    .line 45
    :cond_0
    return-void
.end method

.method public setRadius(D)V
    .locals 5
    .param p1, "radius"    # D

    .prologue
    .line 34
    iput-wide p1, p0, Lcom/airbnb/android/react/maps/AirMapCircle;->radius:D

    .line 35
    iget-object v0, p0, Lcom/airbnb/android/react/maps/AirMapCircle;->circle:Lcom/google/android/gms/maps/model/Circle;

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/airbnb/android/react/maps/AirMapCircle;->circle:Lcom/google/android/gms/maps/model/Circle;

    iget-wide v2, p0, Lcom/airbnb/android/react/maps/AirMapCircle;->radius:D

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/maps/model/Circle;->setRadius(D)V

    .line 38
    :cond_0
    return-void
.end method

.method public setStrokeColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 48
    iput p1, p0, Lcom/airbnb/android/react/maps/AirMapCircle;->strokeColor:I

    .line 49
    iget-object v0, p0, Lcom/airbnb/android/react/maps/AirMapCircle;->circle:Lcom/google/android/gms/maps/model/Circle;

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/airbnb/android/react/maps/AirMapCircle;->circle:Lcom/google/android/gms/maps/model/Circle;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/model/Circle;->setStrokeColor(I)V

    .line 52
    :cond_0
    return-void
.end method

.method public setStrokeWidth(F)V
    .locals 1
    .param p1, "width"    # F

    .prologue
    .line 55
    iput p1, p0, Lcom/airbnb/android/react/maps/AirMapCircle;->strokeWidth:F

    .line 56
    iget-object v0, p0, Lcom/airbnb/android/react/maps/AirMapCircle;->circle:Lcom/google/android/gms/maps/model/Circle;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/airbnb/android/react/maps/AirMapCircle;->circle:Lcom/google/android/gms/maps/model/Circle;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/model/Circle;->setStrokeWidth(F)V

    .line 59
    :cond_0
    return-void
.end method

.method public setZIndex(F)V
    .locals 1
    .param p1, "zIndex"    # F

    .prologue
    .line 62
    iput p1, p0, Lcom/airbnb/android/react/maps/AirMapCircle;->zIndex:F

    .line 63
    iget-object v0, p0, Lcom/airbnb/android/react/maps/AirMapCircle;->circle:Lcom/google/android/gms/maps/model/Circle;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/airbnb/android/react/maps/AirMapCircle;->circle:Lcom/google/android/gms/maps/model/Circle;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/model/Circle;->setZIndex(F)V

    .line 66
    :cond_0
    return-void
.end method
