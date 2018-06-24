.class public interface abstract Lcom/airbnb/android/airmapview/AirMapViewBuilder;
.super Ljava/lang/Object;
.source "AirMapViewBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/airbnb/android/airmapview/AirMapInterface;",
        "Q:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract build()Lcom/airbnb/android/airmapview/AirMapInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public abstract withOptions(Ljava/lang/Object;)Lcom/airbnb/android/airmapview/AirMapViewBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TQ;)",
            "Lcom/airbnb/android/airmapview/AirMapViewBuilder",
            "<TT;TQ;>;"
        }
    .end annotation
.end method
