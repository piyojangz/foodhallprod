.class public Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm;
.super Ljava/lang/Object;
.source "NonHierarchicalDistanceBasedAlgorithm.java"

# interfaces
.implements Lcom/google/maps/android/clustering/algo/Algorithm;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm$1;,
        Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm$QuadItem;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/google/maps/android/clustering/ClusterItem;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/maps/android/clustering/algo/Algorithm",
        "<TT;>;"
    }
.end annotation


# static fields
.field public static final MAX_DISTANCE_AT_ZOOM:I = 0x64

.field private static final PROJECTION:Lcom/google/maps/android/projection/SphericalMercatorProjection;


# instance fields
.field private final mItems:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm$QuadItem",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field private final mQuadTree:Lcom/google/maps/android/quadtree/PointQuadTree;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/maps/android/quadtree/PointQuadTree",
            "<",
            "Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm$QuadItem",
            "<TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 62
    new-instance v0, Lcom/google/maps/android/projection/SphericalMercatorProjection;

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-direct {v0, v2, v3}, Lcom/google/maps/android/projection/SphericalMercatorProjection;-><init>(D)V

    sput-object v0, Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm;->PROJECTION:Lcom/google/maps/android/projection/SphericalMercatorProjection;

    return-void
.end method

.method public constructor <init>()V
    .locals 10

    .prologue
    .local p0, "this":Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm;, "Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm<TT;>;"
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const-wide/16 v2, 0x0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm;->mItems:Ljava/util/Collection;

    .line 60
    new-instance v1, Lcom/google/maps/android/quadtree/PointQuadTree;

    move-wide v6, v2

    move-wide v8, v4

    invoke-direct/range {v1 .. v9}, Lcom/google/maps/android/quadtree/PointQuadTree;-><init>(DDDD)V

    iput-object v1, p0, Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm;->mQuadTree:Lcom/google/maps/android/quadtree/PointQuadTree;

    .line 170
    return-void
.end method

.method static synthetic access$200()Lcom/google/maps/android/projection/SphericalMercatorProjection;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm;->PROJECTION:Lcom/google/maps/android/projection/SphericalMercatorProjection;

    return-object v0
.end method

.method private createBoundsFromSpan(Lcom/google/maps/android/geometry/Point;D)Lcom/google/maps/android/geometry/Bounds;
    .locals 12
    .param p1, "p"    # Lcom/google/maps/android/geometry/Point;
    .param p2, "span"    # D

    .prologue
    .line 164
    .local p0, "this":Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm;, "Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm<TT;>;"
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    div-double v10, p2, v0

    .line 165
    .local v10, "halfSpan":D
    new-instance v1, Lcom/google/maps/android/geometry/Bounds;

    iget-wide v2, p1, Lcom/google/maps/android/geometry/Point;->x:D

    sub-double/2addr v2, v10

    iget-wide v4, p1, Lcom/google/maps/android/geometry/Point;->x:D

    add-double/2addr v4, v10

    iget-wide v6, p1, Lcom/google/maps/android/geometry/Point;->y:D

    sub-double/2addr v6, v10

    iget-wide v8, p1, Lcom/google/maps/android/geometry/Point;->y:D

    add-double/2addr v8, v10

    invoke-direct/range {v1 .. v9}, Lcom/google/maps/android/geometry/Bounds;-><init>(DDDD)V

    return-object v1
.end method

.method private distanceSquared(Lcom/google/maps/android/geometry/Point;Lcom/google/maps/android/geometry/Point;)D
    .locals 8
    .param p1, "a"    # Lcom/google/maps/android/geometry/Point;
    .param p2, "b"    # Lcom/google/maps/android/geometry/Point;

    .prologue
    .line 158
    .local p0, "this":Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm;, "Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm<TT;>;"
    iget-wide v0, p1, Lcom/google/maps/android/geometry/Point;->x:D

    iget-wide v2, p2, Lcom/google/maps/android/geometry/Point;->x:D

    sub-double/2addr v0, v2

    iget-wide v2, p1, Lcom/google/maps/android/geometry/Point;->x:D

    iget-wide v4, p2, Lcom/google/maps/android/geometry/Point;->x:D

    sub-double/2addr v2, v4

    mul-double/2addr v0, v2

    iget-wide v2, p1, Lcom/google/maps/android/geometry/Point;->y:D

    iget-wide v4, p2, Lcom/google/maps/android/geometry/Point;->y:D

    sub-double/2addr v2, v4

    iget-wide v4, p1, Lcom/google/maps/android/geometry/Point;->y:D

    iget-wide v6, p2, Lcom/google/maps/android/geometry/Point;->y:D

    sub-double/2addr v4, v6

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public addItem(Lcom/google/maps/android/clustering/ClusterItem;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 66
    .local p0, "this":Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm;, "Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm<TT;>;"
    .local p1, "item":Lcom/google/maps/android/clustering/ClusterItem;, "TT;"
    new-instance v0, Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm$QuadItem;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm$QuadItem;-><init>(Lcom/google/maps/android/clustering/ClusterItem;Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm$1;)V

    .line 67
    .local v0, "quadItem":Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm$QuadItem;, "Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm$QuadItem<TT;>;"
    iget-object v2, p0, Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm;->mQuadTree:Lcom/google/maps/android/quadtree/PointQuadTree;

    monitor-enter v2

    .line 68
    :try_start_0
    iget-object v1, p0, Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm;->mItems:Ljava/util/Collection;

    invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 69
    iget-object v1, p0, Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm;->mQuadTree:Lcom/google/maps/android/quadtree/PointQuadTree;

    invoke-virtual {v1, v0}, Lcom/google/maps/android/quadtree/PointQuadTree;->add(Lcom/google/maps/android/quadtree/PointQuadTree$Item;)V

    .line 70
    monitor-exit v2

    .line 71
    return-void

    .line 70
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public addItems(Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 75
    .local p0, "this":Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm;, "Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm<TT;>;"
    .local p1, "items":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/maps/android/clustering/ClusterItem;

    .line 76
    .local v1, "item":Lcom/google/maps/android/clustering/ClusterItem;, "TT;"
    invoke-virtual {p0, v1}, Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm;->addItem(Lcom/google/maps/android/clustering/ClusterItem;)V

    goto :goto_0

    .line 78
    .end local v1    # "item":Lcom/google/maps/android/clustering/ClusterItem;, "TT;"
    :cond_0
    return-void
.end method

.method public clearItems()V
    .locals 2

    .prologue
    .line 82
    .local p0, "this":Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm;, "Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm<TT;>;"
    iget-object v1, p0, Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm;->mQuadTree:Lcom/google/maps/android/quadtree/PointQuadTree;

    monitor-enter v1

    .line 83
    :try_start_0
    iget-object v0, p0, Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm;->mItems:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 84
    iget-object v0, p0, Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm;->mQuadTree:Lcom/google/maps/android/quadtree/PointQuadTree;

    invoke-virtual {v0}, Lcom/google/maps/android/quadtree/PointQuadTree;->clear()V

    .line 85
    monitor-exit v1

    .line 86
    return-void

    .line 85
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getClusters(D)Ljava/util/Set;
    .locals 29
    .param p1, "zoom"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)",
            "Ljava/util/Set",
            "<+",
            "Lcom/google/maps/android/clustering/Cluster",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 96
    .local p0, "this":Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm;, "Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm<TT;>;"
    move-wide/from16 v0, p1

    double-to-int v8, v0

    .line 98
    .local v8, "discreteZoom":I
    const-wide/high16 v22, 0x4059000000000000L    # 100.0

    const-wide/high16 v24, 0x4000000000000000L    # 2.0

    int-to-double v0, v8

    move-wide/from16 v26, v0

    invoke-static/range {v24 .. v27}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v24

    div-double v22, v22, v24

    const-wide/high16 v24, 0x4070000000000000L    # 256.0

    div-double v20, v22, v24

    .line 100
    .local v20, "zoomSpecificSpan":D
    new-instance v18, Ljava/util/HashSet;

    invoke-direct/range {v18 .. v18}, Ljava/util/HashSet;-><init>()V

    .line 101
    .local v18, "visitedCandidates":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm$QuadItem<TT;>;>;"
    new-instance v16, Ljava/util/HashSet;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashSet;-><init>()V

    .line 102
    .local v16, "results":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/maps/android/clustering/Cluster<TT;>;>;"
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 103
    .local v9, "distanceToCluster":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm$QuadItem<TT;>;Ljava/lang/Double;>;"
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    .line 105
    .local v15, "itemToCluster":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm$QuadItem<TT;>;Lcom/google/maps/android/clustering/algo/StaticCluster<TT;>;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm;->mQuadTree:Lcom/google/maps/android/quadtree/PointQuadTree;

    move-object/from16 v22, v0

    monitor-enter v22

    .line 106
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm;->mItems:Ljava/util/Collection;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_0
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_5

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm$QuadItem;

    .line 107
    .local v4, "candidate":Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm$QuadItem;, "Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm$QuadItem<TT;>;"
    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_0

    .line 112
    invoke-virtual {v4}, Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm$QuadItem;->getPoint()Lcom/google/maps/android/geometry/Point;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-wide/from16 v2, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm;->createBoundsFromSpan(Lcom/google/maps/android/geometry/Point;D)Lcom/google/maps/android/geometry/Bounds;

    move-result-object v17

    .line 114
    .local v17, "searchBounds":Lcom/google/maps/android/geometry/Bounds;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm;->mQuadTree:Lcom/google/maps/android/quadtree/PointQuadTree;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/google/maps/android/quadtree/PointQuadTree;->search(Lcom/google/maps/android/geometry/Bounds;)Ljava/util/Collection;

    move-result-object v7

    .line 115
    .local v7, "clusterItems":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm$QuadItem<TT;>;>;"
    invoke-interface {v7}, Ljava/util/Collection;->size()I

    move-result v19

    const/16 v23, 0x1

    move/from16 v0, v19

    move/from16 v1, v23

    if-ne v0, v1, :cond_1

    .line 117
    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 118
    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 119
    const-wide/16 v24, 0x0

    invoke-static/range {v24 .. v25}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v9, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 142
    .end local v4    # "candidate":Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm$QuadItem;, "Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm$QuadItem<TT;>;"
    .end local v7    # "clusterItems":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm$QuadItem<TT;>;>;"
    .end local v17    # "searchBounds":Lcom/google/maps/android/geometry/Bounds;
    :catchall_0
    move-exception v19

    monitor-exit v22
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v19

    .line 122
    .restart local v4    # "candidate":Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm$QuadItem;, "Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm$QuadItem<TT;>;"
    .restart local v7    # "clusterItems":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm$QuadItem<TT;>;>;"
    .restart local v17    # "searchBounds":Lcom/google/maps/android/geometry/Bounds;
    :cond_1
    :try_start_1
    new-instance v5, Lcom/google/maps/android/clustering/algo/StaticCluster;

    invoke-static {v4}, Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm$QuadItem;->access$100(Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm$QuadItem;)Lcom/google/maps/android/clustering/ClusterItem;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Lcom/google/maps/android/clustering/ClusterItem;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v5, v0}, Lcom/google/maps/android/clustering/algo/StaticCluster;-><init>(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 123
    .local v5, "cluster":Lcom/google/maps/android/clustering/algo/StaticCluster;, "Lcom/google/maps/android/clustering/algo/StaticCluster<TT;>;"
    move-object/from16 v0, v16

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 125
    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_4

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm$QuadItem;

    .line 126
    .local v6, "clusterItem":Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm$QuadItem;, "Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm$QuadItem<TT;>;"
    invoke-interface {v9, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Double;

    .line 127
    .local v12, "existingDistance":Ljava/lang/Double;
    invoke-virtual {v6}, Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm$QuadItem;->getPoint()Lcom/google/maps/android/geometry/Point;

    move-result-object v19

    invoke-virtual {v4}, Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm$QuadItem;->getPoint()Lcom/google/maps/android/geometry/Point;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm;->distanceSquared(Lcom/google/maps/android/geometry/Point;Lcom/google/maps/android/geometry/Point;)D

    move-result-wide v10

    .line 128
    .local v10, "distance":D
    if-eqz v12, :cond_3

    .line 130
    invoke-virtual {v12}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v24

    cmpg-double v19, v24, v10

    if-ltz v19, :cond_2

    .line 134
    invoke-interface {v15, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/google/maps/android/clustering/algo/StaticCluster;

    invoke-static {v6}, Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm$QuadItem;->access$100(Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm$QuadItem;)Lcom/google/maps/android/clustering/ClusterItem;

    move-result-object v23

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/google/maps/android/clustering/algo/StaticCluster;->remove(Lcom/google/maps/android/clustering/ClusterItem;)Z

    .line 136
    :cond_3
    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v9, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    invoke-static {v6}, Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm$QuadItem;->access$100(Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm$QuadItem;)Lcom/google/maps/android/clustering/ClusterItem;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Lcom/google/maps/android/clustering/algo/StaticCluster;->add(Lcom/google/maps/android/clustering/ClusterItem;)Z

    .line 138
    invoke-interface {v15, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 140
    .end local v6    # "clusterItem":Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm$QuadItem;, "Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm$QuadItem<TT;>;"
    .end local v10    # "distance":D
    .end local v12    # "existingDistance":Ljava/lang/Double;
    :cond_4
    move-object/from16 v0, v18

    invoke-interface {v0, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_0

    .line 142
    .end local v4    # "candidate":Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm$QuadItem;, "Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm$QuadItem<TT;>;"
    .end local v5    # "cluster":Lcom/google/maps/android/clustering/algo/StaticCluster;, "Lcom/google/maps/android/clustering/algo/StaticCluster<TT;>;"
    .end local v7    # "clusterItems":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm$QuadItem<TT;>;>;"
    .end local v14    # "i$":Ljava/util/Iterator;
    .end local v17    # "searchBounds":Lcom/google/maps/android/geometry/Bounds;
    :cond_5
    monitor-exit v22
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 143
    return-object v16
.end method

.method public getItems()Ljava/util/Collection;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 148
    .local p0, "this":Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm;, "Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm<TT;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 149
    .local v1, "items":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iget-object v4, p0, Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm;->mQuadTree:Lcom/google/maps/android/quadtree/PointQuadTree;

    monitor-enter v4

    .line 150
    :try_start_0
    iget-object v3, p0, Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm;->mItems:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm$QuadItem;

    .line 151
    .local v2, "quadItem":Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm$QuadItem;, "Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm$QuadItem<TT;>;"
    invoke-static {v2}, Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm$QuadItem;->access$100(Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm$QuadItem;)Lcom/google/maps/android/clustering/ClusterItem;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 153
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "quadItem":Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm$QuadItem;, "Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm$QuadItem<TT;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 154
    return-object v1
.end method

.method public removeItem(Lcom/google/maps/android/clustering/ClusterItem;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 91
    .local p0, "this":Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm;, "Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm<TT;>;"
    .local p1, "item":Lcom/google/maps/android/clustering/ClusterItem;, "TT;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "NonHierarchicalDistanceBasedAlgorithm.remove not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
