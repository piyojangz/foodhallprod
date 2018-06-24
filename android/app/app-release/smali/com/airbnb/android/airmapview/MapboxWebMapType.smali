.class public Lcom/airbnb/android/airmapview/MapboxWebMapType;
.super Lcom/airbnb/android/airmapview/AirMapType;
.source "MapboxWebMapType.java"


# static fields
.field protected static final ARG_MAPBOX_ACCESS_TOKEN:Ljava/lang/String; = "MAPBOX_ACCESS_TOKEN"

.field protected static final ARG_MAPBOX_MAPID:Ljava/lang/String; = "MAPBOX_MAPID"


# instance fields
.field private final accessToken:Ljava/lang/String;

.field private final mapId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "accessToken"    # Ljava/lang/String;
    .param p2, "mapId"    # Ljava/lang/String;

    .prologue
    .line 20
    const-string v0, "mapbox.html"

    const-string v1, "https://api.tiles.mapbox.com/mapbox.js/v2.2.1"

    const-string v2, "www.mapbox.com"

    invoke-direct {p0, v0, v1, v2}, Lcom/airbnb/android/airmapview/AirMapType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    iput-object p1, p0, Lcom/airbnb/android/airmapview/MapboxWebMapType;->accessToken:Ljava/lang/String;

    .line 22
    iput-object p2, p0, Lcom/airbnb/android/airmapview/MapboxWebMapType;->mapId:Ljava/lang/String;

    .line 23
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "mapUrl"    # Ljava/lang/String;
    .param p3, "domain"    # Ljava/lang/String;
    .param p4, "accessToken"    # Ljava/lang/String;
    .param p5, "mapId"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcom/airbnb/android/airmapview/AirMapType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    iput-object p4, p0, Lcom/airbnb/android/airmapview/MapboxWebMapType;->accessToken:Ljava/lang/String;

    .line 38
    iput-object p5, p0, Lcom/airbnb/android/airmapview/MapboxWebMapType;->mapId:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public static fromBundle(Landroid/os/Bundle;)Lcom/airbnb/android/airmapview/MapboxWebMapType;
    .locals 7
    .param p0, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 49
    invoke-static {p0}, Lcom/airbnb/android/airmapview/AirMapType;->fromBundle(Landroid/os/Bundle;)Lcom/airbnb/android/airmapview/AirMapType;

    move-result-object v6

    .line 50
    .local v6, "airMapType":Lcom/airbnb/android/airmapview/AirMapType;
    const-string v0, "MAPBOX_ACCESS_TOKEN"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 51
    .local v4, "mapboxAccessToken":Ljava/lang/String;
    const-string v0, "MAPBOX_MAPID"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 52
    .local v5, "mapboxMapId":Ljava/lang/String;
    new-instance v0, Lcom/airbnb/android/airmapview/MapboxWebMapType;

    invoke-virtual {v6}, Lcom/airbnb/android/airmapview/AirMapType;->getFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6}, Lcom/airbnb/android/airmapview/AirMapType;->getMapUrl()Ljava/lang/String;

    move-result-object v2

    .line 53
    invoke-virtual {v6}, Lcom/airbnb/android/airmapview/AirMapType;->getDomain()Ljava/lang/String;

    move-result-object v3

    invoke-direct/range {v0 .. v5}, Lcom/airbnb/android/airmapview/MapboxWebMapType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getMapData(Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 3
    .param p1, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 58
    invoke-super {p0, p1}, Lcom/airbnb/android/airmapview/AirMapType;->getMapData(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, "mapData":Ljava/lang/String;
    const-string v1, "MAPBOX_ACCESS_TOKEN"

    iget-object v2, p0, Lcom/airbnb/android/airmapview/MapboxWebMapType;->accessToken:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 61
    const-string v1, "MAPBOX_MAPID"

    iget-object v2, p0, Lcom/airbnb/android/airmapview/MapboxWebMapType;->mapId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 63
    return-object v0
.end method

.method public toBundle(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 42
    invoke-super {p0, p1}, Lcom/airbnb/android/airmapview/AirMapType;->toBundle(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 43
    const-string v0, "MAPBOX_ACCESS_TOKEN"

    iget-object v1, p0, Lcom/airbnb/android/airmapview/MapboxWebMapType;->accessToken:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    const-string v0, "MAPBOX_MAPID"

    iget-object v1, p0, Lcom/airbnb/android/airmapview/MapboxWebMapType;->mapId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    return-object p1
.end method
