.class public Lcom/oblador/vectoricons/VectorIconsModule;
.super Lcom/facebook/react/bridge/ReactContextBaseJavaModule;
.source "VectorIconsModule.java"


# static fields
.field public static final REACT_CLASS:Ljava/lang/String; = "RNVectorIconsModule"

.field private static final sTypefaceCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/oblador/vectoricons/VectorIconsModule;->sTypefaceCache:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 0
    .param p1, "reactContext"    # Lcom/facebook/react/bridge/ReactApplicationContext;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 40
    return-void
.end method


# virtual methods
.method public getImageForFont(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/facebook/react/bridge/Callback;)V
    .locals 27
    .param p1, "fontFamily"    # Ljava/lang/String;
    .param p2, "glyph"    # Ljava/lang/String;
    .param p3, "fontSize"    # Ljava/lang/Integer;
    .param p4, "color"    # Ljava/lang/Integer;
    .param p5, "callback"    # Lcom/facebook/react/bridge/Callback;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .prologue
    .line 44
    invoke-virtual/range {p0 .. p0}, Lcom/oblador/vectoricons/VectorIconsModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v13

    .line 45
    .local v13, "context":Landroid/content/Context;
    invoke-virtual {v13}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v9

    .line 46
    .local v9, "cacheFolder":Ljava/io/File;
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "/"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 48
    .local v10, "cacheFolderPath":Ljava/lang/String;
    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v24

    move-object/from16 v0, v24

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    move/from16 v19, v0

    .line 49
    .local v19, "scale":F
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "@"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    cmpl-float v24, v19, v24

    if-nez v24, :cond_1

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v24

    :goto_0
    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "x"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 50
    .local v20, "scaleSuffix":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Integer;->intValue()I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    mul-float v24, v24, v19

    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->round(F)I

    move-result v21

    .line 51
    .local v21, "size":I
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ":"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ":"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 52
    .local v11, "cacheKey":Ljava/lang/String;
    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    move-result v24

    const/16 v25, 0x20

    invoke-static/range {v24 .. v25}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v17

    .line 53
    .local v17, "hash":Ljava/lang/String;
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "_"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Integer;->intValue()I

    move-result v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ".png"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 54
    .local v7, "cacheFilePath":Ljava/lang/String;
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "file://"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 55
    .local v8, "cacheFileUrl":Ljava/lang/String;
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 57
    .local v6, "cacheFile":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v24

    if-eqz v24, :cond_2

    .line 58
    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    const/16 v26, 0x0

    aput-object v26, v24, v25

    const/16 v25, 0x1

    aput-object v8, v24, v25

    move-object/from16 v0, p5

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    .line 99
    :cond_0
    :goto_1
    return-void

    .line 49
    .end local v6    # "cacheFile":Ljava/io/File;
    .end local v7    # "cacheFilePath":Ljava/lang/String;
    .end local v8    # "cacheFileUrl":Ljava/lang/String;
    .end local v11    # "cacheKey":Ljava/lang/String;
    .end local v17    # "hash":Ljava/lang/String;
    .end local v20    # "scaleSuffix":Ljava/lang/String;
    .end local v21    # "size":I
    :cond_1
    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v24

    goto/16 :goto_0

    .line 60
    .restart local v6    # "cacheFile":Ljava/io/File;
    .restart local v7    # "cacheFilePath":Ljava/lang/String;
    .restart local v8    # "cacheFileUrl":Ljava/lang/String;
    .restart local v11    # "cacheKey":Ljava/lang/String;
    .restart local v17    # "hash":Ljava/lang/String;
    .restart local v20    # "scaleSuffix":Ljava/lang/String;
    .restart local v21    # "size":I
    :cond_2
    const/4 v15, 0x0

    .line 61
    .local v15, "fos":Ljava/io/FileOutputStream;
    invoke-static {}, Lcom/facebook/react/views/text/ReactFontManager;->getInstance()Lcom/facebook/react/views/text/ReactFontManager;

    move-result-object v24

    const/16 v25, 0x0

    invoke-virtual {v13}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    move/from16 v2, v25

    move-object/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Lcom/facebook/react/views/text/ReactFontManager;->getTypeface(Ljava/lang/String;ILandroid/content/res/AssetManager;)Landroid/graphics/Typeface;

    move-result-object v23

    .line 62
    .local v23, "typeface":Landroid/graphics/Typeface;
    new-instance v18, Landroid/graphics/Paint;

    invoke-direct/range {v18 .. v18}, Landroid/graphics/Paint;-><init>()V

    .line 63
    .local v18, "paint":Landroid/graphics/Paint;
    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 64
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Integer;->intValue()I

    move-result v24

    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 65
    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 66
    const/16 v24, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 67
    new-instance v22, Landroid/graphics/Rect;

    invoke-direct/range {v22 .. v22}, Landroid/graphics/Rect;-><init>()V

    .line 68
    .local v22, "textBounds":Landroid/graphics/Rect;
    const/16 v24, 0x0

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v25

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    move/from16 v2, v24

    move/from16 v3, v25

    move-object/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 70
    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Rect;->width()I

    move-result v24

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Rect;->height()I

    move-result v25

    sget-object v26, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v24 .. v26}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 71
    .local v5, "bitmap":Landroid/graphics/Bitmap;
    new-instance v12, Landroid/graphics/Canvas;

    invoke-direct {v12, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 72
    .local v12, "canvas":Landroid/graphics/Canvas;
    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v24, v0

    move/from16 v0, v24

    neg-int v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v25, v0

    move/from16 v0, v25

    neg-int v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v0, p2

    move/from16 v1, v24

    move/from16 v2, v25

    move-object/from16 v3, v18

    invoke-virtual {v12, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 75
    :try_start_0
    new-instance v16, Ljava/io/FileOutputStream;

    move-object/from16 v0, v16

    invoke-direct {v0, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    .end local v15    # "fos":Ljava/io/FileOutputStream;
    .local v16, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    sget-object v24, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v25, 0x64

    move-object/from16 v0, v24

    move/from16 v1, v25

    move-object/from16 v2, v16

    invoke-virtual {v5, v0, v1, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 77
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileOutputStream;->flush()V

    .line 78
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 79
    const/4 v15, 0x0

    .line 81
    .end local v16    # "fos":Ljava/io/FileOutputStream;
    .restart local v15    # "fos":Ljava/io/FileOutputStream;
    const/16 v24, 0x2

    :try_start_2
    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    const/16 v26, 0x0

    aput-object v26, v24, v25

    const/16 v25, 0x1

    aput-object v8, v24, v25

    move-object/from16 v0, p5

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 88
    if-eqz v15, :cond_0

    .line 90
    :try_start_3
    invoke-virtual {v15}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 91
    const/4 v15, 0x0

    goto/16 :goto_1

    .line 93
    :catch_0
    move-exception v14

    .line 94
    .local v14, "e":Ljava/io/IOException;
    invoke-virtual {v14}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    .line 82
    .end local v14    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v14

    .line 83
    .local v14, "e":Ljava/io/FileNotFoundException;
    :goto_2
    const/16 v24, 0x1

    :try_start_4
    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual {v14}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v26

    aput-object v26, v24, v25

    move-object/from16 v0, p5

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 88
    if-eqz v15, :cond_0

    .line 90
    :try_start_5
    invoke-virtual {v15}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 91
    const/4 v15, 0x0

    goto/16 :goto_1

    .line 93
    :catch_2
    move-exception v14

    .line 94
    .local v14, "e":Ljava/io/IOException;
    invoke-virtual {v14}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    .line 84
    .end local v14    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v14

    .line 85
    .restart local v14    # "e":Ljava/io/IOException;
    :goto_3
    const/16 v24, 0x1

    :try_start_6
    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual {v14}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v26

    aput-object v26, v24, v25

    move-object/from16 v0, p5

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 88
    if-eqz v15, :cond_0

    .line 90
    :try_start_7
    invoke-virtual {v15}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 91
    const/4 v15, 0x0

    goto/16 :goto_1

    .line 93
    :catch_4
    move-exception v14

    .line 94
    invoke-virtual {v14}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    .line 88
    .end local v14    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v24

    :goto_4
    if-eqz v15, :cond_3

    .line 90
    :try_start_8
    invoke-virtual {v15}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 91
    const/4 v15, 0x0

    .line 95
    :cond_3
    :goto_5
    throw v24

    .line 93
    :catch_5
    move-exception v14

    .line 94
    .restart local v14    # "e":Ljava/io/IOException;
    invoke-virtual {v14}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 88
    .end local v14    # "e":Ljava/io/IOException;
    .end local v15    # "fos":Ljava/io/FileOutputStream;
    .restart local v16    # "fos":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v24

    move-object/from16 v15, v16

    .end local v16    # "fos":Ljava/io/FileOutputStream;
    .restart local v15    # "fos":Ljava/io/FileOutputStream;
    goto :goto_4

    .line 84
    .end local v15    # "fos":Ljava/io/FileOutputStream;
    .restart local v16    # "fos":Ljava/io/FileOutputStream;
    :catch_6
    move-exception v14

    move-object/from16 v15, v16

    .end local v16    # "fos":Ljava/io/FileOutputStream;
    .restart local v15    # "fos":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 82
    .end local v15    # "fos":Ljava/io/FileOutputStream;
    .restart local v16    # "fos":Ljava/io/FileOutputStream;
    :catch_7
    move-exception v14

    move-object/from16 v15, v16

    .end local v16    # "fos":Ljava/io/FileOutputStream;
    .restart local v15    # "fos":Ljava/io/FileOutputStream;
    goto :goto_2
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    const-string v0, "RNVectorIconsModule"

    return-object v0
.end method
