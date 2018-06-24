.class public Lcom/google/maps/android/SphericalUtil;
.super Ljava/lang/Object;
.source "SphericalUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static computeAngleBetween(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)D
    .locals 8
    .param p0, "from"    # Lcom/google/android/gms/maps/model/LatLng;
    .param p1, "to"    # Lcom/google/android/gms/maps/model/LatLng;

    .prologue
    .line 165
    iget-wide v0, p0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    iget-wide v4, p1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    iget-wide v6, p1, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    invoke-static/range {v0 .. v7}, Lcom/google/maps/android/SphericalUtil;->distanceRadians(DDDD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static computeArea(Ljava/util/List;)D
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;)D"
        }
    .end annotation

    .prologue
    .line 203
    .local p0, "path":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/gms/maps/model/LatLng;>;"
    invoke-static {p0}, Lcom/google/maps/android/SphericalUtil;->computeSignedArea(Ljava/util/List;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static computeDistanceBetween(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)D
    .locals 4
    .param p0, "from"    # Lcom/google/android/gms/maps/model/LatLng;
    .param p1, "to"    # Lcom/google/android/gms/maps/model/LatLng;

    .prologue
    .line 173
    invoke-static {p0, p1}, Lcom/google/maps/android/SphericalUtil;->computeAngleBetween(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)D

    move-result-wide v0

    const-wide v2, 0x41584db040000000L    # 6371009.0

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public static computeHeading(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)D
    .locals 22
    .param p0, "from"    # Lcom/google/android/gms/maps/model/LatLng;
    .param p1, "to"    # Lcom/google/android/gms/maps/model/LatLng;

    .prologue
    .line 37
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v10

    .line 38
    .local v10, "fromLat":D
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v12

    .line 39
    .local v12, "fromLng":D
    move-object/from16 v0, p1

    iget-wide v2, v0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v16

    .line 40
    .local v16, "toLat":D
    move-object/from16 v0, p1

    iget-wide v2, v0, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v18

    .line 41
    .local v18, "toLng":D
    sub-double v8, v18, v12

    .line 42
    .local v8, "dLng":D
    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->cos(D)D

    move-result-wide v20

    mul-double v6, v6, v20

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v20

    mul-double v6, v6, v20

    sub-double/2addr v4, v6

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v14

    .line 45
    .local v14, "heading":D
    invoke-static {v14, v15}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    const-wide v4, -0x3f99800000000000L    # -180.0

    const-wide v6, 0x4066800000000000L    # 180.0

    invoke-static/range {v2 .. v7}, Lcom/google/maps/android/MathUtil;->wrap(DDD)D

    move-result-wide v2

    return-wide v2
.end method

.method public static computeLength(Ljava/util/List;)D
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;)D"
        }
    .end annotation

    .prologue
    .line 180
    .local p0, "path":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/gms/maps/model/LatLng;>;"
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v15

    const/16 v16, 0x2

    move/from16 v0, v16

    if-ge v15, v0, :cond_0

    .line 181
    const-wide/16 v16, 0x0

    .line 194
    :goto_0
    return-wide v16

    .line 183
    :cond_0
    const-wide/16 v12, 0x0

    .line 184
    .local v12, "length":D
    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/android/gms/maps/model/LatLng;

    .line 185
    .local v14, "prev":Lcom/google/android/gms/maps/model/LatLng;
    iget-wide v0, v14, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    .line 186
    .local v2, "prevLat":D
    iget-wide v0, v14, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    .line 187
    .local v4, "prevLng":D
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/gms/maps/model/LatLng;

    .line 188
    .local v11, "point":Lcom/google/android/gms/maps/model/LatLng;
    iget-wide v0, v11, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    .line 189
    .local v6, "lat":D
    iget-wide v0, v11, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v8

    .line 190
    .local v8, "lng":D
    invoke-static/range {v2 .. v9}, Lcom/google/maps/android/SphericalUtil;->distanceRadians(DDDD)D

    move-result-wide v16

    add-double v12, v12, v16

    .line 191
    move-wide v2, v6

    .line 192
    move-wide v4, v8

    .line 193
    goto :goto_1

    .line 194
    .end local v6    # "lat":D
    .end local v8    # "lng":D
    .end local v11    # "point":Lcom/google/android/gms/maps/model/LatLng;
    :cond_1
    const-wide v16, 0x41584db040000000L    # 6371009.0

    mul-double v16, v16, v12

    goto :goto_0
.end method

.method public static computeOffset(Lcom/google/android/gms/maps/model/LatLng;DD)Lcom/google/android/gms/maps/model/LatLng;
    .locals 29
    .param p0, "from"    # Lcom/google/android/gms/maps/model/LatLng;
    .param p1, "distance"    # D
    .param p3, "heading"    # D

    .prologue
    .line 56
    const-wide v22, 0x41584db040000000L    # 6371009.0

    div-double p1, p1, v22

    .line 57
    invoke-static/range {p3 .. p4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p3

    .line 59
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v12

    .line 60
    .local v12, "fromLat":D
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v14

    .line 61
    .local v14, "fromLng":D
    invoke-static/range {p1 .. p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    .line 62
    .local v6, "cosDistance":D
    invoke-static/range {p1 .. p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v16

    .line 63
    .local v16, "sinDistance":D
    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v18

    .line 64
    .local v18, "sinFromLat":D
    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    .line 65
    .local v8, "cosFromLat":D
    mul-double v22, v6, v18

    mul-double v24, v16, v8

    invoke-static/range {p3 .. p4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v26

    mul-double v24, v24, v26

    add-double v20, v22, v24

    .line 66
    .local v20, "sinLat":D
    mul-double v22, v16, v8

    invoke-static/range {p3 .. p4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v24

    mul-double v22, v22, v24

    mul-double v24, v18, v20

    sub-double v24, v6, v24

    invoke-static/range {v22 .. v25}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v10

    .line 69
    .local v10, "dLng":D
    new-instance v22, Lcom/google/android/gms/maps/model/LatLng;

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->asin(D)D

    move-result-wide v24

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v24

    add-double v26, v14, v10

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v26

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    move-wide/from16 v3, v26

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    return-object v22
.end method

.method public static computeOffsetOrigin(Lcom/google/android/gms/maps/model/LatLng;DD)Lcom/google/android/gms/maps/model/LatLng;
    .locals 33
    .param p0, "to"    # Lcom/google/android/gms/maps/model/LatLng;
    .param p1, "distance"    # D
    .param p3, "heading"    # D

    .prologue
    .line 82
    invoke-static/range {p3 .. p4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p3

    .line 83
    const-wide v26, 0x41584db040000000L    # 6371009.0

    div-double p1, p1, v26

    .line 85
    invoke-static/range {p1 .. p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v16

    .line 86
    .local v16, "n1":D
    invoke-static/range {p1 .. p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v26

    invoke-static/range {p3 .. p4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v28

    mul-double v20, v26, v28

    .line 87
    .local v20, "n2":D
    invoke-static/range {p1 .. p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v26

    invoke-static/range {p3 .. p4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v28

    mul-double v22, v26, v28

    .line 88
    .local v22, "n3":D
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    move-wide/from16 v26, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v26

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->sin(D)D

    move-result-wide v24

    .line 92
    .local v24, "n4":D
    mul-double v18, v16, v16

    .line 93
    .local v18, "n12":D
    mul-double v26, v20, v20

    mul-double v26, v26, v18

    mul-double v28, v18, v18

    add-double v26, v26, v28

    mul-double v28, v18, v24

    mul-double v28, v28, v24

    sub-double v10, v26, v28

    .line 94
    .local v10, "discriminant":D
    const-wide/16 v26, 0x0

    cmpg-double v26, v10, v26

    if-gez v26, :cond_0

    .line 96
    const/16 v26, 0x0

    .line 113
    :goto_0
    return-object v26

    .line 98
    :cond_0
    mul-double v26, v20, v24

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v28

    add-double v8, v26, v28

    .line 99
    .local v8, "b":D
    mul-double v26, v16, v16

    mul-double v28, v20, v20

    add-double v26, v26, v28

    div-double v8, v8, v26

    .line 100
    mul-double v26, v20, v8

    sub-double v26, v24, v26

    div-double v6, v26, v16

    .line 101
    .local v6, "a":D
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v12

    .line 102
    .local v12, "fromLatRadians":D
    const-wide v26, -0x4006de04abbbd2e8L    # -1.5707963267948966

    cmpg-double v26, v12, v26

    if-ltz v26, :cond_1

    const-wide v26, 0x3ff921fb54442d18L    # 1.5707963267948966

    cmpl-double v26, v12, v26

    if-lez v26, :cond_2

    .line 103
    :cond_1
    mul-double v26, v20, v24

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v28

    sub-double v8, v26, v28

    .line 104
    mul-double v26, v16, v16

    mul-double v28, v20, v20

    add-double v26, v26, v28

    div-double v8, v8, v26

    .line 105
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v12

    .line 107
    :cond_2
    const-wide v26, -0x4006de04abbbd2e8L    # -1.5707963267948966

    cmpg-double v26, v12, v26

    if-ltz v26, :cond_3

    const-wide v26, 0x3ff921fb54442d18L    # 1.5707963267948966

    cmpl-double v26, v12, v26

    if-lez v26, :cond_4

    .line 109
    :cond_3
    const/16 v26, 0x0

    goto :goto_0

    .line 111
    :cond_4
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    move-wide/from16 v26, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v26

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v28

    mul-double v28, v28, v16

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v30

    mul-double v30, v30, v20

    sub-double v28, v28, v30

    move-wide/from16 v0, v22

    move-wide/from16 v2, v28

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v28

    sub-double v14, v26, v28

    .line 113
    .local v14, "fromLngRadians":D
    new-instance v26, Lcom/google/android/gms/maps/model/LatLng;

    invoke-static {v12, v13}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v28

    invoke-static {v14, v15}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v30

    move-object/from16 v0, v26

    move-wide/from16 v1, v28

    move-wide/from16 v3, v30

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    goto/16 :goto_0
.end method

.method public static computeSignedArea(Ljava/util/List;)D
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;)D"
        }
    .end annotation

    .prologue
    .line 214
    .local p0, "path":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/gms/maps/model/LatLng;>;"
    const-wide v0, 0x41584db040000000L    # 6371009.0

    invoke-static {p0, v0, v1}, Lcom/google/maps/android/SphericalUtil;->computeSignedArea(Ljava/util/List;D)D

    move-result-wide v0

    return-wide v0
.end method

.method static computeSignedArea(Ljava/util/List;D)D
    .locals 21
    .param p1, "radius"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;D)D"
        }
    .end annotation

    .prologue
    .line 223
    .local p0, "path":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/gms/maps/model/LatLng;>;"
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v13

    .line 224
    .local v13, "size":I
    const/16 v16, 0x3

    move/from16 v0, v16

    if-ge v13, v0, :cond_0

    const-wide/16 v16, 0x0

    .line 238
    :goto_0
    return-wide v16

    .line 225
    :cond_0
    const-wide/16 v14, 0x0

    .line 226
    .local v14, "total":D
    add-int/lit8 v16, v13, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/gms/maps/model/LatLng;

    .line 227
    .local v12, "prev":Lcom/google/android/gms/maps/model/LatLng;
    const-wide v16, 0x3ff921fb54442d18L    # 1.5707963267948966

    iget-wide v0, v12, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v18

    sub-double v16, v16, v18

    const-wide/high16 v18, 0x4000000000000000L    # 2.0

    div-double v16, v16, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->tan(D)D

    move-result-wide v6

    .line 228
    .local v6, "prevTanLat":D
    iget-wide v0, v12, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v8

    .line 231
    .local v8, "prevLng":D
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/gms/maps/model/LatLng;

    .line 232
    .local v11, "point":Lcom/google/android/gms/maps/model/LatLng;
    const-wide v16, 0x3ff921fb54442d18L    # 1.5707963267948966

    iget-wide v0, v11, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v18

    sub-double v16, v16, v18

    const-wide/high16 v18, 0x4000000000000000L    # 2.0

    div-double v16, v16, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->tan(D)D

    move-result-wide v2

    .line 233
    .local v2, "tanLat":D
    iget-wide v0, v11, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    .line 234
    .local v4, "lng":D
    invoke-static/range {v2 .. v9}, Lcom/google/maps/android/SphericalUtil;->polarTriangleArea(DDDD)D

    move-result-wide v16

    add-double v14, v14, v16

    .line 235
    move-wide v6, v2

    .line 236
    move-wide v8, v4

    .line 237
    goto :goto_1

    .line 238
    .end local v2    # "tanLat":D
    .end local v4    # "lng":D
    .end local v11    # "point":Lcom/google/android/gms/maps/model/LatLng;
    :cond_1
    mul-double v16, p1, p1

    mul-double v16, v16, v14

    goto :goto_0
.end method

.method private static distanceRadians(DDDD)D
    .locals 6
    .param p0, "lat1"    # D
    .param p2, "lng1"    # D
    .param p4, "lat2"    # D
    .param p6, "lng2"    # D

    .prologue
    .line 157
    sub-double v4, p2, p6

    move-wide v0, p0

    move-wide v2, p4

    invoke-static/range {v0 .. v5}, Lcom/google/maps/android/MathUtil;->havDistance(DDD)D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/maps/android/MathUtil;->arcHav(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static interpolate(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;D)Lcom/google/android/gms/maps/model/LatLng;
    .locals 42
    .param p0, "from"    # Lcom/google/android/gms/maps/model/LatLng;
    .param p1, "to"    # Lcom/google/android/gms/maps/model/LatLng;
    .param p2, "fraction"    # D

    .prologue
    .line 126
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    move-wide/from16 v36, v0

    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v16

    .line 127
    .local v16, "fromLat":D
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    move-wide/from16 v36, v0

    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v18

    .line 128
    .local v18, "fromLng":D
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    move-wide/from16 v36, v0

    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v26

    .line 129
    .local v26, "toLat":D
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    move-wide/from16 v36, v0

    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v28

    .line 130
    .local v28, "toLng":D
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    .line 131
    .local v12, "cosFromLat":D
    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    .line 134
    .local v14, "cosToLat":D
    invoke-static/range {p0 .. p1}, Lcom/google/maps/android/SphericalUtil;->computeAngleBetween(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)D

    move-result-wide v8

    .line 135
    .local v8, "angle":D
    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v24

    .line 136
    .local v24, "sinAngle":D
    const-wide v36, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    cmpg-double v36, v24, v36

    if-gez v36, :cond_0

    .line 150
    .end local p0    # "from":Lcom/google/android/gms/maps/model/LatLng;
    :goto_0
    return-object p0

    .line 139
    .restart local p0    # "from":Lcom/google/android/gms/maps/model/LatLng;
    :cond_0
    const-wide/high16 v36, 0x3ff0000000000000L    # 1.0

    sub-double v36, v36, p2

    mul-double v36, v36, v8

    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->sin(D)D

    move-result-wide v36

    div-double v6, v36, v24

    .line 140
    .local v6, "a":D
    mul-double v36, p2, v8

    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->sin(D)D

    move-result-wide v36

    div-double v10, v36, v24

    .line 143
    .local v10, "b":D
    mul-double v36, v6, v12

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->cos(D)D

    move-result-wide v38

    mul-double v36, v36, v38

    mul-double v38, v10, v14

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->cos(D)D

    move-result-wide v40

    mul-double v38, v38, v40

    add-double v30, v36, v38

    .line 144
    .local v30, "x":D
    mul-double v36, v6, v12

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sin(D)D

    move-result-wide v38

    mul-double v36, v36, v38

    mul-double v38, v10, v14

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->sin(D)D

    move-result-wide v40

    mul-double v38, v38, v40

    add-double v32, v36, v38

    .line 145
    .local v32, "y":D
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sin(D)D

    move-result-wide v36

    mul-double v36, v36, v6

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->sin(D)D

    move-result-wide v38

    mul-double v38, v38, v10

    add-double v34, v36, v38

    .line 148
    .local v34, "z":D
    mul-double v36, v30, v30

    mul-double v38, v32, v32

    add-double v36, v36, v38

    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v36

    invoke-static/range {v34 .. v37}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v20

    .line 149
    .local v20, "lat":D
    move-wide/from16 v0, v32

    move-wide/from16 v2, v30

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v22

    .line 150
    .local v22, "lng":D
    new-instance p0, Lcom/google/android/gms/maps/model/LatLng;

    .end local p0    # "from":Lcom/google/android/gms/maps/model/LatLng;
    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v36

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v38

    move-object/from16 v0, p0

    move-wide/from16 v1, v36

    move-wide/from16 v3, v38

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    goto :goto_0
.end method

.method private static polarTriangleArea(DDDD)D
    .locals 12
    .param p0, "tan1"    # D
    .param p2, "lng1"    # D
    .param p4, "tan2"    # D
    .param p6, "lng2"    # D

    .prologue
    .line 249
    sub-double v0, p2, p6

    .line 250
    .local v0, "deltaLng":D
    mul-double v2, p0, p4

    .line 251
    .local v2, "t":D
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v6, v2

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    mul-double/2addr v10, v2

    add-double/2addr v8, v10

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v6

    mul-double/2addr v4, v6

    return-wide v4
.end method
