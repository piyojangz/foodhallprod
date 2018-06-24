.class Lcom/airbnb/android/airmapview/NativeGoogleMapFragment$6;
.super Ljava/lang/Object;
.source "NativeGoogleMapFragment.java"

# interfaces
.implements Lcom/google/android/gms/maps/GoogleMap$OnMapClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/airmapview/NativeGoogleMapFragment;->setOnMapClickListener(Lcom/airbnb/android/airmapview/listeners/OnMapClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/airmapview/NativeGoogleMapFragment;

.field final synthetic val$listener:Lcom/airbnb/android/airmapview/listeners/OnMapClickListener;


# direct methods
.method constructor <init>(Lcom/airbnb/android/airmapview/NativeGoogleMapFragment;Lcom/airbnb/android/airmapview/listeners/OnMapClickListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/airbnb/android/airmapview/NativeGoogleMapFragment;

    .prologue
    .line 257
    iput-object p1, p0, Lcom/airbnb/android/airmapview/NativeGoogleMapFragment$6;->this$0:Lcom/airbnb/android/airmapview/NativeGoogleMapFragment;

    iput-object p2, p0, Lcom/airbnb/android/airmapview/NativeGoogleMapFragment$6;->val$listener:Lcom/airbnb/android/airmapview/listeners/OnMapClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMapClick(Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 1
    .param p1, "latLng"    # Lcom/google/android/gms/maps/model/LatLng;

    .prologue
    .line 260
    iget-object v0, p0, Lcom/airbnb/android/airmapview/NativeGoogleMapFragment$6;->val$listener:Lcom/airbnb/android/airmapview/listeners/OnMapClickListener;

    invoke-interface {v0, p1}, Lcom/airbnb/android/airmapview/listeners/OnMapClickListener;->onMapClick(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 261
    return-void
.end method
