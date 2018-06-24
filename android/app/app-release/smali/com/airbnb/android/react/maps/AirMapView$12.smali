.class Lcom/airbnb/android/react/maps/AirMapView$12;
.super Ljava/lang/Object;
.source "AirMapView.java"

# interfaces
.implements Lcom/facebook/react/bridge/LifecycleEventListener;


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


# direct methods
.method constructor <init>(Lcom/airbnb/android/react/maps/AirMapView;Lcom/google/android/gms/maps/GoogleMap;)V
    .locals 0
    .param p1, "this$0"    # Lcom/airbnb/android/react/maps/AirMapView;

    .prologue
    .line 299
    iput-object p1, p0, Lcom/airbnb/android/react/maps/AirMapView$12;->this$0:Lcom/airbnb/android/react/maps/AirMapView;

    iput-object p2, p0, Lcom/airbnb/android/react/maps/AirMapView$12;->val$map:Lcom/google/android/gms/maps/GoogleMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHostDestroy()V
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Lcom/airbnb/android/react/maps/AirMapView$12;->this$0:Lcom/airbnb/android/react/maps/AirMapView;

    invoke-virtual {v0}, Lcom/airbnb/android/react/maps/AirMapView;->doDestroy()V

    .line 329
    return-void
.end method

.method public onHostPause()V
    .locals 3

    .prologue
    .line 314
    iget-object v0, p0, Lcom/airbnb/android/react/maps/AirMapView$12;->this$0:Lcom/airbnb/android/react/maps/AirMapView;

    invoke-static {v0}, Lcom/airbnb/android/react/maps/AirMapView;->access$1300(Lcom/airbnb/android/react/maps/AirMapView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 316
    iget-object v0, p0, Lcom/airbnb/android/react/maps/AirMapView$12;->val$map:Lcom/google/android/gms/maps/GoogleMap;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->setMyLocationEnabled(Z)V

    .line 318
    :cond_0
    iget-object v1, p0, Lcom/airbnb/android/react/maps/AirMapView$12;->this$0:Lcom/airbnb/android/react/maps/AirMapView;

    monitor-enter v1

    .line 319
    :try_start_0
    iget-object v0, p0, Lcom/airbnb/android/react/maps/AirMapView$12;->this$0:Lcom/airbnb/android/react/maps/AirMapView;

    invoke-static {v0}, Lcom/airbnb/android/react/maps/AirMapView;->access$1500(Lcom/airbnb/android/react/maps/AirMapView;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 320
    iget-object v0, p0, Lcom/airbnb/android/react/maps/AirMapView$12;->this$0:Lcom/airbnb/android/react/maps/AirMapView;

    invoke-virtual {v0}, Lcom/airbnb/android/react/maps/AirMapView;->onPause()V

    .line 322
    :cond_1
    iget-object v0, p0, Lcom/airbnb/android/react/maps/AirMapView$12;->this$0:Lcom/airbnb/android/react/maps/AirMapView;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/airbnb/android/react/maps/AirMapView;->access$102(Lcom/airbnb/android/react/maps/AirMapView;Z)Z

    .line 323
    monitor-exit v1

    .line 324
    return-void

    .line 323
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onHostResume()V
    .locals 3

    .prologue
    .line 302
    iget-object v0, p0, Lcom/airbnb/android/react/maps/AirMapView$12;->this$0:Lcom/airbnb/android/react/maps/AirMapView;

    invoke-static {v0}, Lcom/airbnb/android/react/maps/AirMapView;->access$1300(Lcom/airbnb/android/react/maps/AirMapView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/airbnb/android/react/maps/AirMapView$12;->val$map:Lcom/google/android/gms/maps/GoogleMap;

    iget-object v1, p0, Lcom/airbnb/android/react/maps/AirMapView$12;->this$0:Lcom/airbnb/android/react/maps/AirMapView;

    invoke-static {v1}, Lcom/airbnb/android/react/maps/AirMapView;->access$1400(Lcom/airbnb/android/react/maps/AirMapView;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->setMyLocationEnabled(Z)V

    .line 306
    :cond_0
    iget-object v1, p0, Lcom/airbnb/android/react/maps/AirMapView$12;->this$0:Lcom/airbnb/android/react/maps/AirMapView;

    monitor-enter v1

    .line 307
    :try_start_0
    iget-object v0, p0, Lcom/airbnb/android/react/maps/AirMapView$12;->this$0:Lcom/airbnb/android/react/maps/AirMapView;

    invoke-virtual {v0}, Lcom/airbnb/android/react/maps/AirMapView;->onResume()V

    .line 308
    iget-object v0, p0, Lcom/airbnb/android/react/maps/AirMapView$12;->this$0:Lcom/airbnb/android/react/maps/AirMapView;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/airbnb/android/react/maps/AirMapView;->access$102(Lcom/airbnb/android/react/maps/AirMapView;Z)Z

    .line 309
    monitor-exit v1

    .line 310
    return-void

    .line 309
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
