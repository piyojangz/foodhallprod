.class Lcom/airbnb/android/react/maps/AirMapView$7;
.super Ljava/lang/Object;
.source "AirMapView.java"

# interfaces
.implements Lcom/google/android/gms/maps/GoogleMap$OnInfoWindowClickListener;


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

.field final synthetic val$view:Lcom/airbnb/android/react/maps/AirMapView;


# direct methods
.method constructor <init>(Lcom/airbnb/android/react/maps/AirMapView;Lcom/airbnb/android/react/maps/AirMapView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/airbnb/android/react/maps/AirMapView;

    .prologue
    .line 235
    iput-object p1, p0, Lcom/airbnb/android/react/maps/AirMapView$7;->this$0:Lcom/airbnb/android/react/maps/AirMapView;

    iput-object p2, p0, Lcom/airbnb/android/react/maps/AirMapView$7;->val$view:Lcom/airbnb/android/react/maps/AirMapView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInfoWindowClick(Lcom/google/android/gms/maps/model/Marker;)V
    .locals 7
    .param p1, "marker"    # Lcom/google/android/gms/maps/model/Marker;

    .prologue
    .line 240
    iget-object v3, p0, Lcom/airbnb/android/react/maps/AirMapView$7;->this$0:Lcom/airbnb/android/react/maps/AirMapView;

    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/airbnb/android/react/maps/AirMapView;->makeClickEventData(Lcom/google/android/gms/maps/model/LatLng;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 241
    .local v0, "event":Lcom/facebook/react/bridge/WritableMap;
    const-string v3, "action"

    const-string v4, "callout-press"

    invoke-interface {v0, v3, v4}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    iget-object v3, p0, Lcom/airbnb/android/react/maps/AirMapView$7;->this$0:Lcom/airbnb/android/react/maps/AirMapView;

    invoke-static {v3}, Lcom/airbnb/android/react/maps/AirMapView;->access$500(Lcom/airbnb/android/react/maps/AirMapView;)Lcom/airbnb/android/react/maps/AirMapManager;

    move-result-object v3

    iget-object v4, p0, Lcom/airbnb/android/react/maps/AirMapView$7;->this$0:Lcom/airbnb/android/react/maps/AirMapView;

    invoke-static {v4}, Lcom/airbnb/android/react/maps/AirMapView;->access$400(Lcom/airbnb/android/react/maps/AirMapView;)Lcom/facebook/react/uimanager/ThemedReactContext;

    move-result-object v4

    iget-object v5, p0, Lcom/airbnb/android/react/maps/AirMapView$7;->val$view:Lcom/airbnb/android/react/maps/AirMapView;

    const-string v6, "onCalloutPress"

    invoke-virtual {v3, v4, v5, v6, v0}, Lcom/airbnb/android/react/maps/AirMapManager;->pushEvent(Lcom/facebook/react/uimanager/ThemedReactContext;Landroid/view/View;Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    .line 244
    iget-object v3, p0, Lcom/airbnb/android/react/maps/AirMapView$7;->this$0:Lcom/airbnb/android/react/maps/AirMapView;

    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/airbnb/android/react/maps/AirMapView;->makeClickEventData(Lcom/google/android/gms/maps/model/LatLng;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 245
    const-string v3, "action"

    const-string v4, "callout-press"

    invoke-interface {v0, v3, v4}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    iget-object v3, p0, Lcom/airbnb/android/react/maps/AirMapView$7;->this$0:Lcom/airbnb/android/react/maps/AirMapView;

    invoke-static {v3}, Lcom/airbnb/android/react/maps/AirMapView;->access$300(Lcom/airbnb/android/react/maps/AirMapView;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/airbnb/android/react/maps/AirMapMarker;

    .line 247
    .local v2, "markerView":Lcom/airbnb/android/react/maps/AirMapMarker;
    iget-object v3, p0, Lcom/airbnb/android/react/maps/AirMapView$7;->this$0:Lcom/airbnb/android/react/maps/AirMapView;

    invoke-static {v3}, Lcom/airbnb/android/react/maps/AirMapView;->access$500(Lcom/airbnb/android/react/maps/AirMapView;)Lcom/airbnb/android/react/maps/AirMapManager;

    move-result-object v3

    iget-object v4, p0, Lcom/airbnb/android/react/maps/AirMapView$7;->this$0:Lcom/airbnb/android/react/maps/AirMapView;

    invoke-static {v4}, Lcom/airbnb/android/react/maps/AirMapView;->access$400(Lcom/airbnb/android/react/maps/AirMapView;)Lcom/facebook/react/uimanager/ThemedReactContext;

    move-result-object v4

    const-string v5, "onCalloutPress"

    invoke-virtual {v3, v4, v2, v5, v0}, Lcom/airbnb/android/react/maps/AirMapManager;->pushEvent(Lcom/facebook/react/uimanager/ThemedReactContext;Landroid/view/View;Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    .line 249
    iget-object v3, p0, Lcom/airbnb/android/react/maps/AirMapView$7;->this$0:Lcom/airbnb/android/react/maps/AirMapView;

    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/airbnb/android/react/maps/AirMapView;->makeClickEventData(Lcom/google/android/gms/maps/model/LatLng;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 250
    const-string v3, "action"

    const-string v4, "callout-press"

    invoke-interface {v0, v3, v4}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    invoke-virtual {v2}, Lcom/airbnb/android/react/maps/AirMapMarker;->getCalloutView()Lcom/airbnb/android/react/maps/AirMapCallout;

    move-result-object v1

    .line 252
    .local v1, "infoWindow":Lcom/airbnb/android/react/maps/AirMapCallout;
    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/airbnb/android/react/maps/AirMapView$7;->this$0:Lcom/airbnb/android/react/maps/AirMapView;

    invoke-static {v3}, Lcom/airbnb/android/react/maps/AirMapView;->access$500(Lcom/airbnb/android/react/maps/AirMapView;)Lcom/airbnb/android/react/maps/AirMapManager;

    move-result-object v3

    iget-object v4, p0, Lcom/airbnb/android/react/maps/AirMapView$7;->this$0:Lcom/airbnb/android/react/maps/AirMapView;

    invoke-static {v4}, Lcom/airbnb/android/react/maps/AirMapView;->access$400(Lcom/airbnb/android/react/maps/AirMapView;)Lcom/facebook/react/uimanager/ThemedReactContext;

    move-result-object v4

    const-string v5, "onPress"

    invoke-virtual {v3, v4, v1, v5, v0}, Lcom/airbnb/android/react/maps/AirMapManager;->pushEvent(Lcom/facebook/react/uimanager/ThemedReactContext;Landroid/view/View;Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    .line 253
    :cond_0
    return-void
.end method
