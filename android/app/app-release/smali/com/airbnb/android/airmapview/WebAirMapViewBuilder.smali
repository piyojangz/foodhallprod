.class public Lcom/airbnb/android/airmapview/WebAirMapViewBuilder;
.super Ljava/lang/Object;
.source "WebAirMapViewBuilder.java"

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
.field private options:Lcom/airbnb/android/airmapview/AirMapType;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/airbnb/android/airmapview/AirMapInterface;
    .locals 1

    .prologue
    .line 6
    invoke-virtual {p0}, Lcom/airbnb/android/airmapview/WebAirMapViewBuilder;->build()Lcom/airbnb/android/airmapview/WebViewMapFragment;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/airbnb/android/airmapview/WebViewMapFragment;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/airbnb/android/airmapview/WebAirMapViewBuilder;->options:Lcom/airbnb/android/airmapview/AirMapType;

    if-nez v0, :cond_0

    .line 22
    new-instance v0, Lcom/airbnb/android/airmapview/GoogleWebMapType;

    invoke-direct {v0}, Lcom/airbnb/android/airmapview/GoogleWebMapType;-><init>()V

    iput-object v0, p0, Lcom/airbnb/android/airmapview/WebAirMapViewBuilder;->options:Lcom/airbnb/android/airmapview/AirMapType;

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/airbnb/android/airmapview/WebAirMapViewBuilder;->options:Lcom/airbnb/android/airmapview/AirMapType;

    instance-of v0, v0, Lcom/airbnb/android/airmapview/GoogleWebMapType;

    if-eqz v0, :cond_1

    .line 25
    iget-object v0, p0, Lcom/airbnb/android/airmapview/WebAirMapViewBuilder;->options:Lcom/airbnb/android/airmapview/AirMapType;

    invoke-static {v0}, Lcom/airbnb/android/airmapview/GoogleWebViewMapFragment;->newInstance(Lcom/airbnb/android/airmapview/AirMapType;)Lcom/airbnb/android/airmapview/GoogleWebViewMapFragment;

    move-result-object v0

    .line 30
    :goto_0
    return-object v0

    .line 27
    :cond_1
    iget-object v0, p0, Lcom/airbnb/android/airmapview/WebAirMapViewBuilder;->options:Lcom/airbnb/android/airmapview/AirMapType;

    instance-of v0, v0, Lcom/airbnb/android/airmapview/GoogleChinaMapType;

    if-eqz v0, :cond_2

    .line 28
    iget-object v0, p0, Lcom/airbnb/android/airmapview/WebAirMapViewBuilder;->options:Lcom/airbnb/android/airmapview/AirMapType;

    invoke-static {v0}, Lcom/airbnb/android/airmapview/GoogleChinaWebViewMapFragment;->newInstance(Lcom/airbnb/android/airmapview/AirMapType;)Lcom/airbnb/android/airmapview/GoogleChinaWebViewMapFragment;

    move-result-object v0

    goto :goto_0

    .line 30
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
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
    .line 11
    iput-object p1, p0, Lcom/airbnb/android/airmapview/WebAirMapViewBuilder;->options:Lcom/airbnb/android/airmapview/AirMapType;

    .line 12
    return-object p0
.end method

.method public bridge synthetic withOptions(Ljava/lang/Object;)Lcom/airbnb/android/airmapview/AirMapViewBuilder;
    .locals 1

    .prologue
    .line 6
    check-cast p1, Lcom/airbnb/android/airmapview/AirMapType;

    invoke-virtual {p0, p1}, Lcom/airbnb/android/airmapview/WebAirMapViewBuilder;->withOptions(Lcom/airbnb/android/airmapview/AirMapType;)Lcom/airbnb/android/airmapview/AirMapViewBuilder;

    move-result-object v0

    return-object v0
.end method
