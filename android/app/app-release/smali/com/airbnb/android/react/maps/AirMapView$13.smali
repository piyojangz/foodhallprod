.class Lcom/airbnb/android/react/maps/AirMapView$13;
.super Ljava/lang/Object;
.source "AirMapView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/react/maps/AirMapView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/react/maps/AirMapView;


# direct methods
.method constructor <init>(Lcom/airbnb/android/react/maps/AirMapView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/airbnb/android/react/maps/AirMapView;

    .prologue
    .line 716
    iput-object p1, p0, Lcom/airbnb/android/react/maps/AirMapView$13;->this$0:Lcom/airbnb/android/react/maps/AirMapView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 721
    iget-object v4, p0, Lcom/airbnb/android/react/maps/AirMapView$13;->this$0:Lcom/airbnb/android/react/maps/AirMapView;

    iget-object v4, v4, Lcom/airbnb/android/react/maps/AirMapView;->map:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v4}, Lcom/google/android/gms/maps/GoogleMap;->getProjection()Lcom/google/android/gms/maps/Projection;

    move-result-object v2

    .line 722
    .local v2, "projection":Lcom/google/android/gms/maps/Projection;
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/google/android/gms/maps/Projection;->getVisibleRegion()Lcom/google/android/gms/maps/model/VisibleRegion;

    move-result-object v3

    .line 723
    .local v3, "region":Lcom/google/android/gms/maps/model/VisibleRegion;
    :goto_0
    if-eqz v3, :cond_0

    iget-object v0, v3, Lcom/google/android/gms/maps/model/VisibleRegion;->latLngBounds:Lcom/google/android/gms/maps/model/LatLngBounds;

    .line 725
    .local v0, "bounds":Lcom/google/android/gms/maps/model/LatLngBounds;
    :cond_0
    if-eqz v0, :cond_2

    iget-object v4, p0, Lcom/airbnb/android/react/maps/AirMapView$13;->this$0:Lcom/airbnb/android/react/maps/AirMapView;

    .line 726
    invoke-static {v4}, Lcom/airbnb/android/react/maps/AirMapView;->access$900(Lcom/airbnb/android/react/maps/AirMapView;)Lcom/google/android/gms/maps/model/LatLngBounds;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/airbnb/android/react/maps/AirMapView$13;->this$0:Lcom/airbnb/android/react/maps/AirMapView;

    .line 727
    invoke-static {v4}, Lcom/airbnb/android/react/maps/AirMapView;->access$900(Lcom/airbnb/android/react/maps/AirMapView;)Lcom/google/android/gms/maps/model/LatLngBounds;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/airbnb/android/react/maps/LatLngBoundsUtils;->BoundsAreDifferent(Lcom/google/android/gms/maps/model/LatLngBounds;Lcom/google/android/gms/maps/model/LatLngBounds;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 728
    :cond_1
    iget-object v4, p0, Lcom/airbnb/android/react/maps/AirMapView$13;->this$0:Lcom/airbnb/android/react/maps/AirMapView;

    iget-object v4, v4, Lcom/airbnb/android/react/maps/AirMapView;->map:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v4}, Lcom/google/android/gms/maps/GoogleMap;->getCameraPosition()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v4

    iget-object v1, v4, Lcom/google/android/gms/maps/model/CameraPosition;->target:Lcom/google/android/gms/maps/model/LatLng;

    .line 729
    .local v1, "center":Lcom/google/android/gms/maps/model/LatLng;
    iget-object v4, p0, Lcom/airbnb/android/react/maps/AirMapView$13;->this$0:Lcom/airbnb/android/react/maps/AirMapView;

    invoke-static {v4, v0}, Lcom/airbnb/android/react/maps/AirMapView;->access$902(Lcom/airbnb/android/react/maps/AirMapView;Lcom/google/android/gms/maps/model/LatLngBounds;)Lcom/google/android/gms/maps/model/LatLngBounds;

    .line 730
    iget-object v4, p0, Lcom/airbnb/android/react/maps/AirMapView$13;->this$0:Lcom/airbnb/android/react/maps/AirMapView;

    invoke-static {v4}, Lcom/airbnb/android/react/maps/AirMapView;->access$1100(Lcom/airbnb/android/react/maps/AirMapView;)Lcom/facebook/react/uimanager/events/EventDispatcher;

    move-result-object v4

    new-instance v5, Lcom/airbnb/android/react/maps/RegionChangeEvent;

    iget-object v6, p0, Lcom/airbnb/android/react/maps/AirMapView$13;->this$0:Lcom/airbnb/android/react/maps/AirMapView;

    invoke-virtual {v6}, Lcom/airbnb/android/react/maps/AirMapView;->getId()I

    move-result v6

    const/4 v7, 0x1

    invoke-direct {v5, v6, v0, v1, v7}, Lcom/airbnb/android/react/maps/RegionChangeEvent;-><init>(ILcom/google/android/gms/maps/model/LatLngBounds;Lcom/google/android/gms/maps/model/LatLng;Z)V

    invoke-virtual {v4, v5}, Lcom/facebook/react/uimanager/events/EventDispatcher;->dispatchEvent(Lcom/facebook/react/uimanager/events/Event;)V

    .line 733
    .end local v1    # "center":Lcom/google/android/gms/maps/model/LatLng;
    :cond_2
    iget-object v4, p0, Lcom/airbnb/android/react/maps/AirMapView$13;->this$0:Lcom/airbnb/android/react/maps/AirMapView;

    iget-object v4, v4, Lcom/airbnb/android/react/maps/AirMapView;->timerHandler:Landroid/os/Handler;

    const-wide/16 v6, 0x64

    invoke-virtual {v4, p0, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 734
    return-void

    .end local v0    # "bounds":Lcom/google/android/gms/maps/model/LatLngBounds;
    .end local v3    # "region":Lcom/google/android/gms/maps/model/VisibleRegion;
    :cond_3
    move-object v3, v0

    .line 722
    goto :goto_0
.end method
