.class Lcom/airbnb/android/react/maps/AirMapView$4;
.super Ljava/lang/Object;
.source "AirMapView.java"

# interfaces
.implements Lcom/google/android/gms/maps/GoogleMap$OnMarkerClickListener;


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
    .line 189
    iput-object p1, p0, Lcom/airbnb/android/react/maps/AirMapView$4;->this$0:Lcom/airbnb/android/react/maps/AirMapView;

    iput-object p2, p0, Lcom/airbnb/android/react/maps/AirMapView$4;->val$view:Lcom/airbnb/android/react/maps/AirMapView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMarkerClick(Lcom/google/android/gms/maps/model/Marker;)Z
    .locals 6
    .param p1, "marker"    # Lcom/google/android/gms/maps/model/Marker;

    .prologue
    .line 193
    iget-object v2, p0, Lcom/airbnb/android/react/maps/AirMapView$4;->this$0:Lcom/airbnb/android/react/maps/AirMapView;

    invoke-static {v2}, Lcom/airbnb/android/react/maps/AirMapView;->access$300(Lcom/airbnb/android/react/maps/AirMapView;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/react/maps/AirMapMarker;

    .line 195
    .local v0, "airMapMarker":Lcom/airbnb/android/react/maps/AirMapMarker;
    iget-object v2, p0, Lcom/airbnb/android/react/maps/AirMapView$4;->this$0:Lcom/airbnb/android/react/maps/AirMapView;

    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/airbnb/android/react/maps/AirMapView;->makeClickEventData(Lcom/google/android/gms/maps/model/LatLng;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v1

    .line 196
    .local v1, "event":Lcom/facebook/react/bridge/WritableMap;
    const-string v2, "action"

    const-string v3, "marker-press"

    invoke-interface {v1, v2, v3}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    const-string v2, "id"

    invoke-virtual {v0}, Lcom/airbnb/android/react/maps/AirMapMarker;->getIdentifier()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    iget-object v2, p0, Lcom/airbnb/android/react/maps/AirMapView$4;->this$0:Lcom/airbnb/android/react/maps/AirMapView;

    invoke-static {v2}, Lcom/airbnb/android/react/maps/AirMapView;->access$500(Lcom/airbnb/android/react/maps/AirMapView;)Lcom/airbnb/android/react/maps/AirMapManager;

    move-result-object v2

    iget-object v3, p0, Lcom/airbnb/android/react/maps/AirMapView$4;->this$0:Lcom/airbnb/android/react/maps/AirMapView;

    invoke-static {v3}, Lcom/airbnb/android/react/maps/AirMapView;->access$400(Lcom/airbnb/android/react/maps/AirMapView;)Lcom/facebook/react/uimanager/ThemedReactContext;

    move-result-object v3

    iget-object v4, p0, Lcom/airbnb/android/react/maps/AirMapView$4;->val$view:Lcom/airbnb/android/react/maps/AirMapView;

    const-string v5, "onMarkerPress"

    invoke-virtual {v2, v3, v4, v5, v1}, Lcom/airbnb/android/react/maps/AirMapManager;->pushEvent(Lcom/facebook/react/uimanager/ThemedReactContext;Landroid/view/View;Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    .line 200
    iget-object v2, p0, Lcom/airbnb/android/react/maps/AirMapView$4;->this$0:Lcom/airbnb/android/react/maps/AirMapView;

    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/airbnb/android/react/maps/AirMapView;->makeClickEventData(Lcom/google/android/gms/maps/model/LatLng;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v1

    .line 201
    const-string v2, "action"

    const-string v3, "marker-press"

    invoke-interface {v1, v2, v3}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    const-string v2, "id"

    invoke-virtual {v0}, Lcom/airbnb/android/react/maps/AirMapMarker;->getIdentifier()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    iget-object v2, p0, Lcom/airbnb/android/react/maps/AirMapView$4;->this$0:Lcom/airbnb/android/react/maps/AirMapView;

    invoke-static {v2}, Lcom/airbnb/android/react/maps/AirMapView;->access$500(Lcom/airbnb/android/react/maps/AirMapView;)Lcom/airbnb/android/react/maps/AirMapManager;

    move-result-object v3

    iget-object v2, p0, Lcom/airbnb/android/react/maps/AirMapView$4;->this$0:Lcom/airbnb/android/react/maps/AirMapView;

    invoke-static {v2}, Lcom/airbnb/android/react/maps/AirMapView;->access$400(Lcom/airbnb/android/react/maps/AirMapView;)Lcom/facebook/react/uimanager/ThemedReactContext;

    move-result-object v4

    iget-object v2, p0, Lcom/airbnb/android/react/maps/AirMapView$4;->this$0:Lcom/airbnb/android/react/maps/AirMapView;

    invoke-static {v2}, Lcom/airbnb/android/react/maps/AirMapView;->access$300(Lcom/airbnb/android/react/maps/AirMapView;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    const-string v5, "onPress"

    invoke-virtual {v3, v4, v2, v5, v1}, Lcom/airbnb/android/react/maps/AirMapManager;->pushEvent(Lcom/facebook/react/uimanager/ThemedReactContext;Landroid/view/View;Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    .line 208
    iget-object v2, p0, Lcom/airbnb/android/react/maps/AirMapView$4;->val$view:Lcom/airbnb/android/react/maps/AirMapView;

    invoke-static {v2}, Lcom/airbnb/android/react/maps/AirMapView;->access$600(Lcom/airbnb/android/react/maps/AirMapView;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 209
    const/4 v2, 0x0

    .line 212
    :goto_0
    return v2

    .line 211
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Marker;->showInfoWindow()V

    .line 212
    const/4 v2, 0x1

    goto :goto_0
.end method
