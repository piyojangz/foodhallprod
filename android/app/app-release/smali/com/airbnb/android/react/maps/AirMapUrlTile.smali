.class public Lcom/airbnb/android/react/maps/AirMapUrlTile;
.super Lcom/airbnb/android/react/maps/AirMapFeature;
.source "AirMapUrlTile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/react/maps/AirMapUrlTile$AIRMapUrlTileProvider;
    }
.end annotation


# instance fields
.field private tileOverlay:Lcom/google/android/gms/maps/model/TileOverlay;

.field private tileOverlayOptions:Lcom/google/android/gms/maps/model/TileOverlayOptions;

.field private tileProvider:Lcom/airbnb/android/react/maps/AirMapUrlTile$AIRMapUrlTileProvider;

.field private urlTemplate:Ljava/lang/String;

.field private zIndex:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/airbnb/android/react/maps/AirMapFeature;-><init>(Landroid/content/Context;)V

    .line 53
    return-void
.end method

.method private createTileOverlayOptions()Lcom/google/android/gms/maps/model/TileOverlayOptions;
    .locals 4

    .prologue
    const/16 v3, 0x100

    .line 80
    new-instance v0, Lcom/google/android/gms/maps/model/TileOverlayOptions;

    invoke-direct {v0}, Lcom/google/android/gms/maps/model/TileOverlayOptions;-><init>()V

    .line 81
    .local v0, "options":Lcom/google/android/gms/maps/model/TileOverlayOptions;
    iget v1, p0, Lcom/airbnb/android/react/maps/AirMapUrlTile;->zIndex:F

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/TileOverlayOptions;->zIndex(F)Lcom/google/android/gms/maps/model/TileOverlayOptions;

    .line 82
    new-instance v1, Lcom/airbnb/android/react/maps/AirMapUrlTile$AIRMapUrlTileProvider;

    iget-object v2, p0, Lcom/airbnb/android/react/maps/AirMapUrlTile;->urlTemplate:Ljava/lang/String;

    invoke-direct {v1, p0, v3, v3, v2}, Lcom/airbnb/android/react/maps/AirMapUrlTile$AIRMapUrlTileProvider;-><init>(Lcom/airbnb/android/react/maps/AirMapUrlTile;IILjava/lang/String;)V

    iput-object v1, p0, Lcom/airbnb/android/react/maps/AirMapUrlTile;->tileProvider:Lcom/airbnb/android/react/maps/AirMapUrlTile$AIRMapUrlTileProvider;

    .line 83
    iget-object v1, p0, Lcom/airbnb/android/react/maps/AirMapUrlTile;->tileProvider:Lcom/airbnb/android/react/maps/AirMapUrlTile$AIRMapUrlTileProvider;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/TileOverlayOptions;->tileProvider(Lcom/google/android/gms/maps/model/TileProvider;)Lcom/google/android/gms/maps/model/TileOverlayOptions;

    .line 84
    return-object v0
.end method


# virtual methods
.method public addToMap(Lcom/google/android/gms/maps/GoogleMap;)V
    .locals 1
    .param p1, "map"    # Lcom/google/android/gms/maps/GoogleMap;

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/airbnb/android/react/maps/AirMapUrlTile;->getTileOverlayOptions()Lcom/google/android/gms/maps/model/TileOverlayOptions;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/GoogleMap;->addTileOverlay(Lcom/google/android/gms/maps/model/TileOverlayOptions;)Lcom/google/android/gms/maps/model/TileOverlay;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/react/maps/AirMapUrlTile;->tileOverlay:Lcom/google/android/gms/maps/model/TileOverlay;

    .line 95
    return-void
.end method

.method public getFeature()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/airbnb/android/react/maps/AirMapUrlTile;->tileOverlay:Lcom/google/android/gms/maps/model/TileOverlay;

    return-object v0
.end method

.method public getTileOverlayOptions()Lcom/google/android/gms/maps/model/TileOverlayOptions;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/airbnb/android/react/maps/AirMapUrlTile;->tileOverlayOptions:Lcom/google/android/gms/maps/model/TileOverlayOptions;

    if-nez v0, :cond_0

    .line 74
    invoke-direct {p0}, Lcom/airbnb/android/react/maps/AirMapUrlTile;->createTileOverlayOptions()Lcom/google/android/gms/maps/model/TileOverlayOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/react/maps/AirMapUrlTile;->tileOverlayOptions:Lcom/google/android/gms/maps/model/TileOverlayOptions;

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/airbnb/android/react/maps/AirMapUrlTile;->tileOverlayOptions:Lcom/google/android/gms/maps/model/TileOverlayOptions;

    return-object v0
.end method

.method public removeFromMap(Lcom/google/android/gms/maps/GoogleMap;)V
    .locals 1
    .param p1, "map"    # Lcom/google/android/gms/maps/GoogleMap;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/airbnb/android/react/maps/AirMapUrlTile;->tileOverlay:Lcom/google/android/gms/maps/model/TileOverlay;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/TileOverlay;->remove()V

    .line 100
    return-void
.end method

.method public setUrlTemplate(Ljava/lang/String;)V
    .locals 1
    .param p1, "urlTemplate"    # Ljava/lang/String;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/airbnb/android/react/maps/AirMapUrlTile;->urlTemplate:Ljava/lang/String;

    .line 57
    iget-object v0, p0, Lcom/airbnb/android/react/maps/AirMapUrlTile;->tileProvider:Lcom/airbnb/android/react/maps/AirMapUrlTile$AIRMapUrlTileProvider;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/airbnb/android/react/maps/AirMapUrlTile;->tileProvider:Lcom/airbnb/android/react/maps/AirMapUrlTile$AIRMapUrlTileProvider;

    invoke-virtual {v0, p1}, Lcom/airbnb/android/react/maps/AirMapUrlTile$AIRMapUrlTileProvider;->setUrlTemplate(Ljava/lang/String;)V

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/airbnb/android/react/maps/AirMapUrlTile;->tileOverlay:Lcom/google/android/gms/maps/model/TileOverlay;

    if-eqz v0, :cond_1

    .line 61
    iget-object v0, p0, Lcom/airbnb/android/react/maps/AirMapUrlTile;->tileOverlay:Lcom/google/android/gms/maps/model/TileOverlay;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/TileOverlay;->clearTileCache()V

    .line 63
    :cond_1
    return-void
.end method

.method public setZIndex(F)V
    .locals 1
    .param p1, "zIndex"    # F

    .prologue
    .line 66
    iput p1, p0, Lcom/airbnb/android/react/maps/AirMapUrlTile;->zIndex:F

    .line 67
    iget-object v0, p0, Lcom/airbnb/android/react/maps/AirMapUrlTile;->tileOverlay:Lcom/google/android/gms/maps/model/TileOverlay;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/airbnb/android/react/maps/AirMapUrlTile;->tileOverlay:Lcom/google/android/gms/maps/model/TileOverlay;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/model/TileOverlay;->setZIndex(F)V

    .line 70
    :cond_0
    return-void
.end method
