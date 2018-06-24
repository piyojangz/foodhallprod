.class public Lcom/airbnb/android/airmapview/NativeAirMapViewBuilder;
.super Ljava/lang/Object;
.source "NativeAirMapViewBuilder.java"

# interfaces
.implements Lcom/airbnb/android/airmapview/AirMapViewBuilder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/airbnb/android/airmapview/AirMapViewBuilder",
        "<",
        "Lcom/airbnb/android/airmapview/NativeGoogleMapFragment;",
        "Lcom/airbnb/android/airmapview/AirGoogleMapOptions;",
        ">;"
    }
.end annotation


# instance fields
.field private options:Lcom/airbnb/android/airmapview/AirGoogleMapOptions;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/airbnb/android/airmapview/AirMapInterface;
    .locals 1

    .prologue
    .line 9
    invoke-virtual {p0}, Lcom/airbnb/android/airmapview/NativeAirMapViewBuilder;->build()Lcom/airbnb/android/airmapview/NativeGoogleMapFragment;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/airbnb/android/airmapview/NativeGoogleMapFragment;
    .locals 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/airbnb/android/airmapview/NativeAirMapViewBuilder;->options:Lcom/airbnb/android/airmapview/AirGoogleMapOptions;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Lcom/airbnb/android/airmapview/AirGoogleMapOptions;

    new-instance v1, Lcom/google/android/gms/maps/GoogleMapOptions;

    invoke-direct {v1}, Lcom/google/android/gms/maps/GoogleMapOptions;-><init>()V

    invoke-direct {v0, v1}, Lcom/airbnb/android/airmapview/AirGoogleMapOptions;-><init>(Lcom/google/android/gms/maps/GoogleMapOptions;)V

    iput-object v0, p0, Lcom/airbnb/android/airmapview/NativeAirMapViewBuilder;->options:Lcom/airbnb/android/airmapview/AirGoogleMapOptions;

    .line 29
    :cond_0
    iget-object v0, p0, Lcom/airbnb/android/airmapview/NativeAirMapViewBuilder;->options:Lcom/airbnb/android/airmapview/AirGoogleMapOptions;

    invoke-static {v0}, Lcom/airbnb/android/airmapview/NativeGoogleMapFragment;->newInstance(Lcom/airbnb/android/airmapview/AirGoogleMapOptions;)Lcom/airbnb/android/airmapview/NativeGoogleMapFragment;

    move-result-object v0

    return-object v0
.end method

.method public withOptions(Lcom/airbnb/android/airmapview/AirGoogleMapOptions;)Lcom/airbnb/android/airmapview/AirMapViewBuilder;
    .locals 0
    .param p1, "options"    # Lcom/airbnb/android/airmapview/AirGoogleMapOptions;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/android/airmapview/AirGoogleMapOptions;",
            ")",
            "Lcom/airbnb/android/airmapview/AirMapViewBuilder",
            "<",
            "Lcom/airbnb/android/airmapview/NativeGoogleMapFragment;",
            "Lcom/airbnb/android/airmapview/AirGoogleMapOptions;",
            ">;"
        }
    .end annotation

    .prologue
    .line 16
    iput-object p1, p0, Lcom/airbnb/android/airmapview/NativeAirMapViewBuilder;->options:Lcom/airbnb/android/airmapview/AirGoogleMapOptions;

    .line 17
    return-object p0
.end method

.method public bridge synthetic withOptions(Ljava/lang/Object;)Lcom/airbnb/android/airmapview/AirMapViewBuilder;
    .locals 1

    .prologue
    .line 9
    check-cast p1, Lcom/airbnb/android/airmapview/AirGoogleMapOptions;

    invoke-virtual {p0, p1}, Lcom/airbnb/android/airmapview/NativeAirMapViewBuilder;->withOptions(Lcom/airbnb/android/airmapview/AirGoogleMapOptions;)Lcom/airbnb/android/airmapview/AirMapViewBuilder;

    move-result-object v0

    return-object v0
.end method
