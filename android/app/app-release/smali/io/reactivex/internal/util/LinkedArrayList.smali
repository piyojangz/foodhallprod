.class public Lio/reactivex/internal/util/LinkedArrayList;
.super Ljava/lang/Object;
.source "LinkedArrayList.java"


# instance fields
.field final capacityHint:I

.field head:[Ljava/lang/Object;

.field indexInTail:I

.field volatile size:I

.field tail:[Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "capacityHint"    # I

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput p1, p0, Lio/reactivex/internal/util/LinkedArrayList;->capacityHint:I

    .line 47
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 54
    iget v1, p0, Lio/reactivex/internal/util/LinkedArrayList;->size:I

    if-nez v1, :cond_0

    .line 55
    iget v1, p0, Lio/reactivex/internal/util/LinkedArrayList;->capacityHint:I

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iput-object v1, p0, Lio/reactivex/internal/util/LinkedArrayList;->head:[Ljava/lang/Object;

    .line 56
    iget-object v1, p0, Lio/reactivex/internal/util/LinkedArrayList;->head:[Ljava/lang/Object;

    iput-object v1, p0, Lio/reactivex/internal/util/LinkedArrayList;->tail:[Ljava/lang/Object;

    .line 57
    iget-object v1, p0, Lio/reactivex/internal/util/LinkedArrayList;->head:[Ljava/lang/Object;

    aput-object p1, v1, v4

    .line 58
    iput v3, p0, Lio/reactivex/internal/util/LinkedArrayList;->indexInTail:I

    .line 59
    iput v3, p0, Lio/reactivex/internal/util/LinkedArrayList;->size:I

    .line 74
    :goto_0
    return-void

    .line 62
    :cond_0
    iget v1, p0, Lio/reactivex/internal/util/LinkedArrayList;->indexInTail:I

    iget v2, p0, Lio/reactivex/internal/util/LinkedArrayList;->capacityHint:I

    if-ne v1, v2, :cond_1

    .line 63
    iget v1, p0, Lio/reactivex/internal/util/LinkedArrayList;->capacityHint:I

    add-int/lit8 v1, v1, 0x1

    new-array v0, v1, [Ljava/lang/Object;

    .line 64
    .local v0, "t":[Ljava/lang/Object;
    aput-object p1, v0, v4

    .line 65
    iget-object v1, p0, Lio/reactivex/internal/util/LinkedArrayList;->tail:[Ljava/lang/Object;

    iget v2, p0, Lio/reactivex/internal/util/LinkedArrayList;->capacityHint:I

    aput-object v0, v1, v2

    .line 66
    iput-object v0, p0, Lio/reactivex/internal/util/LinkedArrayList;->tail:[Ljava/lang/Object;

    .line 67
    iput v3, p0, Lio/reactivex/internal/util/LinkedArrayList;->indexInTail:I

    .line 68
    iget v1, p0, Lio/reactivex/internal/util/LinkedArrayList;->size:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lio/reactivex/internal/util/LinkedArrayList;->size:I

    goto :goto_0

    .line 70
    .end local v0    # "t":[Ljava/lang/Object;
    :cond_1
    iget-object v1, p0, Lio/reactivex/internal/util/LinkedArrayList;->tail:[Ljava/lang/Object;

    iget v2, p0, Lio/reactivex/internal/util/LinkedArrayList;->indexInTail:I

    aput-object p1, v1, v2

    .line 71
    iget v1, p0, Lio/reactivex/internal/util/LinkedArrayList;->indexInTail:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lio/reactivex/internal/util/LinkedArrayList;->indexInTail:I

    .line 72
    iget v1, p0, Lio/reactivex/internal/util/LinkedArrayList;->size:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lio/reactivex/internal/util/LinkedArrayList;->size:I

    goto :goto_0
.end method

.method public head()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lio/reactivex/internal/util/LinkedArrayList;->head:[Ljava/lang/Object;

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lio/reactivex/internal/util/LinkedArrayList;->size:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 92
    iget v0, p0, Lio/reactivex/internal/util/LinkedArrayList;->capacityHint:I

    .line 93
    .local v0, "cap":I
    iget v5, p0, Lio/reactivex/internal/util/LinkedArrayList;->size:I

    .line 94
    .local v5, "s":I
    new-instance v4, Ljava/util/ArrayList;

    add-int/lit8 v6, v5, 0x1

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 96
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-virtual {p0}, Lio/reactivex/internal/util/LinkedArrayList;->head()[Ljava/lang/Object;

    move-result-object v1

    .line 97
    .local v1, "h":[Ljava/lang/Object;
    const/4 v2, 0x0

    .line 98
    .local v2, "j":I
    const/4 v3, 0x0

    .line 99
    .local v3, "k":I
    :cond_0
    :goto_0
    if-ge v2, v5, :cond_1

    .line 100
    aget-object v6, v1, v3

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    add-int/lit8 v2, v2, 0x1

    .line 102
    add-int/lit8 v3, v3, 0x1

    if-ne v3, v0, :cond_0

    .line 103
    const/4 v3, 0x0

    .line 104
    aget-object v6, v1, v0

    check-cast v6, [Ljava/lang/Object;

    move-object v1, v6

    check-cast v1, [Ljava/lang/Object;

    goto :goto_0

    .line 108
    :cond_1
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method
