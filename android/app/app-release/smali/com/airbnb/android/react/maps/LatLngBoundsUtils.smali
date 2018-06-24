.class public Lcom/airbnb/android/react/maps/LatLngBoundsUtils;
.super Ljava/lang/Object;
.source "LatLngBoundsUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static BoundsAreDifferent(Lcom/google/android/gms/maps/model/LatLngBounds;Lcom/google/android/gms/maps/model/LatLngBounds;)Z
    .locals 28
    .param p0, "a"    # Lcom/google/android/gms/maps/model/LatLngBounds;
    .param p1, "b"    # Lcom/google/android/gms/maps/model/LatLngBounds;

    .prologue
    .line 8
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/maps/model/LatLngBounds;->getCenter()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v24

    .line 9
    .local v24, "centerA":Lcom/google/android/gms/maps/model/LatLng;
    move-object/from16 v0, v24

    iget-wide v2, v0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    .line 10
    .local v2, "latA":D
    move-object/from16 v0, v24

    iget-wide v8, v0, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    .line 11
    .local v8, "lngA":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/maps/model/LatLngBounds;->northeast:Lcom/google/android/gms/maps/model/LatLng;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/maps/model/LatLngBounds;->southwest:Lcom/google/android/gms/maps/model/LatLng;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-wide v0, v0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    move-wide/from16 v22, v0

    sub-double v14, v18, v22

    .line 12
    .local v14, "latDeltaA":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/maps/model/LatLngBounds;->northeast:Lcom/google/android/gms/maps/model/LatLng;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/maps/model/LatLngBounds;->southwest:Lcom/google/android/gms/maps/model/LatLng;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-wide v0, v0, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    move-wide/from16 v22, v0

    sub-double v26, v18, v22

    .line 14
    .local v26, "lngDeltaA":D
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/maps/model/LatLngBounds;->getCenter()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v25

    .line 15
    .local v25, "centerB":Lcom/google/android/gms/maps/model/LatLng;
    move-object/from16 v0, v25

    iget-wide v4, v0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    .line 16
    .local v4, "latB":D
    move-object/from16 v0, v25

    iget-wide v10, v0, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    .line 17
    .local v10, "lngB":D
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/android/gms/maps/model/LatLngBounds;->northeast:Lcom/google/android/gms/maps/model/LatLng;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    move-wide/from16 v18, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/android/gms/maps/model/LatLngBounds;->southwest:Lcom/google/android/gms/maps/model/LatLng;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-wide v0, v0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    move-wide/from16 v22, v0

    sub-double v16, v18, v22

    .line 18
    .local v16, "latDeltaB":D
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/android/gms/maps/model/LatLngBounds;->northeast:Lcom/google/android/gms/maps/model/LatLng;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    move-wide/from16 v18, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/android/gms/maps/model/LatLngBounds;->southwest:Lcom/google/android/gms/maps/model/LatLng;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-wide v0, v0, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    move-wide/from16 v22, v0

    sub-double v20, v18, v22

    .line 20
    .local v20, "lngDeltaB":D
    invoke-static/range {p0 .. p1}, Lcom/airbnb/android/react/maps/LatLngBoundsUtils;->LatitudeEpsilon(Lcom/google/android/gms/maps/model/LatLngBounds;Lcom/google/android/gms/maps/model/LatLngBounds;)D

    move-result-wide v6

    .line 21
    .local v6, "latEps":D
    invoke-static/range {p0 .. p1}, Lcom/airbnb/android/react/maps/LatLngBoundsUtils;->LongitudeEpsilon(Lcom/google/android/gms/maps/model/LatLngBounds;Lcom/google/android/gms/maps/model/LatLngBounds;)D

    move-result-wide v12

    .line 24
    .local v12, "lngEps":D
    invoke-static/range {v2 .. v7}, Lcom/airbnb/android/react/maps/LatLngBoundsUtils;->different(DDD)Z

    move-result v18

    if-nez v18, :cond_0

    .line 25
    invoke-static/range {v8 .. v13}, Lcom/airbnb/android/react/maps/LatLngBoundsUtils;->different(DDD)Z

    move-result v18

    if-nez v18, :cond_0

    move-wide/from16 v18, v6

    .line 26
    invoke-static/range {v14 .. v19}, Lcom/airbnb/android/react/maps/LatLngBoundsUtils;->different(DDD)Z

    move-result v18

    if-nez v18, :cond_0

    move-wide/from16 v18, v26

    move-wide/from16 v22, v12

    .line 27
    invoke-static/range {v18 .. v23}, Lcom/airbnb/android/react/maps/LatLngBoundsUtils;->different(DDD)Z

    move-result v18

    if-eqz v18, :cond_1

    :cond_0
    const/16 v18, 0x1

    .line 23
    :goto_0
    return v18

    .line 27
    :cond_1
    const/16 v18, 0x0

    goto :goto_0
.end method

.method private static LatitudeEpsilon(Lcom/google/android/gms/maps/model/LatLngBounds;Lcom/google/android/gms/maps/model/LatLngBounds;)D
    .locals 10
    .param p0, "a"    # Lcom/google/android/gms/maps/model/LatLngBounds;
    .param p1, "b"    # Lcom/google/android/gms/maps/model/LatLngBounds;

    .prologue
    .line 35
    iget-object v6, p0, Lcom/google/android/gms/maps/model/LatLngBounds;->northeast:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v6, v6, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iget-object v8, p0, Lcom/google/android/gms/maps/model/LatLngBounds;->southwest:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v8, v8, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    sub-double v2, v6, v8

    .line 36
    .local v2, "sizeA":D
    iget-object v6, p1, Lcom/google/android/gms/maps/model/LatLngBounds;->northeast:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v6, v6, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iget-object v8, p1, Lcom/google/android/gms/maps/model/LatLngBounds;->southwest:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v8, v8, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    sub-double v4, v6, v8

    .line 37
    .local v4, "sizeB":D
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    .line 38
    .local v0, "size":D
    const-wide/high16 v6, 0x40a4000000000000L    # 2560.0

    div-double v6, v0, v6

    return-wide v6
.end method

.method private static LongitudeEpsilon(Lcom/google/android/gms/maps/model/LatLngBounds;Lcom/google/android/gms/maps/model/LatLngBounds;)D
    .locals 10
    .param p0, "a"    # Lcom/google/android/gms/maps/model/LatLngBounds;
    .param p1, "b"    # Lcom/google/android/gms/maps/model/LatLngBounds;

    .prologue
    .line 42
    iget-object v6, p0, Lcom/google/android/gms/maps/model/LatLngBounds;->northeast:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v6, v6, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    iget-object v8, p0, Lcom/google/android/gms/maps/model/LatLngBounds;->southwest:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v8, v8, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    sub-double v2, v6, v8

    .line 43
    .local v2, "sizeA":D
    iget-object v6, p1, Lcom/google/android/gms/maps/model/LatLngBounds;->northeast:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v6, v6, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    iget-object v8, p1, Lcom/google/android/gms/maps/model/LatLngBounds;->southwest:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v8, v8, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    sub-double v4, v6, v8

    .line 44
    .local v4, "sizeB":D
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    .line 45
    .local v0, "size":D
    const-wide/high16 v6, 0x40a4000000000000L    # 2560.0

    div-double v6, v0, v6

    return-wide v6
.end method

.method private static different(DDD)Z
    .locals 2
    .param p0, "a"    # D
    .param p2, "b"    # D
    .param p4, "epsilon"    # D

    .prologue
    .line 31
    sub-double v0, p0, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    cmpl-double v0, v0, p4

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
