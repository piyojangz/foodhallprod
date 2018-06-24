.class Lcom/airbnb/android/react/maps/AirMapView$10;
.super Ljava/lang/Object;
.source "AirMapView.java"

# interfaces
.implements Lcom/google/android/gms/maps/GoogleMap$OnCameraChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/react/maps/AirMapView;->onMapReady(Lcom/google/android/gms/maps/GoogleMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/react/maps/AirMapView;

.field final synthetic val$map:Lcom/google/android/gms/maps/GoogleMap;

.field final synthetic val$view:Lcom/airbnb/android/react/maps/AirMapView;


# direct methods
.method constructor <init>(Lcom/airbnb/android/react/maps/AirMapView;Lcom/google/android/gms/maps/GoogleMap;Lcom/airbnb/android/react/maps/AirMapView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/airbnb/android/react/maps/AirMapView;

    .prologue
    .line 274
    iput-object p1, p0, Lcom/airbnb/android/react/maps/AirMapView$10;->this$0:Lcom/airbnb/android/react/maps/AirMapView;

    iput-object p2, p0, Lcom/airbnb/android/react/maps/AirMapView$10;->val$map:Lcom/google/android/gms/maps/GoogleMap;

    iput-object p3, p0, Lcom/airbnb/android/react/maps/AirMapView$10;->val$view:Lcom/airbnb/android/react/maps/AirMapView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCameraChange(Lcom/google/android/gms/maps/model/CameraPosition;)V
    .locals 6
    .param p1, "position"    # Lcom/google/android/gms/maps/model/CameraPosition;

    .prologue
    .line 277
    iget-object v2, p0, Lcom/airbnb/android/react/maps/AirMapView$10;->val$map:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v2}, Lcom/google/android/gms/maps/GoogleMap;->getProjection()Lcom/google/android/gms/maps/Projection;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/maps/Projection;->getVisibleRegion()Lcom/google/android/gms/maps/model/VisibleRegion;

    move-result-object v2

    iget-object v0, v2, Lcom/google/android/gms/maps/model/VisibleRegion;->latLngBounds:Lcom/google/android/gms/maps/model/LatLngBounds;

    .line 278
    .local v0, "bounds":Lcom/google/android/gms/maps/model/LatLngBounds;
    iget-object v1, p1, Lcom/google/android/gms/maps/model/CameraPosition;->target:Lcom/google/android/gms/maps/model/LatLng;

    .line 279
    .local v1, "center":Lcom/google/android/gms/maps/model/LatLng;
    iget-object v2, p0, Lcom/airbnb/android/react/maps/AirMapView$10;->this$0:Lcom/airbnb/android/react/maps/AirMapView;

    invoke-static {v2, v0}, Lcom/airbnb/android/react/maps/AirMapView;->access$902(Lcom/airbnb/android/react/maps/AirMapView;Lcom/google/android/gms/maps/model/LatLngBounds;)Lcom/google/android/gms/maps/model/LatLngBounds;

    .line 280
    iget-object v2, p0, Lcom/airbnb/android/react/maps/AirMapView$10;->this$0:Lcom/airbnb/android/react/maps/AirMapView;

    invoke-static {v2}, Lcom/airbnb/android/react/maps/AirMapView;->access$1100(Lcom/airbnb/android/react/maps/AirMapView;)Lcom/facebook/react/uimanager/events/EventDispatcher;

    move-result-object v2

    new-instance v3, Lcom/airbnb/android/react/maps/RegionChangeEvent;

    iget-object v4, p0, Lcom/airbnb/android/react/maps/AirMapView$10;->this$0:Lcom/airbnb/android/react/maps/AirMapView;

    invoke-virtual {v4}, Lcom/airbnb/android/react/maps/AirMapView;->getId()I

    move-result v4

    iget-object v5, p0, Lcom/airbnb/android/react/maps/AirMapView$10;->this$0:Lcom/airbnb/android/react/maps/AirMapView;

    invoke-static {v5}, Lcom/airbnb/android/react/maps/AirMapView;->access$1000(Lcom/airbnb/android/react/maps/AirMapView;)Z

    move-result v5

    invoke-direct {v3, v4, v0, v1, v5}, Lcom/airbnb/android/react/maps/RegionChangeEvent;-><init>(ILcom/google/android/gms/maps/model/LatLngBounds;Lcom/google/android/gms/maps/model/LatLng;Z)V

    invoke-virtual {v2, v3}, Lcom/facebook/react/uimanager/events/EventDispatcher;->dispatchEvent(Lcom/facebook/react/uimanager/events/Event;)V

    .line 281
    iget-object v2, p0, Lcom/airbnb/android/react/maps/AirMapView$10;->val$view:Lcom/airbnb/android/react/maps/AirMapView;

    invoke-virtual {v2}, Lcom/airbnb/android/react/maps/AirMapView;->stopMonitoringRegion()V

    .line 282
    return-void
.end method
