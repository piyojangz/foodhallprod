.class Lid/zelory/compressor/ImageUtil;
.super Ljava/lang/Object;
.source "ImageUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method

.method private static calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 6
    .param p0, "options"    # Landroid/graphics/BitmapFactory$Options;
    .param p1, "reqWidth"    # I
    .param p2, "reqHeight"    # I

    .prologue
    .line 54
    iget v2, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 55
    .local v2, "height":I
    iget v4, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 56
    .local v4, "width":I
    const/4 v3, 0x1

    .line 58
    .local v3, "inSampleSize":I
    if-gt v2, p2, :cond_0

    if-le v4, p1, :cond_1

    .line 60
    :cond_0
    div-int/lit8 v0, v2, 0x2

    .line 61
    .local v0, "halfHeight":I
    div-int/lit8 v1, v4, 0x2

    .line 65
    .local v1, "halfWidth":I
    :goto_0
    div-int v5, v0, v3

    if-lt v5, p2, :cond_1

    div-int v5, v1, v3

    if-lt v5, p1, :cond_1

    .line 66
    mul-int/lit8 v3, v3, 0x2

    goto :goto_0

    .line 70
    .end local v0    # "halfHeight":I
    .end local v1    # "halfWidth":I
    :cond_1
    return v3
.end method

.method static compressImage(Ljava/io/File;IILandroid/graphics/Bitmap$CompressFormat;ILjava/lang/String;)Ljava/io/File;
    .locals 3
    .param p0, "imageFile"    # Ljava/io/File;
    .param p1, "reqWidth"    # I
    .param p2, "reqHeight"    # I
    .param p3, "compressFormat"    # Landroid/graphics/Bitmap$CompressFormat;
    .param p4, "quality"    # I
    .param p5, "destinationPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 23
    const/4 v0, 0x0

    .line 25
    .local v0, "fileOutputStream":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    .end local v0    # "fileOutputStream":Ljava/io/FileOutputStream;
    .local v1, "fileOutputStream":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-static {p0, p1, p2}, Lid/zelory/compressor/ImageUtil;->decodeSampledBitmapFromFile(Ljava/io/File;II)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2, p3, p4, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 29
    if-eqz v1, :cond_0

    .line 30
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 31
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 35
    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v2

    .line 29
    .end local v1    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v0    # "fileOutputStream":Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v2

    :goto_0
    if-eqz v0, :cond_1

    .line 30
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    .line 31
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    :cond_1
    throw v2

    .line 29
    .end local v0    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v1    # "fileOutputStream":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v0    # "fileOutputStream":Ljava/io/FileOutputStream;
    goto :goto_0
.end method

.method static decodeSampledBitmapFromFile(Ljava/io/File;II)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "imageFile"    # Ljava/io/File;
    .param p1, "reqWidth"    # I
    .param p2, "reqHeight"    # I

    .prologue
    .line 40
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 41
    .local v0, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 42
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 45
    invoke-static {v0, p1, p2}, Lid/zelory/compressor/ImageUtil;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v1

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 48
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 49
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method
