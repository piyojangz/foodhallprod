.class public Lcom/google/maps/android/PolyUtil;
.super Ljava/lang/Object;
.source "PolyUtil.java"


# static fields
.field private static final DEFAULT_TOLERANCE:D = 0.1


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static containsLocation(Lcom/google/android/gms/maps/model/LatLng;Ljava/util/List;Z)Z
    .locals 28
    .param p0, "point"    # Lcom/google/android/gms/maps/model/LatLng;
    .param p2, "geodesic"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/maps/model/LatLng;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;Z)Z"
        }
    .end annotation

    .prologue
    .line 97
    .local p1, "polygon":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/gms/maps/model/LatLng;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v27

    .line 98
    .local v27, "size":I
    if-nez v27, :cond_0

    .line 99
    const/4 v2, 0x0

    .line 122
    :goto_0
    return v2

    .line 101
    :cond_0
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v8

    .line 102
    .local v8, "lat3":D
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v22

    .line 103
    .local v22, "lng3":D
    add-int/lit8 v2, v27, -0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/google/android/gms/maps/model/LatLng;

    .line 104
    .local v26, "prev":Lcom/google/android/gms/maps/model/LatLng;
    move-object/from16 v0, v26

    iget-wide v2, v0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v14

    .line 105
    .local v14, "lat1":D
    move-object/from16 v0, v26

    iget-wide v2, v0, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v18

    .line 106
    .local v18, "lng1":D
    const/16 v24, 0x0

    .line 107
    .local v24, "nIntersect":I
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/google/android/gms/maps/model/LatLng;

    .line 108
    .local v25, "point2":Lcom/google/android/gms/maps/model/LatLng;
    sub-double v2, v22, v18

    const-wide v4, -0x3ff6de04abbbd2e8L    # -3.141592653589793

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    invoke-static/range {v2 .. v7}, Lcom/google/maps/android/MathUtil;->wrap(DDD)D

    move-result-wide v10

    .line 110
    .local v10, "dLng3":D
    cmpl-double v2, v8, v14

    if-nez v2, :cond_1

    const-wide/16 v2, 0x0

    cmpl-double v2, v10, v2

    if-nez v2, :cond_1

    .line 111
    const/4 v2, 0x1

    goto :goto_0

    .line 113
    :cond_1
    move-object/from16 v0, v25

    iget-wide v2, v0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v16

    .line 114
    .local v16, "lat2":D
    move-object/from16 v0, v25

    iget-wide v2, v0, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v20

    .line 116
    .local v20, "lng2":D
    sub-double v2, v20, v18

    const-wide v4, -0x3ff6de04abbbd2e8L    # -3.141592653589793

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    invoke-static/range {v2 .. v7}, Lcom/google/maps/android/MathUtil;->wrap(DDD)D

    move-result-wide v6

    move-wide v2, v14

    move-wide/from16 v4, v16

    move/from16 v12, p2

    invoke-static/range {v2 .. v12}, Lcom/google/maps/android/PolyUtil;->intersects(DDDDDZ)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 117
    add-int/lit8 v24, v24, 0x1

    .line 119
    :cond_2
    move-wide/from16 v14, v16

    .line 120
    move-wide/from16 v18, v20

    .line 121
    goto :goto_1

    .line 122
    .end local v10    # "dLng3":D
    .end local v16    # "lat2":D
    .end local v20    # "lng2":D
    .end local v25    # "point2":Lcom/google/android/gms/maps/model/LatLng;
    :cond_3
    and-int/lit8 v2, v24, 0x1

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_4
    const/4 v2, 0x0

    goto/16 :goto_0
.end method

.method public static decode(Ljava/lang/String;)Ljava/util/List;
    .locals 18
    .param p0, "encodedPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;"
        }
    .end annotation

    .prologue
    .line 290
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v6

    .line 294
    .local v6, "len":I
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 295
    .local v8, "path":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/gms/maps/model/LatLng;>;"
    const/4 v3, 0x0

    .line 296
    .local v3, "index":I
    const/4 v5, 0x0

    .line 297
    .local v5, "lat":I
    const/4 v7, 0x0

    .line 299
    .local v7, "lng":I
    :goto_0
    if-ge v3, v6, :cond_2

    .line 300
    const/4 v9, 0x1

    .line 301
    .local v9, "result":I
    const/4 v10, 0x0

    .line 304
    .local v10, "shift":I
    :goto_1
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "index":I
    .local v4, "index":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v11

    add-int/lit8 v11, v11, -0x3f

    add-int/lit8 v2, v11, -0x1

    .line 305
    .local v2, "b":I
    shl-int v11, v2, v10

    add-int/2addr v9, v11

    .line 306
    add-int/lit8 v10, v10, 0x5

    .line 307
    const/16 v11, 0x1f

    if-ge v2, v11, :cond_4

    .line 308
    and-int/lit8 v11, v9, 0x1

    if-eqz v11, :cond_0

    shr-int/lit8 v11, v9, 0x1

    xor-int/lit8 v11, v11, -0x1

    :goto_2
    add-int/2addr v5, v11

    .line 310
    const/4 v9, 0x1

    .line 311
    const/4 v10, 0x0

    move v3, v4

    .line 313
    .end local v4    # "index":I
    .restart local v3    # "index":I
    :goto_3
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "index":I
    .restart local v4    # "index":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v11

    add-int/lit8 v11, v11, -0x3f

    add-int/lit8 v2, v11, -0x1

    .line 314
    shl-int v11, v2, v10

    add-int/2addr v9, v11

    .line 315
    add-int/lit8 v10, v10, 0x5

    .line 316
    const/16 v11, 0x1f

    if-ge v2, v11, :cond_3

    .line 317
    and-int/lit8 v11, v9, 0x1

    if-eqz v11, :cond_1

    shr-int/lit8 v11, v9, 0x1

    xor-int/lit8 v11, v11, -0x1

    :goto_4
    add-int/2addr v7, v11

    .line 319
    new-instance v11, Lcom/google/android/gms/maps/model/LatLng;

    int-to-double v12, v5

    const-wide v14, 0x3ee4f8b588e368f1L    # 1.0E-5

    mul-double/2addr v12, v14

    int-to-double v14, v7

    const-wide v16, 0x3ee4f8b588e368f1L    # 1.0E-5

    mul-double v14, v14, v16

    invoke-direct {v11, v12, v13, v14, v15}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-interface {v8, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v3, v4

    .line 320
    .end local v4    # "index":I
    .restart local v3    # "index":I
    goto :goto_0

    .line 308
    .end local v3    # "index":I
    .restart local v4    # "index":I
    :cond_0
    shr-int/lit8 v11, v9, 0x1

    goto :goto_2

    .line 317
    :cond_1
    shr-int/lit8 v11, v9, 0x1

    goto :goto_4

    .line 322
    .end local v2    # "b":I
    .end local v4    # "index":I
    .end local v9    # "result":I
    .end local v10    # "shift":I
    .restart local v3    # "index":I
    :cond_2
    return-object v8

    .end local v3    # "index":I
    .restart local v2    # "b":I
    .restart local v4    # "index":I
    .restart local v9    # "result":I
    .restart local v10    # "shift":I
    :cond_3
    move v3, v4

    .end local v4    # "index":I
    .restart local v3    # "index":I
    goto :goto_3

    .end local v3    # "index":I
    .restart local v4    # "index":I
    :cond_4
    move v3, v4

    .end local v4    # "index":I
    .restart local v3    # "index":I
    goto :goto_1
.end method

.method public static encode(Ljava/util/List;)Ljava/lang/String;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 329
    .local p0, "path":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/gms/maps/model/LatLng;>;"
    const-wide/16 v8, 0x0

    .line 330
    .local v8, "lastLat":J
    const-wide/16 v10, 0x0

    .line 332
    .local v10, "lastLng":J
    new-instance v16, Ljava/lang/StringBuffer;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuffer;-><init>()V

    .line 334
    .local v16, "result":Ljava/lang/StringBuffer;
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/maps/model/LatLng;

    .line 335
    .local v7, "point":Lcom/google/android/gms/maps/model/LatLng;
    iget-wide v0, v7, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    move-wide/from16 v18, v0

    const-wide v20, 0x40f86a0000000000L    # 100000.0

    mul-double v18, v18, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->round(D)J

    move-result-wide v12

    .line 336
    .local v12, "lat":J
    iget-wide v0, v7, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    move-wide/from16 v18, v0

    const-wide v20, 0x40f86a0000000000L    # 100000.0

    mul-double v18, v18, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->round(D)J

    move-result-wide v14

    .line 338
    .local v14, "lng":J
    sub-long v2, v12, v8

    .line 339
    .local v2, "dLat":J
    sub-long v4, v14, v10

    .line 341
    .local v4, "dLng":J
    move-object/from16 v0, v16

    invoke-static {v2, v3, v0}, Lcom/google/maps/android/PolyUtil;->encode(JLjava/lang/StringBuffer;)V

    .line 342
    move-object/from16 v0, v16

    invoke-static {v4, v5, v0}, Lcom/google/maps/android/PolyUtil;->encode(JLjava/lang/StringBuffer;)V

    .line 344
    move-wide v8, v12

    .line 345
    move-wide v10, v14

    .line 346
    goto :goto_0

    .line 347
    .end local v2    # "dLat":J
    .end local v4    # "dLng":J
    .end local v7    # "point":Lcom/google/android/gms/maps/model/LatLng;
    .end local v12    # "lat":J
    .end local v14    # "lng":J
    :cond_0
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v17

    return-object v17
.end method

.method private static encode(JLjava/lang/StringBuffer;)V
    .locals 8
    .param p0, "v"    # J
    .param p2, "result"    # Ljava/lang/StringBuffer;

    .prologue
    const-wide/16 v6, 0x3f

    const-wide/16 v4, 0x20

    const/4 v2, 0x1

    .line 351
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gez v0, :cond_0

    shl-long v0, p0, v2

    const-wide/16 v2, -0x1

    xor-long p0, v0, v2

    .line 352
    :goto_0
    cmp-long v0, p0, v4

    if-ltz v0, :cond_1

    .line 353
    const-wide/16 v0, 0x1f

    and-long/2addr v0, p0

    or-long/2addr v0, v4

    add-long/2addr v0, v6

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 354
    const/4 v0, 0x5

    shr-long/2addr p0, v0

    goto :goto_0

    .line 351
    :cond_0
    shl-long/2addr p0, v2

    goto :goto_0

    .line 356
    :cond_1
    add-long v0, p0, v6

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 357
    return-void
.end method

.method private static intersects(DDDDDZ)Z
    .locals 12
    .param p0, "lat1"    # D
    .param p2, "lat2"    # D
    .param p4, "lng2"    # D
    .param p6, "lat3"    # D
    .param p8, "lng3"    # D
    .param p10, "geodesic"    # Z

    .prologue
    .line 54
    const-wide/16 v0, 0x0

    cmpl-double v0, p8, v0

    if-ltz v0, :cond_0

    cmpl-double v0, p8, p4

    if-gez v0, :cond_1

    :cond_0
    const-wide/16 v0, 0x0

    cmpg-double v0, p8, v0

    if-gez v0, :cond_2

    cmpg-double v0, p8, p4

    if-gez v0, :cond_2

    .line 55
    :cond_1
    const/4 v0, 0x0

    .line 83
    :goto_0
    return v0

    .line 58
    :cond_2
    const-wide v0, -0x4006de04abbbd2e8L    # -1.5707963267948966

    cmpg-double v0, p6, v0

    if-gtz v0, :cond_3

    .line 59
    const/4 v0, 0x0

    goto :goto_0

    .line 62
    :cond_3
    const-wide v0, -0x4006de04abbbd2e8L    # -1.5707963267948966

    cmpg-double v0, p0, v0

    if-lez v0, :cond_4

    const-wide v0, -0x4006de04abbbd2e8L    # -1.5707963267948966

    cmpg-double v0, p2, v0

    if-lez v0, :cond_4

    const-wide v0, 0x3ff921fb54442d18L    # 1.5707963267948966

    cmpl-double v0, p0, v0

    if-gez v0, :cond_4

    const-wide v0, 0x3ff921fb54442d18L    # 1.5707963267948966

    cmpl-double v0, p2, v0

    if-ltz v0, :cond_5

    .line 63
    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    .line 65
    :cond_5
    const-wide v0, -0x3ff6de04abbbd2e8L    # -3.141592653589793

    cmpg-double v0, p4, v0

    if-gtz v0, :cond_6

    .line 66
    const/4 v0, 0x0

    goto :goto_0

    .line 68
    :cond_6
    sub-double v0, p4, p8

    mul-double/2addr v0, p0

    mul-double v2, p2, p8

    add-double/2addr v0, v2

    div-double v8, v0, p4

    .line 70
    .local v8, "linearLat":D
    const-wide/16 v0, 0x0

    cmpl-double v0, p0, v0

    if-ltz v0, :cond_7

    const-wide/16 v0, 0x0

    cmpl-double v0, p2, v0

    if-ltz v0, :cond_7

    cmpg-double v0, p6, v8

    if-gez v0, :cond_7

    .line 71
    const/4 v0, 0x0

    goto :goto_0

    .line 74
    :cond_7
    const-wide/16 v0, 0x0

    cmpg-double v0, p0, v0

    if-gtz v0, :cond_8

    const-wide/16 v0, 0x0

    cmpg-double v0, p2, v0

    if-gtz v0, :cond_8

    cmpl-double v0, p6, v8

    if-ltz v0, :cond_8

    .line 75
    const/4 v0, 0x1

    goto :goto_0

    .line 78
    :cond_8
    const-wide v0, 0x3ff921fb54442d18L    # 1.5707963267948966

    cmpl-double v0, p6, v0

    if-ltz v0, :cond_9

    .line 79
    const/4 v0, 0x1

    goto :goto_0

    .line 83
    :cond_9
    if-eqz p10, :cond_b

    invoke-static/range {p6 .. p7}, Ljava/lang/Math;->tan(D)D

    move-result-wide v10

    move-wide v0, p0

    move-wide v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p8

    invoke-static/range {v0 .. v7}, Lcom/google/maps/android/PolyUtil;->tanLatGC(DDDD)D

    move-result-wide v0

    cmpl-double v0, v10, v0

    if-ltz v0, :cond_a

    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_a
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_b
    invoke-static/range {p6 .. p7}, Lcom/google/maps/android/MathUtil;->mercator(D)D

    move-result-wide v10

    move-wide v0, p0

    move-wide v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p8

    invoke-static/range {v0 .. v7}, Lcom/google/maps/android/PolyUtil;->mercatorLatRhumb(DDDD)D

    move-result-wide v0

    cmpl-double v0, v10, v0

    if-ltz v0, :cond_c

    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_c
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public static isLocationOnEdge(Lcom/google/android/gms/maps/model/LatLng;Ljava/util/List;Z)Z
    .locals 2
    .param p0, "point"    # Lcom/google/android/gms/maps/model/LatLng;
    .param p2, "geodesic"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/maps/model/LatLng;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;Z)Z"
        }
    .end annotation

    .prologue
    .line 143
    .local p1, "polygon":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/gms/maps/model/LatLng;>;"
    const-wide v0, 0x3fb999999999999aL    # 0.1

    invoke-static {p0, p1, p2, v0, v1}, Lcom/google/maps/android/PolyUtil;->isLocationOnEdge(Lcom/google/android/gms/maps/model/LatLng;Ljava/util/List;ZD)Z

    move-result v0

    return v0
.end method

.method public static isLocationOnEdge(Lcom/google/android/gms/maps/model/LatLng;Ljava/util/List;ZD)Z
    .locals 7
    .param p0, "point"    # Lcom/google/android/gms/maps/model/LatLng;
    .param p2, "geodesic"    # Z
    .param p3, "tolerance"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/maps/model/LatLng;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;ZD)Z"
        }
    .end annotation

    .prologue
    .line 135
    .local p1, "polygon":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/gms/maps/model/LatLng;>;"
    const/4 v2, 0x1

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-wide v4, p3

    invoke-static/range {v0 .. v5}, Lcom/google/maps/android/PolyUtil;->isLocationOnEdgeOrPath(Lcom/google/android/gms/maps/model/LatLng;Ljava/util/List;ZZD)Z

    move-result v0

    return v0
.end method

.method private static isLocationOnEdgeOrPath(Lcom/google/android/gms/maps/model/LatLng;Ljava/util/List;ZZD)Z
    .locals 60
    .param p0, "point"    # Lcom/google/android/gms/maps/model/LatLng;
    .param p2, "closed"    # Z
    .param p3, "geodesic"    # Z
    .param p4, "toleranceEarth"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/maps/model/LatLng;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;ZZD)Z"
        }
    .end annotation

    .prologue
    .line 169
    .local p1, "poly":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/gms/maps/model/LatLng;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v38

    .line 170
    .local v38, "size":I
    if-nez v38, :cond_0

    .line 171
    const/16 v16, 0x0

    .line 231
    :goto_0
    return v16

    .line 173
    :cond_0
    const-wide v16, 0x41584db040000000L    # 6371009.0

    div-double v42, p4, v16

    .line 174
    .local v42, "tolerance":D
    invoke-static/range {v42 .. v43}, Lcom/google/maps/android/MathUtil;->hav(D)D

    move-result-wide v14

    .line 175
    .local v14, "havTolerance":D
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v10

    .line 176
    .local v10, "lat3":D
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v12

    .line 177
    .local v12, "lng3":D
    if-eqz p2, :cond_1

    add-int/lit8 v16, v38, -0x1

    :goto_1
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Lcom/google/android/gms/maps/model/LatLng;

    .line 178
    .local v37, "prev":Lcom/google/android/gms/maps/model/LatLng;
    move-object/from16 v0, v37

    iget-wide v0, v0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    .line 179
    .local v2, "lat1":D
    move-object/from16 v0, v37

    iget-wide v0, v0, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    .line 180
    .local v4, "lng1":D
    if-eqz p3, :cond_3

    .line 181
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .local v23, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_7

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Lcom/google/android/gms/maps/model/LatLng;

    .line 182
    .local v36, "point2":Lcom/google/android/gms/maps/model/LatLng;
    move-object/from16 v0, v36

    iget-wide v0, v0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    .line 183
    .local v6, "lat2":D
    move-object/from16 v0, v36

    iget-wide v0, v0, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v8

    .line 184
    .local v8, "lng2":D
    invoke-static/range {v2 .. v15}, Lcom/google/maps/android/PolyUtil;->isOnSegmentGC(DDDDDDD)Z

    move-result v16

    if-eqz v16, :cond_2

    .line 185
    const/16 v16, 0x1

    goto :goto_0

    .line 177
    .end local v2    # "lat1":D
    .end local v4    # "lng1":D
    .end local v6    # "lat2":D
    .end local v8    # "lng2":D
    .end local v23    # "i$":Ljava/util/Iterator;
    .end local v36    # "point2":Lcom/google/android/gms/maps/model/LatLng;
    .end local v37    # "prev":Lcom/google/android/gms/maps/model/LatLng;
    :cond_1
    const/16 v16, 0x0

    goto :goto_1

    .line 187
    .restart local v2    # "lat1":D
    .restart local v4    # "lng1":D
    .restart local v6    # "lat2":D
    .restart local v8    # "lng2":D
    .restart local v23    # "i$":Ljava/util/Iterator;
    .restart local v36    # "point2":Lcom/google/android/gms/maps/model/LatLng;
    .restart local v37    # "prev":Lcom/google/android/gms/maps/model/LatLng;
    :cond_2
    move-wide v2, v6

    .line 188
    move-wide v4, v8

    .line 189
    goto :goto_2

    .line 196
    .end local v6    # "lat2":D
    .end local v8    # "lng2":D
    .end local v23    # "i$":Ljava/util/Iterator;
    .end local v36    # "point2":Lcom/google/android/gms/maps/model/LatLng;
    :cond_3
    sub-double v34, v10, v42

    .line 197
    .local v34, "minAcceptable":D
    add-double v32, v10, v42

    .line 198
    .local v32, "maxAcceptable":D
    invoke-static {v2, v3}, Lcom/google/maps/android/MathUtil;->mercator(D)D

    move-result-wide v52

    .line 199
    .local v52, "y1":D
    invoke-static {v10, v11}, Lcom/google/maps/android/MathUtil;->mercator(D)D

    move-result-wide v56

    .line 200
    .local v56, "y3":D
    const/16 v16, 0x3

    move/from16 v0, v16

    new-array v0, v0, [D

    move-object/from16 v39, v0

    .line 201
    .local v39, "xTry":[D
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :goto_3
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_7

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Lcom/google/android/gms/maps/model/LatLng;

    .line 202
    .restart local v36    # "point2":Lcom/google/android/gms/maps/model/LatLng;
    move-object/from16 v0, v36

    iget-wide v0, v0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    .line 203
    .restart local v6    # "lat2":D
    invoke-static {v6, v7}, Lcom/google/maps/android/MathUtil;->mercator(D)D

    move-result-wide v54

    .line 204
    .local v54, "y2":D
    move-object/from16 v0, v36

    iget-wide v0, v0, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v8

    .line 205
    .restart local v8    # "lng2":D
    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v16

    cmpl-double v16, v16, v34

    if-ltz v16, :cond_6

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v16

    cmpg-double v16, v16, v32

    if-gtz v16, :cond_6

    .line 207
    sub-double v16, v8, v4

    const-wide v18, -0x3ff6de04abbbd2e8L    # -3.141592653589793

    const-wide v20, 0x400921fb54442d18L    # Math.PI

    invoke-static/range {v16 .. v21}, Lcom/google/maps/android/MathUtil;->wrap(DDD)D

    move-result-wide v44

    .line 208
    .local v44, "x2":D
    sub-double v16, v12, v4

    const-wide v18, -0x3ff6de04abbbd2e8L    # -3.141592653589793

    const-wide v20, 0x400921fb54442d18L    # Math.PI

    invoke-static/range {v16 .. v21}, Lcom/google/maps/android/MathUtil;->wrap(DDD)D

    move-result-wide v48

    .line 209
    .local v48, "x3Base":D
    const/16 v16, 0x0

    aput-wide v48, v39, v16

    .line 211
    const/16 v16, 0x1

    const-wide v20, 0x401921fb54442d18L    # 6.283185307179586

    add-double v20, v20, v48

    aput-wide v20, v39, v16

    .line 212
    const/16 v16, 0x2

    const-wide v20, 0x401921fb54442d18L    # 6.283185307179586

    sub-double v20, v48, v20

    aput-wide v20, v39, v16

    .line 213
    move-object/from16 v22, v39

    .local v22, "arr$":[D
    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v29, v0

    .local v29, "len$":I
    const/16 v28, 0x0

    .local v28, "i$":I
    :goto_4
    move/from16 v0, v28

    move/from16 v1, v29

    if-ge v0, v1, :cond_6

    aget-wide v46, v22, v28

    .line 214
    .local v46, "x3":D
    sub-double v24, v54, v52

    .line 215
    .local v24, "dy":D
    mul-double v16, v44, v44

    mul-double v20, v24, v24

    add-double v30, v16, v20

    .line 216
    .local v30, "len2":D
    const-wide/16 v16, 0x0

    cmpg-double v16, v30, v16

    if-gtz v16, :cond_4

    const-wide/16 v40, 0x0

    .line 217
    .local v40, "t":D
    :goto_5
    mul-double v50, v40, v44

    .line 218
    .local v50, "xClosest":D
    mul-double v16, v40, v24

    add-double v58, v52, v16

    .line 219
    .local v58, "yClosest":D
    invoke-static/range {v58 .. v59}, Lcom/google/maps/android/MathUtil;->inverseMercator(D)D

    move-result-wide v18

    .line 220
    .local v18, "latClosest":D
    sub-double v20, v46, v50

    move-wide/from16 v16, v10

    invoke-static/range {v16 .. v21}, Lcom/google/maps/android/MathUtil;->havDistance(DDD)D

    move-result-wide v26

    .line 221
    .local v26, "havDist":D
    cmpg-double v16, v26, v14

    if-gez v16, :cond_5

    .line 222
    const/16 v16, 0x1

    goto/16 :goto_0

    .line 216
    .end local v18    # "latClosest":D
    .end local v26    # "havDist":D
    .end local v40    # "t":D
    .end local v50    # "xClosest":D
    .end local v58    # "yClosest":D
    :cond_4
    mul-double v16, v46, v44

    sub-double v20, v56, v52

    mul-double v20, v20, v24

    add-double v16, v16, v20

    div-double v16, v16, v30

    const-wide/16 v18, 0x0

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v16 .. v21}, Lcom/google/maps/android/MathUtil;->clamp(DDD)D

    move-result-wide v40

    goto :goto_5

    .line 213
    .restart local v18    # "latClosest":D
    .restart local v26    # "havDist":D
    .restart local v40    # "t":D
    .restart local v50    # "xClosest":D
    .restart local v58    # "yClosest":D
    :cond_5
    add-int/lit8 v28, v28, 0x1

    goto :goto_4

    .line 226
    .end local v18    # "latClosest":D
    .end local v22    # "arr$":[D
    .end local v24    # "dy":D
    .end local v26    # "havDist":D
    .end local v28    # "i$":I
    .end local v29    # "len$":I
    .end local v30    # "len2":D
    .end local v40    # "t":D
    .end local v44    # "x2":D
    .end local v46    # "x3":D
    .end local v48    # "x3Base":D
    .end local v50    # "xClosest":D
    .end local v58    # "yClosest":D
    :cond_6
    move-wide v2, v6

    .line 227
    move-wide v4, v8

    .line 228
    move-wide/from16 v52, v54

    .line 229
    goto/16 :goto_3

    .line 231
    .end local v6    # "lat2":D
    .end local v8    # "lng2":D
    .end local v32    # "maxAcceptable":D
    .end local v34    # "minAcceptable":D
    .end local v36    # "point2":Lcom/google/android/gms/maps/model/LatLng;
    .end local v39    # "xTry":[D
    .end local v52    # "y1":D
    .end local v54    # "y2":D
    .end local v56    # "y3":D
    :cond_7
    const/16 v16, 0x0

    goto/16 :goto_0
.end method

.method public static isLocationOnPath(Lcom/google/android/gms/maps/model/LatLng;Ljava/util/List;Z)Z
    .locals 2
    .param p0, "point"    # Lcom/google/android/gms/maps/model/LatLng;
    .param p2, "geodesic"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/maps/model/LatLng;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;Z)Z"
        }
    .end annotation

    .prologue
    .line 164
    .local p1, "polyline":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/gms/maps/model/LatLng;>;"
    const-wide v0, 0x3fb999999999999aL    # 0.1

    invoke-static {p0, p1, p2, v0, v1}, Lcom/google/maps/android/PolyUtil;->isLocationOnPath(Lcom/google/android/gms/maps/model/LatLng;Ljava/util/List;ZD)Z

    move-result v0

    return v0
.end method

.method public static isLocationOnPath(Lcom/google/android/gms/maps/model/LatLng;Ljava/util/List;ZD)Z
    .locals 7
    .param p0, "point"    # Lcom/google/android/gms/maps/model/LatLng;
    .param p2, "geodesic"    # Z
    .param p3, "tolerance"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/maps/model/LatLng;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;ZD)Z"
        }
    .end annotation

    .prologue
    .line 154
    .local p1, "polyline":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/gms/maps/model/LatLng;>;"
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-wide v4, p3

    invoke-static/range {v0 .. v5}, Lcom/google/maps/android/PolyUtil;->isLocationOnEdgeOrPath(Lcom/google/android/gms/maps/model/LatLng;Ljava/util/List;ZZD)Z

    move-result v0

    return v0
.end method

.method private static isOnSegmentGC(DDDDDDD)Z
    .locals 28
    .param p0, "lat1"    # D
    .param p2, "lng1"    # D
    .param p4, "lat2"    # D
    .param p6, "lng2"    # D
    .param p8, "lat3"    # D
    .param p10, "lng3"    # D
    .param p12, "havTolerance"    # D

    .prologue
    .line 257
    sub-double v4, p2, p10

    move-wide/from16 v0, p0

    move-wide/from16 v2, p8

    invoke-static/range {v0 .. v5}, Lcom/google/maps/android/MathUtil;->havDistance(DDD)D

    move-result-wide v16

    .line 258
    .local v16, "havDist13":D
    cmpg-double v0, v16, p12

    if-gtz v0, :cond_0

    .line 259
    const/4 v0, 0x1

    .line 283
    :goto_0
    return v0

    .line 261
    :cond_0
    sub-double v4, p6, p10

    move-wide/from16 v0, p4

    move-wide/from16 v2, p8

    invoke-static/range {v0 .. v5}, Lcom/google/maps/android/MathUtil;->havDistance(DDD)D

    move-result-wide v18

    .line 262
    .local v18, "havDist23":D
    cmpg-double v0, v18, p12

    if-gtz v0, :cond_1

    .line 263
    const/4 v0, 0x1

    goto :goto_0

    .line 265
    :cond_1
    invoke-static/range {p0 .. p11}, Lcom/google/maps/android/PolyUtil;->sinDeltaBearing(DDDDDD)D

    move-result-wide v20

    .line 266
    .local v20, "sinBearing":D
    invoke-static/range {v16 .. v17}, Lcom/google/maps/android/MathUtil;->sinFromHav(D)D

    move-result-wide v22

    .line 267
    .local v22, "sinDist13":D
    mul-double v0, v22, v20

    invoke-static {v0, v1}, Lcom/google/maps/android/MathUtil;->havFromSin(D)D

    move-result-wide v12

    .line 268
    .local v12, "havCrossTrack":D
    cmpl-double v0, v12, p12

    if-lez v0, :cond_2

    .line 269
    const/4 v0, 0x0

    goto :goto_0

    .line 271
    :cond_2
    sub-double v4, p2, p6

    move-wide/from16 v0, p0

    move-wide/from16 v2, p4

    invoke-static/range {v0 .. v5}, Lcom/google/maps/android/MathUtil;->havDistance(DDD)D

    move-result-wide v14

    .line 272
    .local v14, "havDist12":D
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    mul-double/2addr v2, v14

    sub-double/2addr v0, v2

    mul-double/2addr v0, v12

    add-double v26, v14, v0

    .line 273
    .local v26, "term":D
    cmpl-double v0, v16, v26

    if-gtz v0, :cond_3

    cmpl-double v0, v18, v26

    if-lez v0, :cond_4

    .line 274
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 276
    :cond_4
    const-wide v0, 0x3fe7ae147ae147aeL    # 0.74

    cmpg-double v0, v14, v0

    if-gez v0, :cond_5

    .line 277
    const/4 v0, 0x1

    goto :goto_0

    .line 279
    :cond_5
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    mul-double/2addr v2, v12

    sub-double v6, v0, v2

    .line 280
    .local v6, "cosCrossTrack":D
    sub-double v0, v16, v12

    div-double v8, v0, v6

    .line 281
    .local v8, "havAlongTrack13":D
    sub-double v0, v18, v12

    div-double v10, v0, v6

    .line 282
    .local v10, "havAlongTrack23":D
    invoke-static {v8, v9, v10, v11}, Lcom/google/maps/android/MathUtil;->sinSumFromHav(DD)D

    move-result-wide v24

    .line 283
    .local v24, "sinSumAlongTrack":D
    const-wide/16 v0, 0x0

    cmpl-double v0, v24, v0

    if-lez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_0

    :cond_6
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static mercatorLatRhumb(DDDD)D
    .locals 4
    .param p0, "lat1"    # D
    .param p2, "lat2"    # D
    .param p4, "lng2"    # D
    .param p6, "lng3"    # D

    .prologue
    .line 43
    invoke-static {p0, p1}, Lcom/google/maps/android/MathUtil;->mercator(D)D

    move-result-wide v0

    sub-double v2, p4, p6

    mul-double/2addr v0, v2

    invoke-static {p2, p3}, Lcom/google/maps/android/MathUtil;->mercator(D)D

    move-result-wide v2

    mul-double/2addr v2, p6

    add-double/2addr v0, v2

    div-double/2addr v0, p4

    return-wide v0
.end method

.method private static sinDeltaBearing(DDDDDD)D
    .locals 30
    .param p0, "lat1"    # D
    .param p2, "lng1"    # D
    .param p4, "lat2"    # D
    .param p6, "lng2"    # D
    .param p8, "lat3"    # D
    .param p10, "lng3"    # D

    .prologue
    .line 240
    invoke-static/range {p0 .. p1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v22

    .line 241
    .local v22, "sinLat1":D
    invoke-static/range {p4 .. p5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    .line 242
    .local v6, "cosLat2":D
    invoke-static/range {p8 .. p9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    .line 243
    .local v8, "cosLat3":D
    sub-double v16, p8, p0

    .line 244
    .local v16, "lat31":D
    sub-double v20, p10, p2

    .line 245
    .local v20, "lng31":D
    sub-double v14, p4, p0

    .line 246
    .local v14, "lat21":D
    sub-double v18, p6, p2

    .line 247
    .local v18, "lng21":D
    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->sin(D)D

    move-result-wide v24

    mul-double v0, v24, v8

    .line 248
    .local v0, "a":D
    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sin(D)D

    move-result-wide v24

    mul-double v4, v24, v6

    .line 249
    .local v4, "c":D
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sin(D)D

    move-result-wide v24

    const-wide/high16 v26, 0x4000000000000000L    # 2.0

    mul-double v26, v26, v22

    mul-double v26, v26, v8

    invoke-static/range {v20 .. v21}, Lcom/google/maps/android/MathUtil;->hav(D)D

    move-result-wide v28

    mul-double v26, v26, v28

    add-double v2, v24, v26

    .line 250
    .local v2, "b":D
    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v24

    const-wide/high16 v26, 0x4000000000000000L    # 2.0

    mul-double v26, v26, v22

    mul-double v26, v26, v6

    invoke-static/range {v18 .. v19}, Lcom/google/maps/android/MathUtil;->hav(D)D

    move-result-wide v28

    mul-double v26, v26, v28

    add-double v10, v24, v26

    .line 251
    .local v10, "d":D
    mul-double v24, v0, v0

    mul-double v26, v2, v2

    add-double v24, v24, v26

    mul-double v26, v4, v4

    mul-double v28, v10, v10

    add-double v26, v26, v28

    mul-double v12, v24, v26

    .line 252
    .local v12, "denom":D
    const-wide/16 v24, 0x0

    cmpg-double v24, v12, v24

    if-gtz v24, :cond_0

    const-wide/high16 v24, 0x3ff0000000000000L    # 1.0

    :goto_0
    return-wide v24

    :cond_0
    mul-double v24, v0, v10

    mul-double v26, v2, v4

    sub-double v24, v24, v26

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v26

    div-double v24, v24, v26

    goto :goto_0
.end method

.method private static tanLatGC(DDDD)D
    .locals 6
    .param p0, "lat1"    # D
    .param p2, "lat2"    # D
    .param p4, "lng2"    # D
    .param p6, "lng3"    # D

    .prologue
    .line 36
    invoke-static {p0, p1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    sub-double v2, p4, p6

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    invoke-static {p2, p3}, Ljava/lang/Math;->tan(D)D

    move-result-wide v2

    invoke-static {p6, p7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    invoke-static {p4, p5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    return-wide v0
.end method
