.class public Lcom/airbnb/android/airmapview/MapboxWebMapViewBuilder;
.super Ljava/lang/Object;
.source "MapboxWebMapViewBuilder.java"

# interfaces
.implements Lcom/airbnb/android/airmapview/AirMapViewBuilder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/airbnb/android/airmapview/AirMapViewBuilder",
        "<",
        "Lcom/airbnb/android/airmapview/WebViewMapFragment;",
        "Lcom/airbnb/android/airmapview/AirMapType;",
        ">;"
    }
.end annotation


# instance fields
.field private final accessToken:Ljava/lang/String;

.field private final mapId:Ljava/lang/String;

.field private options:Lcom/airbnb/android/airmapview/AirMapType;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "accessToken"    # Ljava/lang/String;
    .param p2, "mapId"    # Ljava/lang/String;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/airbnb/android/airmapview/MapboxWebMapViewBuilder;->accessToken:Ljava/lang/String;

    .line 21
    iput-object p2, p0, Lcom/airbnb/android/airmapview/MapboxWebMapViewBuilder;->mapId:Ljava/lang/String;

    .line 22
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/airbnb/android/airmapview/AirMapInterface;
    .locals 1

    .prologue
    .line 6
    invoke-virtual {p0}, Lcom/airbnb/android/airmapview/MapboxWebMapViewBuilder;->build()Lcom/airbnb/android/airmapview/WebViewMapFragment;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/airbnb/android/airmapview/WebViewMapFragment;
    .locals 3

    .prologue
    .line 37
    iget-object v0, p0, Lcom/airbnb/android/airmapview/MapboxWebMapViewBuilder;->options:Lcom/airbnb/android/airmapview/AirMapType;

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Lcom/airbnb/android/airmapview/MapboxWebMapType;

    iget-object v1, p0, Lcom/airbnb/android/airmapview/MapboxWebMapViewBuilder;->accessToken:Ljava/lang/String;

    iget-object v2, p0, Lcom/airbnb/android/airmapview/MapboxWebMapViewBuilder;->mapId:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/airbnb/android/airmapview/MapboxWebMapType;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/airbnb/android/airmapview/MapboxWebMapViewBuilder;->options:Lcom/airbnb/android/airmapview/AirMapType;

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/airbnb/android/airmapview/MapboxWebMapViewBuilder;->options:Lcom/airbnb/android/airmapview/AirMapType;

    instance-of v0, v0, Lcom/airbnb/android/airmapview/MapboxWebMapType;

    if-eqz v0, :cond_1

    .line 41
    iget-object v0, p0, Lcom/airbnb/android/airmapview/MapboxWebMapViewBuilder;->options:Lcom/airbnb/android/airmapview/AirMapType;

    invoke-static {v0}, Lcom/airbnb/android/airmapview/MapboxWebViewMapFragment;->newInstance(Lcom/airbnb/android/airmapview/AirMapType;)Lcom/airbnb/android/airmapview/MapboxWebViewMapFragment;

    move-result-object v0

    return-object v0

    .line 43
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to build MapboxWebMapViewFragment.  options == \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/airbnb/android/airmapview/MapboxWebMapViewBuilder;->options:Lcom/airbnb/android/airmapview/AirMapType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public withOptions(Lcom/airbnb/android/airmapview/AirMapType;)Lcom/airbnb/android/airmapview/AirMapViewBuilder;
    .locals 0
    .param p1, "options"    # Lcom/airbnb/android/airmapview/AirMapType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/android/airmapview/AirMapType;",
            ")",
            "Lcom/airbnb/android/airmapview/AirMapViewBuilder",
            "<",
            "Lcom/airbnb/android/airmapview/WebViewMapFragment;",
            "Lcom/airbnb/android/airmapview/AirMapType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 26
    iput-object p1, p0, Lcom/airbnb/android/airmapview/MapboxWebMapViewBuilder;->options:Lcom/airbnb/android/airmapview/AirMapType;

    .line 27
    return-object p0
.end method

.method public bridge synthetic withOptions(Ljava/lang/Object;)Lcom/airbnb/android/airmapview/AirMapViewBuilder;
    .locals 1

    .prologue
    .line 6
    check-cast p1, Lcom/airbnb/android/airmapview/AirMapType;

    invoke-virtual {p0, p1}, Lcom/airbnb/android/airmapview/MapboxWebMapViewBuilder;->withOptions(Lcom/airbnb/android/airmapview/AirMapType;)Lcom/airbnb/android/airmapview/AirMapViewBuilder;

    move-result-object v0

    return-object v0
.end method
