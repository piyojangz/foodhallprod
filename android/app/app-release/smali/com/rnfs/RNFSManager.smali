.class public Lcom/rnfs/RNFSManager;
.super Lcom/facebook/react/bridge/ReactContextBaseJavaModule;
.source "RNFSManager.java"


# static fields
.field private static final RNFSCachesDirectoryPath:Ljava/lang/String; = "RNFSCachesDirectoryPath"

.field private static final RNFSDocumentDirectory:Ljava/lang/String; = "RNFSDocumentDirectory"

.field private static final RNFSDocumentDirectoryPath:Ljava/lang/String; = "RNFSDocumentDirectoryPath"

.field private static final RNFSExternalDirectoryPath:Ljava/lang/String; = "RNFSExternalDirectoryPath"

.field private static final RNFSExternalStorageDirectoryPath:Ljava/lang/String; = "RNFSExternalStorageDirectoryPath"

.field private static final RNFSFileTypeDirectory:Ljava/lang/String; = "RNFSFileTypeDirectory"

.field private static final RNFSFileTypeRegular:Ljava/lang/String; = "RNFSFileTypeRegular"

.field private static final RNFSPicturesDirectoryPath:Ljava/lang/String; = "RNFSPicturesDirectoryPath"

.field private static final RNFSTemporaryDirectoryPath:Ljava/lang/String; = "RNFSTemporaryDirectoryPath"


# instance fields
.field private downloaders:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/rnfs/Downloader;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 1
    .param p1, "reactContext"    # Lcom/facebook/react/bridge/ReactApplicationContext;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 48
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/rnfs/RNFSManager;->downloaders:Landroid/util/SparseArray;

    .line 52
    return-void
.end method

.method private DeleteRecursive(Ljava/io/File;)V
    .locals 4
    .param p1, "fileOrDirectory"    # Ljava/io/File;

    .prologue
    .line 472
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 473
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 474
    .local v0, "child":Ljava/io/File;
    invoke-direct {p0, v0}, Lcom/rnfs/RNFSManager;->DeleteRecursive(Ljava/io/File;)V

    .line 473
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 478
    .end local v0    # "child":Ljava/io/File;
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 479
    return-void
.end method

.method static synthetic access$000(Lcom/rnfs/RNFSManager;Lcom/facebook/react/bridge/Promise;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0
    .param p0, "x0"    # Lcom/rnfs/RNFSManager;
    .param p1, "x1"    # Lcom/facebook/react/bridge/Promise;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/Exception;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Lcom/rnfs/RNFSManager;->reject(Lcom/facebook/react/bridge/Promise;Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic access$100(Lcom/rnfs/RNFSManager;)Lcom/facebook/react/bridge/ReactApplicationContext;
    .locals 1
    .param p0, "x0"    # Lcom/rnfs/RNFSManager;

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/rnfs/RNFSManager;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/rnfs/RNFSManager;Lcom/facebook/react/bridge/ReactContext;Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V
    .locals 0
    .param p0, "x0"    # Lcom/rnfs/RNFSManager;
    .param p1, "x1"    # Lcom/facebook/react/bridge/ReactContext;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Lcom/facebook/react/bridge/WritableMap;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Lcom/rnfs/RNFSManager;->sendEvent(Lcom/facebook/react/bridge/ReactContext;Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    return-void
.end method

.method static synthetic access$300(Lcom/rnfs/RNFSManager;)Lcom/facebook/react/bridge/ReactApplicationContext;
    .locals 1
    .param p0, "x0"    # Lcom/rnfs/RNFSManager;

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/rnfs/RNFSManager;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    return-object v0
.end method

.method private copyFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "filepath"    # Ljava/lang/String;
    .param p2, "destPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 260
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 261
    .local v1, "in":Ljava/io/InputStream;
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 263
    .local v3, "out":Ljava/io/OutputStream;
    const/16 v4, 0x400

    new-array v0, v4, [B

    .line 265
    .local v0, "buffer":[B
    :goto_0
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .local v2, "length":I
    if-lez v2, :cond_0

    .line 266
    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4, v2}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 268
    :cond_0
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 269
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 270
    return-void
.end method

.method private copyInputStream(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 11
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "source"    # Ljava/lang/String;
    .param p3, "destination"    # Ljava/lang/String;
    .param p4, "promise"    # Lcom/facebook/react/bridge/Promise;

    .prologue
    .line 395
    const/4 v2, 0x0

    .line 397
    .local v2, "out":Ljava/io/OutputStream;
    :try_start_0
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 399
    .local v4, "outFile":Ljava/io/File;
    :try_start_1
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 406
    .end local v2    # "out":Ljava/io/OutputStream;
    .local v3, "out":Ljava/io/OutputStream;
    const/16 v6, 0x2800

    :try_start_2
    new-array v0, v6, [B

    .line 408
    .local v0, "buffer":[B
    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v5

    .local v5, "read":I
    const/4 v6, -0x1

    if-eq v5, v6, :cond_4

    .line 409
    const/4 v6, 0x0

    invoke-virtual {v3, v0, v6, v5}, Ljava/io/OutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    .line 411
    .end local v0    # "buffer":[B
    .end local v5    # "read":I
    :catch_0
    move-exception v1

    .line 412
    .local v1, "e":Ljava/io/IOException;
    :try_start_3
    new-instance v6, Ljava/lang/Exception;

    const-string v7, "Failed to copy \'%s\' to %s (%s)"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p2, v8, v9

    const/4 v9, 0x1

    aput-object p3, v8, v9

    const/4 v9, 0x2

    invoke-virtual {v1}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p4, p2, v6}, Lcom/rnfs/RNFSManager;->reject(Lcom/facebook/react/bridge/Promise;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 419
    if-eqz p1, :cond_0

    .line 421
    :try_start_4
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 425
    :cond_0
    :goto_1
    if-eqz v3, :cond_1

    .line 427
    :try_start_5
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    :cond_1
    :goto_2
    move-object v2, v3

    .line 432
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "out":Ljava/io/OutputStream;
    .restart local v2    # "out":Ljava/io/OutputStream;
    :cond_2
    :goto_3
    return-void

    .line 400
    :catch_1
    move-exception v1

    .line 401
    .local v1, "e":Ljava/io/FileNotFoundException;
    :try_start_6
    invoke-direct {p0, p4, p2, v1}, Lcom/rnfs/RNFSManager;->reject(Lcom/facebook/react/bridge/Promise;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 419
    if-eqz p1, :cond_3

    .line 421
    :try_start_7
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 425
    :cond_3
    :goto_4
    if-eqz v2, :cond_2

    .line 427
    :try_start_8
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_3

    .line 428
    :catch_2
    move-exception v6

    goto :goto_3

    .line 417
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .end local v2    # "out":Ljava/io/OutputStream;
    .restart local v0    # "buffer":[B
    .restart local v3    # "out":Ljava/io/OutputStream;
    .restart local v5    # "read":I
    :cond_4
    const/4 v6, 0x0

    :try_start_9
    invoke-interface {p4, v6}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 419
    if-eqz p1, :cond_5

    .line 421
    :try_start_a
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    .line 425
    :cond_5
    :goto_5
    if-eqz v3, :cond_6

    .line 427
    :try_start_b
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7

    :cond_6
    :goto_6
    move-object v2, v3

    .line 432
    .end local v3    # "out":Ljava/io/OutputStream;
    .restart local v2    # "out":Ljava/io/OutputStream;
    goto :goto_3

    .line 419
    .end local v0    # "buffer":[B
    .end local v4    # "outFile":Ljava/io/File;
    .end local v5    # "read":I
    :catchall_0
    move-exception v6

    :goto_7
    if-eqz p1, :cond_7

    .line 421
    :try_start_c
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_8

    .line 425
    :cond_7
    :goto_8
    if-eqz v2, :cond_8

    .line 427
    :try_start_d
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_9

    .line 429
    :cond_8
    :goto_9
    throw v6

    .line 422
    .restart local v1    # "e":Ljava/io/FileNotFoundException;
    .restart local v4    # "outFile":Ljava/io/File;
    :catch_3
    move-exception v6

    goto :goto_4

    .end local v2    # "out":Ljava/io/OutputStream;
    .local v1, "e":Ljava/io/IOException;
    .restart local v3    # "out":Ljava/io/OutputStream;
    :catch_4
    move-exception v6

    goto :goto_1

    .line 428
    :catch_5
    move-exception v6

    goto :goto_2

    .line 422
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "buffer":[B
    .restart local v5    # "read":I
    :catch_6
    move-exception v6

    goto :goto_5

    .line 428
    :catch_7
    move-exception v6

    goto :goto_6

    .line 422
    .end local v0    # "buffer":[B
    .end local v3    # "out":Ljava/io/OutputStream;
    .end local v4    # "outFile":Ljava/io/File;
    .end local v5    # "read":I
    .restart local v2    # "out":Ljava/io/OutputStream;
    :catch_8
    move-exception v7

    goto :goto_8

    .line 428
    :catch_9
    move-exception v7

    goto :goto_9

    .line 419
    .end local v2    # "out":Ljava/io/OutputStream;
    .restart local v3    # "out":Ljava/io/OutputStream;
    .restart local v4    # "outFile":Ljava/io/File;
    :catchall_1
    move-exception v6

    move-object v2, v3

    .end local v3    # "out":Ljava/io/OutputStream;
    .restart local v2    # "out":Ljava/io/OutputStream;
    goto :goto_7
.end method

.method private reject(Lcom/facebook/react/bridge/Promise;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2
    .param p1, "promise"    # Lcom/facebook/react/bridge/Promise;
    .param p2, "filepath"    # Ljava/lang/String;
    .param p3, "ex"    # Ljava/lang/Exception;

    .prologue
    .line 619
    instance-of v0, p3, Ljava/io/FileNotFoundException;

    if-eqz v0, :cond_0

    .line 620
    invoke-direct {p0, p1, p2}, Lcom/rnfs/RNFSManager;->rejectFileNotFound(Lcom/facebook/react/bridge/Promise;Ljava/lang/String;)V

    .line 625
    :goto_0
    return-void

    .line 624
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private rejectFileIsDirectory(Lcom/facebook/react/bridge/Promise;)V
    .locals 2
    .param p1, "promise"    # Lcom/facebook/react/bridge/Promise;

    .prologue
    .line 632
    const-string v0, "EISDIR"

    const-string v1, "EISDIR: illegal operation on a directory, read"

    invoke-interface {p1, v0, v1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    return-void
.end method

.method private rejectFileNotFound(Lcom/facebook/react/bridge/Promise;Ljava/lang/String;)V
    .locals 3
    .param p1, "promise"    # Lcom/facebook/react/bridge/Promise;
    .param p2, "filepath"    # Ljava/lang/String;

    .prologue
    .line 628
    const-string v0, "ENOENT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ENOENT: no such file or directory, open \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    return-void
.end method

.method private sendEvent(Lcom/facebook/react/bridge/ReactContext;Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V
    .locals 1
    .param p1, "reactContext"    # Lcom/facebook/react/bridge/ReactContext;
    .param p2, "eventName"    # Ljava/lang/String;
    .param p3, "params"    # Lcom/facebook/react/bridge/WritableMap;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 500
    const-class v0, Lcom/facebook/react/modules/core/RCTNativeAppEventEmitter;

    .line 501
    invoke-virtual {p1, v0}, Lcom/facebook/react/bridge/ReactContext;->getJSModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/JavaScriptModule;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/modules/core/RCTNativeAppEventEmitter;

    .line 502
    invoke-interface {v0, p2, p3}, Lcom/facebook/react/modules/core/RCTNativeAppEventEmitter;->emit(Ljava/lang/String;Ljava/lang/Object;)V

    .line 503
    return-void
.end method


# virtual methods
.method public appendFile(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 4
    .param p1, "filepath"    # Ljava/lang/String;
    .param p2, "base64Content"    # Ljava/lang/String;
    .param p3, "promise"    # Lcom/facebook/react/bridge/Promise;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .prologue
    .line 78
    const/4 v3, 0x0

    :try_start_0
    invoke-static {p2, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 80
    .local v0, "bytes":[B
    new-instance v2, Ljava/io/FileOutputStream;

    const/4 v3, 0x1

    invoke-direct {v2, p1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    .line 81
    .local v2, "outputStream":Ljava/io/FileOutputStream;
    invoke-virtual {v2, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 82
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 84
    const/4 v3, 0x0

    invoke-interface {p3, v3}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    .end local v0    # "bytes":[B
    .end local v2    # "outputStream":Ljava/io/FileOutputStream;
    :goto_0
    return-void

    .line 85
    :catch_0
    move-exception v1

    .line 86
    .local v1, "ex":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 87
    invoke-direct {p0, p3, p1, v1}, Lcom/rnfs/RNFSManager;->reject(Lcom/facebook/react/bridge/Promise;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public copyFile(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 2
    .param p1, "filepath"    # Ljava/lang/String;
    .param p2, "destPath"    # Ljava/lang/String;
    .param p3, "promise"    # Lcom/facebook/react/bridge/Promise;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .prologue
    .line 250
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/rnfs/RNFSManager;->copyFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    const/4 v1, 0x0

    invoke-interface {p3, v1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 257
    :goto_0
    return-void

    .line 253
    :catch_0
    move-exception v0

    .line 254
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 255
    invoke-direct {p0, p3, p1, v0}, Lcom/rnfs/RNFSManager;->reject(Lcom/facebook/react/bridge/Promise;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public copyFileAssets(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 7
    .param p1, "assetPath"    # Ljava/lang/String;
    .param p2, "destination"    # Ljava/lang/String;
    .param p3, "promise"    # Lcom/facebook/react/bridge/Promise;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .prologue
    .line 341
    invoke-virtual {p0}, Lcom/rnfs/RNFSManager;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/react/bridge/ReactApplicationContext;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 343
    .local v0, "assetManager":Landroid/content/res/AssetManager;
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 344
    .local v2, "in":Ljava/io/InputStream;
    invoke-direct {p0, v2, p1, p2, p3}, Lcom/rnfs/RNFSManager;->copyInputStream(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 349
    .end local v2    # "in":Ljava/io/InputStream;
    :goto_0
    return-void

    .line 345
    :catch_0
    move-exception v1

    .line 347
    .local v1, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/Exception;

    const-string v4, "Asset \'%s\' could not be opened"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p3, p1, v3}, Lcom/rnfs/RNFSManager;->reject(Lcom/facebook/react/bridge/Promise;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public downloadFile(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 10
    .param p1, "options"    # Lcom/facebook/react/bridge/ReadableMap;
    .param p2, "promise"    # Lcom/facebook/react/bridge/Promise;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .prologue
    .line 508
    :try_start_0
    new-instance v2, Ljava/io/File;

    const-string v8, "toFile"

    invoke-interface {p1, v8}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 509
    .local v2, "file":Ljava/io/File;
    new-instance v7, Ljava/net/URL;

    const-string v8, "fromUrl"

    invoke-interface {p1, v8}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 510
    .local v7, "url":Ljava/net/URL;
    const-string v8, "jobId"

    invoke-interface {p1, v8}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 511
    .local v4, "jobId":I
    const-string v8, "headers"

    invoke-interface {p1, v8}, Lcom/facebook/react/bridge/ReadableMap;->getMap(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v3

    .line 512
    .local v3, "headers":Lcom/facebook/react/bridge/ReadableMap;
    const-string v8, "progressDivider"

    invoke-interface {p1, v8}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 514
    .local v6, "progressDivider":I
    new-instance v5, Lcom/rnfs/DownloadParams;

    invoke-direct {v5}, Lcom/rnfs/DownloadParams;-><init>()V

    .line 516
    .local v5, "params":Lcom/rnfs/DownloadParams;
    iput-object v7, v5, Lcom/rnfs/DownloadParams;->src:Ljava/net/URL;

    .line 517
    iput-object v2, v5, Lcom/rnfs/DownloadParams;->dest:Ljava/io/File;

    .line 518
    iput-object v3, v5, Lcom/rnfs/DownloadParams;->headers:Lcom/facebook/react/bridge/ReadableMap;

    .line 519
    int-to-float v8, v6

    iput v8, v5, Lcom/rnfs/DownloadParams;->progressDivider:F

    .line 521
    new-instance v8, Lcom/rnfs/RNFSManager$1;

    invoke-direct {v8, p0, v4, p2, p1}, Lcom/rnfs/RNFSManager$1;-><init>(Lcom/rnfs/RNFSManager;ILcom/facebook/react/bridge/Promise;Lcom/facebook/react/bridge/ReadableMap;)V

    iput-object v8, v5, Lcom/rnfs/DownloadParams;->onTaskCompleted:Lcom/rnfs/DownloadParams$OnTaskCompleted;

    .line 537
    new-instance v8, Lcom/rnfs/RNFSManager$2;

    invoke-direct {v8, p0, v4}, Lcom/rnfs/RNFSManager$2;-><init>(Lcom/rnfs/RNFSManager;I)V

    iput-object v8, v5, Lcom/rnfs/DownloadParams;->onDownloadBegin:Lcom/rnfs/DownloadParams$OnDownloadBegin;

    .line 556
    new-instance v8, Lcom/rnfs/RNFSManager$3;

    invoke-direct {v8, p0, v4}, Lcom/rnfs/RNFSManager$3;-><init>(Lcom/rnfs/RNFSManager;I)V

    iput-object v8, v5, Lcom/rnfs/DownloadParams;->onDownloadProgress:Lcom/rnfs/DownloadParams$OnDownloadProgress;

    .line 568
    new-instance v0, Lcom/rnfs/Downloader;

    invoke-direct {v0}, Lcom/rnfs/Downloader;-><init>()V

    .line 570
    .local v0, "downloader":Lcom/rnfs/Downloader;
    const/4 v8, 0x1

    new-array v8, v8, [Lcom/rnfs/DownloadParams;

    const/4 v9, 0x0

    aput-object v5, v8, v9

    invoke-virtual {v0, v8}, Lcom/rnfs/Downloader;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 572
    iget-object v8, p0, Lcom/rnfs/RNFSManager;->downloaders:Landroid/util/SparseArray;

    invoke-virtual {v8, v4, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 577
    .end local v0    # "downloader":Lcom/rnfs/Downloader;
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "headers":Lcom/facebook/react/bridge/ReadableMap;
    .end local v4    # "jobId":I
    .end local v5    # "params":Lcom/rnfs/DownloadParams;
    .end local v6    # "progressDivider":I
    .end local v7    # "url":Ljava/net/URL;
    :goto_0
    return-void

    .line 573
    :catch_0
    move-exception v1

    .line 574
    .local v1, "ex":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 575
    const-string v8, "toFile"

    invoke-interface {p1, v8}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, p2, v8, v1}, Lcom/rnfs/RNFSManager;->reject(Lcom/facebook/react/bridge/Promise;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public exists(Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 3
    .param p1, "filepath"    # Ljava/lang/String;
    .param p2, "promise"    # Lcom/facebook/react/bridge/Promise;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .prologue
    .line 117
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 118
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {p2, v2}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    .end local v1    # "file":Ljava/io/File;
    :goto_0
    return-void

    .line 119
    :catch_0
    move-exception v0

    .line 120
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 121
    invoke-direct {p0, p2, p1, v0}, Lcom/rnfs/RNFSManager;->reject(Lcom/facebook/react/bridge/Promise;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public existsAssets(Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 6
    .param p1, "filepath"    # Ljava/lang/String;
    .param p2, "promise"    # Lcom/facebook/react/bridge/Promise;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .prologue
    .line 354
    :try_start_0
    invoke-virtual {p0}, Lcom/rnfs/RNFSManager;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v4

    invoke-virtual {v4}, Lcom/facebook/react/bridge/ReactApplicationContext;->getAssets()Landroid/content/res/AssetManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v0

    .line 357
    .local v0, "assetManager":Landroid/content/res/AssetManager;
    :try_start_1
    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 358
    .local v3, "list":[Ljava/lang/String;
    if-eqz v3, :cond_1

    array-length v4, v3

    if-lez v4, :cond_1

    .line 359
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {p2, v4}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 385
    .end local v0    # "assetManager":Landroid/content/res/AssetManager;
    .end local v3    # "list":[Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 362
    .restart local v0    # "assetManager":Landroid/content/res/AssetManager;
    :catch_0
    move-exception v4

    .line 367
    :cond_1
    const/4 v2, 0x0

    .line 369
    .local v2, "fileStream":Ljava/io/InputStream;
    :try_start_2
    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 370
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {p2, v4}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 374
    if-eqz v2, :cond_0

    .line 376
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 377
    :catch_1
    move-exception v4

    goto :goto_0

    .line 371
    :catch_2
    move-exception v1

    .line 372
    .local v1, "ex":Ljava/lang/Exception;
    const/4 v4, 0x0

    :try_start_4
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {p2, v4}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 374
    if-eqz v2, :cond_0

    .line 376
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_0

    .line 377
    :catch_3
    move-exception v4

    goto :goto_0

    .line 374
    .end local v1    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    if-eqz v2, :cond_2

    .line 376
    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    .line 378
    :cond_2
    :goto_1
    :try_start_7
    throw v4
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 381
    .end local v0    # "assetManager":Landroid/content/res/AssetManager;
    .end local v2    # "fileStream":Ljava/io/InputStream;
    :catch_4
    move-exception v1

    .line 382
    .restart local v1    # "ex":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 383
    invoke-direct {p0, p2, p1, v1}, Lcom/rnfs/RNFSManager;->reject(Lcom/facebook/react/bridge/Promise;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 377
    .end local v1    # "ex":Ljava/lang/Exception;
    .restart local v0    # "assetManager":Landroid/content/res/AssetManager;
    .restart local v2    # "fileStream":Ljava/io/InputStream;
    :catch_5
    move-exception v5

    goto :goto_1
.end method

.method public getConstants()Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 637
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 639
    .local v0, "constants":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "RNFSDocumentDirectory"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 640
    const-string v3, "RNFSDocumentDirectoryPath"

    invoke-virtual {p0}, Lcom/rnfs/RNFSManager;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v4

    invoke-virtual {v4}, Lcom/facebook/react/bridge/ReactApplicationContext;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 641
    const-string v3, "RNFSTemporaryDirectoryPath"

    invoke-interface {v0, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 642
    const-string v3, "RNFSPicturesDirectoryPath"

    sget-object v4, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {v4}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 643
    const-string v3, "RNFSCachesDirectoryPath"

    invoke-virtual {p0}, Lcom/rnfs/RNFSManager;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v4

    invoke-virtual {v4}, Lcom/facebook/react/bridge/ReactApplicationContext;->getCacheDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 644
    const-string v3, "RNFSFileTypeRegular"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 645
    const-string v3, "RNFSFileTypeDirectory"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 647
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    .line 648
    .local v2, "externalStorageDirectory":Ljava/io/File;
    if-eqz v2, :cond_0

    .line 649
    const-string v3, "RNFSExternalStorageDirectoryPath"

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 654
    :goto_0
    invoke-virtual {p0}, Lcom/rnfs/RNFSManager;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/facebook/react/bridge/ReactApplicationContext;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 655
    .local v1, "externalDirectory":Ljava/io/File;
    if-eqz v1, :cond_1

    .line 656
    const-string v3, "RNFSExternalDirectoryPath"

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 661
    :goto_1
    return-object v0

    .line 651
    .end local v1    # "externalDirectory":Ljava/io/File;
    :cond_0
    const-string v3, "RNFSExternalStorageDirectoryPath"

    invoke-interface {v0, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 658
    .restart local v1    # "externalDirectory":Ljava/io/File;
    :cond_1
    const-string v3, "RNFSExternalDirectoryPath"

    invoke-interface {v0, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public getFSInfo(Lcom/facebook/react/bridge/Promise;)V
    .locals 12
    .param p1, "promise"    # Lcom/facebook/react/bridge/Promise;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .prologue
    .line 600
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v5

    .line 601
    .local v5, "path":Ljava/io/File;
    new-instance v6, Landroid/os/StatFs;

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 604
    .local v6, "stat":Landroid/os/StatFs;
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x12

    if-lt v7, v10, :cond_0

    .line 605
    invoke-virtual {v6}, Landroid/os/StatFs;->getTotalBytes()J

    move-result-wide v8

    .line 606
    .local v8, "totalSpace":J
    invoke-virtual {v6}, Landroid/os/StatFs;->getFreeBytes()J

    move-result-wide v2

    .line 612
    .local v2, "freeSpace":J
    :goto_0
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v4

    .line 613
    .local v4, "info":Lcom/facebook/react/bridge/WritableMap;
    const-string v7, "totalSpace"

    long-to-double v10, v8

    invoke-interface {v4, v7, v10, v11}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 614
    const-string v7, "freeSpace"

    long-to-double v10, v2

    invoke-interface {v4, v7, v10, v11}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 615
    invoke-interface {p1, v4}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    .line 616
    return-void

    .line 608
    .end local v2    # "freeSpace":J
    .end local v4    # "info":Lcom/facebook/react/bridge/WritableMap;
    .end local v8    # "totalSpace":J
    :cond_0
    invoke-virtual {v6}, Landroid/os/StatFs;->getBlockSize()I

    move-result v7

    int-to-long v0, v7

    .line 609
    .local v0, "blockSize":J
    invoke-virtual {v6}, Landroid/os/StatFs;->getBlockCount()I

    move-result v7

    int-to-long v10, v7

    mul-long v8, v0, v10

    .line 610
    .restart local v8    # "totalSpace":J
    invoke-virtual {v6}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v7

    int-to-long v10, v7

    mul-long v2, v0, v10

    .restart local v2    # "freeSpace":J
    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    const-string v0, "RNFSManager"

    return-object v0
.end method

.method public hash(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 20
    .param p1, "filepath"    # Ljava/lang/String;
    .param p2, "algorithm"    # Ljava/lang/String;
    .param p3, "promise"    # Lcom/facebook/react/bridge/Promise;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .prologue
    .line 185
    :try_start_0
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 187
    .local v4, "algorithms":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v13, "md5"

    const-string v14, "MD5"

    invoke-interface {v4, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    const-string v13, "sha1"

    const-string v14, "SHA-1"

    invoke-interface {v4, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    const-string v13, "sha224"

    const-string v14, "SHA-224"

    invoke-interface {v4, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    const-string v13, "sha256"

    const-string v14, "SHA-256"

    invoke-interface {v4, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    const-string v13, "sha384"

    const-string v14, "SHA-384"

    invoke-interface {v4, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    const-string v13, "sha512"

    const-string v14, "SHA-512"

    invoke-interface {v4, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_0

    new-instance v13, Ljava/lang/Exception;

    const-string v14, "Invalid hash algorithm"

    invoke-direct {v13, v14}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v13
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 223
    .end local v4    # "algorithms":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v7

    .line 224
    .local v7, "ex":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 225
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2, v7}, Lcom/rnfs/RNFSManager;->reject(Lcom/facebook/react/bridge/Promise;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 227
    .end local v7    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void

    .line 196
    .restart local v4    # "algorithms":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    :try_start_1
    new-instance v8, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 198
    .local v8, "file":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->isDirectory()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 199
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/rnfs/RNFSManager;->rejectFileIsDirectory(Lcom/facebook/react/bridge/Promise;)V

    goto :goto_0

    .line 203
    :cond_1
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v13

    if-nez v13, :cond_2

    .line 204
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/rnfs/RNFSManager;->rejectFileNotFound(Lcom/facebook/react/bridge/Promise;Ljava/lang/String;)V

    goto :goto_0

    .line 208
    :cond_2
    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-static {v13}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v11

    .line 210
    .local v11, "md":Ljava/security/MessageDigest;
    new-instance v10, Ljava/io/FileInputStream;

    move-object/from16 v0, p1

    invoke-direct {v10, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 211
    .local v10, "inputStream":Ljava/io/FileInputStream;
    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v14

    long-to-int v13, v14

    new-array v5, v13, [B

    .line 214
    .local v5, "buffer":[B
    :goto_1
    invoke-virtual {v10, v5}, Ljava/io/FileInputStream;->read([B)I

    move-result v12

    .local v12, "read":I
    const/4 v13, -0x1

    if-eq v12, v13, :cond_3

    .line 215
    const/4 v13, 0x0

    invoke-virtual {v11, v5, v13, v12}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_1

    .line 218
    :cond_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 219
    .local v9, "hexString":Ljava/lang/StringBuilder;
    invoke-virtual {v11}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v14

    array-length v15, v14

    const/4 v13, 0x0

    :goto_2
    if-ge v13, v15, :cond_4

    aget-byte v6, v14, v13

    .line 220
    .local v6, "digestByte":B
    const-string v16, "%02x"

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v19

    aput-object v19, v17, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 222
    .end local v6    # "digestByte":B
    :cond_4
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public mkdir(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 5
    .param p1, "filepath"    # Ljava/lang/String;
    .param p2, "options"    # Lcom/facebook/react/bridge/ReadableMap;
    .param p3, "promise"    # Lcom/facebook/react/bridge/Promise;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .prologue
    .line 484
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 486
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 488
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    .line 490
    .local v1, "exists":Z
    if-nez v1, :cond_0

    new-instance v3, Ljava/lang/Exception;

    const-string v4, "Directory could not be created"

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 493
    .end local v1    # "exists":Z
    .end local v2    # "file":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 494
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 495
    invoke-direct {p0, p3, p1, v0}, Lcom/rnfs/RNFSManager;->reject(Lcom/facebook/react/bridge/Promise;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 497
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void

    .line 492
    .restart local v1    # "exists":Z
    .restart local v2    # "file":Ljava/io/File;
    :cond_0
    const/4 v3, 0x0

    :try_start_1
    invoke-interface {p3, v3}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public moveFile(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 3
    .param p1, "filepath"    # Ljava/lang/String;
    .param p2, "destPath"    # Ljava/lang/String;
    .param p3, "promise"    # Lcom/facebook/react/bridge/Promise;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .prologue
    .line 232
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 234
    .local v1, "inFile":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 235
    invoke-direct {p0, p1, p2}, Lcom/rnfs/RNFSManager;->copyFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 240
    :cond_0
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {p3, v2}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    .end local v1    # "inFile":Ljava/io/File;
    :goto_0
    return-void

    .line 241
    :catch_0
    move-exception v0

    .line 242
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 243
    invoke-direct {p0, p3, p1, v0}, Lcom/rnfs/RNFSManager;->reject(Lcom/facebook/react/bridge/Promise;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public pathForBundle(Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 0
    .param p1, "bundleNamed"    # Ljava/lang/String;
    .param p2, "promise"    # Lcom/facebook/react/bridge/Promise;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .prologue
    .line 591
    return-void
.end method

.method public pathForGroup(Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 0
    .param p1, "bundleNamed"    # Ljava/lang/String;
    .param p2, "promise"    # Lcom/facebook/react/bridge/Promise;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .prologue
    .line 596
    return-void
.end method

.method public readDir(Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 12
    .param p1, "directory"    # Ljava/lang/String;
    .param p2, "promise"    # Lcom/facebook/react/bridge/Promise;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 275
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 277
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    new-instance v6, Ljava/lang/Exception;

    const-string v7, "Folder does not exist"

    invoke-direct {v6, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 296
    .end local v2    # "file":Ljava/io/File;
    :catch_0
    move-exception v1

    .line 297
    .local v1, "ex":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 298
    invoke-direct {p0, p2, p1, v1}, Lcom/rnfs/RNFSManager;->reject(Lcom/facebook/react/bridge/Promise;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 300
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void

    .line 279
    .restart local v2    # "file":Ljava/io/File;
    :cond_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    .line 281
    .local v5, "files":[Ljava/io/File;
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object v4

    .line 283
    .local v4, "fileMaps":Lcom/facebook/react/bridge/WritableArray;
    array-length v9, v5

    move v8, v7

    :goto_1
    if-ge v8, v9, :cond_2

    aget-object v0, v5, v8

    .line 284
    .local v0, "childFile":Ljava/io/File;
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v3

    .line 286
    .local v3, "fileMap":Lcom/facebook/react/bridge/WritableMap;
    const-string v6, "mtime"

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v10

    long-to-int v10, v10

    invoke-interface {v3, v6, v10}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 287
    const-string v6, "name"

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v3, v6, v10}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    const-string v6, "path"

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v3, v6, v10}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    const-string v6, "size"

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v10

    long-to-int v10, v10

    invoke-interface {v3, v6, v10}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 290
    const-string v10, "type"

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x1

    :goto_2
    invoke-interface {v3, v10, v6}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 292
    invoke-interface {v4, v3}, Lcom/facebook/react/bridge/WritableArray;->pushMap(Lcom/facebook/react/bridge/WritableMap;)V

    .line 283
    add-int/lit8 v6, v8, 0x1

    move v8, v6

    goto :goto_1

    :cond_1
    move v6, v7

    .line 290
    goto :goto_2

    .line 295
    .end local v0    # "childFile":Ljava/io/File;
    .end local v3    # "fileMap":Lcom/facebook/react/bridge/WritableMap;
    :cond_2
    invoke-interface {p2, v4}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public readDirAssets(Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 20
    .param p1, "directory"    # Ljava/lang/String;
    .param p2, "promise"    # Lcom/facebook/react/bridge/Promise;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .prologue
    .line 305
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/rnfs/RNFSManager;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v15

    invoke-virtual {v15}, Lcom/facebook/react/bridge/ReactApplicationContext;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    .line 306
    .local v5, "assetManager":Landroid/content/res/AssetManager;
    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 308
    .local v13, "list":[Ljava/lang/String;
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object v10

    .line 309
    .local v10, "fileMaps":Lcom/facebook/react/bridge/WritableArray;
    array-length v0, v13

    move/from16 v17, v0

    const/4 v15, 0x0

    move/from16 v16, v15

    :goto_0
    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_3

    aget-object v6, v13, v16

    .line 310
    .local v6, "childFile":Ljava/lang/String;
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v9

    .line 312
    .local v9, "fileMap":Lcom/facebook/react/bridge/WritableMap;
    const-string v15, "name"

    invoke-interface {v9, v15, v6}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_1

    move-object v14, v6

    .line 314
    .local v14, "path":Ljava/lang/String;
    :goto_1
    const-string v15, "path"

    invoke-interface {v9, v15, v14}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 315
    const/4 v12, 0x0

    .line 316
    .local v12, "length":I
    const/4 v11, 0x0

    .line 318
    .local v11, "isDirectory":Z
    :try_start_1
    invoke-virtual {v5, v14}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v4

    .line 319
    .local v4, "assetFileDescriptor":Landroid/content/res/AssetFileDescriptor;
    if-eqz v4, :cond_0

    .line 320
    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v18

    move-wide/from16 v0, v18

    long-to-int v12, v0

    .line 321
    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 327
    .end local v4    # "assetFileDescriptor":Landroid/content/res/AssetFileDescriptor;
    :cond_0
    :goto_2
    :try_start_2
    const-string v15, "size"

    invoke-interface {v9, v15, v12}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 328
    const-string v18, "type"

    if-eqz v11, :cond_2

    const/4 v15, 0x1

    :goto_3
    move-object/from16 v0, v18

    invoke-interface {v9, v0, v15}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 330
    invoke-interface {v10, v9}, Lcom/facebook/react/bridge/WritableArray;->pushMap(Lcom/facebook/react/bridge/WritableMap;)V

    .line 309
    add-int/lit8 v15, v16, 0x1

    move/from16 v16, v15

    goto :goto_0

    .line 313
    .end local v11    # "isDirectory":Z
    .end local v12    # "length":I
    .end local v14    # "path":Ljava/lang/String;
    :cond_1
    const-string v15, "%s/%s"

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object p1, v18, v19

    const/16 v19, 0x1

    aput-object v6, v18, v19

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    goto :goto_1

    .line 323
    .restart local v11    # "isDirectory":Z
    .restart local v12    # "length":I
    .restart local v14    # "path":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 325
    .local v8, "ex":Ljava/io/IOException;
    const/4 v11, 0x1

    goto :goto_2

    .line 328
    .end local v8    # "ex":Ljava/io/IOException;
    :cond_2
    const/4 v15, 0x0

    goto :goto_3

    .line 332
    .end local v6    # "childFile":Ljava/lang/String;
    .end local v9    # "fileMap":Lcom/facebook/react/bridge/WritableMap;
    .end local v11    # "isDirectory":Z
    .end local v12    # "length":I
    .end local v14    # "path":Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p2

    invoke-interface {v0, v10}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 337
    .end local v5    # "assetManager":Landroid/content/res/AssetManager;
    .end local v10    # "fileMaps":Lcom/facebook/react/bridge/WritableArray;
    .end local v13    # "list":[Ljava/lang/String;
    :goto_4
    return-void

    .line 334
    :catch_1
    move-exception v7

    .line 335
    .local v7, "e":Ljava/io/IOException;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2, v7}, Lcom/rnfs/RNFSManager;->reject(Lcom/facebook/react/bridge/Promise;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_4
.end method

.method public readFile(Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 8
    .param p1, "filepath"    # Ljava/lang/String;
    .param p2, "promise"    # Lcom/facebook/react/bridge/Promise;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .prologue
    .line 128
    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 130
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 131
    invoke-direct {p0, p2}, Lcom/rnfs/RNFSManager;->rejectFileIsDirectory(Lcom/facebook/react/bridge/Promise;)V

    .line 151
    .end local v3    # "file":Ljava/io/File;
    :goto_0
    return-void

    .line 135
    .restart local v3    # "file":Ljava/io/File;
    :cond_0
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    .line 136
    invoke-direct {p0, p2, p1}, Lcom/rnfs/RNFSManager;->rejectFileNotFound(Lcom/facebook/react/bridge/Promise;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 147
    .end local v3    # "file":Ljava/io/File;
    :catch_0
    move-exception v2

    .line 148
    .local v2, "ex":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 149
    invoke-direct {p0, p2, p1, v2}, Lcom/rnfs/RNFSManager;->reject(Lcom/facebook/react/bridge/Promise;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 140
    .end local v2    # "ex":Ljava/lang/Exception;
    .restart local v3    # "file":Ljava/io/File;
    :cond_1
    :try_start_1
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 141
    .local v4, "inputStream":Ljava/io/FileInputStream;
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v6

    long-to-int v5, v6

    new-array v1, v5, [B

    .line 142
    .local v1, "buffer":[B
    invoke-virtual {v4, v1}, Ljava/io/FileInputStream;->read([B)I

    .line 144
    const/4 v5, 0x2

    invoke-static {v1, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    .line 146
    .local v0, "base64Content":Ljava/lang/String;
    invoke-interface {p2, v0}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public readFileAssets(Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 7
    .param p1, "filepath"    # Ljava/lang/String;
    .param p2, "promise"    # Lcom/facebook/react/bridge/Promise;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .prologue
    .line 155
    const/4 v4, 0x0

    .line 158
    .local v4, "stream":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0}, Lcom/rnfs/RNFSManager;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v5

    invoke-virtual {v5}, Lcom/facebook/react/bridge/ReactApplicationContext;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 159
    .local v0, "assetManager":Landroid/content/res/AssetManager;
    const/4 v5, 0x0

    invoke-virtual {v0, p1, v5}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object v4

    .line 160
    if-nez v4, :cond_1

    .line 161
    new-instance v5, Ljava/lang/Exception;

    const-string v6, "Failed to open file"

    invoke-direct {v5, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p2, p1, v5}, Lcom/rnfs/RNFSManager;->reject(Lcom/facebook/react/bridge/Promise;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    if-eqz v4, :cond_0

    .line 175
    :try_start_1
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 180
    .end local v0    # "assetManager":Landroid/content/res/AssetManager;
    :cond_0
    :goto_0
    return-void

    .line 165
    .restart local v0    # "assetManager":Landroid/content/res/AssetManager;
    :cond_1
    :try_start_2
    invoke-virtual {v4}, Ljava/io/InputStream;->available()I

    move-result v5

    new-array v2, v5, [B

    .line 166
    .local v2, "buffer":[B
    invoke-virtual {v4, v2}, Ljava/io/InputStream;->read([B)I

    .line 167
    const/4 v5, 0x2

    invoke-static {v2, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    .line 168
    .local v1, "base64Content":Ljava/lang/String;
    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 173
    if-eqz v4, :cond_0

    .line 175
    :try_start_3
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 176
    :catch_0
    move-exception v5

    goto :goto_0

    .line 169
    .end local v0    # "assetManager":Landroid/content/res/AssetManager;
    .end local v1    # "base64Content":Ljava/lang/String;
    .end local v2    # "buffer":[B
    :catch_1
    move-exception v3

    .line 170
    .local v3, "ex":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 171
    invoke-direct {p0, p2, p1, v3}, Lcom/rnfs/RNFSManager;->reject(Lcom/facebook/react/bridge/Promise;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 173
    if-eqz v4, :cond_0

    .line 175
    :try_start_5
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    .line 176
    :catch_2
    move-exception v5

    goto :goto_0

    .line 173
    .end local v3    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    if-eqz v4, :cond_2

    .line 175
    :try_start_6
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 177
    :cond_2
    :goto_1
    throw v5

    .line 176
    .restart local v0    # "assetManager":Landroid/content/res/AssetManager;
    :catch_3
    move-exception v5

    goto :goto_0

    .end local v0    # "assetManager":Landroid/content/res/AssetManager;
    :catch_4
    move-exception v6

    goto :goto_1
.end method

.method public stat(Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 8
    .param p1, "filepath"    # Ljava/lang/String;
    .param p2, "promise"    # Lcom/facebook/react/bridge/Promise;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .prologue
    .line 437
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 439
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/Exception;

    const-string v4, "File does not exist"

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 449
    .end local v1    # "file":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 450
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 451
    invoke-direct {p0, p2, p1, v0}, Lcom/rnfs/RNFSManager;->reject(Lcom/facebook/react/bridge/Promise;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 453
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void

    .line 441
    .restart local v1    # "file":Ljava/io/File;
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v2

    .line 443
    .local v2, "statMap":Lcom/facebook/react/bridge/WritableMap;
    const-string v3, "ctime"

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    long-to-int v4, v4

    invoke-interface {v2, v3, v4}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 444
    const-string v3, "mtime"

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    long-to-int v4, v4

    invoke-interface {v2, v3, v4}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 445
    const-string v3, "size"

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v4

    long-to-int v4, v4

    invoke-interface {v2, v3, v4}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 446
    const-string v4, "type"

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    :goto_1
    invoke-interface {v2, v4, v3}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 448
    invoke-interface {p2, v2}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 446
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public stopDownload(I)V
    .locals 2
    .param p1, "jobId"    # I
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .prologue
    .line 581
    iget-object v1, p0, Lcom/rnfs/RNFSManager;->downloaders:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rnfs/Downloader;

    .line 583
    .local v0, "downloader":Lcom/rnfs/Downloader;
    if-eqz v0, :cond_0

    .line 584
    invoke-virtual {v0}, Lcom/rnfs/Downloader;->stop()V

    .line 586
    :cond_0
    return-void
.end method

.method public unlink(Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 4
    .param p1, "filepath"    # Ljava/lang/String;
    .param p2, "promise"    # Lcom/facebook/react/bridge/Promise;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .prologue
    .line 458
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 460
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/Exception;

    const-string v3, "File does not exist"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 465
    .end local v1    # "file":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 466
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 467
    invoke-direct {p0, p2, p1, v0}, Lcom/rnfs/RNFSManager;->reject(Lcom/facebook/react/bridge/Promise;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 469
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void

    .line 462
    .restart local v1    # "file":Ljava/io/File;
    :cond_0
    :try_start_1
    invoke-direct {p0, v1}, Lcom/rnfs/RNFSManager;->DeleteRecursive(Ljava/io/File;)V

    .line 464
    const/4 v2, 0x0

    invoke-interface {p2, v2}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public write(Ljava/lang/String;Ljava/lang/String;ILcom/facebook/react/bridge/Promise;)V
    .locals 6
    .param p1, "filepath"    # Ljava/lang/String;
    .param p2, "base64Content"    # Ljava/lang/String;
    .param p3, "position"    # I
    .param p4, "promise"    # Lcom/facebook/react/bridge/Promise;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .prologue
    .line 94
    const/4 v4, 0x0

    :try_start_0
    invoke-static {p2, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 96
    .local v0, "bytes":[B
    if-gez p3, :cond_0

    .line 97
    new-instance v3, Ljava/io/FileOutputStream;

    const/4 v4, 0x1

    invoke-direct {v3, p1, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    .line 98
    .local v3, "outputStream":Ljava/io/FileOutputStream;
    invoke-virtual {v3, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 99
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 107
    .end local v3    # "outputStream":Ljava/io/FileOutputStream;
    :goto_0
    const/4 v4, 0x0

    invoke-interface {p4, v4}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    .line 112
    .end local v0    # "bytes":[B
    :goto_1
    return-void

    .line 101
    .restart local v0    # "bytes":[B
    :cond_0
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v4, "rw"

    invoke-direct {v2, p1, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    .local v2, "file":Ljava/io/RandomAccessFile;
    int-to-long v4, p3

    invoke-virtual {v2, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 103
    invoke-virtual {v2, v0}, Ljava/io/RandomAccessFile;->write([B)V

    .line 104
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 108
    .end local v0    # "bytes":[B
    .end local v2    # "file":Ljava/io/RandomAccessFile;
    :catch_0
    move-exception v1

    .line 109
    .local v1, "ex":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 110
    invoke-direct {p0, p4, p1, v1}, Lcom/rnfs/RNFSManager;->reject(Lcom/facebook/react/bridge/Promise;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method public writeFile(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 4
    .param p1, "filepath"    # Ljava/lang/String;
    .param p2, "base64Content"    # Ljava/lang/String;
    .param p3, "promise"    # Lcom/facebook/react/bridge/Promise;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .prologue
    .line 62
    const/4 v3, 0x0

    :try_start_0
    invoke-static {p2, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 64
    .local v0, "bytes":[B
    new-instance v2, Ljava/io/FileOutputStream;

    const/4 v3, 0x0

    invoke-direct {v2, p1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    .line 65
    .local v2, "outputStream":Ljava/io/FileOutputStream;
    invoke-virtual {v2, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 66
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 68
    const/4 v3, 0x0

    invoke-interface {p3, v3}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    .end local v0    # "bytes":[B
    .end local v2    # "outputStream":Ljava/io/FileOutputStream;
    :goto_0
    return-void

    .line 69
    :catch_0
    move-exception v1

    .line 70
    .local v1, "ex":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 71
    invoke-direct {p0, p3, p1, v1}, Lcom/rnfs/RNFSManager;->reject(Lcom/facebook/react/bridge/Promise;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method
