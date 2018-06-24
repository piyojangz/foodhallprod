.class public Lcom/rnfs/Downloader;
.super Landroid/os/AsyncTask;
.source "Downloader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/rnfs/DownloadParams;",
        "[I",
        "Lcom/rnfs/DownloadResult;",
        ">;"
    }
.end annotation


# instance fields
.field private mAbort:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mParam:Lcom/rnfs/DownloadParams;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 24
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/rnfs/Downloader;->mAbort:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private download(Lcom/rnfs/DownloadParams;Lcom/rnfs/DownloadResult;)V
    .locals 32
    .param p1, "param"    # Lcom/rnfs/DownloadParams;
    .param p2, "res"    # Lcom/rnfs/DownloadResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 44
    const/4 v11, 0x0

    .line 45
    .local v11, "input":Ljava/io/InputStream;
    const/16 v19, 0x0

    .line 46
    .local v19, "output":Ljava/io/OutputStream;
    const/4 v4, 0x0

    .line 49
    .local v4, "connection":Ljava/net/HttpURLConnection;
    :try_start_0
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/rnfs/DownloadParams;->src:Ljava/net/URL;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v28

    move-object/from16 v0, v28

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v4, v0

    .line 51
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/rnfs/DownloadParams;->headers:Lcom/facebook/react/bridge/ReadableMap;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lcom/facebook/react/bridge/ReadableMap;->keySetIterator()Lcom/facebook/react/bridge/ReadableMapKeySetIterator;

    move-result-object v14

    .line 53
    .local v14, "iterator":Lcom/facebook/react/bridge/ReadableMapKeySetIterator;
    :goto_0
    invoke-interface {v14}, Lcom/facebook/react/bridge/ReadableMapKeySetIterator;->hasNextKey()Z

    move-result v28

    if-eqz v28, :cond_3

    .line 54
    invoke-interface {v14}, Lcom/facebook/react/bridge/ReadableMapKeySetIterator;->nextKey()Ljava/lang/String;

    move-result-object v15

    .line 55
    .local v15, "key":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/rnfs/DownloadParams;->headers:Lcom/facebook/react/bridge/ReadableMap;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-interface {v0, v15}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 56
    .local v26, "value":Ljava/lang/String;
    move-object/from16 v0, v26

    invoke-virtual {v4, v15, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 135
    .end local v14    # "iterator":Lcom/facebook/react/bridge/ReadableMapKeySetIterator;
    .end local v15    # "key":Ljava/lang/String;
    .end local v26    # "value":Ljava/lang/String;
    :catchall_0
    move-exception v28

    :goto_1
    if-eqz v19, :cond_0

    invoke-virtual/range {v19 .. v19}, Ljava/io/OutputStream;->close()V

    .line 136
    :cond_0
    if-eqz v11, :cond_1

    invoke-virtual {v11}, Ljava/io/InputStream;->close()V

    .line 137
    :cond_1
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_2
    throw v28

    .line 59
    .restart local v14    # "iterator":Lcom/facebook/react/bridge/ReadableMapKeySetIterator;
    :cond_3
    :try_start_1
    move-object/from16 v0, p1

    iget v0, v0, Lcom/rnfs/DownloadParams;->connectionTimeout:I

    move/from16 v28, v0

    move/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 60
    move-object/from16 v0, p1

    iget v0, v0, Lcom/rnfs/DownloadParams;->readTimeout:I

    move/from16 v28, v0

    move/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 61
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->connect()V

    .line 63
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v24

    .line 64
    .local v24, "statusCode":I
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v18

    .line 66
    .local v18, "lengthOfFile":I
    const/16 v28, 0xc8

    move/from16 v0, v24

    move/from16 v1, v28

    if-eq v0, v1, :cond_7

    const/16 v28, 0x12d

    move/from16 v0, v24

    move/from16 v1, v28

    if-eq v0, v1, :cond_4

    const/16 v28, 0x12e

    move/from16 v0, v24

    move/from16 v1, v28

    if-eq v0, v1, :cond_4

    const/16 v28, 0x133

    move/from16 v0, v24

    move/from16 v1, v28

    if-eq v0, v1, :cond_4

    const/16 v28, 0x134

    move/from16 v0, v24

    move/from16 v1, v28

    if-ne v0, v1, :cond_7

    :cond_4
    const/4 v13, 0x1

    .line 76
    .local v13, "isRedirect":Z
    :goto_2
    if-eqz v13, :cond_5

    .line 77
    const-string v28, "Location"

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 78
    .local v21, "redirectURL":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 80
    new-instance v28, Ljava/net/URL;

    move-object/from16 v0, v28

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v28 .. v28}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v28

    move-object/from16 v0, v28

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v4, v0

    .line 81
    const/16 v28, 0x1388

    move/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 82
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->connect()V

    .line 84
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v24

    .line 85
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v18

    .line 88
    .end local v21    # "redirectURL":Ljava/lang/String;
    :cond_5
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v9

    .line 90
    .local v9, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 92
    .local v10, "headersFlat":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v29

    :cond_6
    :goto_3
    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_8

    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 93
    .local v7, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 94
    .local v8, "headerKey":Ljava/lang/String;
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/util/List;

    const/16 v30, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v30

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/String;

    .line 96
    .local v27, "valueKey":Ljava/lang/String;
    if-eqz v8, :cond_6

    if-eqz v27, :cond_6

    .line 97
    move-object/from16 v0, v27

    invoke-interface {v10, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 66
    .end local v7    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v8    # "headerKey":Ljava/lang/String;
    .end local v9    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v10    # "headersFlat":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v13    # "isRedirect":Z
    .end local v27    # "valueKey":Ljava/lang/String;
    :cond_7
    const/4 v13, 0x0

    goto :goto_2

    .line 101
    .restart local v9    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .restart local v10    # "headersFlat":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v13    # "isRedirect":Z
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rnfs/Downloader;->mParam:Lcom/rnfs/DownloadParams;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/rnfs/DownloadParams;->onDownloadBegin:Lcom/rnfs/DownloadParams$OnDownloadBegin;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, v24

    move/from16 v2, v18

    invoke-interface {v0, v1, v2, v10}, Lcom/rnfs/DownloadParams$OnDownloadBegin;->onDownloadBegin(IILjava/util/Map;)V

    .line 103
    new-instance v12, Ljava/io/BufferedInputStream;

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v28

    const/16 v29, 0x2000

    move-object/from16 v0, v28

    move/from16 v1, v29

    invoke-direct {v12, v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 104
    .end local v11    # "input":Ljava/io/InputStream;
    .local v12, "input":Ljava/io/InputStream;
    :try_start_2
    new-instance v20, Ljava/io/FileOutputStream;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/rnfs/DownloadParams;->dest:Ljava/io/File;

    move-object/from16 v28, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 106
    .end local v19    # "output":Ljava/io/OutputStream;
    .local v20, "output":Ljava/io/OutputStream;
    const/16 v28, 0x2000

    :try_start_3
    move/from16 v0, v28

    new-array v6, v0, [B

    .line 107
    .local v6, "data":[B
    const/16 v25, 0x0

    .line 109
    .local v25, "total":I
    const-wide/16 v16, 0x0

    .line 111
    .local v16, "lastProgressValue":D
    :goto_4
    invoke-virtual {v12, v6}, Ljava/io/InputStream;->read([B)I

    move-result v5

    .local v5, "count":I
    const/16 v28, -0x1

    move/from16 v0, v28

    if-eq v5, v0, :cond_d

    .line 112
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rnfs/Downloader;->mAbort:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v28

    if-eqz v28, :cond_9

    new-instance v28, Ljava/lang/Exception;

    const-string v29, "Download has been aborted"

    invoke-direct/range {v28 .. v29}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v28

    .line 135
    .end local v5    # "count":I
    .end local v6    # "data":[B
    .end local v16    # "lastProgressValue":D
    .end local v25    # "total":I
    :catchall_1
    move-exception v28

    move-object/from16 v19, v20

    .end local v20    # "output":Ljava/io/OutputStream;
    .restart local v19    # "output":Ljava/io/OutputStream;
    move-object v11, v12

    .end local v12    # "input":Ljava/io/InputStream;
    .restart local v11    # "input":Ljava/io/InputStream;
    goto/16 :goto_1

    .line 114
    .end local v11    # "input":Ljava/io/InputStream;
    .end local v19    # "output":Ljava/io/OutputStream;
    .restart local v5    # "count":I
    .restart local v6    # "data":[B
    .restart local v12    # "input":Ljava/io/InputStream;
    .restart local v16    # "lastProgressValue":D
    .restart local v20    # "output":Ljava/io/OutputStream;
    .restart local v25    # "total":I
    :cond_9
    add-int v25, v25, v5

    .line 115
    move-object/from16 v0, p1

    iget v0, v0, Lcom/rnfs/DownloadParams;->progressDivider:F

    move/from16 v28, v0

    const/16 v29, 0x0

    cmpg-float v28, v28, v29

    if-gtz v28, :cond_b

    .line 116
    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [[I

    move-object/from16 v28, v0

    const/16 v29, 0x0

    const/16 v30, 0x2

    move/from16 v0, v30

    new-array v0, v0, [I

    move-object/from16 v30, v0

    const/16 v31, 0x0

    aput v18, v30, v31

    const/16 v31, 0x1

    aput v25, v30, v31

    aput-object v30, v28, v29

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/rnfs/Downloader;->publishProgress([Ljava/lang/Object;)V

    .line 127
    :cond_a
    :goto_5
    const/16 v28, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v28

    invoke-virtual {v0, v6, v1, v5}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_4

    .line 118
    :cond_b
    move/from16 v0, v25

    int-to-double v0, v0

    move-wide/from16 v28, v0

    const-wide/high16 v30, 0x4059000000000000L    # 100.0

    mul-double v28, v28, v30

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v30, v0

    div-double v28, v28, v30

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->round(D)J

    move-result-wide v28

    move-wide/from16 v0, v28

    long-to-double v0, v0

    move-wide/from16 v22, v0

    .line 119
    .local v22, "progress":D
    move-object/from16 v0, p1

    iget v0, v0, Lcom/rnfs/DownloadParams;->progressDivider:F

    move/from16 v28, v0

    move/from16 v0, v28

    float-to-double v0, v0

    move-wide/from16 v28, v0

    rem-double v28, v22, v28

    const-wide/16 v30, 0x0

    cmpl-double v28, v28, v30

    if-nez v28, :cond_a

    .line 120
    cmpl-double v28, v22, v16

    if-nez v28, :cond_c

    move/from16 v0, v25

    move/from16 v1, v18

    if-ne v0, v1, :cond_a

    .line 121
    :cond_c
    const-string v28, "Downloader"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "EMIT: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-static/range {v22 .. v23}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ", TOTAL:"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-static/range {v25 .. v25}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    move-wide/from16 v16, v22

    .line 123
    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [[I

    move-object/from16 v28, v0

    const/16 v29, 0x0

    const/16 v30, 0x2

    move/from16 v0, v30

    new-array v0, v0, [I

    move-object/from16 v30, v0

    const/16 v31, 0x0

    aput v18, v30, v31

    const/16 v31, 0x1

    aput v25, v30, v31

    aput-object v30, v28, v29

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/rnfs/Downloader;->publishProgress([Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 130
    .end local v22    # "progress":D
    :cond_d
    invoke-virtual/range {v20 .. v20}, Ljava/io/OutputStream;->flush()V

    .line 132
    move/from16 v0, v24

    move-object/from16 v1, p2

    iput v0, v1, Lcom/rnfs/DownloadResult;->statusCode:I

    .line 133
    move/from16 v0, v25

    move-object/from16 v1, p2

    iput v0, v1, Lcom/rnfs/DownloadResult;->bytesWritten:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 135
    if-eqz v20, :cond_e

    invoke-virtual/range {v20 .. v20}, Ljava/io/OutputStream;->close()V

    .line 136
    :cond_e
    if-eqz v12, :cond_f

    invoke-virtual {v12}, Ljava/io/InputStream;->close()V

    .line 137
    :cond_f
    if-eqz v4, :cond_10

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 139
    :cond_10
    return-void

    .line 135
    .end local v5    # "count":I
    .end local v6    # "data":[B
    .end local v16    # "lastProgressValue":D
    .end local v20    # "output":Ljava/io/OutputStream;
    .end local v25    # "total":I
    .restart local v19    # "output":Ljava/io/OutputStream;
    :catchall_2
    move-exception v28

    move-object v11, v12

    .end local v12    # "input":Ljava/io/InputStream;
    .restart local v11    # "input":Ljava/io/InputStream;
    goto/16 :goto_1
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/rnfs/DownloadParams;)Lcom/rnfs/DownloadResult;
    .locals 3
    .param p1, "params"    # [Lcom/rnfs/DownloadParams;

    .prologue
    .line 27
    const/4 v2, 0x0

    aget-object v2, p1, v2

    iput-object v2, p0, Lcom/rnfs/Downloader;->mParam:Lcom/rnfs/DownloadParams;

    .line 29
    new-instance v1, Lcom/rnfs/DownloadResult;

    invoke-direct {v1}, Lcom/rnfs/DownloadResult;-><init>()V

    .line 32
    .local v1, "res":Lcom/rnfs/DownloadResult;
    :try_start_0
    iget-object v2, p0, Lcom/rnfs/Downloader;->mParam:Lcom/rnfs/DownloadParams;

    invoke-direct {p0, v2, v1}, Lcom/rnfs/Downloader;->download(Lcom/rnfs/DownloadParams;Lcom/rnfs/DownloadResult;)V

    .line 33
    iget-object v2, p0, Lcom/rnfs/Downloader;->mParam:Lcom/rnfs/DownloadParams;

    iget-object v2, v2, Lcom/rnfs/DownloadParams;->onTaskCompleted:Lcom/rnfs/DownloadParams$OnTaskCompleted;

    invoke-interface {v2, v1}, Lcom/rnfs/DownloadParams$OnTaskCompleted;->onTaskCompleted(Lcom/rnfs/DownloadResult;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    :goto_0
    return-object v1

    .line 34
    :catch_0
    move-exception v0

    .line 35
    .local v0, "ex":Ljava/lang/Exception;
    iput-object v0, v1, Lcom/rnfs/DownloadResult;->exception:Ljava/lang/Exception;

    .line 36
    iget-object v2, p0, Lcom/rnfs/Downloader;->mParam:Lcom/rnfs/DownloadParams;

    iget-object v2, v2, Lcom/rnfs/DownloadParams;->onTaskCompleted:Lcom/rnfs/DownloadParams$OnTaskCompleted;

    invoke-interface {v2, v1}, Lcom/rnfs/DownloadParams$OnTaskCompleted;->onTaskCompleted(Lcom/rnfs/DownloadResult;)V

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 22
    check-cast p1, [Lcom/rnfs/DownloadParams;

    invoke-virtual {p0, p1}, Lcom/rnfs/Downloader;->doInBackground([Lcom/rnfs/DownloadParams;)Lcom/rnfs/DownloadResult;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Exception;)V
    .locals 0
    .param p1, "ex"    # Ljava/lang/Exception;

    .prologue
    .line 153
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 22
    check-cast p1, [[I

    invoke-virtual {p0, p1}, Lcom/rnfs/Downloader;->onProgressUpdate([[I)V

    return-void
.end method

.method protected varargs onProgressUpdate([[I)V
    .locals 4
    .param p1, "values"    # [[I

    .prologue
    const/4 v2, 0x0

    .line 147
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 148
    iget-object v0, p0, Lcom/rnfs/Downloader;->mParam:Lcom/rnfs/DownloadParams;

    iget-object v0, v0, Lcom/rnfs/DownloadParams;->onDownloadProgress:Lcom/rnfs/DownloadParams$OnDownloadProgress;

    aget-object v1, p1, v2

    aget v1, v1, v2

    aget-object v2, p1, v2

    const/4 v3, 0x1

    aget v2, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/rnfs/DownloadParams$OnDownloadProgress;->onDownloadProgress(II)V

    .line 149
    return-void
.end method

.method protected stop()V
    .locals 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/rnfs/Downloader;->mAbort:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 143
    return-void
.end method
