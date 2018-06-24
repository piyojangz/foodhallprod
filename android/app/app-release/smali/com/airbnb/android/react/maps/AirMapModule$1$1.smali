.class Lcom/airbnb/android/react/maps/AirMapModule$1$1;
.super Ljava/lang/Object;
.source "AirMapModule.java"

# interfaces
.implements Lcom/google/android/gms/maps/GoogleMap$SnapshotReadyCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/react/maps/AirMapModule$1;->execute(Lcom/facebook/react/uimanager/NativeViewHierarchyManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/airbnb/android/react/maps/AirMapModule$1;


# direct methods
.method constructor <init>(Lcom/airbnb/android/react/maps/AirMapModule$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/airbnb/android/react/maps/AirMapModule$1;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/airbnb/android/react/maps/AirMapModule$1$1;->this$1:Lcom/airbnb/android/react/maps/AirMapModule$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSnapshotReady(Landroid/graphics/Bitmap;)V
    .locals 12
    .param p1, "snapshot"    # Landroid/graphics/Bitmap;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const-wide/high16 v10, 0x4059000000000000L    # 100.0

    .line 89
    if-nez p1, :cond_1

    .line 90
    iget-object v6, p0, Lcom/airbnb/android/react/maps/AirMapModule$1$1;->this$1:Lcom/airbnb/android/react/maps/AirMapModule$1;

    iget-object v6, v6, Lcom/airbnb/android/react/maps/AirMapModule$1;->val$promise:Lcom/facebook/react/bridge/Promise;

    const-string v7, "Failed to generate bitmap, snapshot = null"

    invoke-interface {v6, v7}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;)V

    .line 122
    :cond_0
    :goto_0
    return-void

    .line 93
    :cond_1
    iget-object v6, p0, Lcom/airbnb/android/react/maps/AirMapModule$1$1;->this$1:Lcom/airbnb/android/react/maps/AirMapModule$1;

    iget-object v6, v6, Lcom/airbnb/android/react/maps/AirMapModule$1;->val$width:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/airbnb/android/react/maps/AirMapModule$1$1;->this$1:Lcom/airbnb/android/react/maps/AirMapModule$1;

    iget-object v6, v6, Lcom/airbnb/android/react/maps/AirMapModule$1;->val$height:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/airbnb/android/react/maps/AirMapModule$1$1;->this$1:Lcom/airbnb/android/react/maps/AirMapModule$1;

    iget-object v6, v6, Lcom/airbnb/android/react/maps/AirMapModule$1;->val$width:Ljava/lang/Integer;

    .line 94
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    if-ne v6, v7, :cond_2

    iget-object v6, p0, Lcom/airbnb/android/react/maps/AirMapModule$1$1;->this$1:Lcom/airbnb/android/react/maps/AirMapModule$1;

    iget-object v6, v6, Lcom/airbnb/android/react/maps/AirMapModule$1;->val$height:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    if-eq v6, v7, :cond_3

    .line 95
    :cond_2
    iget-object v6, p0, Lcom/airbnb/android/react/maps/AirMapModule$1$1;->this$1:Lcom/airbnb/android/react/maps/AirMapModule$1;

    iget-object v6, v6, Lcom/airbnb/android/react/maps/AirMapModule$1;->val$width:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v7, p0, Lcom/airbnb/android/react/maps/AirMapModule$1$1;->this$1:Lcom/airbnb/android/react/maps/AirMapModule$1;

    iget-object v7, v7, Lcom/airbnb/android/react/maps/AirMapModule$1;->val$height:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v8, 0x1

    invoke-static {p1, v6, v7, v8}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 99
    :cond_3
    iget-object v6, p0, Lcom/airbnb/android/react/maps/AirMapModule$1$1;->this$1:Lcom/airbnb/android/react/maps/AirMapModule$1;

    iget-object v6, v6, Lcom/airbnb/android/react/maps/AirMapModule$1;->val$result:Ljava/lang/String;

    const-string v7, "file"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 103
    :try_start_0
    const-string v6, "AirMapSnapshot"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/airbnb/android/react/maps/AirMapModule$1$1;->this$1:Lcom/airbnb/android/react/maps/AirMapModule$1;

    iget-object v8, v8, Lcom/airbnb/android/react/maps/AirMapModule$1;->val$format:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/airbnb/android/react/maps/AirMapModule$1$1;->this$1:Lcom/airbnb/android/react/maps/AirMapModule$1;

    iget-object v8, v8, Lcom/airbnb/android/react/maps/AirMapModule$1;->val$context:Lcom/facebook/react/bridge/ReactApplicationContext;

    .line 104
    invoke-virtual {v8}, Lcom/facebook/react/bridge/ReactApplicationContext;->getCacheDir()Ljava/io/File;

    move-result-object v8

    invoke-static {v6, v7, v8}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v4

    .line 105
    .local v4, "tempFile":Ljava/io/File;
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    .local v3, "outputStream":Ljava/io/FileOutputStream;
    iget-object v6, p0, Lcom/airbnb/android/react/maps/AirMapModule$1$1;->this$1:Lcom/airbnb/android/react/maps/AirMapModule$1;

    iget-object v6, v6, Lcom/airbnb/android/react/maps/AirMapModule$1;->val$compressFormat:Landroid/graphics/Bitmap$CompressFormat;

    iget-object v7, p0, Lcom/airbnb/android/react/maps/AirMapModule$1$1;->this$1:Lcom/airbnb/android/react/maps/AirMapModule$1;

    iget-wide v8, v7, Lcom/airbnb/android/react/maps/AirMapModule$1;->val$quality:D

    mul-double/2addr v8, v10

    double-to-int v7, v8

    invoke-virtual {p1, v6, v7, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 111
    invoke-static {v3}, Lcom/airbnb/android/react/maps/AirMapModule;->closeQuietly(Ljava/io/Closeable;)V

    .line 112
    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    .line 113
    .local v5, "uri":Ljava/lang/String;
    iget-object v6, p0, Lcom/airbnb/android/react/maps/AirMapModule$1$1;->this$1:Lcom/airbnb/android/react/maps/AirMapModule$1;

    iget-object v6, v6, Lcom/airbnb/android/react/maps/AirMapModule$1;->val$promise:Lcom/facebook/react/bridge/Promise;

    invoke-interface {v6, v5}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 106
    .end local v3    # "outputStream":Ljava/io/FileOutputStream;
    .end local v4    # "tempFile":Ljava/io/File;
    .end local v5    # "uri":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 107
    .local v2, "e":Ljava/lang/Exception;
    iget-object v6, p0, Lcom/airbnb/android/react/maps/AirMapModule$1$1;->this$1:Lcom/airbnb/android/react/maps/AirMapModule$1;

    iget-object v6, v6, Lcom/airbnb/android/react/maps/AirMapModule$1;->val$promise:Lcom/facebook/react/bridge/Promise;

    invoke-interface {v6, v2}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 114
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_4
    iget-object v6, p0, Lcom/airbnb/android/react/maps/AirMapModule$1$1;->this$1:Lcom/airbnb/android/react/maps/AirMapModule$1;

    iget-object v6, v6, Lcom/airbnb/android/react/maps/AirMapModule$1;->val$result:Ljava/lang/String;

    const-string v7, "base64"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 115
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 116
    .local v3, "outputStream":Ljava/io/ByteArrayOutputStream;
    iget-object v6, p0, Lcom/airbnb/android/react/maps/AirMapModule$1$1;->this$1:Lcom/airbnb/android/react/maps/AirMapModule$1;

    iget-object v6, v6, Lcom/airbnb/android/react/maps/AirMapModule$1;->val$compressFormat:Landroid/graphics/Bitmap$CompressFormat;

    iget-object v7, p0, Lcom/airbnb/android/react/maps/AirMapModule$1$1;->this$1:Lcom/airbnb/android/react/maps/AirMapModule$1;

    iget-wide v8, v7, Lcom/airbnb/android/react/maps/AirMapModule$1;->val$quality:D

    mul-double/2addr v8, v10

    double-to-int v7, v8

    invoke-virtual {p1, v6, v7, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 117
    invoke-static {v3}, Lcom/airbnb/android/react/maps/AirMapModule;->closeQuietly(Ljava/io/Closeable;)V

    .line 118
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 119
    .local v0, "bytes":[B
    const/4 v6, 0x2

    invoke-static {v0, v6}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    .line 120
    .local v1, "data":Ljava/lang/String;
    iget-object v6, p0, Lcom/airbnb/android/react/maps/AirMapModule$1$1;->this$1:Lcom/airbnb/android/react/maps/AirMapModule$1;

    iget-object v6, v6, Lcom/airbnb/android/react/maps/AirMapModule$1;->val$promise:Lcom/facebook/react/bridge/Promise;

    invoke-interface {v6, v1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    goto/16 :goto_0
.end method
