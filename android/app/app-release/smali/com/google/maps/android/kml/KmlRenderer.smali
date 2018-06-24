.class Lcom/google/maps/android/kml/KmlRenderer;
.super Landroid/support/v4/app/FragmentActivity;
.source "KmlRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/maps/android/kml/KmlRenderer$GroundOverlayImageDownload;,
        Lcom/google/maps/android/kml/KmlRenderer$MarkerIconImageDownload;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "KmlRenderer"

.field private static final LRU_CACHE_SIZE:I = 0x32


# instance fields
.field private mContainers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/maps/android/kml/KmlContainer;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mGroundOverlayImagesDownloaded:Z

.field private final mGroundOverlayUrls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mGroundOverlays:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/google/maps/android/kml/KmlGroundOverlay;",
            "Lcom/google/android/gms/maps/model/GroundOverlay;",
            ">;"
        }
    .end annotation
.end field

.field private final mImagesCache:Landroid/support/v4/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mLayerVisible:Z

.field private mMap:Lcom/google/android/gms/maps/GoogleMap;

.field private final mMarkerIconUrls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMarkerIconsDownloaded:Z

.field private mPlacemarks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/google/maps/android/kml/KmlPlacemark;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mStyleMaps:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mStyles:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/maps/android/kml/KmlStyle;",
            ">;"
        }
    .end annotation
.end field

.field private mStylesRenderer:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/maps/android/kml/KmlStyle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/maps/GoogleMap;Landroid/content/Context;)V
    .locals 3
    .param p1, "map"    # Lcom/google/android/gms/maps/GoogleMap;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 75
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 76
    iput-object p2, p0, Lcom/google/maps/android/kml/KmlRenderer;->mContext:Landroid/content/Context;

    .line 77
    iput-object p1, p0, Lcom/google/maps/android/kml/KmlRenderer;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    .line 78
    new-instance v0, Landroid/support/v4/util/LruCache;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Landroid/support/v4/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/google/maps/android/kml/KmlRenderer;->mImagesCache:Landroid/support/v4/util/LruCache;

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/maps/android/kml/KmlRenderer;->mMarkerIconUrls:Ljava/util/ArrayList;

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/maps/android/kml/KmlRenderer;->mGroundOverlayUrls:Ljava/util/ArrayList;

    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/maps/android/kml/KmlRenderer;->mStylesRenderer:Ljava/util/HashMap;

    .line 82
    iput-boolean v2, p0, Lcom/google/maps/android/kml/KmlRenderer;->mLayerVisible:Z

    .line 83
    iput-boolean v2, p0, Lcom/google/maps/android/kml/KmlRenderer;->mMarkerIconsDownloaded:Z

    .line 84
    iput-boolean v2, p0, Lcom/google/maps/android/kml/KmlRenderer;->mGroundOverlayImagesDownloaded:Z

    .line 85
    return-void
.end method

.method static synthetic access$000(Lcom/google/maps/android/kml/KmlRenderer;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/google/maps/android/kml/KmlRenderer;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/maps/android/kml/KmlRenderer;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/maps/android/kml/KmlRenderer;)Landroid/support/v4/util/LruCache;
    .locals 1
    .param p0, "x0"    # Lcom/google/maps/android/kml/KmlRenderer;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/maps/android/kml/KmlRenderer;->mImagesCache:Landroid/support/v4/util/LruCache;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/maps/android/kml/KmlRenderer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/maps/android/kml/KmlRenderer;

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/google/maps/android/kml/KmlRenderer;->mLayerVisible:Z

    return v0
.end method

.method static synthetic access$300(Lcom/google/maps/android/kml/KmlRenderer;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/google/maps/android/kml/KmlRenderer;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/maps/android/kml/KmlRenderer;->mPlacemarks:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/maps/android/kml/KmlRenderer;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/maps/android/kml/KmlRenderer;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/util/HashMap;

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/google/maps/android/kml/KmlRenderer;->addIconToMarkers(Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/maps/android/kml/KmlRenderer;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/google/maps/android/kml/KmlRenderer;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/maps/android/kml/KmlRenderer;->mContainers:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/maps/android/kml/KmlRenderer;Ljava/lang/String;Ljava/lang/Iterable;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/maps/android/kml/KmlRenderer;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/Iterable;

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/google/maps/android/kml/KmlRenderer;->addContainerGroupIconsToMarkers(Ljava/lang/String;Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/maps/android/kml/KmlRenderer;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/google/maps/android/kml/KmlRenderer;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/maps/android/kml/KmlRenderer;->mGroundOverlays:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/maps/android/kml/KmlRenderer;Ljava/lang/String;Ljava/util/HashMap;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/google/maps/android/kml/KmlRenderer;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/util/HashMap;
    .param p3, "x3"    # Z

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3}, Lcom/google/maps/android/kml/KmlRenderer;->addGroundOverlayToMap(Ljava/lang/String;Ljava/util/HashMap;Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/google/maps/android/kml/KmlRenderer;Ljava/lang/String;Ljava/lang/Iterable;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/google/maps/android/kml/KmlRenderer;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/Iterable;
    .param p3, "x3"    # Z

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3}, Lcom/google/maps/android/kml/KmlRenderer;->addGroundOverlayInContainerGroups(Ljava/lang/String;Ljava/lang/Iterable;Z)V

    return-void
.end method

.method private addContainerGroupIconsToMarkers(Ljava/lang/String;Ljava/lang/Iterable;)V
    .locals 3
    .param p1, "iconUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/google/maps/android/kml/KmlContainer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 466
    .local p2, "kmlContainers":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/google/maps/android/kml/KmlContainer;>;"
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/android/kml/KmlContainer;

    .line 467
    .local v0, "container":Lcom/google/maps/android/kml/KmlContainer;
    invoke-virtual {v0}, Lcom/google/maps/android/kml/KmlContainer;->getPlacemarksHashMap()Ljava/util/HashMap;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/google/maps/android/kml/KmlRenderer;->addIconToMarkers(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 468
    invoke-virtual {v0}, Lcom/google/maps/android/kml/KmlContainer;->hasContainers()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 469
    invoke-virtual {v0}, Lcom/google/maps/android/kml/KmlContainer;->getContainers()Ljava/lang/Iterable;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/google/maps/android/kml/KmlRenderer;->addContainerGroupIconsToMarkers(Ljava/lang/String;Ljava/lang/Iterable;)V

    goto :goto_0

    .line 472
    .end local v0    # "container":Lcom/google/maps/android/kml/KmlContainer;
    :cond_1
    return-void
.end method

.method private addContainerGroupToMap(Ljava/lang/Iterable;Z)V
    .locals 5
    .param p2, "containerVisibility"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/google/maps/android/kml/KmlContainer;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 348
    .local p1, "kmlContainers":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/google/maps/android/kml/KmlContainer;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/android/kml/KmlContainer;

    .line 349
    .local v0, "container":Lcom/google/maps/android/kml/KmlContainer;
    invoke-static {v0, p2}, Lcom/google/maps/android/kml/KmlRenderer;->getContainerVisibility(Lcom/google/maps/android/kml/KmlContainer;Z)Z

    move-result v2

    .line 350
    .local v2, "isContainerVisible":Z
    invoke-virtual {v0}, Lcom/google/maps/android/kml/KmlContainer;->getStyles()Ljava/util/HashMap;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 352
    iget-object v3, p0, Lcom/google/maps/android/kml/KmlRenderer;->mStylesRenderer:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/google/maps/android/kml/KmlContainer;->getStyles()Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 354
    :cond_1
    invoke-virtual {v0}, Lcom/google/maps/android/kml/KmlContainer;->getStyleMap()Ljava/util/HashMap;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 356
    invoke-virtual {v0}, Lcom/google/maps/android/kml/KmlContainer;->getStyleMap()Ljava/util/HashMap;

    move-result-object v3

    iget-object v4, p0, Lcom/google/maps/android/kml/KmlRenderer;->mStylesRenderer:Ljava/util/HashMap;

    invoke-virtual {p0, v3, v4}, Lcom/google/maps/android/kml/KmlRenderer;->assignStyleMap(Ljava/util/HashMap;Ljava/util/HashMap;)V

    .line 358
    :cond_2
    invoke-direct {p0, v0, v2}, Lcom/google/maps/android/kml/KmlRenderer;->addContainerObjectToMap(Lcom/google/maps/android/kml/KmlContainer;Z)V

    .line 359
    invoke-virtual {v0}, Lcom/google/maps/android/kml/KmlContainer;->hasContainers()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 360
    invoke-virtual {v0}, Lcom/google/maps/android/kml/KmlContainer;->getContainers()Ljava/lang/Iterable;

    move-result-object v3

    invoke-direct {p0, v3, v2}, Lcom/google/maps/android/kml/KmlRenderer;->addContainerGroupToMap(Ljava/lang/Iterable;Z)V

    goto :goto_0

    .line 363
    .end local v0    # "container":Lcom/google/maps/android/kml/KmlContainer;
    .end local v2    # "isContainerVisible":Z
    :cond_3
    return-void
.end method

.method private addContainerObjectToMap(Lcom/google/maps/android/kml/KmlContainer;Z)V
    .locals 6
    .param p1, "kmlContainer"    # Lcom/google/maps/android/kml/KmlContainer;
    .param p2, "isContainerVisible"    # Z

    .prologue
    .line 371
    invoke-virtual {p1}, Lcom/google/maps/android/kml/KmlContainer;->getPlacemarks()Ljava/lang/Iterable;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/maps/android/kml/KmlPlacemark;

    .line 372
    .local v4, "placemark":Lcom/google/maps/android/kml/KmlPlacemark;
    invoke-static {v4}, Lcom/google/maps/android/kml/KmlRenderer;->getPlacemarkVisibility(Lcom/google/maps/android/kml/KmlPlacemark;)Z

    move-result v2

    .line 373
    .local v2, "isPlacemarkVisible":Z
    if-eqz p2, :cond_0

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 374
    .local v1, "isObjectVisible":Z
    :goto_1
    invoke-direct {p0, v4, v1}, Lcom/google/maps/android/kml/KmlRenderer;->addPlacemarkToMap(Lcom/google/maps/android/kml/KmlPlacemark;Z)Ljava/lang/Object;

    move-result-object v3

    .line 375
    .local v3, "mapObject":Ljava/lang/Object;
    invoke-virtual {p1, v4, v3}, Lcom/google/maps/android/kml/KmlContainer;->setPlacemark(Lcom/google/maps/android/kml/KmlPlacemark;Ljava/lang/Object;)V

    goto :goto_0

    .line 373
    .end local v1    # "isObjectVisible":Z
    .end local v3    # "mapObject":Ljava/lang/Object;
    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 377
    .end local v2    # "isPlacemarkVisible":Z
    .end local v4    # "placemark":Lcom/google/maps/android/kml/KmlPlacemark;
    :cond_1
    return-void
.end method

.method private addGroundOverlayInContainerGroups(Ljava/lang/String;Ljava/lang/Iterable;Z)V
    .locals 4
    .param p1, "groundOverlayUrl"    # Ljava/lang/String;
    .param p3, "containerVisibility"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/google/maps/android/kml/KmlContainer;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 789
    .local p2, "kmlContainers":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/google/maps/android/kml/KmlContainer;>;"
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/android/kml/KmlContainer;

    .line 790
    .local v0, "container":Lcom/google/maps/android/kml/KmlContainer;
    invoke-static {v0, p3}, Lcom/google/maps/android/kml/KmlRenderer;->getContainerVisibility(Lcom/google/maps/android/kml/KmlContainer;Z)Z

    move-result v2

    .line 791
    .local v2, "isContainerVisible":Z
    invoke-virtual {v0}, Lcom/google/maps/android/kml/KmlContainer;->getGroundOverlayHashMap()Ljava/util/HashMap;

    move-result-object v3

    invoke-direct {p0, p1, v3, v2}, Lcom/google/maps/android/kml/KmlRenderer;->addGroundOverlayToMap(Ljava/lang/String;Ljava/util/HashMap;Z)V

    .line 792
    invoke-virtual {v0}, Lcom/google/maps/android/kml/KmlContainer;->hasContainers()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 793
    invoke-virtual {v0}, Lcom/google/maps/android/kml/KmlContainer;->getContainers()Ljava/lang/Iterable;

    move-result-object v3

    invoke-direct {p0, p1, v3, v2}, Lcom/google/maps/android/kml/KmlRenderer;->addGroundOverlayInContainerGroups(Ljava/lang/String;Ljava/lang/Iterable;Z)V

    goto :goto_0

    .line 797
    .end local v0    # "container":Lcom/google/maps/android/kml/KmlContainer;
    .end local v2    # "isContainerVisible":Z
    :cond_1
    return-void
.end method

.method private addGroundOverlayToMap(Ljava/lang/String;Ljava/util/HashMap;Z)V
    .locals 6
    .param p1, "groundOverlayUrl"    # Ljava/lang/String;
    .param p3, "containerVisibility"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Lcom/google/maps/android/kml/KmlGroundOverlay;",
            "Lcom/google/android/gms/maps/model/GroundOverlay;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 766
    .local p2, "groundOverlays":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/google/maps/android/kml/KmlGroundOverlay;Lcom/google/android/gms/maps/model/GroundOverlay;>;"
    iget-object v5, p0, Lcom/google/maps/android/kml/KmlRenderer;->mImagesCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v5, p1}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Bitmap;

    invoke-static {v5}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v0

    .line 768
    .local v0, "groundOverlayBitmap":Lcom/google/android/gms/maps/model/BitmapDescriptor;
    invoke-virtual {p2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/maps/android/kml/KmlGroundOverlay;

    .line 769
    .local v3, "kmlGroundOverlay":Lcom/google/maps/android/kml/KmlGroundOverlay;
    invoke-virtual {v3}, Lcom/google/maps/android/kml/KmlGroundOverlay;->getImageUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 770
    invoke-virtual {v3}, Lcom/google/maps/android/kml/KmlGroundOverlay;->getGroundOverlayOptions()Lcom/google/android/gms/maps/model/GroundOverlayOptions;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->image(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/GroundOverlayOptions;

    move-result-object v1

    .line 772
    .local v1, "groundOverlayOptions":Lcom/google/android/gms/maps/model/GroundOverlayOptions;
    iget-object v5, p0, Lcom/google/maps/android/kml/KmlRenderer;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v5, v1}, Lcom/google/android/gms/maps/GoogleMap;->addGroundOverlay(Lcom/google/android/gms/maps/model/GroundOverlayOptions;)Lcom/google/android/gms/maps/model/GroundOverlay;

    move-result-object v4

    .line 773
    .local v4, "mapGroundOverlay":Lcom/google/android/gms/maps/model/GroundOverlay;
    if-nez p3, :cond_1

    .line 774
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/google/android/gms/maps/model/GroundOverlay;->setVisible(Z)V

    .line 776
    :cond_1
    invoke-virtual {p2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 779
    .end local v1    # "groundOverlayOptions":Lcom/google/android/gms/maps/model/GroundOverlayOptions;
    .end local v3    # "kmlGroundOverlay":Lcom/google/maps/android/kml/KmlGroundOverlay;
    .end local v4    # "mapGroundOverlay":Lcom/google/android/gms/maps/model/GroundOverlay;
    :cond_2
    return-void
.end method

.method private addGroundOverlays(Ljava/util/HashMap;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Lcom/google/maps/android/kml/KmlGroundOverlay;",
            "Lcom/google/android/gms/maps/model/GroundOverlay;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 733
    .local p1, "groundOverlays":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/google/maps/android/kml/KmlGroundOverlay;Lcom/google/android/gms/maps/model/GroundOverlay;>;"
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/android/kml/KmlGroundOverlay;

    .line 734
    .local v0, "groundOverlay":Lcom/google/maps/android/kml/KmlGroundOverlay;
    invoke-virtual {v0}, Lcom/google/maps/android/kml/KmlGroundOverlay;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    .line 735
    .local v1, "groundOverlayUrl":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/google/maps/android/kml/KmlGroundOverlay;->getLatLngBox()Lcom/google/android/gms/maps/model/LatLngBounds;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 737
    iget-object v3, p0, Lcom/google/maps/android/kml/KmlRenderer;->mImagesCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v3, v1}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 738
    iget-object v3, p0, Lcom/google/maps/android/kml/KmlRenderer;->mGroundOverlays:Ljava/util/HashMap;

    const/4 v4, 0x1

    invoke-direct {p0, v1, v3, v4}, Lcom/google/maps/android/kml/KmlRenderer;->addGroundOverlayToMap(Ljava/lang/String;Ljava/util/HashMap;Z)V

    goto :goto_0

    .line 739
    :cond_1
    iget-object v3, p0, Lcom/google/maps/android/kml/KmlRenderer;->mGroundOverlayUrls:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 740
    iget-object v3, p0, Lcom/google/maps/android/kml/KmlRenderer;->mGroundOverlayUrls:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 744
    .end local v0    # "groundOverlay":Lcom/google/maps/android/kml/KmlGroundOverlay;
    .end local v1    # "groundOverlayUrl":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private addGroundOverlays(Ljava/util/HashMap;Ljava/lang/Iterable;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Lcom/google/maps/android/kml/KmlGroundOverlay;",
            "Lcom/google/android/gms/maps/model/GroundOverlay;",
            ">;",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/google/maps/android/kml/KmlContainer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 720
    .local p1, "groundOverlays":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/google/maps/android/kml/KmlGroundOverlay;Lcom/google/android/gms/maps/model/GroundOverlay;>;"
    .local p2, "kmlContainers":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/google/maps/android/kml/KmlContainer;>;"
    invoke-direct {p0, p1}, Lcom/google/maps/android/kml/KmlRenderer;->addGroundOverlays(Ljava/util/HashMap;)V

    .line 721
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/android/kml/KmlContainer;

    .line 722
    .local v0, "container":Lcom/google/maps/android/kml/KmlContainer;
    invoke-virtual {v0}, Lcom/google/maps/android/kml/KmlContainer;->getGroundOverlayHashMap()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/maps/android/kml/KmlContainer;->getContainers()Ljava/lang/Iterable;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/google/maps/android/kml/KmlRenderer;->addGroundOverlays(Ljava/util/HashMap;Ljava/lang/Iterable;)V

    goto :goto_0

    .line 725
    .end local v0    # "container":Lcom/google/maps/android/kml/KmlContainer;
    :cond_0
    return-void
.end method

.method private addIconToMarkers(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 10
    .param p1, "iconUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Lcom/google/maps/android/kml/KmlPlacemark;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "placemarks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/google/maps/android/kml/KmlPlacemark;Ljava/lang/Object;>;"
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 427
    invoke-virtual {p2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/maps/android/kml/KmlPlacemark;

    .line 428
    .local v4, "placemark":Lcom/google/maps/android/kml/KmlPlacemark;
    iget-object v8, p0, Lcom/google/maps/android/kml/KmlRenderer;->mStylesRenderer:Ljava/util/HashMap;

    invoke-virtual {v4}, Lcom/google/maps/android/kml/KmlPlacemark;->getStyleId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/maps/android/kml/KmlStyle;

    .line 429
    .local v5, "urlStyle":Lcom/google/maps/android/kml/KmlStyle;
    invoke-virtual {v4}, Lcom/google/maps/android/kml/KmlPlacemark;->getInlineStyle()Lcom/google/maps/android/kml/KmlStyle;

    move-result-object v1

    .line 430
    .local v1, "inlineStyle":Lcom/google/maps/android/kml/KmlStyle;
    const-string v8, "Point"

    invoke-virtual {v4}, Lcom/google/maps/android/kml/KmlPlacemark;->getGeometry()Lcom/google/maps/android/kml/KmlGeometry;

    move-result-object v9

    invoke-interface {v9}, Lcom/google/maps/android/kml/KmlGeometry;->getGeometryType()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 431
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/google/maps/android/kml/KmlStyle;->getIconUrl()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    move v2, v6

    .line 433
    .local v2, "isInlineStyleIcon":Z
    :goto_1
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Lcom/google/maps/android/kml/KmlStyle;->getIconUrl()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    move v3, v6

    .line 435
    .local v3, "isPlacemarkStyleIcon":Z
    :goto_2
    if-eqz v2, :cond_3

    .line 436
    invoke-direct {p0, v1, p2, v4}, Lcom/google/maps/android/kml/KmlRenderer;->scaleBitmap(Lcom/google/maps/android/kml/KmlStyle;Ljava/util/HashMap;Lcom/google/maps/android/kml/KmlPlacemark;)V

    goto :goto_0

    .end local v2    # "isInlineStyleIcon":Z
    .end local v3    # "isPlacemarkStyleIcon":Z
    :cond_1
    move v2, v7

    .line 431
    goto :goto_1

    .restart local v2    # "isInlineStyleIcon":Z
    :cond_2
    move v3, v7

    .line 433
    goto :goto_2

    .line 437
    .restart local v3    # "isPlacemarkStyleIcon":Z
    :cond_3
    if-eqz v3, :cond_0

    .line 438
    invoke-direct {p0, v5, p2, v4}, Lcom/google/maps/android/kml/KmlRenderer;->scaleBitmap(Lcom/google/maps/android/kml/KmlStyle;Ljava/util/HashMap;Lcom/google/maps/android/kml/KmlPlacemark;)V

    goto :goto_0

    .line 442
    .end local v1    # "inlineStyle":Lcom/google/maps/android/kml/KmlStyle;
    .end local v2    # "isInlineStyleIcon":Z
    .end local v3    # "isPlacemarkStyleIcon":Z
    .end local v4    # "placemark":Lcom/google/maps/android/kml/KmlPlacemark;
    .end local v5    # "urlStyle":Lcom/google/maps/android/kml/KmlStyle;
    :cond_4
    return-void
.end method

.method private addLineStringToMap(Lcom/google/maps/android/kml/KmlLineString;Lcom/google/maps/android/kml/KmlStyle;Lcom/google/maps/android/kml/KmlStyle;)Lcom/google/android/gms/maps/model/Polyline;
    .locals 2
    .param p1, "lineString"    # Lcom/google/maps/android/kml/KmlLineString;
    .param p2, "style"    # Lcom/google/maps/android/kml/KmlStyle;
    .param p3, "inlineStyle"    # Lcom/google/maps/android/kml/KmlStyle;

    .prologue
    .line 617
    invoke-virtual {p2}, Lcom/google/maps/android/kml/KmlStyle;->getPolylineOptions()Lcom/google/android/gms/maps/model/PolylineOptions;

    move-result-object v0

    .line 618
    .local v0, "polylineOptions":Lcom/google/android/gms/maps/model/PolylineOptions;
    invoke-virtual {p1}, Lcom/google/maps/android/kml/KmlLineString;->getGeometryObject()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/PolylineOptions;->addAll(Ljava/lang/Iterable;)Lcom/google/android/gms/maps/model/PolylineOptions;

    .line 619
    if-eqz p3, :cond_1

    .line 620
    invoke-direct {p0, v0, p3}, Lcom/google/maps/android/kml/KmlRenderer;->setInlineLineStringStyle(Lcom/google/android/gms/maps/model/PolylineOptions;Lcom/google/maps/android/kml/KmlStyle;)V

    .line 624
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/google/maps/android/kml/KmlRenderer;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/maps/GoogleMap;->addPolyline(Lcom/google/android/gms/maps/model/PolylineOptions;)Lcom/google/android/gms/maps/model/Polyline;

    move-result-object v1

    return-object v1

    .line 621
    :cond_1
    invoke-virtual {p2}, Lcom/google/maps/android/kml/KmlStyle;->isLineRandomColorMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 622
    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/PolylineOptions;->getColor()I

    move-result v1

    invoke-static {v1}, Lcom/google/maps/android/kml/KmlStyle;->computeRandomColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/PolylineOptions;->color(I)Lcom/google/android/gms/maps/model/PolylineOptions;

    goto :goto_0
.end method

.method private addMarkerIcons(Ljava/lang/String;Lcom/google/android/gms/maps/model/MarkerOptions;)V
    .locals 2
    .param p1, "styleUrl"    # Ljava/lang/String;
    .param p2, "markerOptions"    # Lcom/google/android/gms/maps/model/MarkerOptions;

    .prologue
    .line 400
    iget-object v1, p0, Lcom/google/maps/android/kml/KmlRenderer;->mImagesCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v1, p1}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 402
    iget-object v1, p0, Lcom/google/maps/android/kml/KmlRenderer;->mImagesCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v1, p1}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 403
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/google/android/gms/maps/model/MarkerOptions;->icon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 407
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return-void

    .line 404
    :cond_1
    iget-object v1, p0, Lcom/google/maps/android/kml/KmlRenderer;->mMarkerIconUrls:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 405
    iget-object v1, p0, Lcom/google/maps/android/kml/KmlRenderer;->mMarkerIconUrls:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private addMultiGeometryToMap(Lcom/google/maps/android/kml/KmlPlacemark;Lcom/google/maps/android/kml/KmlMultiGeometry;Lcom/google/maps/android/kml/KmlStyle;Lcom/google/maps/android/kml/KmlStyle;Z)Ljava/util/ArrayList;
    .locals 9
    .param p1, "placemark"    # Lcom/google/maps/android/kml/KmlPlacemark;
    .param p2, "multiGeometry"    # Lcom/google/maps/android/kml/KmlMultiGeometry;
    .param p3, "urlStyle"    # Lcom/google/maps/android/kml/KmlStyle;
    .param p4, "inlineStyle"    # Lcom/google/maps/android/kml/KmlStyle;
    .param p5, "isContainerVisible"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/maps/android/kml/KmlPlacemark;",
            "Lcom/google/maps/android/kml/KmlMultiGeometry;",
            "Lcom/google/maps/android/kml/KmlStyle;",
            "Lcom/google/maps/android/kml/KmlStyle;",
            "Z)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 702
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 703
    .local v8, "mapObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    invoke-virtual {p2}, Lcom/google/maps/android/kml/KmlMultiGeometry;->getGeometryObject()Ljava/util/ArrayList;

    move-result-object v7

    .line 704
    .local v7, "kmlObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/maps/android/kml/KmlGeometry;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/maps/android/kml/KmlGeometry;

    .local v2, "kmlGeometry":Lcom/google/maps/android/kml/KmlGeometry;
    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    .line 705
    invoke-direct/range {v0 .. v5}, Lcom/google/maps/android/kml/KmlRenderer;->addToMap(Lcom/google/maps/android/kml/KmlPlacemark;Lcom/google/maps/android/kml/KmlGeometry;Lcom/google/maps/android/kml/KmlStyle;Lcom/google/maps/android/kml/KmlStyle;Z)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 708
    .end local v2    # "kmlGeometry":Lcom/google/maps/android/kml/KmlGeometry;
    :cond_0
    return-object v8
.end method

.method private addPlacemarkToMap(Lcom/google/maps/android/kml/KmlPlacemark;Z)Ljava/lang/Object;
    .locals 7
    .param p1, "placemark"    # Lcom/google/maps/android/kml/KmlPlacemark;
    .param p2, "placemarkVisibility"    # Z

    .prologue
    .line 331
    invoke-virtual {p1}, Lcom/google/maps/android/kml/KmlPlacemark;->getGeometry()Lcom/google/maps/android/kml/KmlGeometry;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 332
    invoke-virtual {p1}, Lcom/google/maps/android/kml/KmlPlacemark;->getStyleId()Ljava/lang/String;

    move-result-object v6

    .line 333
    .local v6, "placemarkId":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/google/maps/android/kml/KmlPlacemark;->getGeometry()Lcom/google/maps/android/kml/KmlGeometry;

    move-result-object v2

    .line 334
    .local v2, "geometry":Lcom/google/maps/android/kml/KmlGeometry;
    invoke-direct {p0, v6}, Lcom/google/maps/android/kml/KmlRenderer;->getPlacemarkStyle(Ljava/lang/String;)Lcom/google/maps/android/kml/KmlStyle;

    move-result-object v3

    .line 335
    .local v3, "style":Lcom/google/maps/android/kml/KmlStyle;
    invoke-virtual {p1}, Lcom/google/maps/android/kml/KmlPlacemark;->getInlineStyle()Lcom/google/maps/android/kml/KmlStyle;

    move-result-object v4

    .local v4, "inlineStyle":Lcom/google/maps/android/kml/KmlStyle;
    move-object v0, p0

    move-object v1, p1

    move v5, p2

    .line 336
    invoke-direct/range {v0 .. v5}, Lcom/google/maps/android/kml/KmlRenderer;->addToMap(Lcom/google/maps/android/kml/KmlPlacemark;Lcom/google/maps/android/kml/KmlGeometry;Lcom/google/maps/android/kml/KmlStyle;Lcom/google/maps/android/kml/KmlStyle;Z)Ljava/lang/Object;

    move-result-object v0

    .line 338
    .end local v2    # "geometry":Lcom/google/maps/android/kml/KmlGeometry;
    .end local v3    # "style":Lcom/google/maps/android/kml/KmlStyle;
    .end local v4    # "inlineStyle":Lcom/google/maps/android/kml/KmlStyle;
    .end local v6    # "placemarkId":Ljava/lang/String;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private addPlacemarksToMap(Ljava/util/HashMap;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Lcom/google/maps/android/kml/KmlPlacemark;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 311
    .local p1, "placemarks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/google/maps/android/kml/KmlPlacemark;Ljava/lang/Object;>;"
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/maps/android/kml/KmlPlacemark;

    .line 312
    .local v2, "kmlPlacemark":Lcom/google/maps/android/kml/KmlPlacemark;
    invoke-static {v2}, Lcom/google/maps/android/kml/KmlRenderer;->getPlacemarkVisibility(Lcom/google/maps/android/kml/KmlPlacemark;)Z

    move-result v1

    .line 313
    .local v1, "isPlacemarkVisible":Z
    invoke-direct {p0, v2, v1}, Lcom/google/maps/android/kml/KmlRenderer;->addPlacemarkToMap(Lcom/google/maps/android/kml/KmlPlacemark;Z)Ljava/lang/Object;

    move-result-object v3

    .line 315
    .local v3, "mapObject":Ljava/lang/Object;
    invoke-virtual {p1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 317
    .end local v1    # "isPlacemarkVisible":Z
    .end local v2    # "kmlPlacemark":Lcom/google/maps/android/kml/KmlPlacemark;
    .end local v3    # "mapObject":Ljava/lang/Object;
    :cond_0
    return-void
.end method

.method private addPointToMap(Lcom/google/maps/android/kml/KmlPlacemark;Lcom/google/maps/android/kml/KmlPoint;Lcom/google/maps/android/kml/KmlStyle;Lcom/google/maps/android/kml/KmlStyle;)Lcom/google/android/gms/maps/model/Marker;
    .locals 3
    .param p1, "placemark"    # Lcom/google/maps/android/kml/KmlPlacemark;
    .param p2, "point"    # Lcom/google/maps/android/kml/KmlPoint;
    .param p3, "style"    # Lcom/google/maps/android/kml/KmlStyle;
    .param p4, "markerInlineStyle"    # Lcom/google/maps/android/kml/KmlStyle;

    .prologue
    .line 515
    invoke-virtual {p3}, Lcom/google/maps/android/kml/KmlStyle;->getMarkerOptions()Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v1

    .line 516
    .local v1, "markerUrlStyle":Lcom/google/android/gms/maps/model/MarkerOptions;
    invoke-virtual {p2}, Lcom/google/maps/android/kml/KmlPoint;->getGeometryObject()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 517
    if-eqz p4, :cond_1

    .line 518
    invoke-virtual {p3}, Lcom/google/maps/android/kml/KmlStyle;->getIconUrl()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, p4, v2}, Lcom/google/maps/android/kml/KmlRenderer;->setInlinePointStyle(Lcom/google/android/gms/maps/model/MarkerOptions;Lcom/google/maps/android/kml/KmlStyle;Ljava/lang/String;)V

    .line 523
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/google/maps/android/kml/KmlRenderer;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/maps/GoogleMap;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/Marker;

    move-result-object v0

    .line 524
    .local v0, "marker":Lcom/google/android/gms/maps/model/Marker;
    invoke-direct {p0, p3, v0, p1}, Lcom/google/maps/android/kml/KmlRenderer;->setMarkerInfoWindow(Lcom/google/maps/android/kml/KmlStyle;Lcom/google/android/gms/maps/model/Marker;Lcom/google/maps/android/kml/KmlPlacemark;)V

    .line 525
    return-object v0

    .line 519
    .end local v0    # "marker":Lcom/google/android/gms/maps/model/Marker;
    :cond_1
    invoke-virtual {p3}, Lcom/google/maps/android/kml/KmlStyle;->getIconUrl()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 521
    invoke-virtual {p3}, Lcom/google/maps/android/kml/KmlStyle;->getIconUrl()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lcom/google/maps/android/kml/KmlRenderer;->addMarkerIcons(Ljava/lang/String;Lcom/google/android/gms/maps/model/MarkerOptions;)V

    goto :goto_0
.end method

.method private addPolygonToMap(Lcom/google/maps/android/kml/KmlPolygon;Lcom/google/maps/android/kml/KmlStyle;Lcom/google/maps/android/kml/KmlStyle;)Lcom/google/android/gms/maps/model/Polygon;
    .locals 4
    .param p1, "polygon"    # Lcom/google/maps/android/kml/KmlPolygon;
    .param p2, "style"    # Lcom/google/maps/android/kml/KmlStyle;
    .param p3, "inlineStyle"    # Lcom/google/maps/android/kml/KmlStyle;

    .prologue
    .line 654
    invoke-virtual {p2}, Lcom/google/maps/android/kml/KmlStyle;->getPolygonOptions()Lcom/google/android/gms/maps/model/PolygonOptions;

    move-result-object v2

    .line 655
    .local v2, "polygonOptions":Lcom/google/android/gms/maps/model/PolygonOptions;
    invoke-virtual {p1}, Lcom/google/maps/android/kml/KmlPolygon;->getOuterBoundaryCoordinates()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/maps/model/PolygonOptions;->addAll(Ljava/lang/Iterable;)Lcom/google/android/gms/maps/model/PolygonOptions;

    .line 656
    invoke-virtual {p1}, Lcom/google/maps/android/kml/KmlPolygon;->getInnerBoundaryCoordinates()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 657
    .local v1, "innerBoundary":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/gms/maps/model/LatLng;>;"
    invoke-virtual {v2, v1}, Lcom/google/android/gms/maps/model/PolygonOptions;->addHole(Ljava/lang/Iterable;)Lcom/google/android/gms/maps/model/PolygonOptions;

    goto :goto_0

    .line 659
    .end local v1    # "innerBoundary":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/gms/maps/model/LatLng;>;"
    :cond_0
    if-eqz p3, :cond_2

    .line 660
    invoke-direct {p0, v2, p3}, Lcom/google/maps/android/kml/KmlRenderer;->setInlinePolygonStyle(Lcom/google/android/gms/maps/model/PolygonOptions;Lcom/google/maps/android/kml/KmlStyle;)V

    .line 664
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/google/maps/android/kml/KmlRenderer;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v3, v2}, Lcom/google/android/gms/maps/GoogleMap;->addPolygon(Lcom/google/android/gms/maps/model/PolygonOptions;)Lcom/google/android/gms/maps/model/Polygon;

    move-result-object v3

    return-object v3

    .line 661
    :cond_2
    invoke-virtual {p2}, Lcom/google/maps/android/kml/KmlStyle;->isPolyRandomColorMode()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 662
    invoke-virtual {v2}, Lcom/google/android/gms/maps/model/PolygonOptions;->getFillColor()I

    move-result v3

    invoke-static {v3}, Lcom/google/maps/android/kml/KmlStyle;->computeRandomColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/maps/model/PolygonOptions;->fillColor(I)Lcom/google/android/gms/maps/model/PolygonOptions;

    goto :goto_1
.end method

.method private addToMap(Lcom/google/maps/android/kml/KmlPlacemark;Lcom/google/maps/android/kml/KmlGeometry;Lcom/google/maps/android/kml/KmlStyle;Lcom/google/maps/android/kml/KmlStyle;Z)Ljava/lang/Object;
    .locals 10
    .param p1, "placemark"    # Lcom/google/maps/android/kml/KmlPlacemark;
    .param p2, "geometry"    # Lcom/google/maps/android/kml/KmlGeometry;
    .param p3, "style"    # Lcom/google/maps/android/kml/KmlStyle;
    .param p4, "inlineStyle"    # Lcom/google/maps/android/kml/KmlStyle;
    .param p5, "isVisible"    # Z

    .prologue
    .line 485
    invoke-interface {p2}, Lcom/google/maps/android/kml/KmlGeometry;->getGeometryType()Ljava/lang/String;

    move-result-object v6

    .line 486
    .local v6, "geometryType":Ljava/lang/String;
    const-string v0, "Point"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 487
    check-cast p2, Lcom/google/maps/android/kml/KmlPoint;

    .end local p2    # "geometry":Lcom/google/maps/android/kml/KmlGeometry;
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/maps/android/kml/KmlRenderer;->addPointToMap(Lcom/google/maps/android/kml/KmlPlacemark;Lcom/google/maps/android/kml/KmlPoint;Lcom/google/maps/android/kml/KmlStyle;Lcom/google/maps/android/kml/KmlStyle;)Lcom/google/android/gms/maps/model/Marker;

    move-result-object v7

    .line 488
    .local v7, "marker":Lcom/google/android/gms/maps/model/Marker;
    invoke-virtual {v7, p5}, Lcom/google/android/gms/maps/model/Marker;->setVisible(Z)V

    .line 503
    .end local v7    # "marker":Lcom/google/android/gms/maps/model/Marker;
    :goto_0
    return-object v7

    .line 490
    .restart local p2    # "geometry":Lcom/google/maps/android/kml/KmlGeometry;
    :cond_0
    const-string v0, "LineString"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 491
    check-cast p2, Lcom/google/maps/android/kml/KmlLineString;

    .end local p2    # "geometry":Lcom/google/maps/android/kml/KmlGeometry;
    invoke-direct {p0, p2, p3, p4}, Lcom/google/maps/android/kml/KmlRenderer;->addLineStringToMap(Lcom/google/maps/android/kml/KmlLineString;Lcom/google/maps/android/kml/KmlStyle;Lcom/google/maps/android/kml/KmlStyle;)Lcom/google/android/gms/maps/model/Polyline;

    move-result-object v9

    .line 492
    .local v9, "polyline":Lcom/google/android/gms/maps/model/Polyline;
    invoke-virtual {v9, p5}, Lcom/google/android/gms/maps/model/Polyline;->setVisible(Z)V

    move-object v7, v9

    .line 493
    goto :goto_0

    .line 494
    .end local v9    # "polyline":Lcom/google/android/gms/maps/model/Polyline;
    .restart local p2    # "geometry":Lcom/google/maps/android/kml/KmlGeometry;
    :cond_1
    const-string v0, "Polygon"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 495
    check-cast p2, Lcom/google/maps/android/kml/KmlPolygon;

    .end local p2    # "geometry":Lcom/google/maps/android/kml/KmlGeometry;
    invoke-direct {p0, p2, p3, p4}, Lcom/google/maps/android/kml/KmlRenderer;->addPolygonToMap(Lcom/google/maps/android/kml/KmlPolygon;Lcom/google/maps/android/kml/KmlStyle;Lcom/google/maps/android/kml/KmlStyle;)Lcom/google/android/gms/maps/model/Polygon;

    move-result-object v8

    .line 496
    .local v8, "polygon":Lcom/google/android/gms/maps/model/Polygon;
    invoke-virtual {v8, p5}, Lcom/google/android/gms/maps/model/Polygon;->setVisible(Z)V

    move-object v7, v8

    .line 497
    goto :goto_0

    .line 498
    .end local v8    # "polygon":Lcom/google/android/gms/maps/model/Polygon;
    .restart local p2    # "geometry":Lcom/google/maps/android/kml/KmlGeometry;
    :cond_2
    const-string v0, "MultiGeometry"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v2, p2

    .line 499
    check-cast v2, Lcom/google/maps/android/kml/KmlMultiGeometry;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/google/maps/android/kml/KmlRenderer;->addMultiGeometryToMap(Lcom/google/maps/android/kml/KmlPlacemark;Lcom/google/maps/android/kml/KmlMultiGeometry;Lcom/google/maps/android/kml/KmlStyle;Lcom/google/maps/android/kml/KmlStyle;Z)Ljava/util/ArrayList;

    move-result-object v7

    goto :goto_0

    .line 503
    :cond_3
    const/4 v7, 0x0

    goto :goto_0
.end method

.method private createInfoWindow()V
    .locals 2

    .prologue
    .line 561
    iget-object v0, p0, Lcom/google/maps/android/kml/KmlRenderer;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    new-instance v1, Lcom/google/maps/android/kml/KmlRenderer$1;

    invoke-direct {v1, p0}, Lcom/google/maps/android/kml/KmlRenderer$1;-><init>(Lcom/google/maps/android/kml/KmlRenderer;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->setInfoWindowAdapter(Lcom/google/android/gms/maps/GoogleMap$InfoWindowAdapter;)V

    .line 578
    return-void
.end method

.method private downloadGroundOverlays()V
    .locals 4

    .prologue
    .line 750
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/maps/android/kml/KmlRenderer;->mGroundOverlayImagesDownloaded:Z

    .line 751
    iget-object v2, p0, Lcom/google/maps/android/kml/KmlRenderer;->mGroundOverlayUrls:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 752
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 753
    .local v0, "groundOverlayUrl":Ljava/lang/String;
    new-instance v2, Lcom/google/maps/android/kml/KmlRenderer$GroundOverlayImageDownload;

    invoke-direct {v2, p0, v0}, Lcom/google/maps/android/kml/KmlRenderer$GroundOverlayImageDownload;-><init>(Lcom/google/maps/android/kml/KmlRenderer;Ljava/lang/String;)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/maps/android/kml/KmlRenderer$GroundOverlayImageDownload;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 754
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 756
    .end local v0    # "groundOverlayUrl":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private downloadMarkerIcons()V
    .locals 4

    .prologue
    .line 413
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/maps/android/kml/KmlRenderer;->mMarkerIconsDownloaded:Z

    .line 414
    iget-object v2, p0, Lcom/google/maps/android/kml/KmlRenderer;->mMarkerIconUrls:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 415
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 416
    .local v1, "markerIconUrl":Ljava/lang/String;
    new-instance v2, Lcom/google/maps/android/kml/KmlRenderer$MarkerIconImageDownload;

    invoke-direct {v2, p0, v1}, Lcom/google/maps/android/kml/KmlRenderer$MarkerIconImageDownload;-><init>(Lcom/google/maps/android/kml/KmlRenderer;Ljava/lang/String;)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/maps/android/kml/KmlRenderer$MarkerIconImageDownload;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 417
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 419
    .end local v1    # "markerIconUrl":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method static getContainerVisibility(Lcom/google/maps/android/kml/KmlContainer;Z)Z
    .locals 3
    .param p0, "kmlContainer"    # Lcom/google/maps/android/kml/KmlContainer;
    .param p1, "isParentContainerVisible"    # Z

    .prologue
    .line 148
    const/4 v0, 0x1

    .line 149
    .local v0, "isChildContainerVisible":Z
    const-string v2, "visibility"

    invoke-virtual {p0, v2}, Lcom/google/maps/android/kml/KmlContainer;->hasProperty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 150
    const-string v2, "visibility"

    invoke-virtual {p0, v2}, Lcom/google/maps/android/kml/KmlContainer;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 151
    .local v1, "placemarkVisibility":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    .line 152
    const/4 v0, 0x0

    .line 155
    .end local v1    # "placemarkVisibility":Ljava/lang/String;
    :cond_0
    if-eqz p1, :cond_1

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getPlacemarkStyle(Ljava/lang/String;)Lcom/google/maps/android/kml/KmlStyle;
    .locals 3
    .param p1, "styleId"    # Ljava/lang/String;

    .prologue
    .line 386
    iget-object v1, p0, Lcom/google/maps/android/kml/KmlRenderer;->mStylesRenderer:Ljava/util/HashMap;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/android/kml/KmlStyle;

    .line 387
    .local v0, "style":Lcom/google/maps/android/kml/KmlStyle;
    iget-object v1, p0, Lcom/google/maps/android/kml/KmlRenderer;->mStylesRenderer:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 388
    iget-object v1, p0, Lcom/google/maps/android/kml/KmlRenderer;->mStylesRenderer:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "style":Lcom/google/maps/android/kml/KmlStyle;
    check-cast v0, Lcom/google/maps/android/kml/KmlStyle;

    .line 390
    .restart local v0    # "style":Lcom/google/maps/android/kml/KmlStyle;
    :cond_0
    return-object v0
.end method

.method private static getPlacemarkVisibility(Lcom/google/maps/android/kml/KmlPlacemark;)Z
    .locals 3
    .param p0, "placemark"    # Lcom/google/maps/android/kml/KmlPlacemark;

    .prologue
    .line 96
    const/4 v0, 0x1

    .line 97
    .local v0, "isPlacemarkVisible":Z
    const-string v2, "visibility"

    invoke-virtual {p0, v2}, Lcom/google/maps/android/kml/KmlPlacemark;->hasProperty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 98
    const-string v2, "visibility"

    invoke-virtual {p0, v2}, Lcom/google/maps/android/kml/KmlPlacemark;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 99
    .local v1, "placemarkVisibility":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    .line 100
    const/4 v0, 0x0

    .line 103
    .end local v1    # "placemarkVisibility":Ljava/lang/String;
    :cond_0
    return v0
.end method

.method private removeContainers(Ljava/lang/Iterable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/google/maps/android/kml/KmlContainer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 174
    .local p1, "containers":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/google/maps/android/kml/KmlContainer;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/android/kml/KmlContainer;

    .line 175
    .local v0, "container":Lcom/google/maps/android/kml/KmlContainer;
    invoke-virtual {v0}, Lcom/google/maps/android/kml/KmlContainer;->getPlacemarksHashMap()Ljava/util/HashMap;

    move-result-object v2

    invoke-static {v2}, Lcom/google/maps/android/kml/KmlRenderer;->removePlacemarks(Ljava/util/HashMap;)V

    .line 176
    invoke-virtual {v0}, Lcom/google/maps/android/kml/KmlContainer;->getGroundOverlayHashMap()Ljava/util/HashMap;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/maps/android/kml/KmlRenderer;->removeGroundOverlays(Ljava/util/HashMap;)V

    .line 177
    invoke-virtual {v0}, Lcom/google/maps/android/kml/KmlContainer;->getContainers()Ljava/lang/Iterable;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/maps/android/kml/KmlRenderer;->removeContainers(Ljava/lang/Iterable;)V

    goto :goto_0

    .line 179
    .end local v0    # "container":Lcom/google/maps/android/kml/KmlContainer;
    :cond_0
    return-void
.end method

.method private removeGroundOverlays(Ljava/util/HashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Lcom/google/maps/android/kml/KmlGroundOverlay;",
            "Lcom/google/android/gms/maps/model/GroundOverlay;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 164
    .local p1, "groundOverlays":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/google/maps/android/kml/KmlGroundOverlay;Lcom/google/android/gms/maps/model/GroundOverlay;>;"
    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/model/GroundOverlay;

    .line 165
    .local v0, "groundOverlay":Lcom/google/android/gms/maps/model/GroundOverlay;
    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/GroundOverlay;->remove()V

    goto :goto_0

    .line 167
    .end local v0    # "groundOverlay":Lcom/google/android/gms/maps/model/GroundOverlay;
    :cond_0
    return-void
.end method

.method private static removePlacemarks(Ljava/util/HashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Lcom/google/maps/android/kml/KmlPlacemark;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 127
    .local p0, "placemarks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/google/maps/android/kml/KmlPlacemark;Ljava/lang/Object;>;"
    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 128
    .local v1, "mapObject":Ljava/lang/Object;
    instance-of v2, v1, Lcom/google/android/gms/maps/model/Marker;

    if-eqz v2, :cond_1

    .line 129
    check-cast v1, Lcom/google/android/gms/maps/model/Marker;

    .end local v1    # "mapObject":Ljava/lang/Object;
    invoke-virtual {v1}, Lcom/google/android/gms/maps/model/Marker;->remove()V

    goto :goto_0

    .line 130
    .restart local v1    # "mapObject":Ljava/lang/Object;
    :cond_1
    instance-of v2, v1, Lcom/google/android/gms/maps/model/Polyline;

    if-eqz v2, :cond_2

    .line 131
    check-cast v1, Lcom/google/android/gms/maps/model/Polyline;

    .end local v1    # "mapObject":Ljava/lang/Object;
    invoke-virtual {v1}, Lcom/google/android/gms/maps/model/Polyline;->remove()V

    goto :goto_0

    .line 132
    .restart local v1    # "mapObject":Ljava/lang/Object;
    :cond_2
    instance-of v2, v1, Lcom/google/android/gms/maps/model/Polygon;

    if-eqz v2, :cond_0

    .line 133
    check-cast v1, Lcom/google/android/gms/maps/model/Polygon;

    .end local v1    # "mapObject":Ljava/lang/Object;
    invoke-virtual {v1}, Lcom/google/android/gms/maps/model/Polygon;->remove()V

    goto :goto_0

    .line 136
    :cond_3
    return-void
.end method

.method private scaleBitmap(Lcom/google/maps/android/kml/KmlStyle;Ljava/util/HashMap;Lcom/google/maps/android/kml/KmlPlacemark;)V
    .locals 6
    .param p1, "style"    # Lcom/google/maps/android/kml/KmlStyle;
    .param p3, "placemark"    # Lcom/google/maps/android/kml/KmlPlacemark;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/maps/android/kml/KmlStyle;",
            "Ljava/util/HashMap",
            "<",
            "Lcom/google/maps/android/kml/KmlPlacemark;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/google/maps/android/kml/KmlPlacemark;",
            ")V"
        }
    .end annotation

    .prologue
    .line 451
    .local p2, "placemarks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/google/maps/android/kml/KmlPlacemark;Ljava/lang/Object;>;"
    invoke-virtual {p1}, Lcom/google/maps/android/kml/KmlStyle;->getIconScale()D

    move-result-wide v2

    .line 452
    .local v2, "bitmapScale":D
    invoke-virtual {p1}, Lcom/google/maps/android/kml/KmlStyle;->getIconUrl()Ljava/lang/String;

    move-result-object v1

    .line 453
    .local v1, "bitmapUrl":Ljava/lang/String;
    iget-object v5, p0, Lcom/google/maps/android/kml/KmlRenderer;->mImagesCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v5, v1}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 454
    .local v0, "bitmapImage":Landroid/graphics/Bitmap;
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/google/maps/android/kml/KmlRenderer;->scaleIcon(Landroid/graphics/Bitmap;Ljava/lang/Double;)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v4

    .line 455
    .local v4, "scaledBitmap":Lcom/google/android/gms/maps/model/BitmapDescriptor;
    invoke-virtual {p2, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v5, v4}, Lcom/google/android/gms/maps/model/Marker;->setIcon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)V

    .line 456
    return-void
.end method

.method private static scaleIcon(Landroid/graphics/Bitmap;Ljava/lang/Double;)Lcom/google/android/gms/maps/model/BitmapDescriptor;
    .locals 8
    .param p0, "unscaledBitmap"    # Landroid/graphics/Bitmap;
    .param p1, "scale"    # Ljava/lang/Double;

    .prologue
    .line 114
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-double v4, v3

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    mul-double/2addr v4, v6

    double-to-int v2, v4

    .line 115
    .local v2, "width":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-double v4, v3

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    mul-double/2addr v4, v6

    double-to-int v0, v4

    .line 116
    .local v0, "height":I
    const/4 v3, 0x0

    invoke-static {p0, v2, v0, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 117
    .local v1, "scaledBitmap":Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v3

    return-object v3
.end method

.method private setInlineLineStringStyle(Lcom/google/android/gms/maps/model/PolylineOptions;Lcom/google/maps/android/kml/KmlStyle;)V
    .locals 2
    .param p1, "polylineOptions"    # Lcom/google/android/gms/maps/model/PolylineOptions;
    .param p2, "inlineStyle"    # Lcom/google/maps/android/kml/KmlStyle;

    .prologue
    .line 634
    invoke-virtual {p2}, Lcom/google/maps/android/kml/KmlStyle;->getPolylineOptions()Lcom/google/android/gms/maps/model/PolylineOptions;

    move-result-object v0

    .line 635
    .local v0, "inlinePolylineOptions":Lcom/google/android/gms/maps/model/PolylineOptions;
    const-string v1, "outlineColor"

    invoke-virtual {p2, v1}, Lcom/google/maps/android/kml/KmlStyle;->isStyleSet(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 636
    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/PolylineOptions;->getColor()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/maps/model/PolylineOptions;->color(I)Lcom/google/android/gms/maps/model/PolylineOptions;

    .line 638
    :cond_0
    const-string v1, "width"

    invoke-virtual {p2, v1}, Lcom/google/maps/android/kml/KmlStyle;->isStyleSet(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 639
    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/PolylineOptions;->getWidth()F

    move-result v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/maps/model/PolylineOptions;->width(F)Lcom/google/android/gms/maps/model/PolylineOptions;

    .line 641
    :cond_1
    invoke-virtual {p2}, Lcom/google/maps/android/kml/KmlStyle;->isLineRandomColorMode()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 642
    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/PolylineOptions;->getColor()I

    move-result v1

    invoke-static {v1}, Lcom/google/maps/android/kml/KmlStyle;->computeRandomColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/maps/model/PolylineOptions;->color(I)Lcom/google/android/gms/maps/model/PolylineOptions;

    .line 644
    :cond_2
    return-void
.end method

.method private setInlinePointStyle(Lcom/google/android/gms/maps/model/MarkerOptions;Lcom/google/maps/android/kml/KmlStyle;Ljava/lang/String;)V
    .locals 3
    .param p1, "markerOptions"    # Lcom/google/android/gms/maps/model/MarkerOptions;
    .param p2, "inlineStyle"    # Lcom/google/maps/android/kml/KmlStyle;
    .param p3, "markerUrlIconUrl"    # Ljava/lang/String;

    .prologue
    .line 589
    invoke-virtual {p2}, Lcom/google/maps/android/kml/KmlStyle;->getMarkerOptions()Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v0

    .line 590
    .local v0, "inlineMarkerOptions":Lcom/google/android/gms/maps/model/MarkerOptions;
    const-string v1, "heading"

    invoke-virtual {p2, v1}, Lcom/google/maps/android/kml/KmlStyle;->isStyleSet(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 591
    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/MarkerOptions;->getRotation()F

    move-result v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/maps/model/MarkerOptions;->rotation(F)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 593
    :cond_0
    const-string v1, "hotSpot"

    invoke-virtual {p2, v1}, Lcom/google/maps/android/kml/KmlStyle;->isStyleSet(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 594
    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/MarkerOptions;->getAnchorU()F

    move-result v1

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/MarkerOptions;->getAnchorV()F

    move-result v2

    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/maps/model/MarkerOptions;->anchor(FF)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 597
    :cond_1
    const-string v1, "markerColor"

    invoke-virtual {p2, v1}, Lcom/google/maps/android/kml/KmlStyle;->isStyleSet(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 598
    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/MarkerOptions;->getIcon()Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/maps/model/MarkerOptions;->icon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 600
    :cond_2
    const-string v1, "iconUrl"

    invoke-virtual {p2, v1}, Lcom/google/maps/android/kml/KmlStyle;->isStyleSet(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 601
    invoke-virtual {p2}, Lcom/google/maps/android/kml/KmlStyle;->getIconUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lcom/google/maps/android/kml/KmlRenderer;->addMarkerIcons(Ljava/lang/String;Lcom/google/android/gms/maps/model/MarkerOptions;)V

    .line 606
    :cond_3
    :goto_0
    return-void

    .line 602
    :cond_4
    if-eqz p3, :cond_3

    .line 604
    invoke-direct {p0, p3, p1}, Lcom/google/maps/android/kml/KmlRenderer;->addMarkerIcons(Ljava/lang/String;Lcom/google/android/gms/maps/model/MarkerOptions;)V

    goto :goto_0
.end method

.method private setInlinePolygonStyle(Lcom/google/android/gms/maps/model/PolygonOptions;Lcom/google/maps/android/kml/KmlStyle;)V
    .locals 2
    .param p1, "polygonOptions"    # Lcom/google/android/gms/maps/model/PolygonOptions;
    .param p2, "inlineStyle"    # Lcom/google/maps/android/kml/KmlStyle;

    .prologue
    .line 674
    invoke-virtual {p2}, Lcom/google/maps/android/kml/KmlStyle;->getPolygonOptions()Lcom/google/android/gms/maps/model/PolygonOptions;

    move-result-object v0

    .line 675
    .local v0, "inlinePolygonOptions":Lcom/google/android/gms/maps/model/PolygonOptions;
    invoke-virtual {p2}, Lcom/google/maps/android/kml/KmlStyle;->hasFill()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "fillColor"

    invoke-virtual {p2, v1}, Lcom/google/maps/android/kml/KmlStyle;->isStyleSet(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 676
    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/PolygonOptions;->getFillColor()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/maps/model/PolygonOptions;->fillColor(I)Lcom/google/android/gms/maps/model/PolygonOptions;

    .line 678
    :cond_0
    invoke-virtual {p2}, Lcom/google/maps/android/kml/KmlStyle;->hasOutline()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 679
    const-string v1, "outlineColor"

    invoke-virtual {p2, v1}, Lcom/google/maps/android/kml/KmlStyle;->isStyleSet(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 680
    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/PolygonOptions;->getStrokeColor()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/maps/model/PolygonOptions;->strokeColor(I)Lcom/google/android/gms/maps/model/PolygonOptions;

    .line 682
    :cond_1
    const-string v1, "width"

    invoke-virtual {p2, v1}, Lcom/google/maps/android/kml/KmlStyle;->isStyleSet(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 683
    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/PolygonOptions;->getStrokeWidth()F

    move-result v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/maps/model/PolygonOptions;->strokeWidth(F)Lcom/google/android/gms/maps/model/PolygonOptions;

    .line 686
    :cond_2
    invoke-virtual {p2}, Lcom/google/maps/android/kml/KmlStyle;->isPolyRandomColorMode()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 687
    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/PolygonOptions;->getFillColor()I

    move-result v1

    invoke-static {v1}, Lcom/google/maps/android/kml/KmlStyle;->computeRandomColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/maps/model/PolygonOptions;->fillColor(I)Lcom/google/android/gms/maps/model/PolygonOptions;

    .line 689
    :cond_3
    return-void
.end method

.method private setMarkerInfoWindow(Lcom/google/maps/android/kml/KmlStyle;Lcom/google/android/gms/maps/model/Marker;Lcom/google/maps/android/kml/KmlPlacemark;)V
    .locals 6
    .param p1, "style"    # Lcom/google/maps/android/kml/KmlStyle;
    .param p2, "marker"    # Lcom/google/android/gms/maps/model/Marker;
    .param p3, "placemark"    # Lcom/google/maps/android/kml/KmlPlacemark;

    .prologue
    .line 536
    const-string v4, "name"

    invoke-virtual {p3, v4}, Lcom/google/maps/android/kml/KmlPlacemark;->hasProperty(Ljava/lang/String;)Z

    move-result v3

    .line 537
    .local v3, "hasName":Z
    const-string v4, "description"

    invoke-virtual {p3, v4}, Lcom/google/maps/android/kml/KmlPlacemark;->hasProperty(Ljava/lang/String;)Z

    move-result v2

    .line 538
    .local v2, "hasDescription":Z
    invoke-virtual {p1}, Lcom/google/maps/android/kml/KmlStyle;->hasBalloonStyle()Z

    move-result v0

    .line 539
    .local v0, "hasBalloonOptions":Z
    invoke-virtual {p1}, Lcom/google/maps/android/kml/KmlStyle;->getBalloonOptions()Ljava/util/HashMap;

    move-result-object v4

    const-string v5, "text"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    .line 540
    .local v1, "hasBalloonText":Z
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 541
    invoke-virtual {p1}, Lcom/google/maps/android/kml/KmlStyle;->getBalloonOptions()Ljava/util/HashMap;

    move-result-object v4

    const-string v5, "text"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p2, v4}, Lcom/google/android/gms/maps/model/Marker;->setTitle(Ljava/lang/String;)V

    .line 542
    invoke-direct {p0}, Lcom/google/maps/android/kml/KmlRenderer;->createInfoWindow()V

    .line 554
    :cond_0
    :goto_0
    return-void

    .line 543
    :cond_1
    if-eqz v0, :cond_2

    if-eqz v3, :cond_2

    .line 544
    const-string v4, "name"

    invoke-virtual {p3, v4}, Lcom/google/maps/android/kml/KmlPlacemark;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Lcom/google/android/gms/maps/model/Marker;->setTitle(Ljava/lang/String;)V

    .line 545
    invoke-direct {p0}, Lcom/google/maps/android/kml/KmlRenderer;->createInfoWindow()V

    goto :goto_0

    .line 546
    :cond_2
    if-eqz v3, :cond_3

    if-eqz v2, :cond_3

    .line 547
    const-string v4, "name"

    invoke-virtual {p3, v4}, Lcom/google/maps/android/kml/KmlPlacemark;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Lcom/google/android/gms/maps/model/Marker;->setTitle(Ljava/lang/String;)V

    .line 548
    const-string v4, "description"

    invoke-virtual {p3, v4}, Lcom/google/maps/android/kml/KmlPlacemark;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Lcom/google/android/gms/maps/model/Marker;->setSnippet(Ljava/lang/String;)V

    .line 549
    invoke-direct {p0}, Lcom/google/maps/android/kml/KmlRenderer;->createInfoWindow()V

    goto :goto_0

    .line 550
    :cond_3
    if-eqz v2, :cond_0

    .line 551
    const-string v4, "description"

    invoke-virtual {p3, v4}, Lcom/google/maps/android/kml/KmlPlacemark;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Lcom/google/android/gms/maps/model/Marker;->setTitle(Ljava/lang/String;)V

    .line 552
    invoke-direct {p0}, Lcom/google/maps/android/kml/KmlRenderer;->createInfoWindow()V

    goto :goto_0
.end method


# virtual methods
.method addLayerToMap()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 215
    iget-object v0, p0, Lcom/google/maps/android/kml/KmlRenderer;->mStylesRenderer:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/google/maps/android/kml/KmlRenderer;->mStyles:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 216
    iget-object v0, p0, Lcom/google/maps/android/kml/KmlRenderer;->mStyleMaps:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/google/maps/android/kml/KmlRenderer;->mStylesRenderer:Ljava/util/HashMap;

    invoke-virtual {p0, v0, v1}, Lcom/google/maps/android/kml/KmlRenderer;->assignStyleMap(Ljava/util/HashMap;Ljava/util/HashMap;)V

    .line 217
    iget-object v0, p0, Lcom/google/maps/android/kml/KmlRenderer;->mGroundOverlays:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/google/maps/android/kml/KmlRenderer;->mContainers:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v1}, Lcom/google/maps/android/kml/KmlRenderer;->addGroundOverlays(Ljava/util/HashMap;Ljava/lang/Iterable;)V

    .line 218
    iget-object v0, p0, Lcom/google/maps/android/kml/KmlRenderer;->mContainers:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v2}, Lcom/google/maps/android/kml/KmlRenderer;->addContainerGroupToMap(Ljava/lang/Iterable;Z)V

    .line 219
    iget-object v0, p0, Lcom/google/maps/android/kml/KmlRenderer;->mPlacemarks:Ljava/util/HashMap;

    invoke-direct {p0, v0}, Lcom/google/maps/android/kml/KmlRenderer;->addPlacemarksToMap(Ljava/util/HashMap;)V

    .line 220
    iget-boolean v0, p0, Lcom/google/maps/android/kml/KmlRenderer;->mGroundOverlayImagesDownloaded:Z

    if-nez v0, :cond_0

    .line 221
    invoke-direct {p0}, Lcom/google/maps/android/kml/KmlRenderer;->downloadGroundOverlays()V

    .line 223
    :cond_0
    iget-boolean v0, p0, Lcom/google/maps/android/kml/KmlRenderer;->mMarkerIconsDownloaded:Z

    if-nez v0, :cond_1

    .line 224
    invoke-direct {p0}, Lcom/google/maps/android/kml/KmlRenderer;->downloadMarkerIcons()V

    .line 226
    :cond_1
    iput-boolean v2, p0, Lcom/google/maps/android/kml/KmlRenderer;->mLayerVisible:Z

    .line 227
    return-void
.end method

.method assignStyleMap(Ljava/util/HashMap;Ljava/util/HashMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/maps/android/kml/KmlStyle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 186
    .local p1, "styleMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local p2, "styles":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/google/maps/android/kml/KmlStyle;>;"
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 187
    .local v1, "styleMapKey":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 188
    .local v2, "styleMapValue":Ljava/lang/String;
    invoke-virtual {p2, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 189
    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 192
    .end local v1    # "styleMapKey":Ljava/lang/String;
    .end local v2    # "styleMapValue":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method getGroundOverlays()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/google/maps/android/kml/KmlGroundOverlay;",
            ">;"
        }
    .end annotation

    .prologue
    .line 291
    iget-object v0, p0, Lcom/google/maps/android/kml/KmlRenderer;->mGroundOverlays:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method getKmlPlacemarks()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/google/maps/android/kml/KmlPlacemark;",
            ">;"
        }
    .end annotation

    .prologue
    .line 264
    iget-object v0, p0, Lcom/google/maps/android/kml/KmlRenderer;->mPlacemarks:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method getMap()Lcom/google/android/gms/maps/GoogleMap;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/google/maps/android/kml/KmlRenderer;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    return-object v0
.end method

.method getNestedContainers()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/google/maps/android/kml/KmlContainer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 282
    iget-object v0, p0, Lcom/google/maps/android/kml/KmlRenderer;->mContainers:Ljava/util/ArrayList;

    return-object v0
.end method

.method hasKmlPlacemarks()Z
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/google/maps/android/kml/KmlRenderer;->mPlacemarks:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method hasNestedContainers()Z
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/google/maps/android/kml/KmlRenderer;->mContainers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method removeLayerFromMap()V
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcom/google/maps/android/kml/KmlRenderer;->mPlacemarks:Ljava/util/HashMap;

    invoke-static {v0}, Lcom/google/maps/android/kml/KmlRenderer;->removePlacemarks(Ljava/util/HashMap;)V

    .line 299
    iget-object v0, p0, Lcom/google/maps/android/kml/KmlRenderer;->mGroundOverlays:Ljava/util/HashMap;

    invoke-direct {p0, v0}, Lcom/google/maps/android/kml/KmlRenderer;->removeGroundOverlays(Ljava/util/HashMap;)V

    .line 300
    invoke-virtual {p0}, Lcom/google/maps/android/kml/KmlRenderer;->hasNestedContainers()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 301
    invoke-virtual {p0}, Lcom/google/maps/android/kml/KmlRenderer;->getNestedContainers()Ljava/lang/Iterable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/maps/android/kml/KmlRenderer;->removeContainers(Ljava/lang/Iterable;)V

    .line 303
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/maps/android/kml/KmlRenderer;->mLayerVisible:Z

    .line 304
    iget-object v0, p0, Lcom/google/maps/android/kml/KmlRenderer;->mStylesRenderer:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 305
    return-void
.end method

.method setMap(Lcom/google/android/gms/maps/GoogleMap;)V
    .locals 0
    .param p1, "map"    # Lcom/google/android/gms/maps/GoogleMap;

    .prologue
    .line 244
    invoke-virtual {p0}, Lcom/google/maps/android/kml/KmlRenderer;->removeLayerFromMap()V

    .line 245
    iput-object p1, p0, Lcom/google/maps/android/kml/KmlRenderer;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    .line 246
    invoke-virtual {p0}, Lcom/google/maps/android/kml/KmlRenderer;->addLayerToMap()V

    .line 247
    return-void
.end method

.method storeKmlData(Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/maps/android/kml/KmlStyle;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Lcom/google/maps/android/kml/KmlPlacemark;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/maps/android/kml/KmlContainer;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Lcom/google/maps/android/kml/KmlGroundOverlay;",
            "Lcom/google/android/gms/maps/model/GroundOverlay;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 207
    .local p1, "styles":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/google/maps/android/kml/KmlStyle;>;"
    .local p2, "styleMaps":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local p3, "placemarks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/google/maps/android/kml/KmlPlacemark;Ljava/lang/Object;>;"
    .local p4, "folders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/maps/android/kml/KmlContainer;>;"
    .local p5, "groundOverlays":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/google/maps/android/kml/KmlGroundOverlay;Lcom/google/android/gms/maps/model/GroundOverlay;>;"
    iput-object p1, p0, Lcom/google/maps/android/kml/KmlRenderer;->mStyles:Ljava/util/HashMap;

    .line 208
    iput-object p2, p0, Lcom/google/maps/android/kml/KmlRenderer;->mStyleMaps:Ljava/util/HashMap;

    .line 209
    iput-object p3, p0, Lcom/google/maps/android/kml/KmlRenderer;->mPlacemarks:Ljava/util/HashMap;

    .line 210
    iput-object p4, p0, Lcom/google/maps/android/kml/KmlRenderer;->mContainers:Ljava/util/ArrayList;

    .line 211
    iput-object p5, p0, Lcom/google/maps/android/kml/KmlRenderer;->mGroundOverlays:Ljava/util/HashMap;

    .line 212
    return-void
.end method
