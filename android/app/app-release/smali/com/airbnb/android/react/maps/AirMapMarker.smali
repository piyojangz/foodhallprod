.class public Lcom/airbnb/android/react/maps/AirMapMarker;
.super Lcom/airbnb/android/react/maps/AirMapFeature;
.source "AirMapMarker.java"


# instance fields
.field private anchorIsSet:Z

.field private anchorX:F

.field private anchorY:F

.field private calloutAnchorIsSet:Z

.field private calloutAnchorX:F

.field private calloutAnchorY:F

.field private calloutView:Lcom/airbnb/android/react/maps/AirMapCallout;

.field private final context:Landroid/content/Context;

.field private dataSource:Lcom/facebook/datasource/DataSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/datasource/DataSource",
            "<",
            "Lcom/facebook/common/references/CloseableReference",
            "<",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;>;"
        }
    .end annotation
.end field

.field private draggable:Z

.field private flat:Z

.field private hasCustomMarkerView:Z

.field private height:I

.field private iconBitmap:Landroid/graphics/Bitmap;

.field private iconBitmapDescriptor:Lcom/google/android/gms/maps/model/BitmapDescriptor;

.field private identifier:Ljava/lang/String;

.field private final logoHolder:Lcom/facebook/drawee/view/DraweeHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/drawee/view/DraweeHolder",
            "<*>;"
        }
    .end annotation
.end field

.field private final mLogoControllerListener:Lcom/facebook/drawee/controller/ControllerListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/drawee/controller/ControllerListener",
            "<",
            "Lcom/facebook/imagepipeline/image/ImageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private marker:Lcom/google/android/gms/maps/model/Marker;

.field private markerHue:F

.field private markerOptions:Lcom/google/android/gms/maps/model/MarkerOptions;

.field private opacity:F

.field private position:Lcom/google/android/gms/maps/model/LatLng;

.field private rotation:F

.field private snippet:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private width:I

.field private wrappedCalloutView:Landroid/view/View;

.field private zIndex:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 108
    invoke-direct {p0, p1}, Lcom/airbnb/android/react/maps/AirMapFeature;-><init>(Landroid/content/Context;)V

    .line 57
    iput v0, p0, Lcom/airbnb/android/react/maps/AirMapMarker;->markerHue:F

    .line 61
    iput v0, p0, Lcom/airbnb/android/react/maps/AirMapMarker;->rotation:F

    .line 62
    iput-boolean v1, p0, Lcom/airbnb/android/react/maps/AirMapMarker;->flat:Z

    .line 63
    iput-boolean v1, p0, Lcom/airbnb/android/react/maps/AirMapMarker;->draggable:Z

    .line 64
    iput v1, p0, Lcom/airbnb/android/react/maps/AirMapMarker;->zIndex:I

    .line 65
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/airbnb/android/react/maps/AirMapMarker;->opacity:F

    .line 71
    iput-boolean v1, p0, Lcom/airbnb/android/react/maps/AirMapMarker;->hasCustomMarkerView:Z

    .line 75
    new-instance v0, Lcom/airbnb/android/react/maps/AirMapMarker$1;

    invoke-direct {v0, p0}, Lcom/airbnb/android/react/maps/AirMapMarker$1;-><init>(Lcom/airbnb/android/react/maps/AirMapMarker;)V

    iput-object v0, p0, Lcom/airbnb/android/react/maps/AirMapMarker;->mLogoControllerListener:Lcom/facebook/drawee/controller/ControllerListener;

    .line 109
    iput-object p1, p0, Lcom/airbnb/android/react/maps/AirMapMarker;->context:Landroid/content/Context;

    .line 110
    invoke-direct {p0}, Lcom/airbnb/android/react/maps/AirMapMarker;->createDraweeHierarchy()Lcom/facebook/drawee/generic/GenericDraweeHierarchy;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/facebook/drawee/view/DraweeHolder;->create(Lcom/facebook/drawee/interfaces/DraweeHierarchy;Landroid/content/Context;)Lcom/facebook/drawee/view/DraweeHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/react/maps/AirMapMarker;->logoHolder:Lcom/facebook/drawee/view/DraweeHolder;

    .line 111
    iget-object v0, p0, Lcom/airbnb/android/react/maps/AirMapMarker;->logoHolder:Lcom/facebook/drawee/view/DraweeHolder;

    invoke-virtual {v0}, Lcom/facebook/drawee/view/DraweeHolder;->onAttach()V

    .line 112
    return-void
.end method

.method static synthetic access$000(Lcom/airbnb/android/react/maps/AirMapMarker;)Lcom/facebook/datasource/DataSource;
    .locals 1
    .param p0, "x0"    # Lcom/airbnb/android/react/maps/AirMapMarker;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/airbnb/android/react/maps/AirMapMarker;->dataSource:Lcom/facebook/datasource/DataSource;

    return-object v0
.end method

.method static synthetic access$102(Lcom/airbnb/android/react/maps/AirMapMarker;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .param p0, "x0"    # Lcom/airbnb/android/react/maps/AirMapMarker;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/airbnb/android/react/maps/AirMapMarker;->iconBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$202(Lcom/airbnb/android/react/maps/AirMapMarker;Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/BitmapDescriptor;
    .locals 0
    .param p0, "x0"    # Lcom/airbnb/android/react/maps/AirMapMarker;
    .param p1, "x1"    # Lcom/google/android/gms/maps/model/BitmapDescriptor;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/airbnb/android/react/maps/AirMapMarker;->iconBitmapDescriptor:Lcom/google/android/gms/maps/model/BitmapDescriptor;

    return-object p1
.end method

.method private createDrawable()Landroid/graphics/Bitmap;
    .locals 6

    .prologue
    const/16 v4, 0x64

    .line 342
    iget v5, p0, Lcom/airbnb/android/react/maps/AirMapMarker;->width:I

    if-gtz v5, :cond_0

    move v3, v4

    .line 343
    .local v3, "width":I
    :goto_0
    iget v5, p0, Lcom/airbnb/android/react/maps/AirMapMarker;->height:I

    if-gtz v5, :cond_1

    move v2, v4

    .line 344
    .local v2, "height":I
    :goto_1
    invoke-virtual {p0}, Lcom/airbnb/android/react/maps/AirMapMarker;->buildDrawingCache()V

    .line 345
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v2, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 347
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 348
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {p0, v1}, Lcom/airbnb/android/react/maps/AirMapMarker;->draw(Landroid/graphics/Canvas;)V

    .line 350
    return-object v0

    .line 342
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    .end local v2    # "height":I
    .end local v3    # "width":I
    :cond_0
    iget v3, p0, Lcom/airbnb/android/react/maps/AirMapMarker;->width:I

    goto :goto_0

    .line 343
    .restart local v3    # "width":I
    :cond_1
    iget v2, p0, Lcom/airbnb/android/react/maps/AirMapMarker;->height:I

    goto :goto_1
.end method

.method private createDraweeHierarchy()Lcom/facebook/drawee/generic/GenericDraweeHierarchy;
    .locals 2

    .prologue
    .line 115
    new-instance v0, Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;

    invoke-virtual {p0}, Lcom/airbnb/android/react/maps/AirMapMarker;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;-><init>(Landroid/content/res/Resources;)V

    sget-object v1, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;->FIT_CENTER:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    .line 116
    invoke-virtual {v0, v1}, Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;->setActualImageScaleType(Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;)Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;

    move-result-object v0

    const/4 v1, 0x0

    .line 117
    invoke-virtual {v0, v1}, Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;->setFadeDuration(I)Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;

    move-result-object v0

    .line 118
    invoke-virtual {v0}, Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;->build()Lcom/facebook/drawee/generic/GenericDraweeHierarchy;

    move-result-object v0

    .line 115
    return-object v0
.end method

.method private createMarkerOptions()Lcom/google/android/gms/maps/model/MarkerOptions;
    .locals 3

    .prologue
    .line 301
    new-instance v1, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v1}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    iget-object v2, p0, Lcom/airbnb/android/react/maps/AirMapMarker;->position:Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v0

    .line 302
    .local v0, "options":Lcom/google/android/gms/maps/model/MarkerOptions;
    iget-boolean v1, p0, Lcom/airbnb/android/react/maps/AirMapMarker;->anchorIsSet:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/airbnb/android/react/maps/AirMapMarker;->anchorX:F

    iget v2, p0, Lcom/airbnb/android/react/maps/AirMapMarker;->anchorY:F

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/maps/model/MarkerOptions;->anchor(FF)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 303
    :cond_0
    iget-boolean v1, p0, Lcom/airbnb/android/react/maps/AirMapMarker;->calloutAnchorIsSet:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/airbnb/android/react/maps/AirMapMarker;->calloutAnchorX:F

    iget v2, p0, Lcom/airbnb/android/react/maps/AirMapMarker;->calloutAnchorY:F

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/maps/model/MarkerOptions;->infoWindowAnchor(FF)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 304
    :cond_1
    iget-object v1, p0, Lcom/airbnb/android/react/maps/AirMapMarker;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/MarkerOptions;->title(Ljava/lang/String;)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 305
    iget-object v1, p0, Lcom/airbnb/android/react/maps/AirMapMarker;->snippet:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/MarkerOptions;->snippet(Ljava/lang/String;)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 306
    iget v1, p0, Lcom/airbnb/android/react/maps/AirMapMarker;->rotation:F

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/MarkerOptions;->rotation(F)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 307
    iget-boolean v1, p0, Lcom/airbnb/android/react/maps/AirMapMarker;->flat:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/MarkerOptions;->flat(Z)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 308
    iget-boolean v1, p0, Lcom/airbnb/android/react/maps/AirMapMarker;->draggable:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/MarkerOptions;->draggable(Z)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 309
    iget v1, p0, Lcom/airbnb/android/react/maps/AirMapMarker;->zIndex:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/MarkerOptions;->zIndex(F)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 310
    iget v1, p0, Lcom/airbnb/android/react/maps/AirMapMarker;->opacity:F

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/MarkerOptions;->alpha(F)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 311
    invoke-direct {p0}, Lcom/airbnb/android/react/maps/AirMapMarker;->getIcon()Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/MarkerOptions;->icon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 312
    return-object v0
.end method

.method private getBitmapDescriptorByName(Ljava/lang/String;)Lcom/google/android/gms/maps/model/BitmapDescriptor;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 427
    invoke-direct {p0, p1}, Lcom/airbnb/android/react/maps/AirMapMarker;->getDrawableResourceByName(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->fromResource(I)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v0

    return-object v0
.end method

.method private getDrawableResourceByName(Ljava/lang/String;)I
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 420
    invoke-virtual {p0}, Lcom/airbnb/android/react/maps/AirMapMarker;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "drawable"

    .line 423
    invoke-virtual {p0}, Lcom/airbnb/android/react/maps/AirMapMarker;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 420
    invoke-virtual {v0, p1, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private getIcon()Lcom/google/android/gms/maps/model/BitmapDescriptor;
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 277
    iget-boolean v5, p0, Lcom/airbnb/android/react/maps/AirMapMarker;->hasCustomMarkerView:Z

    if-eqz v5, :cond_1

    .line 279
    iget-object v5, p0, Lcom/airbnb/android/react/maps/AirMapMarker;->iconBitmapDescriptor:Lcom/google/android/gms/maps/model/BitmapDescriptor;

    if-eqz v5, :cond_0

    .line 280
    invoke-direct {p0}, Lcom/airbnb/android/react/maps/AirMapMarker;->createDrawable()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 281
    .local v3, "viewBitmap":Landroid/graphics/Bitmap;
    iget-object v5, p0, Lcom/airbnb/android/react/maps/AirMapMarker;->iconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 282
    .local v4, "width":I
    iget-object v5, p0, Lcom/airbnb/android/react/maps/AirMapMarker;->iconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 283
    .local v2, "height":I
    iget-object v5, p0, Lcom/airbnb/android/react/maps/AirMapMarker;->iconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v5

    invoke-static {v4, v2, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 284
    .local v1, "combinedBitmap":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 285
    .local v0, "canvas":Landroid/graphics/Canvas;
    iget-object v5, p0, Lcom/airbnb/android/react/maps/AirMapMarker;->iconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v5, v7, v7, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 286
    invoke-virtual {v0, v3, v7, v7, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 287
    invoke-static {v1}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v5

    .line 296
    .end local v0    # "canvas":Landroid/graphics/Canvas;
    .end local v1    # "combinedBitmap":Landroid/graphics/Bitmap;
    .end local v2    # "height":I
    .end local v3    # "viewBitmap":Landroid/graphics/Bitmap;
    .end local v4    # "width":I
    :goto_0
    return-object v5

    .line 289
    :cond_0
    invoke-direct {p0}, Lcom/airbnb/android/react/maps/AirMapMarker;->createDrawable()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v5

    goto :goto_0

    .line 291
    :cond_1
    iget-object v5, p0, Lcom/airbnb/android/react/maps/AirMapMarker;->iconBitmapDescriptor:Lcom/google/android/gms/maps/model/BitmapDescriptor;

    if-eqz v5, :cond_2

    .line 293
    iget-object v5, p0, Lcom/airbnb/android/react/maps/AirMapMarker;->iconBitmapDescriptor:Lcom/google/android/gms/maps/model/BitmapDescriptor;

    goto :goto_0

    .line 296
    :cond_2
    iget v5, p0, Lcom/airbnb/android/react/maps/AirMapMarker;->markerHue:F

    invoke-static {v5}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->defaultMarker(F)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v5

    goto :goto_0
.end method

.method private wrapCalloutView()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 392
    iget-object v2, p0, Lcom/airbnb/android/react/maps/AirMapMarker;->calloutView:Lcom/airbnb/android/react/maps/AirMapCallout;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/airbnb/android/react/maps/AirMapMarker;->calloutView:Lcom/airbnb/android/react/maps/AirMapCallout;

    invoke-virtual {v2}, Lcom/airbnb/android/react/maps/AirMapCallout;->getChildCount()I

    move-result v2

    if-nez v2, :cond_1

    .line 417
    :cond_0
    :goto_0
    return-void

    .line 396
    :cond_1
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/airbnb/android/react/maps/AirMapMarker;->context:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 397
    .local v0, "LL":Landroid/widget/LinearLayout;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 398
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v3, p0, Lcom/airbnb/android/react/maps/AirMapMarker;->calloutView:Lcom/airbnb/android/react/maps/AirMapCallout;

    iget v3, v3, Lcom/airbnb/android/react/maps/AirMapCallout;->width:I

    iget-object v4, p0, Lcom/airbnb/android/react/maps/AirMapMarker;->calloutView:Lcom/airbnb/android/react/maps/AirMapCallout;

    iget v4, v4, Lcom/airbnb/android/react/maps/AirMapCallout;->height:I

    invoke-direct {v2, v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 405
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/airbnb/android/react/maps/AirMapMarker;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 406
    .local v1, "LL2":Landroid/widget/LinearLayout;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 407
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v3, p0, Lcom/airbnb/android/react/maps/AirMapMarker;->calloutView:Lcom/airbnb/android/react/maps/AirMapCallout;

    iget v3, v3, Lcom/airbnb/android/react/maps/AirMapCallout;->width:I

    iget-object v4, p0, Lcom/airbnb/android/react/maps/AirMapMarker;->calloutView:Lcom/airbnb/android/react/maps/AirMapCallout;

    iget v4, v4, Lcom/airbnb/android/react/maps/AirMapCallout;->height:I

    invoke-direct {v2, v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 413
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 414
    iget-object v2, p0, Lcom/airbnb/android/react/maps/AirMapMarker;->calloutView:Lcom/airbnb/android/react/maps/AirMapCallout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 416
    iput-object v0, p0, Lcom/airbnb/android/react/maps/AirMapMarker;->wrappedCalloutView:Landroid/view/View;

    goto :goto_0
.end method


# virtual methods
.method public addToMap(Lcom/google/android/gms/maps/GoogleMap;)V
    .locals 1
    .param p1, "map"    # Lcom/google/android/gms/maps/GoogleMap;

    .prologue
    .line 267
    invoke-virtual {p0}, Lcom/airbnb/android/react/maps/AirMapMarker;->getMarkerOptions()Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/GoogleMap;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/Marker;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/react/maps/AirMapMarker;->marker:Lcom/google/android/gms/maps/model/Marker;

    .line 268
    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I

    .prologue
    .line 252
    invoke-super {p0, p1, p2}, Lcom/airbnb/android/react/maps/AirMapFeature;->addView(Landroid/view/View;I)V

    .line 254
    instance-of v0, p1, Lcom/airbnb/android/react/maps/AirMapCallout;

    if-nez v0, :cond_0

    .line 255
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/airbnb/android/react/maps/AirMapMarker;->hasCustomMarkerView:Z

    .line 257
    :cond_0
    invoke-virtual {p0}, Lcom/airbnb/android/react/maps/AirMapMarker;->update()V

    .line 258
    return-void
.end method

.method public getCallout()Landroid/view/View;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 362
    iget-object v1, p0, Lcom/airbnb/android/react/maps/AirMapMarker;->calloutView:Lcom/airbnb/android/react/maps/AirMapCallout;

    if-nez v1, :cond_1

    .line 371
    :cond_0
    :goto_0
    return-object v0

    .line 364
    :cond_1
    iget-object v1, p0, Lcom/airbnb/android/react/maps/AirMapMarker;->wrappedCalloutView:Landroid/view/View;

    if-nez v1, :cond_2

    .line 365
    invoke-direct {p0}, Lcom/airbnb/android/react/maps/AirMapMarker;->wrapCalloutView()V

    .line 368
    :cond_2
    iget-object v1, p0, Lcom/airbnb/android/react/maps/AirMapMarker;->calloutView:Lcom/airbnb/android/react/maps/AirMapCallout;

    invoke-virtual {v1}, Lcom/airbnb/android/react/maps/AirMapCallout;->getTooltip()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 369
    iget-object v0, p0, Lcom/airbnb/android/react/maps/AirMapMarker;->wrappedCalloutView:Landroid/view/View;

    goto :goto_0
.end method

.method public getCalloutView()Lcom/airbnb/android/react/maps/AirMapCallout;
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Lcom/airbnb/android/react/maps/AirMapMarker;->calloutView:Lcom/airbnb/android/react/maps/AirMapCallout;

    return-object v0
.end method

.method public getFeature()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/airbnb/android/react/maps/AirMapMarker;->marker:Lcom/google/android/gms/maps/model/Marker;

    return-object v0
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/airbnb/android/react/maps/AirMapMarker;->identifier:Ljava/lang/String;

    return-object v0
.end method

.method public getInfoContents()Landroid/view/View;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 376
    iget-object v1, p0, Lcom/airbnb/android/react/maps/AirMapMarker;->calloutView:Lcom/airbnb/android/react/maps/AirMapCallout;

    if-nez v1, :cond_1

    .line 385
    :cond_0
    :goto_0
    return-object v0

    .line 378
    :cond_1
    iget-object v1, p0, Lcom/airbnb/android/react/maps/AirMapMarker;->wrappedCalloutView:Landroid/view/View;

    if-nez v1, :cond_2

    .line 379
    invoke-direct {p0}, Lcom/airbnb/android/react/maps/AirMapMarker;->wrapCalloutView()V

    .line 382
    :cond_2
    iget-object v1, p0, Lcom/airbnb/android/react/maps/AirMapMarker;->calloutView:Lcom/airbnb/android/react/maps/AirMapCallout;

    invoke-virtual {v1}, Lcom/airbnb/android/react/maps/AirMapCallout;->getTooltip()Z

    move-result v1

    if-nez v1, :cond_0

    .line 385
    iget-object v0, p0, Lcom/airbnb/android/react/maps/AirMapMarker;->wrappedCalloutView:Landroid/view/View;

    goto :goto_0
.end method

.method public getMarkerOptions()Lcom/google/android/gms/maps/model/MarkerOptions;
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/airbnb/android/react/maps/AirMapMarker;->markerOptions:Lcom/google/android/gms/maps/model/MarkerOptions;

    if-nez v0, :cond_0

    .line 245
    invoke-direct {p0}, Lcom/airbnb/android/react/maps/AirMapMarker;->createMarkerOptions()Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/react/maps/AirMapMarker;->markerOptions:Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 247
    :cond_0
    iget-object v0, p0, Lcom/airbnb/android/react/maps/AirMapMarker;->markerOptions:Lcom/google/android/gms/maps/model/MarkerOptions;

    return-object v0
.end method

.method public removeFromMap(Lcom/google/android/gms/maps/GoogleMap;)V
    .locals 1
    .param p1, "map"    # Lcom/google/android/gms/maps/GoogleMap;

    .prologue
    .line 272
    iget-object v0, p0, Lcom/airbnb/android/react/maps/AirMapMarker;->marker:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Marker;->remove()V

    .line 273
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/airbnb/android/react/maps/AirMapMarker;->marker:Lcom/google/android/gms/maps/model/Marker;

    .line 274
    return-void
.end method

.method public setAnchor(DD)V
    .locals 3
    .param p1, "x"    # D
    .param p3, "y"    # D

    .prologue
    .line 200
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/airbnb/android/react/maps/AirMapMarker;->anchorIsSet:Z

    .line 201
    double-to-float v0, p1

    iput v0, p0, Lcom/airbnb/android/react/maps/AirMapMarker;->anchorX:F

    .line 202
    double-to-float v0, p3

    iput v0, p0, Lcom/airbnb/android/react/maps/AirMapMarker;->anchorY:F

    .line 203
    iget-object v0, p0, Lcom/airbnb/android/react/maps/AirMapMarker;->marker:Lcom/google/android/gms/maps/model/Marker;

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/airbnb/android/react/maps/AirMapMarker;->marker:Lcom/google/android/gms/maps/model/Marker;

    iget v1, p0, Lcom/airbnb/android/react/maps/AirMapMarker;->anchorX:F

    iget v2, p0, Lcom/airbnb/android/react/maps/AirMapMarker;->anchorY:F

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/maps/model/Marker;->setAnchor(FF)V

    .line 206
    :cond_0
    invoke-virtual {p0}, Lcom/airbnb/android/react/maps/AirMapMarker;->update()V

    .line 207
    return-void
.end method

.method public setCalloutAnchor(DD)V
    .locals 3
    .param p1, "x"    # D
    .param p3, "y"    # D

    .prologue
    .line 210
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/airbnb/android/react/maps/AirMapMarker;->calloutAnchorIsSet:Z

    .line 211
    double-to-float v0, p1

    iput v0, p0, Lcom/airbnb/android/react/maps/AirMapMarker;->calloutAnchorX:F

    .line 212
    double-to-float v0, p3

    iput v0, p0, Lcom/airbnb/android/react/maps/AirMapMarker;->calloutAnchorY:F

    .line 213
    iget-object v0, p0, Lcom/airbnb/android/react/maps/AirMapMarker;->marker:Lcom/google/android/gms/maps/model/Marker;

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/airbnb/android/react/maps/AirMapMarker;->marker:Lcom/google/android/gms/maps/model/Marker;

    iget v1, p0, Lcom/airbnb/android/react/maps/AirMapMarker;->calloutAnchorX:F

    iget v2, p0, Lcom/airbnb/android/react/maps/AirMapMarker;->calloutAnchorY:F

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/maps/model/Marker;->setInfoWindowAnchor(FF)V

    .line 216
    :cond_0
    invoke-virtual {p0}, Lcom/airbnb/android/react/maps/AirMapMarker;->update()V

    .line 217
    return-void
.end method

.method public setCalloutView(Lcom/airbnb/android/react/maps/AirMapCallout;)V
    .locals 0
    .param p1, "view"    # Lcom/airbnb/android/react/maps/AirMapCallout;

    .prologue
    .line 354
    iput-object p1, p0, Lcom/airbnb/android/react/maps/AirMapMarker;->calloutView:Lcom/airbnb/android/react/maps/AirMapCallout;

    .line 355
    return-void
.end method

.method public setCoordinate(Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 6
    .param p1, "coordinate"    # Lcom/facebook/react/bridge/ReadableMap;

    .prologue
    .line 122
    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    const-string v1, "latitude"

    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    const-string v1, "longitude"

    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    iput-object v0, p0, Lcom/airbnb/android/react/maps/AirMapMarker;->position:Lcom/google/android/gms/maps/model/LatLng;

    .line 123
    iget-object v0, p0, Lcom/airbnb/android/react/maps/AirMapMarker;->marker:Lcom/google/android/gms/maps/model/Marker;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/airbnb/android/react/maps/AirMapMarker;->marker:Lcom/google/android/gms/maps/model/Marker;

    iget-object v1, p0, Lcom/airbnb/android/react/maps/AirMapMarker;->position:Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/Marker;->setPosition(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 126
    :cond_0
    invoke-virtual {p0}, Lcom/airbnb/android/react/maps/AirMapMarker;->update()V

    .line 127
    return-void
.end method

.method public setDraggable(Z)V
    .locals 1
    .param p1, "draggable"    # Z

    .prologue
    .line 171
    iput-boolean p1, p0, Lcom/airbnb/android/react/maps/AirMapMarker;->draggable:Z

    .line 172
    iget-object v0, p0, Lcom/airbnb/android/react/maps/AirMapMarker;->marker:Lcom/google/android/gms/maps/model/Marker;

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/airbnb/android/react/maps/AirMapMarker;->marker:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/model/Marker;->setDraggable(Z)V

    .line 175
    :cond_0
    invoke-virtual {p0}, Lcom/airbnb/android/react/maps/AirMapMarker;->update()V

    .line 176
    return-void
.end method

.method public setFlat(Z)V
    .locals 1
    .param p1, "flat"    # Z

    .prologue
    .line 163
    iput-boolean p1, p0, Lcom/airbnb/android/react/maps/AirMapMarker;->flat:Z

    .line 164
    iget-object v0, p0, Lcom/airbnb/android/react/maps/AirMapMarker;->marker:Lcom/google/android/gms/maps/model/Marker;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/airbnb/android/react/maps/AirMapMarker;->marker:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/model/Marker;->setFlat(Z)V

    .line 167
    :cond_0
    invoke-virtual {p0}, Lcom/airbnb/android/react/maps/AirMapMarker;->update()V

    .line 168
    return-void
.end method

.method public setIdentifier(Ljava/lang/String;)V
    .locals 0
    .param p1, "identifier"    # Ljava/lang/String;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/airbnb/android/react/maps/AirMapMarker;->identifier:Ljava/lang/String;

    .line 131
    invoke-virtual {p0}, Lcom/airbnb/android/react/maps/AirMapMarker;->update()V

    .line 132
    return-void
.end method

.method public setImage(Ljava/lang/String;)V
    .locals 5
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 220
    if-nez p1, :cond_0

    .line 221
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/airbnb/android/react/maps/AirMapMarker;->iconBitmapDescriptor:Lcom/google/android/gms/maps/model/BitmapDescriptor;

    .line 222
    invoke-virtual {p0}, Lcom/airbnb/android/react/maps/AirMapMarker;->update()V

    .line 241
    :goto_0
    return-void

    .line 223
    :cond_0
    const-string v3, "http://"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "https://"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "file://"

    .line 224
    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 226
    :cond_1
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->newBuilderWithSource(Landroid/net/Uri;)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    move-result-object v3

    .line 227
    invoke-virtual {v3}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->build()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v2

    .line 229
    .local v2, "imageRequest":Lcom/facebook/imagepipeline/request/ImageRequest;
    invoke-static {}, Lcom/facebook/drawee/backends/pipeline/Fresco;->getImagePipeline()Lcom/facebook/imagepipeline/core/ImagePipeline;

    move-result-object v1

    .line 230
    .local v1, "imagePipeline":Lcom/facebook/imagepipeline/core/ImagePipeline;
    invoke-virtual {v1, v2, p0}, Lcom/facebook/imagepipeline/core/ImagePipeline;->fetchDecodedImage(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)Lcom/facebook/datasource/DataSource;

    move-result-object v3

    iput-object v3, p0, Lcom/airbnb/android/react/maps/AirMapMarker;->dataSource:Lcom/facebook/datasource/DataSource;

    .line 231
    invoke-static {}, Lcom/facebook/drawee/backends/pipeline/Fresco;->newDraweeControllerBuilder()Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;

    move-result-object v3

    .line 232
    invoke-virtual {v3, v2}, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;->setImageRequest(Ljava/lang/Object;)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    move-result-object v3

    check-cast v3, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;

    iget-object v4, p0, Lcom/airbnb/android/react/maps/AirMapMarker;->mLogoControllerListener:Lcom/facebook/drawee/controller/ControllerListener;

    .line 233
    invoke-virtual {v3, v4}, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;->setControllerListener(Lcom/facebook/drawee/controller/ControllerListener;)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    move-result-object v3

    check-cast v3, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;

    iget-object v4, p0, Lcom/airbnb/android/react/maps/AirMapMarker;->logoHolder:Lcom/facebook/drawee/view/DraweeHolder;

    .line 234
    invoke-virtual {v4}, Lcom/facebook/drawee/view/DraweeHolder;->getController()Lcom/facebook/drawee/interfaces/DraweeController;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;->setOldController(Lcom/facebook/drawee/interfaces/DraweeController;)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    move-result-object v3

    check-cast v3, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;

    .line 235
    invoke-virtual {v3}, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;->build()Lcom/facebook/drawee/controller/AbstractDraweeController;

    move-result-object v0

    .line 236
    .local v0, "controller":Lcom/facebook/drawee/interfaces/DraweeController;
    iget-object v3, p0, Lcom/airbnb/android/react/maps/AirMapMarker;->logoHolder:Lcom/facebook/drawee/view/DraweeHolder;

    invoke-virtual {v3, v0}, Lcom/facebook/drawee/view/DraweeHolder;->setController(Lcom/facebook/drawee/interfaces/DraweeController;)V

    goto :goto_0

    .line 238
    .end local v0    # "controller":Lcom/facebook/drawee/interfaces/DraweeController;
    .end local v1    # "imagePipeline":Lcom/facebook/imagepipeline/core/ImagePipeline;
    .end local v2    # "imageRequest":Lcom/facebook/imagepipeline/request/ImageRequest;
    :cond_2
    invoke-direct {p0, p1}, Lcom/airbnb/android/react/maps/AirMapMarker;->getBitmapDescriptorByName(Ljava/lang/String;)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v3

    iput-object v3, p0, Lcom/airbnb/android/react/maps/AirMapMarker;->iconBitmapDescriptor:Lcom/google/android/gms/maps/model/BitmapDescriptor;

    .line 239
    invoke-virtual {p0}, Lcom/airbnb/android/react/maps/AirMapMarker;->update()V

    goto :goto_0
.end method

.method public setMarkerHue(F)V
    .locals 0
    .param p1, "markerHue"    # F

    .prologue
    .line 195
    iput p1, p0, Lcom/airbnb/android/react/maps/AirMapMarker;->markerHue:F

    .line 196
    invoke-virtual {p0}, Lcom/airbnb/android/react/maps/AirMapMarker;->update()V

    .line 197
    return-void
.end method

.method public setOpacity(F)V
    .locals 1
    .param p1, "opacity"    # F

    .prologue
    .line 187
    iput p1, p0, Lcom/airbnb/android/react/maps/AirMapMarker;->opacity:F

    .line 188
    iget-object v0, p0, Lcom/airbnb/android/react/maps/AirMapMarker;->marker:Lcom/google/android/gms/maps/model/Marker;

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/airbnb/android/react/maps/AirMapMarker;->marker:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/model/Marker;->setAlpha(F)V

    .line 191
    :cond_0
    invoke-virtual {p0}, Lcom/airbnb/android/react/maps/AirMapMarker;->update()V

    .line 192
    return-void
.end method

.method public setRotation(F)V
    .locals 1
    .param p1, "rotation"    # F

    .prologue
    .line 155
    iput p1, p0, Lcom/airbnb/android/react/maps/AirMapMarker;->rotation:F

    .line 156
    iget-object v0, p0, Lcom/airbnb/android/react/maps/AirMapMarker;->marker:Lcom/google/android/gms/maps/model/Marker;

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/airbnb/android/react/maps/AirMapMarker;->marker:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/model/Marker;->setRotation(F)V

    .line 159
    :cond_0
    invoke-virtual {p0}, Lcom/airbnb/android/react/maps/AirMapMarker;->update()V

    .line 160
    return-void
.end method

.method public setSnippet(Ljava/lang/String;)V
    .locals 1
    .param p1, "snippet"    # Ljava/lang/String;

    .prologue
    .line 147
    iput-object p1, p0, Lcom/airbnb/android/react/maps/AirMapMarker;->snippet:Ljava/lang/String;

    .line 148
    iget-object v0, p0, Lcom/airbnb/android/react/maps/AirMapMarker;->marker:Lcom/google/android/gms/maps/model/Marker;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/airbnb/android/react/maps/AirMapMarker;->marker:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/model/Marker;->setSnippet(Ljava/lang/String;)V

    .line 151
    :cond_0
    invoke-virtual {p0}, Lcom/airbnb/android/react/maps/AirMapMarker;->update()V

    .line 152
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/airbnb/android/react/maps/AirMapMarker;->title:Ljava/lang/String;

    .line 140
    iget-object v0, p0, Lcom/airbnb/android/react/maps/AirMapMarker;->marker:Lcom/google/android/gms/maps/model/Marker;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/airbnb/android/react/maps/AirMapMarker;->marker:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/model/Marker;->setTitle(Ljava/lang/String;)V

    .line 143
    :cond_0
    invoke-virtual {p0}, Lcom/airbnb/android/react/maps/AirMapMarker;->update()V

    .line 144
    return-void
.end method

.method public setZIndex(I)V
    .locals 2
    .param p1, "zIndex"    # I

    .prologue
    .line 179
    iput p1, p0, Lcom/airbnb/android/react/maps/AirMapMarker;->zIndex:I

    .line 180
    iget-object v0, p0, Lcom/airbnb/android/react/maps/AirMapMarker;->marker:Lcom/google/android/gms/maps/model/Marker;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/airbnb/android/react/maps/AirMapMarker;->marker:Lcom/google/android/gms/maps/model/Marker;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/Marker;->setZIndex(F)V

    .line 183
    :cond_0
    invoke-virtual {p0}, Lcom/airbnb/android/react/maps/AirMapMarker;->update()V

    .line 184
    return-void
.end method

.method public update()V
    .locals 4

    .prologue
    const/high16 v3, 0x3f000000    # 0.5f

    .line 316
    iget-object v0, p0, Lcom/airbnb/android/react/maps/AirMapMarker;->marker:Lcom/google/android/gms/maps/model/Marker;

    if-nez v0, :cond_0

    .line 333
    :goto_0
    return-void

    .line 320
    :cond_0
    iget-object v0, p0, Lcom/airbnb/android/react/maps/AirMapMarker;->marker:Lcom/google/android/gms/maps/model/Marker;

    invoke-direct {p0}, Lcom/airbnb/android/react/maps/AirMapMarker;->getIcon()Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/Marker;->setIcon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)V

    .line 322
    iget-boolean v0, p0, Lcom/airbnb/android/react/maps/AirMapMarker;->anchorIsSet:Z

    if-eqz v0, :cond_1

    .line 323
    iget-object v0, p0, Lcom/airbnb/android/react/maps/AirMapMarker;->marker:Lcom/google/android/gms/maps/model/Marker;

    iget v1, p0, Lcom/airbnb/android/react/maps/AirMapMarker;->anchorX:F

    iget v2, p0, Lcom/airbnb/android/react/maps/AirMapMarker;->anchorY:F

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/maps/model/Marker;->setAnchor(FF)V

    .line 328
    :goto_1
    iget-boolean v0, p0, Lcom/airbnb/android/react/maps/AirMapMarker;->calloutAnchorIsSet:Z

    if-eqz v0, :cond_2

    .line 329
    iget-object v0, p0, Lcom/airbnb/android/react/maps/AirMapMarker;->marker:Lcom/google/android/gms/maps/model/Marker;

    iget v1, p0, Lcom/airbnb/android/react/maps/AirMapMarker;->calloutAnchorX:F

    iget v2, p0, Lcom/airbnb/android/react/maps/AirMapMarker;->calloutAnchorY:F

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/maps/model/Marker;->setInfoWindowAnchor(FF)V

    goto :goto_0

    .line 325
    :cond_1
    iget-object v0, p0, Lcom/airbnb/android/react/maps/AirMapMarker;->marker:Lcom/google/android/gms/maps/model/Marker;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v3, v1}, Lcom/google/android/gms/maps/model/Marker;->setAnchor(FF)V

    goto :goto_1

    .line 331
    :cond_2
    iget-object v0, p0, Lcom/airbnb/android/react/maps/AirMapMarker;->marker:Lcom/google/android/gms/maps/model/Marker;

    const/4 v1, 0x0

    invoke-virtual {v0, v3, v1}, Lcom/google/android/gms/maps/model/Marker;->setInfoWindowAnchor(FF)V

    goto :goto_0
.end method

.method public update(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 336
    iput p1, p0, Lcom/airbnb/android/react/maps/AirMapMarker;->width:I

    .line 337
    iput p2, p0, Lcom/airbnb/android/react/maps/AirMapMarker;->height:I

    .line 338
    invoke-virtual {p0}, Lcom/airbnb/android/react/maps/AirMapMarker;->update()V

    .line 339
    return-void
.end method
