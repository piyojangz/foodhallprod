.class Lcom/airbnb/android/airmapview/NativeGoogleMapFragment$2;
.super Ljava/lang/Object;
.source "NativeGoogleMapFragment.java"

# interfaces
.implements Lcom/google/android/gms/maps/GoogleMap$OnInfoWindowClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/airmapview/NativeGoogleMapFragment;->setOnInfoWindowClickListener(Lcom/airbnb/android/airmapview/listeners/OnInfoWindowClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/airmapview/NativeGoogleMapFragment;

.field final synthetic val$listener:Lcom/airbnb/android/airmapview/listeners/OnInfoWindowClickListener;


# direct methods
.method constructor <init>(Lcom/airbnb/android/airmapview/NativeGoogleMapFragment;Lcom/airbnb/android/airmapview/listeners/OnInfoWindowClickListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/airbnb/android/airmapview/NativeGoogleMapFragment;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/airbnb/android/airmapview/NativeGoogleMapFragment$2;->this$0:Lcom/airbnb/android/airmapview/NativeGoogleMapFragment;

    iput-object p2, p0, Lcom/airbnb/android/airmapview/NativeGoogleMapFragment$2;->val$listener:Lcom/airbnb/android/airmapview/listeners/OnInfoWindowClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInfoWindowClick(Lcom/google/android/gms/maps/model/Marker;)V
    .locals 2
    .param p1, "marker"    # Lcom/google/android/gms/maps/model/Marker;

    .prologue
    .line 116
    iget-object v1, p0, Lcom/airbnb/android/airmapview/NativeGoogleMapFragment$2;->this$0:Lcom/airbnb/android/airmapview/NativeGoogleMapFragment;

    invoke-static {v1}, Lcom/airbnb/android/airmapview/NativeGoogleMapFragment;->access$200(Lcom/airbnb/android/airmapview/NativeGoogleMapFragment;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/airmapview/AirMapMarker;

    .line 117
    .local v0, "airMarker":Lcom/airbnb/android/airmapview/AirMapMarker;, "Lcom/airbnb/android/airmapview/AirMapMarker<*>;"
    if-eqz v0, :cond_0

    .line 118
    iget-object v1, p0, Lcom/airbnb/android/airmapview/NativeGoogleMapFragment$2;->val$listener:Lcom/airbnb/android/airmapview/listeners/OnInfoWindowClickListener;

    invoke-interface {v1, v0}, Lcom/airbnb/android/airmapview/listeners/OnInfoWindowClickListener;->onInfoWindowClick(Lcom/airbnb/android/airmapview/AirMapMarker;)V

    .line 120
    :cond_0
    return-void
.end method
