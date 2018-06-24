.class public abstract Lcom/airbnb/android/react/maps/AirMapFeature;
.super Lcom/facebook/react/views/view/ReactViewGroup;
.source "AirMapFeature.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 10
    invoke-direct {p0, p1}, Lcom/facebook/react/views/view/ReactViewGroup;-><init>(Landroid/content/Context;)V

    .line 11
    return-void
.end method


# virtual methods
.method public abstract addToMap(Lcom/google/android/gms/maps/GoogleMap;)V
.end method

.method public abstract getFeature()Ljava/lang/Object;
.end method

.method public abstract removeFromMap(Lcom/google/android/gms/maps/GoogleMap;)V
.end method
