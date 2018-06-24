.class public Lcom/reactnative/ivpusic/imagepicker/Compression;
.super Ljava/lang/Object;
.source "Compression.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compressImage(Landroid/app/Activity;Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;)Ljava/io/File;
    .locals 10
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "options"    # Lcom/facebook/react/bridge/ReadableMap;
    .param p3, "originalImagePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    const/4 v4, 0x0

    .line 23
    const-string v5, "compressImageMaxWidth"

    invoke-interface {p2, v5}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "compressImageMaxWidth"

    invoke-interface {p2, v5}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 24
    .local v2, "maxWidth":Ljava/lang/Integer;
    :goto_0
    const-string v5, "compressImageMaxHeight"

    invoke-interface {p2, v5}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "compressImageMaxHeight"

    invoke-interface {p2, v5}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 25
    .local v1, "maxHeight":Ljava/lang/Integer;
    :goto_1
    const-string v5, "compressImageQuality"

    invoke-interface {p2, v5}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v4, "compressImageQuality"

    invoke-interface {p2, v4}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    .line 27
    .local v3, "quality":Ljava/lang/Double;
    :goto_2
    if-nez v2, :cond_3

    if-nez v1, :cond_3

    if-nez v3, :cond_3

    .line 28
    const-string v4, "image-crop-picker"

    const-string v5, "Skipping image compression"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 56
    :goto_3
    return-object v4

    .end local v1    # "maxHeight":Ljava/lang/Integer;
    .end local v2    # "maxWidth":Ljava/lang/Integer;
    .end local v3    # "quality":Ljava/lang/Double;
    :cond_0
    move-object v2, v4

    .line 23
    goto :goto_0

    .restart local v2    # "maxWidth":Ljava/lang/Integer;
    :cond_1
    move-object v1, v4

    .line 24
    goto :goto_1

    .restart local v1    # "maxHeight":Ljava/lang/Integer;
    :cond_2
    move-object v3, v4

    .line 25
    goto :goto_2

    .line 32
    .restart local v3    # "quality":Ljava/lang/Double;
    :cond_3
    const-string v4, "image-crop-picker"

    const-string v5, "Image compression activated"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    new-instance v4, Lid/zelory/compressor/Compressor;

    invoke-direct {v4, p1}, Lid/zelory/compressor/Compressor;-><init>(Landroid/content/Context;)V

    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    .line 34
    invoke-virtual {v4, v5}, Lid/zelory/compressor/Compressor;->setCompressFormat(Landroid/graphics/Bitmap$CompressFormat;)Lid/zelory/compressor/Compressor;

    move-result-object v4

    sget-object v5, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    .line 35
    invoke-static {v5}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    .line 36
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    .line 35
    invoke-virtual {v4, v5}, Lid/zelory/compressor/Compressor;->setDestinationDirectoryPath(Ljava/lang/String;)Lid/zelory/compressor/Compressor;

    move-result-object v0

    .line 38
    .local v0, "compressor":Lid/zelory/compressor/Compressor;
    if-nez v3, :cond_6

    .line 39
    const-string v4, "image-crop-picker"

    const-string v5, "Compressing image with quality 100"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    const/16 v4, 0x64

    invoke-virtual {v0, v4}, Lid/zelory/compressor/Compressor;->setQuality(I)Lid/zelory/compressor/Compressor;

    .line 46
    :goto_4
    if-eqz v2, :cond_4

    .line 47
    const-string v4, "image-crop-picker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Compressing image with max width "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v0, v4}, Lid/zelory/compressor/Compressor;->setMaxWidth(I)Lid/zelory/compressor/Compressor;

    .line 51
    :cond_4
    if-eqz v1, :cond_5

    .line 52
    const-string v4, "image-crop-picker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Compressing image with max height "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v0, v4}, Lid/zelory/compressor/Compressor;->setMaxHeight(I)Lid/zelory/compressor/Compressor;

    .line 56
    :cond_5
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 57
    invoke-virtual {v0, v4}, Lid/zelory/compressor/Compressor;->compressToFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v4

    goto :goto_3

    .line 42
    :cond_6
    const-string v4, "image-crop-picker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Compressing image with quality "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    mul-double/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    mul-double/2addr v4, v8

    double-to-int v4, v4

    invoke-virtual {v0, v4}, Lid/zelory/compressor/Compressor;->setQuality(I)Lid/zelory/compressor/Compressor;

    goto :goto_4
.end method

.method public declared-synchronized compressVideo(Landroid/app/Activity;Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "options"    # Lcom/facebook/react/bridge/ReadableMap;
    .param p3, "originalVideo"    # Ljava/lang/String;
    .param p4, "compressedVideo"    # Ljava/lang/String;
    .param p5, "promise"    # Lcom/facebook/react/bridge/Promise;

    .prologue
    .line 63
    monitor-enter p0

    :try_start_0
    invoke-interface {p5, p3}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    monitor-exit p0

    return-void

    .line 63
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
