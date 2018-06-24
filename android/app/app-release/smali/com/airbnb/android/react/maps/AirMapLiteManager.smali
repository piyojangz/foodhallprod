.class public Lcom/airbnb/android/react/maps/AirMapLiteManager;
.super Lcom/airbnb/android/react/maps/AirMapManager;
.source "AirMapLiteManager.java"


# static fields
.field private static final REACT_CLASS:Ljava/lang/String; = "AIRMapLite"


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 2
    .param p1, "context"    # Lcom/facebook/react/bridge/ReactApplicationContext;

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/airbnb/android/react/maps/AirMapManager;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 17
    new-instance v0, Lcom/google/android/gms/maps/GoogleMapOptions;

    invoke-direct {v0}, Lcom/google/android/gms/maps/GoogleMapOptions;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMapOptions;->liteMode(Z)Lcom/google/android/gms/maps/GoogleMapOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/react/maps/AirMapLiteManager;->googleMapOptions:Lcom/google/android/gms/maps/GoogleMapOptions;

    .line 18
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    const-string v0, "AIRMapLite"

    return-object v0
.end method
