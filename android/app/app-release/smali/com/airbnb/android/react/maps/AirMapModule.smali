.class public Lcom/airbnb/android/react/maps/AirMapModule;
.super Lcom/facebook/react/bridge/ReactContextBaseJavaModule;
.source "AirMapModule.java"


# static fields
.field private static final SNAPSHOT_FORMAT_JPG:Ljava/lang/String; = "jpg"

.field private static final SNAPSHOT_FORMAT_PNG:Ljava/lang/String; = "png"

.field private static final SNAPSHOT_RESULT_BASE64:Ljava/lang/String; = "base64"

.field private static final SNAPSHOT_RESULT_FILE:Ljava/lang/String; = "file"


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 0
    .param p1, "reactContext"    # Lcom/facebook/react/bridge/ReactApplicationContext;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 36
    return-void
.end method

.method public static closeQuietly(Ljava/io/Closeable;)V
    .locals 1
    .param p0, "closeable"    # Ljava/io/Closeable;

    .prologue
    .line 48
    if-nez p0, :cond_0

    .line 53
    :goto_0
    return-void

    .line 50
    :cond_0
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 51
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public getActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/airbnb/android/react/maps/AirMapModule;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    const-string v0, "AirMapModule"

    return-object v0
.end method

.method public takeSnapshot(ILcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 16
    .param p1, "tag"    # I
    .param p2, "options"    # Lcom/facebook/react/bridge/ReadableMap;
    .param p3, "promise"    # Lcom/facebook/react/bridge/Promise;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .prologue
    .line 59
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/android/react/maps/AirMapModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v10

    .line 60
    .local v10, "context":Lcom/facebook/react/bridge/ReactApplicationContext;
    const-string v2, "format"

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "format"

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 61
    .local v9, "format":Ljava/lang/String;
    :goto_0
    const-string v2, "png"

    .line 62
    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v11, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    .line 64
    .local v11, "compressFormat":Landroid/graphics/Bitmap$CompressFormat;
    :goto_1
    const-string v2, "quality"

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "quality"

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v12

    .line 65
    .local v12, "quality":D
    :goto_2
    invoke-virtual {v10}, Lcom/facebook/react/bridge/ReactApplicationContext;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v14

    .line 66
    .local v14, "displayMetrics":Landroid/util/DisplayMetrics;
    const-string v2, "width"

    .line 67
    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget v2, v14, Landroid/util/DisplayMetrics;->density:F

    float-to-double v2, v2

    const-string v4, "width"

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-int v2, v2

    :goto_3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 68
    .local v6, "width":Ljava/lang/Integer;
    const-string v2, "height"

    .line 69
    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget v2, v14, Landroid/util/DisplayMetrics;->density:F

    float-to-double v2, v2

    const-string v4, "height"

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-int v2, v2

    :goto_4
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 70
    .local v7, "height":Ljava/lang/Integer;
    const-string v2, "result"

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "result"

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 73
    .local v8, "result":Ljava/lang/String;
    :goto_5
    const-class v2, Lcom/facebook/react/uimanager/UIManagerModule;

    invoke-virtual {v10, v2}, Lcom/facebook/react/bridge/ReactApplicationContext;->getNativeModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/NativeModule;

    move-result-object v15

    check-cast v15, Lcom/facebook/react/uimanager/UIManagerModule;

    .line 74
    .local v15, "uiManager":Lcom/facebook/react/uimanager/UIManagerModule;
    new-instance v2, Lcom/airbnb/android/react/maps/AirMapModule$1;

    move-object/from16 v3, p0

    move/from16 v4, p1

    move-object/from16 v5, p3

    invoke-direct/range {v2 .. v13}, Lcom/airbnb/android/react/maps/AirMapModule$1;-><init>(Lcom/airbnb/android/react/maps/AirMapModule;ILcom/facebook/react/bridge/Promise;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/ReactApplicationContext;Landroid/graphics/Bitmap$CompressFormat;D)V

    invoke-virtual {v15, v2}, Lcom/facebook/react/uimanager/UIManagerModule;->addUIBlock(Lcom/facebook/react/uimanager/UIBlock;)V

    .line 126
    return-void

    .line 60
    .end local v6    # "width":Ljava/lang/Integer;
    .end local v7    # "height":Ljava/lang/Integer;
    .end local v8    # "result":Ljava/lang/String;
    .end local v9    # "format":Ljava/lang/String;
    .end local v11    # "compressFormat":Landroid/graphics/Bitmap$CompressFormat;
    .end local v12    # "quality":D
    .end local v14    # "displayMetrics":Landroid/util/DisplayMetrics;
    .end local v15    # "uiManager":Lcom/facebook/react/uimanager/UIManagerModule;
    :cond_0
    const-string v9, "png"

    goto/16 :goto_0

    .line 62
    .restart local v9    # "format":Ljava/lang/String;
    :cond_1
    const-string v2, "jpg"

    .line 63
    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v11, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    goto/16 :goto_1

    :cond_2
    const/4 v11, 0x0

    goto/16 :goto_1

    .line 64
    .restart local v11    # "compressFormat":Landroid/graphics/Bitmap$CompressFormat;
    :cond_3
    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    goto :goto_2

    .line 67
    .restart local v12    # "quality":D
    .restart local v14    # "displayMetrics":Landroid/util/DisplayMetrics;
    :cond_4
    const/4 v2, 0x0

    goto :goto_3

    .line 69
    .restart local v6    # "width":Ljava/lang/Integer;
    :cond_5
    const/4 v2, 0x0

    goto :goto_4

    .line 70
    .restart local v7    # "height":Ljava/lang/Integer;
    :cond_6
    const-string v8, "file"

    goto :goto_5
.end method
