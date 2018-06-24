.class Lcom/airbnb/android/airmapview/NativeGoogleMapFragment$3;
.super Ljava/lang/Object;
.source "NativeGoogleMapFragment.java"

# interfaces
.implements Lcom/google/android/gms/maps/GoogleMap$OnCameraChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/airmapview/NativeGoogleMapFragment;->setOnCameraChangeListener(Lcom/airbnb/android/airmapview/listeners/OnCameraChangeListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/airmapview/NativeGoogleMapFragment;

.field final synthetic val$onCameraChangeListener:Lcom/airbnb/android/airmapview/listeners/OnCameraChangeListener;


# direct methods
.method constructor <init>(Lcom/airbnb/android/airmapview/NativeGoogleMapFragment;Lcom/airbnb/android/airmapview/listeners/OnCameraChangeListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/airbnb/android/airmapview/NativeGoogleMapFragment;

    .prologue
    .line 199
    iput-object p1, p0, Lcom/airbnb/android/airmapview/NativeGoogleMapFragment$3;->this$0:Lcom/airbnb/android/airmapview/NativeGoogleMapFragment;

    iput-object p2, p0, Lcom/airbnb/android/airmapview/NativeGoogleMapFragment$3;->val$onCameraChangeListener:Lcom/airbnb/android/airmapview/listeners/OnCameraChangeListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCameraChange(Lcom/google/android/gms/maps/model/CameraPosition;)V
    .locals 3
    .param p1, "cameraPosition"    # Lcom/google/android/gms/maps/model/CameraPosition;

    .prologue
    .line 202
    iget-object v0, p0, Lcom/airbnb/android/airmapview/NativeGoogleMapFragment$3;->this$0:Lcom/airbnb/android/airmapview/NativeGoogleMapFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/airmapview/NativeGoogleMapFragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/airbnb/android/airmapview/NativeGoogleMapFragment$3;->val$onCameraChangeListener:Lcom/airbnb/android/airmapview/listeners/OnCameraChangeListener;

    iget-object v1, p1, Lcom/google/android/gms/maps/model/CameraPosition;->target:Lcom/google/android/gms/maps/model/LatLng;

    iget v2, p1, Lcom/google/android/gms/maps/model/CameraPosition;->zoom:F

    float-to-int v2, v2

    invoke-interface {v0, v1, v2}, Lcom/airbnb/android/airmapview/listeners/OnCameraChangeListener;->onCameraChanged(Lcom/google/android/gms/maps/model/LatLng;I)V

    .line 205
    :cond_0
    return-void
.end method
