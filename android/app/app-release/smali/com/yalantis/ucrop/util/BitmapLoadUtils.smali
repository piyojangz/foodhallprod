.class public Lcom/yalantis/ucrop/util/BitmapLoadUtils;
.super Ljava/lang/Object;
.source "BitmapLoadUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BitmapLoadUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 4
    .param p0, "options"    # Landroid/graphics/BitmapFactory$Options;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "reqWidth"    # I
    .param p2, "reqHeight"    # I

    .prologue
    .line 54
    iget v0, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 55
    .local v0, "height":I
    iget v2, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 56
    .local v2, "width":I
    const/4 v1, 0x1

    .line 58
    .local v1, "inSampleSize":I
    if-gt v0, p2, :cond_0

    if-le v2, p1, :cond_2

    .line 61
    :cond_0
    :goto_0
    div-int v3, v0, v1

    if-gt v3, p2, :cond_1

    div-int v3, v2, v1

    if-le v3, p1, :cond_2

    .line 62
    :cond_1
    mul-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 65
    :cond_2
    return v1
.end method

.method public static calculateMaxBitmapSize(Landroid/content/Context;)I
    .locals 18
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 128
    const-string v11, "window"

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/WindowManager;

    .line 129
    .local v10, "wm":Landroid/view/WindowManager;
    invoke-interface {v10}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    .line 131
    .local v3, "display":Landroid/view/Display;
    new-instance v8, Landroid/graphics/Point;

    invoke-direct {v8}, Landroid/graphics/Point;-><init>()V

    .line 133
    .local v8, "size":Landroid/graphics/Point;
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0xd

    if-lt v11, v12, :cond_2

    .line 134
    invoke-virtual {v3, v8}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 135
    iget v9, v8, Landroid/graphics/Point;->x:I

    .line 136
    .local v9, "width":I
    iget v4, v8, Landroid/graphics/Point;->y:I

    .line 143
    .local v4, "height":I
    :goto_0
    int-to-double v12, v9

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    int-to-double v14, v4

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    add-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    double-to-int v5, v12

    .line 146
    .local v5, "maxBitmapSize":I
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2}, Landroid/graphics/Canvas;-><init>()V

    .line 147
    .local v2, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v2}, Landroid/graphics/Canvas;->getMaximumBitmapWidth()I

    move-result v11

    invoke-virtual {v2}, Landroid/graphics/Canvas;->getMaximumBitmapHeight()I

    move-result v12

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 148
    .local v6, "maxCanvasSize":I
    if-lez v6, :cond_0

    .line 149
    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 153
    :cond_0
    invoke-static {}, Lcom/yalantis/ucrop/util/EglUtils;->getMaxTextureSize()I

    move-result v7

    .line 154
    .local v7, "maxTextureSize":I
    if-lez v7, :cond_1

    .line 155
    invoke-static {v5, v7}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 158
    :cond_1
    const-string v11, "BitmapLoadUtils"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "maxBitmapSize: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    return v5

    .line 138
    .end local v2    # "canvas":Landroid/graphics/Canvas;
    .end local v4    # "height":I
    .end local v5    # "maxBitmapSize":I
    .end local v6    # "maxCanvasSize":I
    .end local v7    # "maxTextureSize":I
    .end local v9    # "width":I
    :cond_2
    invoke-virtual {v3}, Landroid/view/Display;->getWidth()I

    move-result v9

    .line 139
    .restart local v9    # "width":I
    invoke-virtual {v3}, Landroid/view/Display;->getHeight()I

    move-result v4

    .restart local v4    # "height":I
    goto :goto_0
.end method

.method public static close(Ljava/io/Closeable;)V
    .locals 1
    .param p0, "c"    # Ljava/io/Closeable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 164
    if-eqz p0, :cond_0

    instance-of v0, p0, Ljava/io/Closeable;

    if-eqz v0, :cond_0

    .line 166
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    :cond_0
    :goto_0
    return-void

    .line 167
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static decodeBitmapInBackground(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;IILcom/yalantis/ucrop/callback/BitmapLoadCallback;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "uri"    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "outputUri"    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "requiredWidth"    # I
    .param p4, "requiredHeight"    # I
    .param p5, "loadCallback"    # Lcom/yalantis/ucrop/callback/BitmapLoadCallback;

    .prologue
    .line 37
    new-instance v0, Lcom/yalantis/ucrop/task/BitmapLoadTask;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/yalantis/ucrop/task/BitmapLoadTask;-><init>(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;IILcom/yalantis/ucrop/callback/BitmapLoadCallback;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yalantis/ucrop/task/BitmapLoadTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 38
    return-void
.end method

.method public static exifToDegrees(I)I
    .locals 1
    .param p0, "exifOrientation"    # I

    .prologue
    .line 85
    packed-switch p0, :pswitch_data_0

    .line 99
    const/4 v0, 0x0

    .line 101
    .local v0, "rotation":I
    :goto_0
    return v0

    .line 88
    .end local v0    # "rotation":I
    :pswitch_0
    const/16 v0, 0x5a

    .line 89
    .restart local v0    # "rotation":I
    goto :goto_0

    .line 92
    .end local v0    # "rotation":I
    :pswitch_1
    const/16 v0, 0xb4

    .line 93
    .restart local v0    # "rotation":I
    goto :goto_0

    .line 96
    .end local v0    # "rotation":I
    :pswitch_2
    const/16 v0, 0x10e

    .line 97
    .restart local v0    # "rotation":I
    goto :goto_0

    .line 85
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public static exifToTranslation(I)I
    .locals 1
    .param p0, "exifOrientation"    # I

    .prologue
    .line 106
    packed-switch p0, :pswitch_data_0

    .line 114
    :pswitch_0
    const/4 v0, 0x1

    .line 116
    .local v0, "translation":I
    :goto_0
    return v0

    .line 111
    .end local v0    # "translation":I
    :pswitch_1
    const/4 v0, -0x1

    .line 112
    .restart local v0    # "translation":I
    goto :goto_0

    .line 106
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getExifOrientation(Landroid/content/Context;Landroid/net/Uri;)I
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "imageUri"    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 69
    const/4 v1, 0x0

    .line 71
    .local v1, "orientation":I
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    .line 72
    .local v3, "stream":Ljava/io/InputStream;
    if-nez v3, :cond_0

    move v2, v1

    .line 80
    .end local v1    # "orientation":I
    .end local v3    # "stream":Ljava/io/InputStream;
    .local v2, "orientation":I
    :goto_0
    return v2

    .line 75
    .end local v2    # "orientation":I
    .restart local v1    # "orientation":I
    .restart local v3    # "stream":Ljava/io/InputStream;
    :cond_0
    new-instance v4, Lcom/yalantis/ucrop/util/ImageHeaderParser;

    invoke-direct {v4, v3}, Lcom/yalantis/ucrop/util/ImageHeaderParser;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v4}, Lcom/yalantis/ucrop/util/ImageHeaderParser;->getOrientation()I

    move-result v1

    .line 76
    invoke-static {v3}, Lcom/yalantis/ucrop/util/BitmapLoadUtils;->close(Ljava/io/Closeable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v3    # "stream":Ljava/io/InputStream;
    :goto_1
    move v2, v1

    .line 80
    .end local v1    # "orientation":I
    .restart local v2    # "orientation":I
    goto :goto_0

    .line 77
    .end local v2    # "orientation":I
    .restart local v1    # "orientation":I
    :catch_0
    move-exception v0

    .line 78
    .local v0, "e":Ljava/io/IOException;
    const-string v4, "BitmapLoadUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getExifOrientation: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public static transformBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)Landroid/graphics/Bitmap;
    .locals 9
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "transformMatrix"    # Landroid/graphics/Matrix;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 42
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    move-object v5, p1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 43
    .local v7, "converted":Landroid/graphics/Bitmap;
    invoke-virtual {p0, v7}, Landroid/graphics/Bitmap;->sameAs(Landroid/graphics/Bitmap;)Z
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_0

    .line 44
    move-object p0, v7

    .line 49
    .end local v7    # "converted":Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return-object p0

    .line 46
    :catch_0
    move-exception v8

    .line 47
    .local v8, "error":Ljava/lang/OutOfMemoryError;
    const-string v0, "BitmapLoadUtils"

    const-string v1, "transformBitmap: "

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
