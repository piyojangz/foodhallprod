.class public Lcom/airbnb/android/react/maps/RegionChangeEvent;
.super Lcom/facebook/react/uimanager/events/Event;
.source "RegionChangeEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/react/uimanager/events/Event",
        "<",
        "Lcom/airbnb/android/react/maps/RegionChangeEvent;",
        ">;"
    }
.end annotation


# instance fields
.field private final bounds:Lcom/google/android/gms/maps/model/LatLngBounds;

.field private final center:Lcom/google/android/gms/maps/model/LatLng;

.field private final continuous:Z


# direct methods
.method public constructor <init>(ILcom/google/android/gms/maps/model/LatLngBounds;Lcom/google/android/gms/maps/model/LatLng;Z)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "bounds"    # Lcom/google/android/gms/maps/model/LatLngBounds;
    .param p3, "center"    # Lcom/google/android/gms/maps/model/LatLng;
    .param p4, "continuous"    # Z

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/facebook/react/uimanager/events/Event;-><init>(I)V

    .line 17
    iput-object p2, p0, Lcom/airbnb/android/react/maps/RegionChangeEvent;->bounds:Lcom/google/android/gms/maps/model/LatLngBounds;

    .line 18
    iput-object p3, p0, Lcom/airbnb/android/react/maps/RegionChangeEvent;->center:Lcom/google/android/gms/maps/model/LatLng;

    .line 19
    iput-boolean p4, p0, Lcom/airbnb/android/react/maps/RegionChangeEvent;->continuous:Z

    .line 20
    return-void
.end method


# virtual methods
.method public canCoalesce()Z
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    return v0
.end method

.method public dispatch(Lcom/facebook/react/uimanager/events/RCTEventEmitter;)V
    .locals 8
    .param p1, "rctEventEmitter"    # Lcom/facebook/react/uimanager/events/RCTEventEmitter;

    .prologue
    .line 35
    new-instance v0, Lcom/facebook/react/bridge/WritableNativeMap;

    invoke-direct {v0}, Lcom/facebook/react/bridge/WritableNativeMap;-><init>()V

    .line 36
    .local v0, "event":Lcom/facebook/react/bridge/WritableMap;
    const-string v2, "continuous"

    iget-boolean v3, p0, Lcom/airbnb/android/react/maps/RegionChangeEvent;->continuous:Z

    invoke-interface {v0, v2, v3}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    .line 38
    new-instance v1, Lcom/facebook/react/bridge/WritableNativeMap;

    invoke-direct {v1}, Lcom/facebook/react/bridge/WritableNativeMap;-><init>()V

    .line 39
    .local v1, "region":Lcom/facebook/react/bridge/WritableMap;
    const-string v2, "latitude"

    iget-object v3, p0, Lcom/airbnb/android/react/maps/RegionChangeEvent;->center:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v4, v3, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-interface {v1, v2, v4, v5}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 40
    const-string v2, "longitude"

    iget-object v3, p0, Lcom/airbnb/android/react/maps/RegionChangeEvent;->center:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v4, v3, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-interface {v1, v2, v4, v5}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 41
    const-string v2, "latitudeDelta"

    iget-object v3, p0, Lcom/airbnb/android/react/maps/RegionChangeEvent;->bounds:Lcom/google/android/gms/maps/model/LatLngBounds;

    iget-object v3, v3, Lcom/google/android/gms/maps/model/LatLngBounds;->northeast:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v4, v3, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iget-object v3, p0, Lcom/airbnb/android/react/maps/RegionChangeEvent;->bounds:Lcom/google/android/gms/maps/model/LatLngBounds;

    iget-object v3, v3, Lcom/google/android/gms/maps/model/LatLngBounds;->southwest:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v6, v3, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    sub-double/2addr v4, v6

    invoke-interface {v1, v2, v4, v5}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 42
    const-string v2, "longitudeDelta"

    iget-object v3, p0, Lcom/airbnb/android/react/maps/RegionChangeEvent;->bounds:Lcom/google/android/gms/maps/model/LatLngBounds;

    iget-object v3, v3, Lcom/google/android/gms/maps/model/LatLngBounds;->northeast:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v4, v3, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    iget-object v3, p0, Lcom/airbnb/android/react/maps/RegionChangeEvent;->bounds:Lcom/google/android/gms/maps/model/LatLngBounds;

    iget-object v3, v3, Lcom/google/android/gms/maps/model/LatLngBounds;->southwest:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v6, v3, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    sub-double/2addr v4, v6

    invoke-interface {v1, v2, v4, v5}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 43
    const-string v2, "region"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    .line 45
    invoke-virtual {p0}, Lcom/airbnb/android/react/maps/RegionChangeEvent;->getViewTag()I

    move-result v2

    invoke-virtual {p0}, Lcom/airbnb/android/react/maps/RegionChangeEvent;->getEventName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2, v3, v0}, Lcom/facebook/react/uimanager/events/RCTEventEmitter;->receiveEvent(ILjava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    .line 46
    return-void
.end method

.method public getEventName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    const-string v0, "topChange"

    return-object v0
.end method
