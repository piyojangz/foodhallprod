.class Lcom/airbnb/android/airmapview/NativeGoogleMapFragment$5;
.super Ljava/lang/Object;
.source "NativeGoogleMapFragment.java"

# interfaces
.implements Lcom/google/android/gms/maps/GoogleMap$OnMarkerDragListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/airmapview/NativeGoogleMapFragment;->setOnMarkerDragListener(Lcom/airbnb/android/airmapview/listeners/OnMapMarkerDragListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/airmapview/NativeGoogleMapFragment;

.field final synthetic val$listener:Lcom/airbnb/android/airmapview/listeners/OnMapMarkerDragListener;


# direct methods
.method constructor <init>(Lcom/airbnb/android/airmapview/NativeGoogleMapFragment;Lcom/airbnb/android/airmapview/listeners/OnMapMarkerDragListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/airbnb/android/airmapview/NativeGoogleMapFragment;

    .prologue
    .line 238
    iput-object p1, p0, Lcom/airbnb/android/airmapview/NativeGoogleMapFragment$5;->this$0:Lcom/airbnb/android/airmapview/NativeGoogleMapFragment;

    iput-object p2, p0, Lcom/airbnb/android/airmapview/NativeGoogleMapFragment$5;->val$listener:Lcom/airbnb/android/airmapview/listeners/OnMapMarkerDragListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMarkerDrag(Lcom/google/android/gms/maps/model/Marker;)V
    .locals 1
    .param p1, "marker"    # Lcom/google/android/gms/maps/model/Marker;

    .prologue
    .line 246
    iget-object v0, p0, Lcom/airbnb/android/airmapview/NativeGoogleMapFragment$5;->val$listener:Lcom/airbnb/android/airmapview/listeners/OnMapMarkerDragListener;

    invoke-interface {v0, p1}, Lcom/airbnb/android/airmapview/listeners/OnMapMarkerDragListener;->onMapMarkerDrag(Lcom/google/android/gms/maps/model/Marker;)V

    .line 247
    return-void
.end method

.method public onMarkerDragEnd(Lcom/google/android/gms/maps/model/Marker;)V
    .locals 1
    .param p1, "marker"    # Lcom/google/android/gms/maps/model/Marker;

    .prologue
    .line 251
    iget-object v0, p0, Lcom/airbnb/android/airmapview/NativeGoogleMapFragment$5;->val$listener:Lcom/airbnb/android/airmapview/listeners/OnMapMarkerDragListener;

    invoke-interface {v0, p1}, Lcom/airbnb/android/airmapview/listeners/OnMapMarkerDragListener;->onMapMarkerDragEnd(Lcom/google/android/gms/maps/model/Marker;)V

    .line 252
    return-void
.end method

.method public onMarkerDragStart(Lcom/google/android/gms/maps/model/Marker;)V
    .locals 1
    .param p1, "marker"    # Lcom/google/android/gms/maps/model/Marker;

    .prologue
    .line 241
    iget-object v0, p0, Lcom/airbnb/android/airmapview/NativeGoogleMapFragment$5;->val$listener:Lcom/airbnb/android/airmapview/listeners/OnMapMarkerDragListener;

    invoke-interface {v0, p1}, Lcom/airbnb/android/airmapview/listeners/OnMapMarkerDragListener;->onMapMarkerDragStart(Lcom/google/android/gms/maps/model/Marker;)V

    .line 242
    return-void
.end method
