.class public Lcom/airbnb/android/airmapview/AirGoogleMapOptions;
.super Ljava/lang/Object;
.source "AirGoogleMapOptions.java"


# instance fields
.field private final options:Lcom/google/android/gms/maps/GoogleMapOptions;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/maps/GoogleMapOptions;)V
    .locals 0
    .param p1, "options"    # Lcom/google/android/gms/maps/GoogleMapOptions;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/airbnb/android/airmapview/AirGoogleMapOptions;->options:Lcom/google/android/gms/maps/GoogleMapOptions;

    .line 17
    return-void
.end method


# virtual methods
.method public camera(Lcom/google/android/gms/maps/model/CameraPosition;)Lcom/airbnb/android/airmapview/AirGoogleMapOptions;
    .locals 1
    .param p1, "camera"    # Lcom/google/android/gms/maps/model/CameraPosition;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/airbnb/android/airmapview/AirGoogleMapOptions;->options:Lcom/google/android/gms/maps/GoogleMapOptions;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/GoogleMapOptions;->camera(Lcom/google/android/gms/maps/model/CameraPosition;)Lcom/google/android/gms/maps/GoogleMapOptions;

    .line 36
    return-object p0
.end method

.method public compassEnabled(Z)Lcom/airbnb/android/airmapview/AirGoogleMapOptions;
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 45
    iget-object v0, p0, Lcom/airbnb/android/airmapview/AirGoogleMapOptions;->options:Lcom/google/android/gms/maps/GoogleMapOptions;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/GoogleMapOptions;->compassEnabled(Z)Lcom/google/android/gms/maps/GoogleMapOptions;

    .line 46
    return-object p0
.end method

.method public getCamera()Lcom/google/android/gms/maps/model/CameraPosition;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/airbnb/android/airmapview/AirGoogleMapOptions;->options:Lcom/google/android/gms/maps/GoogleMapOptions;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/GoogleMapOptions;->getCamera()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v0

    return-object v0
.end method

.method public getCompassEnabled()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/airbnb/android/airmapview/AirGoogleMapOptions;->options:Lcom/google/android/gms/maps/GoogleMapOptions;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/GoogleMapOptions;->getCompassEnabled()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getLiteMode()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/airbnb/android/airmapview/AirGoogleMapOptions;->options:Lcom/google/android/gms/maps/GoogleMapOptions;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/GoogleMapOptions;->getLiteMode()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getMapToolbarEnabled()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/airbnb/android/airmapview/AirGoogleMapOptions;->options:Lcom/google/android/gms/maps/GoogleMapOptions;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/GoogleMapOptions;->getMapToolbarEnabled()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getMapType()I
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/airbnb/android/airmapview/AirGoogleMapOptions;->options:Lcom/google/android/gms/maps/GoogleMapOptions;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/GoogleMapOptions;->getMapType()I

    move-result v0

    return v0
.end method

.method public getRotateGesturesEnabled()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/airbnb/android/airmapview/AirGoogleMapOptions;->options:Lcom/google/android/gms/maps/GoogleMapOptions;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/GoogleMapOptions;->getRotateGesturesEnabled()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getScrollGesturesEnabled()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/airbnb/android/airmapview/AirGoogleMapOptions;->options:Lcom/google/android/gms/maps/GoogleMapOptions;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/GoogleMapOptions;->getScrollGesturesEnabled()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getTiltGesturesEnabled()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/airbnb/android/airmapview/AirGoogleMapOptions;->options:Lcom/google/android/gms/maps/GoogleMapOptions;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/GoogleMapOptions;->getTiltGesturesEnabled()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getUseViewLifecycleInFragment()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/airbnb/android/airmapview/AirGoogleMapOptions;->options:Lcom/google/android/gms/maps/GoogleMapOptions;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/GoogleMapOptions;->getUseViewLifecycleInFragment()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getZOrderOnTop()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/airbnb/android/airmapview/AirGoogleMapOptions;->options:Lcom/google/android/gms/maps/GoogleMapOptions;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/GoogleMapOptions;->getZOrderOnTop()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getZoomControlsEnabled()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/airbnb/android/airmapview/AirGoogleMapOptions;->options:Lcom/google/android/gms/maps/GoogleMapOptions;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/GoogleMapOptions;->getZoomControlsEnabled()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getZoomGesturesEnabled()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/airbnb/android/airmapview/AirGoogleMapOptions;->options:Lcom/google/android/gms/maps/GoogleMapOptions;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/GoogleMapOptions;->getZoomGesturesEnabled()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public liteMode(Z)Lcom/airbnb/android/airmapview/AirGoogleMapOptions;
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 70
    iget-object v0, p0, Lcom/airbnb/android/airmapview/AirGoogleMapOptions;->options:Lcom/google/android/gms/maps/GoogleMapOptions;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/GoogleMapOptions;->liteMode(Z)Lcom/google/android/gms/maps/GoogleMapOptions;

    .line 71
    return-object p0
.end method

.method public mapToolbarEnabled(Z)Lcom/airbnb/android/airmapview/AirGoogleMapOptions;
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 75
    iget-object v0, p0, Lcom/airbnb/android/airmapview/AirGoogleMapOptions;->options:Lcom/google/android/gms/maps/GoogleMapOptions;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/GoogleMapOptions;->mapToolbarEnabled(Z)Lcom/google/android/gms/maps/GoogleMapOptions;

    .line 76
    return-object p0
.end method

.method public mapType(I)Lcom/airbnb/android/airmapview/AirGoogleMapOptions;
    .locals 1
    .param p1, "mapType"    # I

    .prologue
    .line 30
    iget-object v0, p0, Lcom/airbnb/android/airmapview/AirGoogleMapOptions;->options:Lcom/google/android/gms/maps/GoogleMapOptions;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/GoogleMapOptions;->mapType(I)Lcom/google/android/gms/maps/GoogleMapOptions;

    .line 31
    return-object p0
.end method

.method public rotateGesturesEnabled(Z)Lcom/airbnb/android/airmapview/AirGoogleMapOptions;
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 65
    iget-object v0, p0, Lcom/airbnb/android/airmapview/AirGoogleMapOptions;->options:Lcom/google/android/gms/maps/GoogleMapOptions;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/GoogleMapOptions;->rotateGesturesEnabled(Z)Lcom/google/android/gms/maps/GoogleMapOptions;

    .line 66
    return-object p0
.end method

.method public scrollGesturesEnabled(Z)Lcom/airbnb/android/airmapview/AirGoogleMapOptions;
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 50
    iget-object v0, p0, Lcom/airbnb/android/airmapview/AirGoogleMapOptions;->options:Lcom/google/android/gms/maps/GoogleMapOptions;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/GoogleMapOptions;->scrollGesturesEnabled(Z)Lcom/google/android/gms/maps/GoogleMapOptions;

    .line 51
    return-object p0
.end method

.method public tiltGesturesEnabled(Z)Lcom/airbnb/android/airmapview/AirGoogleMapOptions;
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 60
    iget-object v0, p0, Lcom/airbnb/android/airmapview/AirGoogleMapOptions;->options:Lcom/google/android/gms/maps/GoogleMapOptions;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/GoogleMapOptions;->tiltGesturesEnabled(Z)Lcom/google/android/gms/maps/GoogleMapOptions;

    .line 61
    return-object p0
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 128
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 130
    .local v0, "args":Landroid/os/Bundle;
    const-string v1, "MapOptions"

    iget-object v2, p0, Lcom/airbnb/android/airmapview/AirGoogleMapOptions;->options:Lcom/google/android/gms/maps/GoogleMapOptions;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 131
    return-object v0
.end method

.method public useViewLifecycleInFragment(Z)Lcom/airbnb/android/airmapview/AirGoogleMapOptions;
    .locals 1
    .param p1, "useViewLifecycleInFragment"    # Z

    .prologue
    .line 25
    iget-object v0, p0, Lcom/airbnb/android/airmapview/AirGoogleMapOptions;->options:Lcom/google/android/gms/maps/GoogleMapOptions;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/GoogleMapOptions;->useViewLifecycleInFragment(Z)Lcom/google/android/gms/maps/GoogleMapOptions;

    .line 26
    return-object p0
.end method

.method public zOrderOnTop(Z)Lcom/airbnb/android/airmapview/AirGoogleMapOptions;
    .locals 1
    .param p1, "zOrderOnTop"    # Z

    .prologue
    .line 20
    iget-object v0, p0, Lcom/airbnb/android/airmapview/AirGoogleMapOptions;->options:Lcom/google/android/gms/maps/GoogleMapOptions;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/GoogleMapOptions;->zOrderOnTop(Z)Lcom/google/android/gms/maps/GoogleMapOptions;

    .line 21
    return-object p0
.end method

.method public zoomControlsEnabled(Z)Lcom/airbnb/android/airmapview/AirGoogleMapOptions;
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 40
    iget-object v0, p0, Lcom/airbnb/android/airmapview/AirGoogleMapOptions;->options:Lcom/google/android/gms/maps/GoogleMapOptions;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/GoogleMapOptions;->zoomControlsEnabled(Z)Lcom/google/android/gms/maps/GoogleMapOptions;

    .line 41
    return-object p0
.end method

.method public zoomGesturesEnabled(Z)Lcom/airbnb/android/airmapview/AirGoogleMapOptions;
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 55
    iget-object v0, p0, Lcom/airbnb/android/airmapview/AirGoogleMapOptions;->options:Lcom/google/android/gms/maps/GoogleMapOptions;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/GoogleMapOptions;->zoomGesturesEnabled(Z)Lcom/google/android/gms/maps/GoogleMapOptions;

    .line 56
    return-object p0
.end method
