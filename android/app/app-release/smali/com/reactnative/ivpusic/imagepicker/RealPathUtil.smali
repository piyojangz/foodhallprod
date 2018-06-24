.class public Lcom/reactnative/ivpusic/imagepicker/RealPathUtil;
.super Ljava/lang/Object;
.source "RealPathUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDataColumn(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 107
    const/4 v7, 0x0

    .line 108
    .local v7, "cursor":Landroid/database/Cursor;
    const-string v6, "_data"

    .line 109
    .local v6, "column":Ljava/lang/String;
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_data"

    aput-object v1, v2, v0

    .line 114
    .local v2, "projection":[Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v5, 0x0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 116
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 117
    const-string v0, "_data"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 118
    .local v8, "index":I
    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 121
    if-eqz v7, :cond_0

    .line 122
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 124
    .end local v8    # "index":I
    :cond_0
    :goto_0
    return-object v0

    .line 121
    :cond_1
    if-eqz v7, :cond_2

    .line 122
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v0, v9

    .line 124
    goto :goto_0

    .line 121
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_3

    .line 122
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public static getPathToNonPrimaryVolume(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "tag"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x13
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 162
    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDirs()[Ljava/io/File;

    move-result-object v3

    .line 163
    .local v3, "volumes":[Ljava/io/File;
    if-eqz v3, :cond_1

    .line 164
    array-length v6, v3

    move v4, v5

    :goto_0
    if-ge v4, v6, :cond_1

    aget-object v2, v3, v4

    .line 165
    .local v2, "volume":Ljava/io/File;
    if-eqz v2, :cond_0

    .line 166
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 167
    .local v1, "path":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 168
    invoke-virtual {v1, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 169
    .local v0, "index":I
    const/4 v7, -0x1

    if-eq v0, v7, :cond_0

    .line 170
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 176
    .end local v0    # "index":I
    .end local v1    # "path":Ljava/lang/String;
    .end local v2    # "volume":Ljava/io/File;
    :goto_1
    return-object v4

    .line 164
    .restart local v2    # "volume":Ljava/io/File;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 176
    .end local v2    # "volume":Ljava/io/File;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static getRealPathFromURI(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 22
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 17
    sget v18, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v19, 0x13

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_1

    const/4 v8, 0x1

    .line 20
    .local v8, "isKitKat":Z
    :goto_0
    if-eqz v8, :cond_9

    invoke-static/range {p0 .. p1}, Landroid/provider/DocumentsContract;->isDocumentUri(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v18

    if-eqz v18, :cond_9

    .line 22
    invoke-static/range {p1 .. p1}, Lcom/reactnative/ivpusic/imagepicker/RealPathUtil;->isExternalStorageDocument(Landroid/net/Uri;)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 23
    invoke-static/range {p1 .. p1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v5

    .line 24
    .local v5, "docId":Ljava/lang/String;
    const-string v18, ":"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 25
    .local v14, "split":[Ljava/lang/String;
    const/16 v18, 0x0

    aget-object v17, v14, v18

    .line 27
    .local v17, "type":Ljava/lang/String;
    const-string v18, "primary"

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 28
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "/"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const/16 v19, 0x1

    aget-object v19, v14, v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 91
    .end local v5    # "docId":Ljava/lang/String;
    .end local v14    # "split":[Ljava/lang/String;
    .end local v17    # "type":Ljava/lang/String;
    :cond_0
    :goto_1
    return-object v11

    .line 17
    .end local v8    # "isKitKat":Z
    :cond_1
    const/4 v8, 0x0

    goto :goto_0

    .line 30
    .restart local v5    # "docId":Ljava/lang/String;
    .restart local v8    # "isKitKat":Z
    .restart local v14    # "split":[Ljava/lang/String;
    .restart local v17    # "type":Ljava/lang/String;
    :cond_2
    const/16 v18, 0x3a

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v5, v0, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v15

    .line 31
    .local v15, "splitIndex":I
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v5, v0, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    .line 32
    .local v16, "tag":Ljava/lang/String;
    add-int/lit8 v18, v15, 0x1

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 34
    .local v10, "path":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/reactnative/ivpusic/imagepicker/RealPathUtil;->getPathToNonPrimaryVolume(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 35
    .local v9, "nonPrimaryVolume":Ljava/lang/String;
    if-eqz v9, :cond_c

    .line 36
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "/"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 37
    .local v11, "result":Ljava/lang/String;
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 38
    .local v6, "file":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v18

    if-eqz v18, :cond_3

    invoke-virtual {v6}, Ljava/io/File;->canRead()Z

    move-result v18

    if-nez v18, :cond_0

    .line 41
    :cond_3
    const/4 v11, 0x0

    goto :goto_1

    .line 46
    .end local v5    # "docId":Ljava/lang/String;
    .end local v6    # "file":Ljava/io/File;
    .end local v9    # "nonPrimaryVolume":Ljava/lang/String;
    .end local v10    # "path":Ljava/lang/String;
    .end local v11    # "result":Ljava/lang/String;
    .end local v14    # "split":[Ljava/lang/String;
    .end local v15    # "splitIndex":I
    .end local v16    # "tag":Ljava/lang/String;
    .end local v17    # "type":Ljava/lang/String;
    :cond_4
    invoke-static/range {p1 .. p1}, Lcom/reactnative/ivpusic/imagepicker/RealPathUtil;->isDownloadsDocument(Landroid/net/Uri;)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 48
    invoke-static/range {p1 .. p1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v7

    .line 49
    .local v7, "id":Ljava/lang/String;
    const-string v18, "content://downloads/public_downloads"

    .line 50
    invoke-static/range {v18 .. v18}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v18

    invoke-static {v7}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    .line 49
    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 52
    .local v4, "contentUri":Landroid/net/Uri;
    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-static {v0, v4, v1, v2}, Lcom/reactnative/ivpusic/imagepicker/RealPathUtil;->getDataColumn(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_1

    .line 55
    .end local v4    # "contentUri":Landroid/net/Uri;
    .end local v7    # "id":Ljava/lang/String;
    :cond_5
    invoke-static/range {p1 .. p1}, Lcom/reactnative/ivpusic/imagepicker/RealPathUtil;->isMediaDocument(Landroid/net/Uri;)Z

    move-result v18

    if-eqz v18, :cond_c

    .line 56
    invoke-static/range {p1 .. p1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v5

    .line 57
    .restart local v5    # "docId":Ljava/lang/String;
    const-string v18, ":"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 58
    .restart local v14    # "split":[Ljava/lang/String;
    const/16 v18, 0x0

    aget-object v17, v14, v18

    .line 60
    .restart local v17    # "type":Ljava/lang/String;
    const/4 v4, 0x0

    .line 61
    .restart local v4    # "contentUri":Landroid/net/Uri;
    const-string v18, "image"

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_7

    .line 62
    sget-object v4, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 69
    :cond_6
    :goto_2
    const-string v12, "_id=?"

    .line 70
    .local v12, "selection":Ljava/lang/String;
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v13, v0, [Ljava/lang/String;

    const/16 v18, 0x0

    const/16 v19, 0x1

    aget-object v19, v14, v19

    aput-object v19, v13, v18

    .line 74
    .local v13, "selectionArgs":[Ljava/lang/String;
    const-string v18, "_id=?"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-static {v0, v4, v1, v13}, Lcom/reactnative/ivpusic/imagepicker/RealPathUtil;->getDataColumn(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_1

    .line 63
    .end local v12    # "selection":Ljava/lang/String;
    .end local v13    # "selectionArgs":[Ljava/lang/String;
    :cond_7
    const-string v18, "video"

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_8

    .line 64
    sget-object v4, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_2

    .line 65
    :cond_8
    const-string v18, "audio"

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_6

    .line 66
    sget-object v4, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_2

    .line 78
    .end local v4    # "contentUri":Landroid/net/Uri;
    .end local v5    # "docId":Ljava/lang/String;
    .end local v14    # "split":[Ljava/lang/String;
    .end local v17    # "type":Ljava/lang/String;
    :cond_9
    const-string v18, "content"

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_b

    .line 81
    invoke-static/range {p1 .. p1}, Lcom/reactnative/ivpusic/imagepicker/RealPathUtil;->isGooglePhotosUri(Landroid/net/Uri;)Z

    move-result v18

    if-eqz v18, :cond_a

    .line 82
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_1

    .line 84
    :cond_a
    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-static {v0, v1, v2, v3}, Lcom/reactnative/ivpusic/imagepicker/RealPathUtil;->getDataColumn(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_1

    .line 87
    :cond_b
    const-string v18, "file"

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_c

    .line 88
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_1

    .line 91
    :cond_c
    const/4 v11, 0x0

    goto/16 :goto_1
.end method

.method public static isDownloadsDocument(Landroid/net/Uri;)Z
    .locals 2
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 141
    const-string v0, "com.android.providers.downloads.documents"

    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isExternalStorageDocument(Landroid/net/Uri;)Z
    .locals 2
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 133
    const-string v0, "com.android.externalstorage.documents"

    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isGooglePhotosUri(Landroid/net/Uri;)Z
    .locals 2
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 157
    const-string v0, "com.google.android.apps.photos.content"

    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isMediaDocument(Landroid/net/Uri;)Z
    .locals 2
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 149
    const-string v0, "com.android.providers.media.documents"

    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
