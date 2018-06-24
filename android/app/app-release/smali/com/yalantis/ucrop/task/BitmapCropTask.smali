.class public Lcom/yalantis/ucrop/task/BitmapCropTask;
.super Landroid/os/AsyncTask;
.source "BitmapCropTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BitmapCropTask"


# instance fields
.field private final mCompressFormat:Landroid/graphics/Bitmap$CompressFormat;

.field private final mCompressQuality:I

.field private final mCropCallback:Lcom/yalantis/ucrop/callback/BitmapCropCallback;

.field private final mCropRect:Landroid/graphics/RectF;

.field private mCroppedImageHeight:I

.field private mCroppedImageWidth:I

.field private mCurrentAngle:F

.field private final mCurrentImageRect:Landroid/graphics/RectF;

.field private mCurrentScale:F

.field private final mExifInfo:Lcom/yalantis/ucrop/model/ExifInfo;

.field private final mImageInputPath:Ljava/lang/String;

.field private final mImageOutputPath:Ljava/lang/String;

.field private final mMaxResultImageSizeX:I

.field private final mMaxResultImageSizeY:I

.field private mViewBitmap:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-string v0, "ucrop"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;Lcom/yalantis/ucrop/model/ImageState;Lcom/yalantis/ucrop/model/CropParameters;Lcom/yalantis/ucrop/callback/BitmapCropCallback;)V
    .locals 1
    .param p1, "viewBitmap"    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "imageState"    # Lcom/yalantis/ucrop/model/ImageState;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "cropParameters"    # Lcom/yalantis/ucrop/model/CropParameters;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "cropCallback"    # Lcom/yalantis/ucrop/callback/BitmapCropCallback;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 55
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/yalantis/ucrop/task/BitmapCropTask;->mViewBitmap:Landroid/graphics/Bitmap;

    .line 58
    invoke-virtual {p2}, Lcom/yalantis/ucrop/model/ImageState;->getCropRect()Landroid/graphics/RectF;

    move-result-object v0

    iput-object v0, p0, Lcom/yalantis/ucrop/task/BitmapCropTask;->mCropRect:Landroid/graphics/RectF;

    .line 59
    invoke-virtual {p2}, Lcom/yalantis/ucrop/model/ImageState;->getCurrentImageRect()Landroid/graphics/RectF;

    move-result-object v0

    iput-object v0, p0, Lcom/yalantis/ucrop/task/BitmapCropTask;->mCurrentImageRect:Landroid/graphics/RectF;

    .line 61
    invoke-virtual {p2}, Lcom/yalantis/ucrop/model/ImageState;->getCurrentScale()F

    move-result v0

    iput v0, p0, Lcom/yalantis/ucrop/task/BitmapCropTask;->mCurrentScale:F

    .line 62
    invoke-virtual {p2}, Lcom/yalantis/ucrop/model/ImageState;->getCurrentAngle()F

    move-result v0

    iput v0, p0, Lcom/yalantis/ucrop/task/BitmapCropTask;->mCurrentAngle:F

    .line 63
    invoke-virtual {p3}, Lcom/yalantis/ucrop/model/CropParameters;->getMaxResultImageSizeX()I

    move-result v0

    iput v0, p0, Lcom/yalantis/ucrop/task/BitmapCropTask;->mMaxResultImageSizeX:I

    .line 64
    invoke-virtual {p3}, Lcom/yalantis/ucrop/model/CropParameters;->getMaxResultImageSizeY()I

    move-result v0

    iput v0, p0, Lcom/yalantis/ucrop/task/BitmapCropTask;->mMaxResultImageSizeY:I

    .line 66
    invoke-virtual {p3}, Lcom/yalantis/ucrop/model/CropParameters;->getCompressFormat()Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/yalantis/ucrop/task/BitmapCropTask;->mCompressFormat:Landroid/graphics/Bitmap$CompressFormat;

    .line 67
    invoke-virtual {p3}, Lcom/yalantis/ucrop/model/CropParameters;->getCompressQuality()I

    move-result v0

    iput v0, p0, Lcom/yalantis/ucrop/task/BitmapCropTask;->mCompressQuality:I

    .line 69
    invoke-virtual {p3}, Lcom/yalantis/ucrop/model/CropParameters;->getImageInputPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yalantis/ucrop/task/BitmapCropTask;->mImageInputPath:Ljava/lang/String;

    .line 70
    invoke-virtual {p3}, Lcom/yalantis/ucrop/model/CropParameters;->getImageOutputPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yalantis/ucrop/task/BitmapCropTask;->mImageOutputPath:Ljava/lang/String;

    .line 71
    invoke-virtual {p3}, Lcom/yalantis/ucrop/model/CropParameters;->getExifInfo()Lcom/yalantis/ucrop/model/ExifInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/yalantis/ucrop/task/BitmapCropTask;->mExifInfo:Lcom/yalantis/ucrop/model/ExifInfo;

    .line 73
    iput-object p4, p0, Lcom/yalantis/ucrop/task/BitmapCropTask;->mCropCallback:Lcom/yalantis/ucrop/callback/BitmapCropCallback;

    .line 74
    return-void
.end method

.method private crop(F)Z
    .locals 17
    .param p1, "resizeScale"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 130
    new-instance v15, Landroid/media/ExifInterface;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/yalantis/ucrop/task/BitmapCropTask;->mImageInputPath:Ljava/lang/String;

    invoke-direct {v15, v1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 132
    .local v15, "originalExif":Landroid/media/ExifInterface;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/yalantis/ucrop/task/BitmapCropTask;->mCropRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yalantis/ucrop/task/BitmapCropTask;->mCurrentImageRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v1, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/yalantis/ucrop/task/BitmapCropTask;->mCurrentScale:F

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 133
    .local v5, "top":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/yalantis/ucrop/task/BitmapCropTask;->mCropRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yalantis/ucrop/task/BitmapCropTask;->mCurrentImageRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v1, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/yalantis/ucrop/task/BitmapCropTask;->mCurrentScale:F

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 134
    .local v4, "left":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/yalantis/ucrop/task/BitmapCropTask;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/yalantis/ucrop/task/BitmapCropTask;->mCurrentScale:F

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/yalantis/ucrop/task/BitmapCropTask;->mCroppedImageWidth:I

    .line 135
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/yalantis/ucrop/task/BitmapCropTask;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/yalantis/ucrop/task/BitmapCropTask;->mCurrentScale:F

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/yalantis/ucrop/task/BitmapCropTask;->mCroppedImageHeight:I

    .line 137
    move-object/from16 v0, p0

    iget v1, v0, Lcom/yalantis/ucrop/task/BitmapCropTask;->mCroppedImageWidth:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/yalantis/ucrop/task/BitmapCropTask;->mCroppedImageHeight:I

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, Lcom/yalantis/ucrop/task/BitmapCropTask;->shouldCrop(II)Z

    move-result v16

    .line 138
    .local v16, "shouldCrop":Z
    const-string v1, "BitmapCropTask"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Should crop: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    if-eqz v16, :cond_1

    .line 141
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yalantis/ucrop/task/BitmapCropTask;->mImageInputPath:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/yalantis/ucrop/task/BitmapCropTask;->mImageOutputPath:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/yalantis/ucrop/task/BitmapCropTask;->mCroppedImageWidth:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/yalantis/ucrop/task/BitmapCropTask;->mCroppedImageHeight:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/yalantis/ucrop/task/BitmapCropTask;->mCurrentAngle:F

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/yalantis/ucrop/task/BitmapCropTask;->mCompressFormat:Landroid/graphics/Bitmap$CompressFormat;

    .line 143
    invoke-virtual {v1}, Landroid/graphics/Bitmap$CompressFormat;->ordinal()I

    move-result v10

    move-object/from16 v0, p0

    iget v11, v0, Lcom/yalantis/ucrop/task/BitmapCropTask;->mCompressQuality:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/yalantis/ucrop/task/BitmapCropTask;->mExifInfo:Lcom/yalantis/ucrop/model/ExifInfo;

    .line 144
    invoke-virtual {v1}, Lcom/yalantis/ucrop/model/ExifInfo;->getExifDegrees()I

    move-result v12

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/yalantis/ucrop/task/BitmapCropTask;->mExifInfo:Lcom/yalantis/ucrop/model/ExifInfo;

    invoke-virtual {v1}, Lcom/yalantis/ucrop/model/ExifInfo;->getExifTranslation()I

    move-result v13

    move-object/from16 v1, p0

    move/from16 v9, p1

    .line 141
    invoke-virtual/range {v1 .. v13}, Lcom/yalantis/ucrop/task/BitmapCropTask;->cropCImg(Ljava/lang/String;Ljava/lang/String;IIIIFFIIII)Z

    move-result v14

    .line 145
    .local v14, "cropped":Z
    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/yalantis/ucrop/task/BitmapCropTask;->mCompressFormat:Landroid/graphics/Bitmap$CompressFormat;

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v1, v2}, Landroid/graphics/Bitmap$CompressFormat;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 146
    move-object/from16 v0, p0

    iget v1, v0, Lcom/yalantis/ucrop/task/BitmapCropTask;->mCroppedImageWidth:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/yalantis/ucrop/task/BitmapCropTask;->mCroppedImageHeight:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/yalantis/ucrop/task/BitmapCropTask;->mImageOutputPath:Ljava/lang/String;

    invoke-static {v15, v1, v2, v3}, Lcom/yalantis/ucrop/util/ImageHeaderParser;->copyExif(Landroid/media/ExifInterface;IILjava/lang/String;)V

    .line 151
    .end local v14    # "cropped":Z
    :cond_0
    :goto_0
    return v14

    .line 150
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/yalantis/ucrop/task/BitmapCropTask;->mImageInputPath:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yalantis/ucrop/task/BitmapCropTask;->mImageOutputPath:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/yalantis/ucrop/util/FileUtils;->copyFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    const/4 v14, 0x0

    goto :goto_0
.end method

.method private resize()F
    .locals 9

    .prologue
    const/4 v6, 0x1

    .line 100
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 101
    .local v2, "options":Landroid/graphics/BitmapFactory$Options;
    iput-boolean v6, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 102
    iget-object v7, p0, Lcom/yalantis/ucrop/task/BitmapCropTask;->mImageInputPath:Ljava/lang/String;

    invoke-static {v7, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 104
    iget-object v7, p0, Lcom/yalantis/ucrop/task/BitmapCropTask;->mExifInfo:Lcom/yalantis/ucrop/model/ExifInfo;

    invoke-virtual {v7}, Lcom/yalantis/ucrop/model/ExifInfo;->getExifDegrees()I

    move-result v7

    const/16 v8, 0x5a

    if-eq v7, v8, :cond_0

    iget-object v7, p0, Lcom/yalantis/ucrop/task/BitmapCropTask;->mExifInfo:Lcom/yalantis/ucrop/model/ExifInfo;

    invoke-virtual {v7}, Lcom/yalantis/ucrop/model/ExifInfo;->getExifDegrees()I

    move-result v7

    const/16 v8, 0x10e

    if-ne v7, v8, :cond_3

    .line 105
    .local v6, "swapSides":Z
    :cond_0
    :goto_0
    if-eqz v6, :cond_4

    iget v7, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    :goto_1
    int-to-float v7, v7

    iget-object v8, p0, Lcom/yalantis/ucrop/task/BitmapCropTask;->mViewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    int-to-float v8, v8

    div-float v4, v7, v8

    .line 106
    .local v4, "scaleX":F
    if-eqz v6, :cond_5

    iget v7, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    :goto_2
    int-to-float v7, v7

    iget-object v8, p0, Lcom/yalantis/ucrop/task/BitmapCropTask;->mViewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float v5, v7, v8

    .line 108
    .local v5, "scaleY":F
    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 110
    .local v3, "resizeScale":F
    iget v7, p0, Lcom/yalantis/ucrop/task/BitmapCropTask;->mCurrentScale:F

    div-float/2addr v7, v3

    iput v7, p0, Lcom/yalantis/ucrop/task/BitmapCropTask;->mCurrentScale:F

    .line 112
    const/high16 v3, 0x3f800000    # 1.0f

    .line 113
    iget v7, p0, Lcom/yalantis/ucrop/task/BitmapCropTask;->mMaxResultImageSizeX:I

    if-lez v7, :cond_2

    iget v7, p0, Lcom/yalantis/ucrop/task/BitmapCropTask;->mMaxResultImageSizeY:I

    if-lez v7, :cond_2

    .line 114
    iget-object v7, p0, Lcom/yalantis/ucrop/task/BitmapCropTask;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v7

    iget v8, p0, Lcom/yalantis/ucrop/task/BitmapCropTask;->mCurrentScale:F

    div-float v1, v7, v8

    .line 115
    .local v1, "cropWidth":F
    iget-object v7, p0, Lcom/yalantis/ucrop/task/BitmapCropTask;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v7

    iget v8, p0, Lcom/yalantis/ucrop/task/BitmapCropTask;->mCurrentScale:F

    div-float v0, v7, v8

    .line 117
    .local v0, "cropHeight":F
    iget v7, p0, Lcom/yalantis/ucrop/task/BitmapCropTask;->mMaxResultImageSizeX:I

    int-to-float v7, v7

    cmpl-float v7, v1, v7

    if-gtz v7, :cond_1

    iget v7, p0, Lcom/yalantis/ucrop/task/BitmapCropTask;->mMaxResultImageSizeY:I

    int-to-float v7, v7

    cmpl-float v7, v0, v7

    if-lez v7, :cond_2

    .line 119
    :cond_1
    iget v7, p0, Lcom/yalantis/ucrop/task/BitmapCropTask;->mMaxResultImageSizeX:I

    int-to-float v7, v7

    div-float v4, v7, v1

    .line 120
    iget v7, p0, Lcom/yalantis/ucrop/task/BitmapCropTask;->mMaxResultImageSizeY:I

    int-to-float v7, v7

    div-float v5, v7, v0

    .line 121
    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 123
    iget v7, p0, Lcom/yalantis/ucrop/task/BitmapCropTask;->mCurrentScale:F

    div-float/2addr v7, v3

    iput v7, p0, Lcom/yalantis/ucrop/task/BitmapCropTask;->mCurrentScale:F

    .line 126
    .end local v0    # "cropHeight":F
    .end local v1    # "cropWidth":F
    :cond_2
    return v3

    .line 104
    .end local v3    # "resizeScale":F
    .end local v4    # "scaleX":F
    .end local v5    # "scaleY":F
    .end local v6    # "swapSides":Z
    :cond_3
    const/4 v6, 0x0

    goto :goto_0

    .line 105
    .restart local v6    # "swapSides":Z
    :cond_4
    iget v7, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    goto :goto_1

    .line 106
    .restart local v4    # "scaleX":F
    :cond_5
    iget v7, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    goto :goto_2
.end method

.method private shouldCrop(II)Z
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 164
    const/4 v0, 0x1

    .line 165
    .local v0, "pixelError":I
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/2addr v0, v1

    .line 166
    iget v1, p0, Lcom/yalantis/ucrop/task/BitmapCropTask;->mMaxResultImageSizeX:I

    if-lez v1, :cond_0

    iget v1, p0, Lcom/yalantis/ucrop/task/BitmapCropTask;->mMaxResultImageSizeY:I

    if-gtz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/yalantis/ucrop/task/BitmapCropTask;->mCropRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/yalantis/ucrop/task/BitmapCropTask;->mCurrentImageRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v1, v2

    .line 167
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    int-to-float v2, v0

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_1

    iget-object v1, p0, Lcom/yalantis/ucrop/task/BitmapCropTask;->mCropRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    iget-object v2, p0, Lcom/yalantis/ucrop/task/BitmapCropTask;->mCurrentImageRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v1, v2

    .line 168
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    int-to-float v2, v0

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_1

    iget-object v1, p0, Lcom/yalantis/ucrop/task/BitmapCropTask;->mCropRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    iget-object v2, p0, Lcom/yalantis/ucrop/task/BitmapCropTask;->mCurrentImageRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v1, v2

    .line 169
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    int-to-float v2, v0

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_1

    iget-object v1, p0, Lcom/yalantis/ucrop/task/BitmapCropTask;->mCropRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    iget-object v2, p0, Lcom/yalantis/ucrop/task/BitmapCropTask;->mCurrentImageRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v1, v2

    .line 170
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    int-to-float v2, v0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    :cond_1
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public native cropCImg(Ljava/lang/String;Ljava/lang/String;IIIIFFIIII)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/OutOfMemoryError;
        }
    .end annotation
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 30
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/yalantis/ucrop/task/BitmapCropTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Throwable;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Throwable;
    .locals 3
    .param p1, "params"    # [Ljava/lang/Void;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 79
    iget-object v2, p0, Lcom/yalantis/ucrop/task/BitmapCropTask;->mViewBitmap:Landroid/graphics/Bitmap;

    if-nez v2, :cond_0

    .line 80
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "ViewBitmap is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 96
    :goto_0
    return-object v1

    .line 81
    :cond_0
    iget-object v2, p0, Lcom/yalantis/ucrop/task/BitmapCropTask;->mViewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 82
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "ViewBitmap is recycled"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 83
    :cond_1
    iget-object v2, p0, Lcom/yalantis/ucrop/task/BitmapCropTask;->mCurrentImageRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 84
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "CurrentImageRect is empty"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 87
    :cond_2
    invoke-direct {p0}, Lcom/yalantis/ucrop/task/BitmapCropTask;->resize()F

    move-result v0

    .line 90
    .local v0, "resizeScale":F
    :try_start_0
    invoke-direct {p0, v0}, Lcom/yalantis/ucrop/task/BitmapCropTask;->crop(F)Z

    .line 91
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/yalantis/ucrop/task/BitmapCropTask;->mViewBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 92
    :catch_0
    move-exception v1

    .line 93
    .local v1, "throwable":Ljava/lang/Throwable;
    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 30
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/yalantis/ucrop/task/BitmapCropTask;->onPostExecute(Ljava/lang/Throwable;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "t"    # Ljava/lang/Throwable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 183
    iget-object v0, p0, Lcom/yalantis/ucrop/task/BitmapCropTask;->mCropCallback:Lcom/yalantis/ucrop/callback/BitmapCropCallback;

    if-eqz v0, :cond_0

    .line 184
    if-nez p1, :cond_1

    .line 185
    iget-object v0, p0, Lcom/yalantis/ucrop/task/BitmapCropTask;->mCropCallback:Lcom/yalantis/ucrop/callback/BitmapCropCallback;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/yalantis/ucrop/task/BitmapCropTask;->mImageOutputPath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    iget v2, p0, Lcom/yalantis/ucrop/task/BitmapCropTask;->mCroppedImageWidth:I

    iget v3, p0, Lcom/yalantis/ucrop/task/BitmapCropTask;->mCroppedImageHeight:I

    invoke-interface {v0, v1, v2, v3}, Lcom/yalantis/ucrop/callback/BitmapCropCallback;->onBitmapCropped(Landroid/net/Uri;II)V

    .line 190
    :cond_0
    :goto_0
    return-void

    .line 187
    :cond_1
    iget-object v0, p0, Lcom/yalantis/ucrop/task/BitmapCropTask;->mCropCallback:Lcom/yalantis/ucrop/callback/BitmapCropCallback;

    invoke-interface {v0, p1}, Lcom/yalantis/ucrop/callback/BitmapCropCallback;->onCropFailure(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
