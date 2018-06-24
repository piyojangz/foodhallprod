.class Lcom/airbnb/android/react/maps/AirMapUrlTile$AIRMapUrlTileProvider;
.super Lcom/google/android/gms/maps/model/UrlTileProvider;
.source "AirMapUrlTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/react/maps/AirMapUrlTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AIRMapUrlTileProvider"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/react/maps/AirMapUrlTile;

.field private urlTemplate:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/airbnb/android/react/maps/AirMapUrlTile;IILjava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/airbnb/android/react/maps/AirMapUrlTile;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "urlTemplate"    # Ljava/lang/String;

    .prologue
    .line 18
    iput-object p1, p0, Lcom/airbnb/android/react/maps/AirMapUrlTile$AIRMapUrlTileProvider;->this$0:Lcom/airbnb/android/react/maps/AirMapUrlTile;

    .line 19
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/maps/model/UrlTileProvider;-><init>(II)V

    .line 20
    iput-object p4, p0, Lcom/airbnb/android/react/maps/AirMapUrlTile$AIRMapUrlTileProvider;->urlTemplate:Ljava/lang/String;

    .line 21
    return-void
.end method


# virtual methods
.method public declared-synchronized getTileUrl(III)Ljava/net/URL;
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "zoom"    # I

    .prologue
    .line 26
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/airbnb/android/react/maps/AirMapUrlTile$AIRMapUrlTileProvider;->urlTemplate:Ljava/lang/String;

    const-string v4, "{x}"

    .line 27
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "{y}"

    .line 28
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "{z}"

    .line 29
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 30
    .local v1, "s":Ljava/lang/String;
    const/4 v2, 0x0

    .line 32
    .local v2, "url":Ljava/net/URL;
    :try_start_1
    new-instance v2, Ljava/net/URL;

    .end local v2    # "url":Ljava/net/URL;
    invoke-direct {v2, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36
    .restart local v2    # "url":Ljava/net/URL;
    monitor-exit p0

    return-object v2

    .line 33
    .end local v2    # "url":Ljava/net/URL;
    :catch_0
    move-exception v0

    .line 34
    .local v0, "e":Ljava/net/MalformedURLException;
    :try_start_2
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 26
    .end local v0    # "e":Ljava/net/MalformedURLException;
    .end local v1    # "s":Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public setUrlTemplate(Ljava/lang/String;)V
    .locals 0
    .param p1, "urlTemplate"    # Ljava/lang/String;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/airbnb/android/react/maps/AirMapUrlTile$AIRMapUrlTileProvider;->urlTemplate:Ljava/lang/String;

    .line 41
    return-void
.end method
