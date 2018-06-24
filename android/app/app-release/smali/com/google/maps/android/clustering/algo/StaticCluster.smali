.class public Lcom/google/maps/android/clustering/algo/StaticCluster;
.super Ljava/lang/Object;
.source "StaticCluster.java"

# interfaces
.implements Lcom/google/maps/android/clustering/Cluster;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/google/maps/android/clustering/ClusterItem;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/maps/android/clustering/Cluster",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final mCenter:Lcom/google/android/gms/maps/model/LatLng;

.field private final mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 1
    .param p1, "center"    # Lcom/google/android/gms/maps/model/LatLng;

    .prologue
    .line 34
    .local p0, "this":Lcom/google/maps/android/clustering/algo/StaticCluster;, "Lcom/google/maps/android/clustering/algo/StaticCluster<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/maps/android/clustering/algo/StaticCluster;->mItems:Ljava/util/List;

    .line 35
    iput-object p1, p0, Lcom/google/maps/android/clustering/algo/StaticCluster;->mCenter:Lcom/google/android/gms/maps/model/LatLng;

    .line 36
    return-void
.end method


# virtual methods
.method public add(Lcom/google/maps/android/clustering/ClusterItem;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 39
    .local p0, "this":Lcom/google/maps/android/clustering/algo/StaticCluster;, "Lcom/google/maps/android/clustering/algo/StaticCluster<TT;>;"
    .local p1, "t":Lcom/google/maps/android/clustering/ClusterItem;, "TT;"
    iget-object v0, p0, Lcom/google/maps/android/clustering/algo/StaticCluster;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getItems()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 53
    .local p0, "this":Lcom/google/maps/android/clustering/algo/StaticCluster;, "Lcom/google/maps/android/clustering/algo/StaticCluster<TT;>;"
    iget-object v0, p0, Lcom/google/maps/android/clustering/algo/StaticCluster;->mItems:Ljava/util/List;

    return-object v0
.end method

.method public getPosition()Lcom/google/android/gms/maps/model/LatLng;
    .locals 1

    .prologue
    .line 44
    .local p0, "this":Lcom/google/maps/android/clustering/algo/StaticCluster;, "Lcom/google/maps/android/clustering/algo/StaticCluster<TT;>;"
    iget-object v0, p0, Lcom/google/maps/android/clustering/algo/StaticCluster;->mCenter:Lcom/google/android/gms/maps/model/LatLng;

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 58
    .local p0, "this":Lcom/google/maps/android/clustering/algo/StaticCluster;, "Lcom/google/maps/android/clustering/algo/StaticCluster<TT;>;"
    iget-object v0, p0, Lcom/google/maps/android/clustering/algo/StaticCluster;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public remove(Lcom/google/maps/android/clustering/ClusterItem;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 48
    .local p0, "this":Lcom/google/maps/android/clustering/algo/StaticCluster;, "Lcom/google/maps/android/clustering/algo/StaticCluster<TT;>;"
    .local p1, "t":Lcom/google/maps/android/clustering/ClusterItem;, "TT;"
    iget-object v0, p0, Lcom/google/maps/android/clustering/algo/StaticCluster;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 63
    .local p0, "this":Lcom/google/maps/android/clustering/algo/StaticCluster;, "Lcom/google/maps/android/clustering/algo/StaticCluster<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StaticCluster{mCenter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/maps/android/clustering/algo/StaticCluster;->mCenter:Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mItems.size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/maps/android/clustering/algo/StaticCluster;->mItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
