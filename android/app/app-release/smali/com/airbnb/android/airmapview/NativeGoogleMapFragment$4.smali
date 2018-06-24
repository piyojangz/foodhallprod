.class Lcom/airbnb/android/airmapview/NativeGoogleMapFragment$4;
.super Ljava/lang/Object;
.source "NativeGoogleMapFragment.java"

# interfaces
.implements Lcom/google/android/gms/maps/GoogleMap$OnMarkerClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/airmapview/NativeGoogleMapFragment;->setOnMarkerClickListener(Lcom/airbnb/android/airmapview/listeners/OnMapMarkerClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/airmapview/NativeGoogleMapFragment;

.field final synthetic val$listener:Lcom/airbnb/android/airmapview/listeners/OnMapMarkerClickListener;


# direct methods
.method constructor <init>(Lcom/airbnb/android/airmapview/NativeGoogleMapFragment;Lcom/airbnb/android/airmapview/listeners/OnMapMarkerClickListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/airbnb/android/airmapview/NativeGoogleMapFragment;

    .prologue
    .line 222
    iput-object p1, p0, Lcom/airbnb/android/airmapview/NativeGoogleMapFragment$4;->this$0:Lcom/airbnb/android/airmapview/NativeGoogleMapFragment;

    iput-object p2, p0, Lcom/airbnb/android/airmapview/NativeGoogleMapFragment$4;->val$listener:Lcom/airbnb/android/airmapview/listeners/OnMapMarkerClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMarkerClick(Lcom/google/android/gms/maps/model/Marker;)Z
    .locals 2
    .param p1, "marker"    # Lcom/google/android/gms/maps/model/Marker;

    .prologue
    .line 224
    iget-object v1, p0, Lcom/airbnb/android/airmapview/NativeGoogleMapFragment$4;->this$0:Lcom/airbnb/android/airmapview/NativeGoogleMapFragment;

    invoke-static {v1}, Lcom/airbnb/android/airmapview/NativeGoogleMapFragment;->access$200(Lcom/airbnb/android/airmapview/NativeGoogleMapFragment;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/airmapview/AirMapMarker;

    .line 225
    .local v0, "airMarker":Lcom/airbnb/android/airmapview/AirMapMarker;, "Lcom/airbnb/android/airmapview/AirMapMarker<*>;"
    if-eqz v0, :cond_0

    .line 226
    iget-object v1, p0, Lcom/airbnb/android/airmapview/NativeGoogleMapFragment$4;->val$listener:Lcom/airbnb/android/airmapview/listeners/OnMapMarkerClickListener;

    invoke-interface {v1, v0}, Lcom/airbnb/android/airmapview/listeners/OnMapMarkerClickListener;->onMapMarkerClick(Lcom/airbnb/android/airmapview/AirMapMarker;)V

    .line 228
    :cond_0
    const/4 v1, 0x0

    return v1
.end method
