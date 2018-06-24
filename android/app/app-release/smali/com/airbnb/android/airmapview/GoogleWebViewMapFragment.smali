.class public Lcom/airbnb/android/airmapview/GoogleWebViewMapFragment;
.super Lcom/airbnb/android/airmapview/WebViewMapFragment;
.source "GoogleWebViewMapFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/airbnb/android/airmapview/WebViewMapFragment;-><init>()V

    return-void
.end method

.method public static newInstance(Lcom/airbnb/android/airmapview/AirMapType;)Lcom/airbnb/android/airmapview/GoogleWebViewMapFragment;
    .locals 1
    .param p0, "mapType"    # Lcom/airbnb/android/airmapview/AirMapType;

    .prologue
    .line 7
    new-instance v0, Lcom/airbnb/android/airmapview/GoogleWebViewMapFragment;

    invoke-direct {v0}, Lcom/airbnb/android/airmapview/GoogleWebViewMapFragment;-><init>()V

    invoke-virtual {v0, p0}, Lcom/airbnb/android/airmapview/GoogleWebViewMapFragment;->setArguments(Lcom/airbnb/android/airmapview/AirMapType;)Lcom/airbnb/android/airmapview/WebViewMapFragment;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/airmapview/GoogleWebViewMapFragment;

    return-object v0
.end method


# virtual methods
.method public setMapType(Lcom/airbnb/android/airmapview/MapType;)V
    .locals 6
    .param p1, "type"    # Lcom/airbnb/android/airmapview/MapType;

    .prologue
    .line 12
    sget-object v1, Lcom/airbnb/android/airmapview/MapType;->MAP_TYPE_NORMAL:Lcom/airbnb/android/airmapview/MapType;

    if-ne p1, v1, :cond_0

    .line 13
    const-string v0, "google.maps.MapTypeId.ROADMAP"

    .line 21
    .local v0, "webType":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/airbnb/android/airmapview/GoogleWebViewMapFragment;->webView:Landroid/webkit/WebView;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "javascript:setMapTypeId(%1$s);"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 22
    return-void

    .line 14
    .end local v0    # "webType":Ljava/lang/String;
    :cond_0
    sget-object v1, Lcom/airbnb/android/airmapview/MapType;->MAP_TYPE_SATELLITE:Lcom/airbnb/android/airmapview/MapType;

    if-ne p1, v1, :cond_1

    .line 15
    const-string v0, "google.maps.MapTypeId.SATELLITE"

    .restart local v0    # "webType":Ljava/lang/String;
    goto :goto_0

    .line 16
    .end local v0    # "webType":Ljava/lang/String;
    :cond_1
    sget-object v1, Lcom/airbnb/android/airmapview/MapType;->MAP_TYPE_TERRAIN:Lcom/airbnb/android/airmapview/MapType;

    if-ne p1, v1, :cond_2

    .line 17
    const-string v0, "google.maps.MapTypeId.TERRAIN"

    .restart local v0    # "webType":Ljava/lang/String;
    goto :goto_0

    .line 19
    .end local v0    # "webType":Ljava/lang/String;
    :cond_2
    const-string v0, "google.maps.MapTypeId.ROADMAP"

    .restart local v0    # "webType":Ljava/lang/String;
    goto :goto_0
.end method
