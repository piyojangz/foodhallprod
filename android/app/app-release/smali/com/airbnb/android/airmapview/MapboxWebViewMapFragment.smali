.class public Lcom/airbnb/android/airmapview/MapboxWebViewMapFragment;
.super Lcom/airbnb/android/airmapview/WebViewMapFragment;
.source "MapboxWebViewMapFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/airbnb/android/airmapview/WebViewMapFragment;-><init>()V

    return-void
.end method

.method public static newInstance(Lcom/airbnb/android/airmapview/AirMapType;)Lcom/airbnb/android/airmapview/MapboxWebViewMapFragment;
    .locals 1
    .param p0, "mapType"    # Lcom/airbnb/android/airmapview/AirMapType;

    .prologue
    .line 13
    new-instance v0, Lcom/airbnb/android/airmapview/MapboxWebViewMapFragment;

    invoke-direct {v0}, Lcom/airbnb/android/airmapview/MapboxWebViewMapFragment;-><init>()V

    invoke-virtual {v0, p0}, Lcom/airbnb/android/airmapview/MapboxWebViewMapFragment;->setArguments(Lcom/airbnb/android/airmapview/AirMapType;)Lcom/airbnb/android/airmapview/WebViewMapFragment;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/airmapview/MapboxWebViewMapFragment;

    return-object v0
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 19
    invoke-super {p0, p1, p2, p3}, Lcom/airbnb/android/airmapview/WebViewMapFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v7

    .line 21
    .local v7, "view":Landroid/view/View;
    invoke-virtual {p0}, Lcom/airbnb/android/airmapview/MapboxWebViewMapFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/android/airmapview/MapboxWebMapType;->fromBundle(Landroid/os/Bundle;)Lcom/airbnb/android/airmapview/MapboxWebMapType;

    move-result-object v6

    .line 22
    .local v6, "mapType":Lcom/airbnb/android/airmapview/MapboxWebMapType;
    iget-object v0, p0, Lcom/airbnb/android/airmapview/MapboxWebViewMapFragment;->webView:Landroid/webkit/WebView;

    invoke-virtual {v6}, Lcom/airbnb/android/airmapview/MapboxWebMapType;->getDomain()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/airbnb/android/airmapview/MapboxWebViewMapFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v6, v2}, Lcom/airbnb/android/airmapview/MapboxWebMapType;->getMapData(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "text/html"

    const-string v4, "base64"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    return-object v7
.end method

.method public setMapType(Lcom/airbnb/android/airmapview/MapType;)V
    .locals 6
    .param p1, "type"    # Lcom/airbnb/android/airmapview/MapType;

    .prologue
    .line 30
    sget-object v1, Lcom/airbnb/android/airmapview/MapType;->MAP_TYPE_NORMAL:Lcom/airbnb/android/airmapview/MapType;

    if-ne p1, v1, :cond_0

    .line 31
    const-string v0, "mapbox.streets"

    .line 39
    .local v0, "mapBoxType":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/airbnb/android/airmapview/MapboxWebViewMapFragment;->webView:Landroid/webkit/WebView;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "javascript:setMapTypeId(\"%1$s\");"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 40
    return-void

    .line 32
    .end local v0    # "mapBoxType":Ljava/lang/String;
    :cond_0
    sget-object v1, Lcom/airbnb/android/airmapview/MapType;->MAP_TYPE_SATELLITE:Lcom/airbnb/android/airmapview/MapType;

    if-ne p1, v1, :cond_1

    .line 33
    const-string v0, "mapbox.satellite"

    .restart local v0    # "mapBoxType":Ljava/lang/String;
    goto :goto_0

    .line 34
    .end local v0    # "mapBoxType":Ljava/lang/String;
    :cond_1
    sget-object v1, Lcom/airbnb/android/airmapview/MapType;->MAP_TYPE_TERRAIN:Lcom/airbnb/android/airmapview/MapType;

    if-ne p1, v1, :cond_2

    .line 35
    const-string v0, "mapbox.outdoors"

    .restart local v0    # "mapBoxType":Ljava/lang/String;
    goto :goto_0

    .line 37
    .end local v0    # "mapBoxType":Ljava/lang/String;
    :cond_2
    const-string v0, "mapbox.streets"

    .restart local v0    # "mapBoxType":Ljava/lang/String;
    goto :goto_0
.end method
