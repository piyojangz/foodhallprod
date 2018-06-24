.class public Lcom/yalantis/ucrop/view/CropImageView;
.super Lcom/yalantis/ucrop/view/TransformImageView;
.source "CropImageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yalantis/ucrop/view/CropImageView$ZoomImageToPosition;,
        Lcom/yalantis/ucrop/view/CropImageView$WrapCropBoundsRunnable;
    }
.end annotation


# static fields
.field public static final DEFAULT_ASPECT_RATIO:F = 0.0f

.field public static final DEFAULT_IMAGE_TO_CROP_BOUNDS_ANIM_DURATION:I = 0x1f4

.field public static final DEFAULT_MAX_BITMAP_SIZE:I = 0x0

.field public static final DEFAULT_MAX_SCALE_MULTIPLIER:F = 10.0f

.field public static final SOURCE_IMAGE_ASPECT_RATIO:F


# instance fields
.field private mCropBoundsChangeListener:Lcom/yalantis/ucrop/callback/CropBoundsChangeListener;

.field private final mCropRect:Landroid/graphics/RectF;

.field private mImageToWrapCropBoundsAnimDuration:J

.field private mMaxResultImageSizeX:I

.field private mMaxResultImageSizeY:I

.field private mMaxScale:F

.field private mMaxScaleMultiplier:F

.field private mMinScale:F

.field private mTargetAspectRatio:F

.field private final mTempMatrix:Landroid/graphics/Matrix;

.field private mWrapCropBoundsRunnable:Ljava/lang/Runnable;

.field private mZoomImageToPositionRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 56
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/yalantis/ucrop/view/CropImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 60
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/yalantis/ucrop/view/CropImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    .line 64
    invoke-direct {p0, p1, p2, p3}, Lcom/yalantis/ucrop/view/TransformImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/yalantis/ucrop/view/CropImageView;->mCropRect:Landroid/graphics/RectF;

    .line 42
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/yalantis/ucrop/view/CropImageView;->mTempMatrix:Landroid/graphics/Matrix;

    .line 45
    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lcom/yalantis/ucrop/view/CropImageView;->mMaxScaleMultiplier:F

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yalantis/ucrop/view/CropImageView;->mZoomImageToPositionRunnable:Ljava/lang/Runnable;

    .line 52
    iput v1, p0, Lcom/yalantis/ucrop/view/CropImageView;->mMaxResultImageSizeX:I

    iput v1, p0, Lcom/yalantis/ucrop/view/CropImageView;->mMaxResultImageSizeY:I

    .line 53
    const-wide/16 v0, 0x1f4

    iput-wide v0, p0, Lcom/yalantis/ucrop/view/CropImageView;->mImageToWrapCropBoundsAnimDuration:J

    .line 65
    return-void
.end method

.method static synthetic access$000(Lcom/yalantis/ucrop/view/CropImageView;)Landroid/graphics/RectF;
    .locals 1
    .param p0, "x0"    # Lcom/yalantis/ucrop/view/CropImageView;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/yalantis/ucrop/view/CropImageView;->mCropRect:Landroid/graphics/RectF;

    return-object v0
.end method

.method private calculateImageIndents()[F
    .locals 12

    .prologue
    const/4 v9, 0x0

    .line 332
    iget-object v10, p0, Lcom/yalantis/ucrop/view/CropImageView;->mTempMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v10}, Landroid/graphics/Matrix;->reset()V

    .line 333
    iget-object v10, p0, Lcom/yalantis/ucrop/view/CropImageView;->mTempMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/CropImageView;->getCurrentAngle()F

    move-result v11

    neg-float v11, v11

    invoke-virtual {v10, v11}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 335
    iget-object v10, p0, Lcom/yalantis/ucrop/view/CropImageView;->mCurrentImageCorners:[F

    iget-object v11, p0, Lcom/yalantis/ucrop/view/CropImageView;->mCurrentImageCorners:[F

    array-length v11, v11

    invoke-static {v10, v11}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v7

    .line 336
    .local v7, "unrotatedImageCorners":[F
    iget-object v10, p0, Lcom/yalantis/ucrop/view/CropImageView;->mCropRect:Landroid/graphics/RectF;

    invoke-static {v10}, Lcom/yalantis/ucrop/util/RectUtils;->getCornersFromRect(Landroid/graphics/RectF;)[F

    move-result-object v5

    .line 338
    .local v5, "unrotatedCropBoundsCorners":[F
    iget-object v10, p0, Lcom/yalantis/ucrop/view/CropImageView;->mTempMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v10, v7}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 339
    iget-object v10, p0, Lcom/yalantis/ucrop/view/CropImageView;->mTempMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v10, v5}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 341
    invoke-static {v7}, Lcom/yalantis/ucrop/util/RectUtils;->trapToRect([F)Landroid/graphics/RectF;

    move-result-object v8

    .line 342
    .local v8, "unrotatedImageRect":Landroid/graphics/RectF;
    invoke-static {v5}, Lcom/yalantis/ucrop/util/RectUtils;->trapToRect([F)Landroid/graphics/RectF;

    move-result-object v6

    .line 344
    .local v6, "unrotatedCropRect":Landroid/graphics/RectF;
    iget v10, v8, Landroid/graphics/RectF;->left:F

    iget v11, v6, Landroid/graphics/RectF;->left:F

    sub-float v1, v10, v11

    .line 345
    .local v1, "deltaLeft":F
    iget v10, v8, Landroid/graphics/RectF;->top:F

    iget v11, v6, Landroid/graphics/RectF;->top:F

    sub-float v3, v10, v11

    .line 346
    .local v3, "deltaTop":F
    iget v10, v8, Landroid/graphics/RectF;->right:F

    iget v11, v6, Landroid/graphics/RectF;->right:F

    sub-float v2, v10, v11

    .line 347
    .local v2, "deltaRight":F
    iget v10, v8, Landroid/graphics/RectF;->bottom:F

    iget v11, v6, Landroid/graphics/RectF;->bottom:F

    sub-float v0, v10, v11

    .line 349
    .local v0, "deltaBottom":F
    const/4 v10, 0x4

    new-array v4, v10, [F

    .line 350
    .local v4, "indents":[F
    const/4 v10, 0x0

    cmpl-float v11, v1, v9

    if-lez v11, :cond_0

    .end local v1    # "deltaLeft":F
    :goto_0
    aput v1, v4, v10

    .line 351
    const/4 v10, 0x1

    cmpl-float v11, v3, v9

    if-lez v11, :cond_1

    .end local v3    # "deltaTop":F
    :goto_1
    aput v3, v4, v10

    .line 352
    const/4 v10, 0x2

    cmpg-float v11, v2, v9

    if-gez v11, :cond_2

    .end local v2    # "deltaRight":F
    :goto_2
    aput v2, v4, v10

    .line 353
    const/4 v10, 0x3

    cmpg-float v11, v0, v9

    if-gez v11, :cond_3

    .end local v0    # "deltaBottom":F
    :goto_3
    aput v0, v4, v10

    .line 355
    iget-object v9, p0, Lcom/yalantis/ucrop/view/CropImageView;->mTempMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v9}, Landroid/graphics/Matrix;->reset()V

    .line 356
    iget-object v9, p0, Lcom/yalantis/ucrop/view/CropImageView;->mTempMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/CropImageView;->getCurrentAngle()F

    move-result v10

    invoke-virtual {v9, v10}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 357
    iget-object v9, p0, Lcom/yalantis/ucrop/view/CropImageView;->mTempMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v9, v4}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 359
    return-object v4

    .restart local v0    # "deltaBottom":F
    .restart local v1    # "deltaLeft":F
    .restart local v2    # "deltaRight":F
    .restart local v3    # "deltaTop":F
    :cond_0
    move v1, v9

    .line 350
    goto :goto_0

    .end local v1    # "deltaLeft":F
    :cond_1
    move v3, v9

    .line 351
    goto :goto_1

    .end local v3    # "deltaTop":F
    :cond_2
    move v2, v9

    .line 352
    goto :goto_2

    .end local v2    # "deltaRight":F
    :cond_3
    move v0, v9

    .line 353
    goto :goto_3
.end method

.method private calculateImageScaleBounds()V
    .locals 3

    .prologue
    .line 450
    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/CropImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 451
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_0

    .line 455
    :goto_0
    return-void

    .line 454
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-direct {p0, v1, v2}, Lcom/yalantis/ucrop/view/CropImageView;->calculateImageScaleBounds(FF)V

    goto :goto_0
.end method

.method private calculateImageScaleBounds(FF)V
    .locals 4
    .param p1, "drawableWidth"    # F
    .param p2, "drawableHeight"    # F

    .prologue
    .line 464
    iget-object v2, p0, Lcom/yalantis/ucrop/view/CropImageView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    div-float/2addr v2, p1

    iget-object v3, p0, Lcom/yalantis/ucrop/view/CropImageView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    div-float/2addr v3, p2

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 465
    .local v1, "widthScale":F
    iget-object v2, p0, Lcom/yalantis/ucrop/view/CropImageView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    div-float/2addr v2, p2

    iget-object v3, p0, Lcom/yalantis/ucrop/view/CropImageView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    div-float/2addr v3, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 467
    .local v0, "heightScale":F
    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iput v2, p0, Lcom/yalantis/ucrop/view/CropImageView;->mMinScale:F

    .line 468
    iget v2, p0, Lcom/yalantis/ucrop/view/CropImageView;->mMinScale:F

    iget v3, p0, Lcom/yalantis/ucrop/view/CropImageView;->mMaxScaleMultiplier:F

    mul-float/2addr v2, v3

    iput v2, p0, Lcom/yalantis/ucrop/view/CropImageView;->mMaxScale:F

    .line 469
    return-void
.end method

.method private setupInitialImagePosition(FF)V
    .locals 10
    .param p1, "drawableWidth"    # F
    .param p2, "drawableHeight"    # F

    .prologue
    const/high16 v9, 0x40000000    # 2.0f

    .line 479
    iget-object v7, p0, Lcom/yalantis/ucrop/view/CropImageView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v1

    .line 480
    .local v1, "cropRectWidth":F
    iget-object v7, p0, Lcom/yalantis/ucrop/view/CropImageView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v0

    .line 482
    .local v0, "cropRectHeight":F
    iget-object v7, p0, Lcom/yalantis/ucrop/view/CropImageView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v7

    div-float v6, v7, p1

    .line 483
    .local v6, "widthScale":F
    iget-object v7, p0, Lcom/yalantis/ucrop/view/CropImageView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v7

    div-float v2, v7, p2

    .line 485
    .local v2, "heightScale":F
    invoke-static {v6, v2}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 487
    .local v3, "initialMinScale":F
    mul-float v7, p1, v3

    sub-float v7, v1, v7

    div-float/2addr v7, v9

    iget-object v8, p0, Lcom/yalantis/ucrop/view/CropImageView;->mCropRect:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->left:F

    add-float v5, v7, v8

    .line 488
    .local v5, "tw":F
    mul-float v7, p2, v3

    sub-float v7, v0, v7

    div-float/2addr v7, v9

    iget-object v8, p0, Lcom/yalantis/ucrop/view/CropImageView;->mCropRect:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->top:F

    add-float v4, v7, v8

    .line 490
    .local v4, "th":F
    iget-object v7, p0, Lcom/yalantis/ucrop/view/CropImageView;->mCurrentImageMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v7}, Landroid/graphics/Matrix;->reset()V

    .line 491
    iget-object v7, p0, Lcom/yalantis/ucrop/view/CropImageView;->mCurrentImageMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v7, v3, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 492
    iget-object v7, p0, Lcom/yalantis/ucrop/view/CropImageView;->mCurrentImageMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v7, v5, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 493
    iget-object v7, p0, Lcom/yalantis/ucrop/view/CropImageView;->mCurrentImageMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v7}, Lcom/yalantis/ucrop/view/CropImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 494
    return-void
.end method


# virtual methods
.method public cancelAllAnimations()V
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/yalantis/ucrop/view/CropImageView;->mWrapCropBoundsRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/yalantis/ucrop/view/CropImageView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 259
    iget-object v0, p0, Lcom/yalantis/ucrop/view/CropImageView;->mZoomImageToPositionRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/yalantis/ucrop/view/CropImageView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 260
    return-void
.end method

.method public cropAndSaveImage(Landroid/graphics/Bitmap$CompressFormat;ILcom/yalantis/ucrop/callback/BitmapCropCallback;)V
    .locals 10
    .param p1, "compressFormat"    # Landroid/graphics/Bitmap$CompressFormat;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "compressQuality"    # I
    .param p3, "cropCallback"    # Lcom/yalantis/ucrop/callback/BitmapCropCallback;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v9, 0x0

    .line 73
    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/CropImageView;->cancelAllAnimations()V

    .line 74
    invoke-virtual {p0, v9}, Lcom/yalantis/ucrop/view/CropImageView;->setImageToWrapCropBounds(Z)V

    .line 76
    new-instance v8, Lcom/yalantis/ucrop/model/ImageState;

    iget-object v1, p0, Lcom/yalantis/ucrop/view/CropImageView;->mCropRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/yalantis/ucrop/view/CropImageView;->mCurrentImageCorners:[F

    .line 77
    invoke-static {v2}, Lcom/yalantis/ucrop/util/RectUtils;->trapToRect([F)Landroid/graphics/RectF;

    move-result-object v2

    .line 78
    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/CropImageView;->getCurrentScale()F

    move-result v3

    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/CropImageView;->getCurrentAngle()F

    move-result v4

    invoke-direct {v8, v1, v2, v3, v4}, Lcom/yalantis/ucrop/model/ImageState;-><init>(Landroid/graphics/RectF;Landroid/graphics/RectF;FF)V

    .line 80
    .local v8, "imageState":Lcom/yalantis/ucrop/model/ImageState;
    new-instance v0, Lcom/yalantis/ucrop/model/CropParameters;

    iget v1, p0, Lcom/yalantis/ucrop/view/CropImageView;->mMaxResultImageSizeX:I

    iget v2, p0, Lcom/yalantis/ucrop/view/CropImageView;->mMaxResultImageSizeY:I

    .line 83
    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/CropImageView;->getImageInputPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/CropImageView;->getImageOutputPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/CropImageView;->getExifInfo()Lcom/yalantis/ucrop/model/ExifInfo;

    move-result-object v7

    move-object v3, p1

    move v4, p2

    invoke-direct/range {v0 .. v7}, Lcom/yalantis/ucrop/model/CropParameters;-><init>(IILandroid/graphics/Bitmap$CompressFormat;ILjava/lang/String;Ljava/lang/String;Lcom/yalantis/ucrop/model/ExifInfo;)V

    .line 85
    .local v0, "cropParameters":Lcom/yalantis/ucrop/model/CropParameters;
    new-instance v1, Lcom/yalantis/ucrop/task/BitmapCropTask;

    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/CropImageView;->getViewBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v1, v2, v8, v0, p3}, Lcom/yalantis/ucrop/task/BitmapCropTask;-><init>(Landroid/graphics/Bitmap;Lcom/yalantis/ucrop/model/ImageState;Lcom/yalantis/ucrop/model/CropParameters;Lcom/yalantis/ucrop/callback/BitmapCropCallback;)V

    new-array v2, v9, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/yalantis/ucrop/task/BitmapCropTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 86
    return-void
.end method

.method public getCropBoundsChangeListener()Lcom/yalantis/ucrop/callback/CropBoundsChangeListener;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 150
    iget-object v0, p0, Lcom/yalantis/ucrop/view/CropImageView;->mCropBoundsChangeListener:Lcom/yalantis/ucrop/callback/CropBoundsChangeListener;

    return-object v0
.end method

.method public getMaxScale()F
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lcom/yalantis/ucrop/view/CropImageView;->mMaxScale:F

    return v0
.end method

.method public getMinScale()F
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Lcom/yalantis/ucrop/view/CropImageView;->mMinScale:F

    return v0
.end method

.method public getTargetAspectRatio()F
    .locals 1

    .prologue
    .line 106
    iget v0, p0, Lcom/yalantis/ucrop/view/CropImageView;->mTargetAspectRatio:F

    return v0
.end method

.method protected isImageWrapCropBounds()Z
    .locals 1

    .prologue
    .line 406
    iget-object v0, p0, Lcom/yalantis/ucrop/view/CropImageView;->mCurrentImageCorners:[F

    invoke-virtual {p0, v0}, Lcom/yalantis/ucrop/view/CropImageView;->isImageWrapCropBounds([F)Z

    move-result v0

    return v0
.end method

.method protected isImageWrapCropBounds([F)Z
    .locals 4
    .param p1, "imageCorners"    # [F

    .prologue
    .line 417
    iget-object v2, p0, Lcom/yalantis/ucrop/view/CropImageView;->mTempMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    .line 418
    iget-object v2, p0, Lcom/yalantis/ucrop/view/CropImageView;->mTempMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/CropImageView;->getCurrentAngle()F

    move-result v3

    neg-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 420
    array-length v2, p1

    invoke-static {p1, v2}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v1

    .line 421
    .local v1, "unrotatedImageCorners":[F
    iget-object v2, p0, Lcom/yalantis/ucrop/view/CropImageView;->mTempMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 423
    iget-object v2, p0, Lcom/yalantis/ucrop/view/CropImageView;->mCropRect:Landroid/graphics/RectF;

    invoke-static {v2}, Lcom/yalantis/ucrop/util/RectUtils;->getCornersFromRect(Landroid/graphics/RectF;)[F

    move-result-object v0

    .line 424
    .local v0, "unrotatedCropBoundsCorners":[F
    iget-object v2, p0, Lcom/yalantis/ucrop/view/CropImageView;->mTempMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 426
    invoke-static {v1}, Lcom/yalantis/ucrop/util/RectUtils;->trapToRect([F)Landroid/graphics/RectF;

    move-result-object v2

    invoke-static {v0}, Lcom/yalantis/ucrop/util/RectUtils;->trapToRect([F)Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/RectF;->contains(Landroid/graphics/RectF;)Z

    move-result v2

    return v2
.end method

.method protected onImageLaidOut()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 367
    invoke-super {p0}, Lcom/yalantis/ucrop/view/TransformImageView;->onImageLaidOut()V

    .line 368
    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/CropImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 369
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_1

    .line 400
    :cond_0
    :goto_0
    return-void

    .line 373
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    int-to-float v2, v6

    .line 374
    .local v2, "drawableWidth":F
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    int-to-float v1, v6

    .line 376
    .local v1, "drawableHeight":F
    iget v6, p0, Lcom/yalantis/ucrop/view/CropImageView;->mTargetAspectRatio:F

    cmpl-float v6, v6, v10

    if-nez v6, :cond_2

    .line 377
    div-float v6, v2, v1

    iput v6, p0, Lcom/yalantis/ucrop/view/CropImageView;->mTargetAspectRatio:F

    .line 380
    :cond_2
    iget v6, p0, Lcom/yalantis/ucrop/view/CropImageView;->mThisWidth:I

    int-to-float v6, v6

    iget v7, p0, Lcom/yalantis/ucrop/view/CropImageView;->mTargetAspectRatio:F

    div-float/2addr v6, v7

    float-to-int v4, v6

    .line 381
    .local v4, "height":I
    iget v6, p0, Lcom/yalantis/ucrop/view/CropImageView;->mThisHeight:I

    if-le v4, v6, :cond_4

    .line 382
    iget v6, p0, Lcom/yalantis/ucrop/view/CropImageView;->mThisHeight:I

    int-to-float v6, v6

    iget v7, p0, Lcom/yalantis/ucrop/view/CropImageView;->mTargetAspectRatio:F

    mul-float/2addr v6, v7

    float-to-int v5, v6

    .line 383
    .local v5, "width":I
    iget v6, p0, Lcom/yalantis/ucrop/view/CropImageView;->mThisWidth:I

    sub-int/2addr v6, v5

    div-int/lit8 v3, v6, 0x2

    .line 384
    .local v3, "halfDiff":I
    iget-object v6, p0, Lcom/yalantis/ucrop/view/CropImageView;->mCropRect:Landroid/graphics/RectF;

    int-to-float v7, v3

    add-int v8, v5, v3

    int-to-float v8, v8

    iget v9, p0, Lcom/yalantis/ucrop/view/CropImageView;->mThisHeight:I

    int-to-float v9, v9

    invoke-virtual {v6, v7, v10, v8, v9}, Landroid/graphics/RectF;->set(FFFF)V

    .line 390
    .end local v5    # "width":I
    :goto_1
    invoke-direct {p0, v2, v1}, Lcom/yalantis/ucrop/view/CropImageView;->calculateImageScaleBounds(FF)V

    .line 391
    invoke-direct {p0, v2, v1}, Lcom/yalantis/ucrop/view/CropImageView;->setupInitialImagePosition(FF)V

    .line 393
    iget-object v6, p0, Lcom/yalantis/ucrop/view/CropImageView;->mCropBoundsChangeListener:Lcom/yalantis/ucrop/callback/CropBoundsChangeListener;

    if-eqz v6, :cond_3

    .line 394
    iget-object v6, p0, Lcom/yalantis/ucrop/view/CropImageView;->mCropBoundsChangeListener:Lcom/yalantis/ucrop/callback/CropBoundsChangeListener;

    iget v7, p0, Lcom/yalantis/ucrop/view/CropImageView;->mTargetAspectRatio:F

    invoke-interface {v6, v7}, Lcom/yalantis/ucrop/callback/CropBoundsChangeListener;->onCropAspectRatioChanged(F)V

    .line 396
    :cond_3
    iget-object v6, p0, Lcom/yalantis/ucrop/view/CropImageView;->mTransformImageListener:Lcom/yalantis/ucrop/view/TransformImageView$TransformImageListener;

    if-eqz v6, :cond_0

    .line 397
    iget-object v6, p0, Lcom/yalantis/ucrop/view/CropImageView;->mTransformImageListener:Lcom/yalantis/ucrop/view/TransformImageView$TransformImageListener;

    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/CropImageView;->getCurrentScale()F

    move-result v7

    invoke-interface {v6, v7}, Lcom/yalantis/ucrop/view/TransformImageView$TransformImageListener;->onScale(F)V

    .line 398
    iget-object v6, p0, Lcom/yalantis/ucrop/view/CropImageView;->mTransformImageListener:Lcom/yalantis/ucrop/view/TransformImageView$TransformImageListener;

    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/CropImageView;->getCurrentAngle()F

    move-result v7

    invoke-interface {v6, v7}, Lcom/yalantis/ucrop/view/TransformImageView$TransformImageListener;->onRotate(F)V

    goto :goto_0

    .line 386
    .end local v3    # "halfDiff":I
    :cond_4
    iget v6, p0, Lcom/yalantis/ucrop/view/CropImageView;->mThisHeight:I

    sub-int/2addr v6, v4

    div-int/lit8 v3, v6, 0x2

    .line 387
    .restart local v3    # "halfDiff":I
    iget-object v6, p0, Lcom/yalantis/ucrop/view/CropImageView;->mCropRect:Landroid/graphics/RectF;

    int-to-float v7, v3

    iget v8, p0, Lcom/yalantis/ucrop/view/CropImageView;->mThisWidth:I

    int-to-float v8, v8

    add-int v9, v4, v3

    int-to-float v9, v9

    invoke-virtual {v6, v10, v7, v8, v9}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_1
.end method

.method public postRotate(F)V
    .locals 2
    .param p1, "deltaAngle"    # F

    .prologue
    .line 251
    iget-object v0, p0, Lcom/yalantis/ucrop/view/CropImageView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget-object v1, p0, Lcom/yalantis/ucrop/view/CropImageView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/yalantis/ucrop/view/CropImageView;->postRotate(FFF)V

    .line 252
    return-void
.end method

.method public postScale(FFF)V
    .locals 3
    .param p1, "deltaScale"    # F
    .param p2, "px"    # F
    .param p3, "py"    # F

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 238
    cmpl-float v0, p1, v2

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/CropImageView;->getCurrentScale()F

    move-result v0

    mul-float/2addr v0, p1

    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/CropImageView;->getMaxScale()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    .line 239
    invoke-super {p0, p1, p2, p3}, Lcom/yalantis/ucrop/view/TransformImageView;->postScale(FFF)V

    .line 243
    :cond_0
    :goto_0
    return-void

    .line 240
    :cond_1
    cmpg-float v0, p1, v2

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/CropImageView;->getCurrentScale()F

    move-result v0

    mul-float/2addr v0, p1

    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/CropImageView;->getMinScale()F

    move-result v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    .line 241
    invoke-super {p0, p1, p2, p3}, Lcom/yalantis/ucrop/view/TransformImageView;->postScale(FFF)V

    goto :goto_0
.end method

.method protected processStyledAttributes(Landroid/content/res/TypedArray;)V
    .locals 4
    .param p1, "a"    # Landroid/content/res/TypedArray;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x0

    .line 502
    sget v2, Lcom/yalantis/ucrop/R$styleable;->ucrop_UCropView_ucrop_aspect_ratio_x:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 503
    .local v0, "targetAspectRatioX":F
    sget v2, Lcom/yalantis/ucrop/R$styleable;->ucrop_UCropView_ucrop_aspect_ratio_y:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 505
    .local v1, "targetAspectRatioY":F
    cmpl-float v2, v0, v3

    if-eqz v2, :cond_0

    cmpl-float v2, v1, v3

    if-nez v2, :cond_1

    .line 506
    :cond_0
    iput v3, p0, Lcom/yalantis/ucrop/view/CropImageView;->mTargetAspectRatio:F

    .line 510
    :goto_0
    return-void

    .line 508
    :cond_1
    div-float v2, v0, v1

    iput v2, p0, Lcom/yalantis/ucrop/view/CropImageView;->mTargetAspectRatio:F

    goto :goto_0
.end method

.method public setCropBoundsChangeListener(Lcom/yalantis/ucrop/callback/CropBoundsChangeListener;)V
    .locals 0
    .param p1, "cropBoundsChangeListener"    # Lcom/yalantis/ucrop/callback/CropBoundsChangeListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 154
    iput-object p1, p0, Lcom/yalantis/ucrop/view/CropImageView;->mCropBoundsChangeListener:Lcom/yalantis/ucrop/callback/CropBoundsChangeListener;

    .line 155
    return-void
.end method

.method public setCropRect(Landroid/graphics/RectF;)V
    .locals 6
    .param p1, "cropRect"    # Landroid/graphics/RectF;

    .prologue
    .line 116
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/yalantis/ucrop/view/CropImageView;->mTargetAspectRatio:F

    .line 117
    iget-object v0, p0, Lcom/yalantis/ucrop/view/CropImageView;->mCropRect:Landroid/graphics/RectF;

    iget v1, p1, Landroid/graphics/RectF;->left:F

    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/CropImageView;->getPaddingLeft()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, p1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/CropImageView;->getPaddingTop()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget v3, p1, Landroid/graphics/RectF;->right:F

    .line 118
    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/CropImageView;->getPaddingRight()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/CropImageView;->getPaddingBottom()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v4, v5

    .line 117
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 119
    invoke-direct {p0}, Lcom/yalantis/ucrop/view/CropImageView;->calculateImageScaleBounds()V

    .line 120
    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/CropImageView;->setImageToWrapCropBounds()V

    .line 121
    return-void
.end method

.method public setImageToWrapCropBounds()V
    .locals 1

    .prologue
    .line 263
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yalantis/ucrop/view/CropImageView;->setImageToWrapCropBounds(Z)V

    .line 264
    return-void
.end method

.method public setImageToWrapCropBounds(Z)V
    .locals 15
    .param p1, "animate"    # Z

    .prologue
    .line 275
    iget-boolean v0, p0, Lcom/yalantis/ucrop/view/CropImageView;->mBitmapLaidOut:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/CropImageView;->isImageWrapCropBounds()Z

    move-result v0

    if-nez v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/yalantis/ucrop/view/CropImageView;->mCurrentImageCenter:[F

    const/4 v1, 0x0

    aget v4, v0, v1

    .line 278
    .local v4, "currentX":F
    iget-object v0, p0, Lcom/yalantis/ucrop/view/CropImageView;->mCurrentImageCenter:[F

    const/4 v1, 0x1

    aget v5, v0, v1

    .line 279
    .local v5, "currentY":F
    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/CropImageView;->getCurrentScale()F

    move-result v8

    .line 281
    .local v8, "currentScale":F
    iget-object v0, p0, Lcom/yalantis/ucrop/view/CropImageView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    sub-float v6, v0, v4

    .line 282
    .local v6, "deltaX":F
    iget-object v0, p0, Lcom/yalantis/ucrop/view/CropImageView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    sub-float v7, v0, v5

    .line 283
    .local v7, "deltaY":F
    const/4 v9, 0x0

    .line 285
    .local v9, "deltaScale":F
    iget-object v0, p0, Lcom/yalantis/ucrop/view/CropImageView;->mTempMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 286
    iget-object v0, p0, Lcom/yalantis/ucrop/view/CropImageView;->mTempMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v6, v7}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 288
    iget-object v0, p0, Lcom/yalantis/ucrop/view/CropImageView;->mCurrentImageCorners:[F

    iget-object v1, p0, Lcom/yalantis/ucrop/view/CropImageView;->mCurrentImageCorners:[F

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v14

    .line 289
    .local v14, "tempCurrentImageCorners":[F
    iget-object v0, p0, Lcom/yalantis/ucrop/view/CropImageView;->mTempMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v14}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 291
    invoke-virtual {p0, v14}, Lcom/yalantis/ucrop/view/CropImageView;->isImageWrapCropBounds([F)Z

    move-result v10

    .line 293
    .local v10, "willImageWrapCropBoundsAfterTranslate":Z
    if-eqz v10, :cond_1

    .line 294
    invoke-direct {p0}, Lcom/yalantis/ucrop/view/CropImageView;->calculateImageIndents()[F

    move-result-object v12

    .line 295
    .local v12, "imageIndents":[F
    const/4 v0, 0x0

    aget v0, v12, v0

    const/4 v1, 0x2

    aget v1, v12, v1

    add-float/2addr v0, v1

    neg-float v6, v0

    .line 296
    const/4 v0, 0x1

    aget v0, v12, v0

    const/4 v1, 0x3

    aget v1, v12, v1

    add-float/2addr v0, v1

    neg-float v7, v0

    .line 310
    .end local v12    # "imageIndents":[F
    :goto_0
    if-eqz p1, :cond_2

    .line 311
    new-instance v0, Lcom/yalantis/ucrop/view/CropImageView$WrapCropBoundsRunnable;

    iget-wide v2, p0, Lcom/yalantis/ucrop/view/CropImageView;->mImageToWrapCropBoundsAnimDuration:J

    move-object v1, p0

    invoke-direct/range {v0 .. v10}, Lcom/yalantis/ucrop/view/CropImageView$WrapCropBoundsRunnable;-><init>(Lcom/yalantis/ucrop/view/CropImageView;JFFFFFFZ)V

    iput-object v0, p0, Lcom/yalantis/ucrop/view/CropImageView;->mWrapCropBoundsRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/yalantis/ucrop/view/CropImageView;->post(Ljava/lang/Runnable;)Z

    .line 321
    .end local v4    # "currentX":F
    .end local v5    # "currentY":F
    .end local v6    # "deltaX":F
    .end local v7    # "deltaY":F
    .end local v8    # "currentScale":F
    .end local v9    # "deltaScale":F
    .end local v10    # "willImageWrapCropBoundsAfterTranslate":Z
    .end local v14    # "tempCurrentImageCorners":[F
    :cond_0
    :goto_1
    return-void

    .line 298
    .restart local v4    # "currentX":F
    .restart local v5    # "currentY":F
    .restart local v6    # "deltaX":F
    .restart local v7    # "deltaY":F
    .restart local v8    # "currentScale":F
    .restart local v9    # "deltaScale":F
    .restart local v10    # "willImageWrapCropBoundsAfterTranslate":Z
    .restart local v14    # "tempCurrentImageCorners":[F
    :cond_1
    new-instance v13, Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/yalantis/ucrop/view/CropImageView;->mCropRect:Landroid/graphics/RectF;

    invoke-direct {v13, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 299
    .local v13, "tempCropRect":Landroid/graphics/RectF;
    iget-object v0, p0, Lcom/yalantis/ucrop/view/CropImageView;->mTempMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 300
    iget-object v0, p0, Lcom/yalantis/ucrop/view/CropImageView;->mTempMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/CropImageView;->getCurrentAngle()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 301
    iget-object v0, p0, Lcom/yalantis/ucrop/view/CropImageView;->mTempMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v13}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 303
    iget-object v0, p0, Lcom/yalantis/ucrop/view/CropImageView;->mCurrentImageCorners:[F

    invoke-static {v0}, Lcom/yalantis/ucrop/util/RectUtils;->getRectSidesFromCorners([F)[F

    move-result-object v11

    .line 305
    .local v11, "currentImageSides":[F
    invoke-virtual {v13}, Landroid/graphics/RectF;->width()F

    move-result v0

    const/4 v1, 0x0

    aget v1, v11, v1

    div-float/2addr v0, v1

    .line 306
    invoke-virtual {v13}, Landroid/graphics/RectF;->height()F

    move-result v1

    const/4 v2, 0x1

    aget v2, v11, v2

    div-float/2addr v1, v2

    .line 305
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v9

    .line 307
    mul-float v0, v9, v8

    sub-float v9, v0, v8

    goto :goto_0

    .line 315
    .end local v11    # "currentImageSides":[F
    .end local v13    # "tempCropRect":Landroid/graphics/RectF;
    :cond_2
    invoke-virtual {p0, v6, v7}, Lcom/yalantis/ucrop/view/CropImageView;->postTranslate(FF)V

    .line 316
    if-nez v10, :cond_0

    .line 317
    add-float v0, v8, v9

    iget-object v1, p0, Lcom/yalantis/ucrop/view/CropImageView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget-object v2, p0, Lcom/yalantis/ucrop/view/CropImageView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/yalantis/ucrop/view/CropImageView;->zoomInImage(FFF)V

    goto :goto_1
.end method

.method public setImageToWrapCropBoundsAnimDuration(J)V
    .locals 3
    .param p1, "imageToWrapCropBoundsAnimDuration"    # J
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x64L
        .end annotation
    .end param

    .prologue
    .line 181
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 182
    iput-wide p1, p0, Lcom/yalantis/ucrop/view/CropImageView;->mImageToWrapCropBoundsAnimDuration:J

    .line 186
    return-void

    .line 184
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Animation duration cannot be negative value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setMaxResultImageSizeX(I)V
    .locals 0
    .param p1, "maxResultImageSizeX"    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0xaL
        .end annotation
    .end param

    .prologue
    .line 163
    iput p1, p0, Lcom/yalantis/ucrop/view/CropImageView;->mMaxResultImageSizeX:I

    .line 164
    return-void
.end method

.method public setMaxResultImageSizeY(I)V
    .locals 0
    .param p1, "maxResultImageSizeY"    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0xaL
        .end annotation
    .end param

    .prologue
    .line 172
    iput p1, p0, Lcom/yalantis/ucrop/view/CropImageView;->mMaxResultImageSizeY:I

    .line 173
    return-void
.end method

.method public setMaxScaleMultiplier(F)V
    .locals 0
    .param p1, "maxScaleMultiplier"    # F

    .prologue
    .line 194
    iput p1, p0, Lcom/yalantis/ucrop/view/CropImageView;->mMaxScaleMultiplier:F

    .line 195
    return-void
.end method

.method public setTargetAspectRatio(F)V
    .locals 3
    .param p1, "targetAspectRatio"    # F

    .prologue
    .line 131
    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/CropImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 132
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_1

    .line 133
    iput p1, p0, Lcom/yalantis/ucrop/view/CropImageView;->mTargetAspectRatio:F

    .line 146
    :cond_0
    :goto_0
    return-void

    .line 137
    :cond_1
    const/4 v1, 0x0

    cmpl-float v1, p1, v1

    if-nez v1, :cond_2

    .line 138
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, p0, Lcom/yalantis/ucrop/view/CropImageView;->mTargetAspectRatio:F

    .line 143
    :goto_1
    iget-object v1, p0, Lcom/yalantis/ucrop/view/CropImageView;->mCropBoundsChangeListener:Lcom/yalantis/ucrop/callback/CropBoundsChangeListener;

    if-eqz v1, :cond_0

    .line 144
    iget-object v1, p0, Lcom/yalantis/ucrop/view/CropImageView;->mCropBoundsChangeListener:Lcom/yalantis/ucrop/callback/CropBoundsChangeListener;

    iget v2, p0, Lcom/yalantis/ucrop/view/CropImageView;->mTargetAspectRatio:F

    invoke-interface {v1, v2}, Lcom/yalantis/ucrop/callback/CropBoundsChangeListener;->onCropAspectRatioChanged(F)V

    goto :goto_0

    .line 140
    :cond_2
    iput p1, p0, Lcom/yalantis/ucrop/view/CropImageView;->mTargetAspectRatio:F

    goto :goto_1
.end method

.method protected zoomImageToPosition(FFFJ)V
    .locals 8
    .param p1, "scale"    # F
    .param p2, "centerX"    # F
    .param p3, "centerY"    # F
    .param p4, "durationMs"    # J

    .prologue
    .line 438
    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/CropImageView;->getMaxScale()F

    move-result v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 439
    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/CropImageView;->getMaxScale()F

    move-result p1

    .line 442
    :cond_0
    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/CropImageView;->getCurrentScale()F

    move-result v4

    .line 443
    .local v4, "oldScale":F
    sub-float v5, p1, v4

    .line 445
    .local v5, "deltaScale":F
    new-instance v0, Lcom/yalantis/ucrop/view/CropImageView$ZoomImageToPosition;

    move-object v1, p0

    move-wide v2, p4

    move v6, p2

    move v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/yalantis/ucrop/view/CropImageView$ZoomImageToPosition;-><init>(Lcom/yalantis/ucrop/view/CropImageView;JFFFF)V

    iput-object v0, p0, Lcom/yalantis/ucrop/view/CropImageView;->mZoomImageToPositionRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/yalantis/ucrop/view/CropImageView;->post(Ljava/lang/Runnable;)Z

    .line 447
    return-void
.end method

.method public zoomInImage(F)V
    .locals 2
    .param p1, "deltaScale"    # F

    .prologue
    .line 217
    iget-object v0, p0, Lcom/yalantis/ucrop/view/CropImageView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget-object v1, p0, Lcom/yalantis/ucrop/view/CropImageView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/yalantis/ucrop/view/CropImageView;->zoomInImage(FFF)V

    .line 218
    return-void
.end method

.method public zoomInImage(FFF)V
    .locals 1
    .param p1, "scale"    # F
    .param p2, "centerX"    # F
    .param p3, "centerY"    # F

    .prologue
    .line 224
    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/CropImageView;->getMaxScale()F

    move-result v0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    .line 225
    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/CropImageView;->getCurrentScale()F

    move-result v0

    div-float v0, p1, v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/yalantis/ucrop/view/CropImageView;->postScale(FFF)V

    .line 227
    :cond_0
    return-void
.end method

.method public zoomOutImage(F)V
    .locals 2
    .param p1, "deltaScale"    # F

    .prologue
    .line 201
    iget-object v0, p0, Lcom/yalantis/ucrop/view/CropImageView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget-object v1, p0, Lcom/yalantis/ucrop/view/CropImageView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/yalantis/ucrop/view/CropImageView;->zoomOutImage(FFF)V

    .line 202
    return-void
.end method

.method public zoomOutImage(FFF)V
    .locals 1
    .param p1, "scale"    # F
    .param p2, "centerX"    # F
    .param p3, "centerY"    # F

    .prologue
    .line 208
    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/CropImageView;->getMinScale()F

    move-result v0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    .line 209
    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/CropImageView;->getCurrentScale()F

    move-result v0

    div-float v0, p1, v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/yalantis/ucrop/view/CropImageView;->postScale(FFF)V

    .line 211
    :cond_0
    return-void
.end method
