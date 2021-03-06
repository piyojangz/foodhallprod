.class final Lio/reactivex/internal/operators/flowable/FlowableCache$CacheState;
.super Lio/reactivex/internal/util/LinkedArrayList;
.source "FlowableCache.java"

# interfaces
.implements Lio/reactivex/FlowableSubscriber;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CacheState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/util/LinkedArrayList;",
        "Lio/reactivex/FlowableSubscriber",
        "<TT;>;"
    }
.end annotation


# static fields
.field static final EMPTY:[Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription;

.field static final TERMINATED:[Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription;


# instance fields
.field final connection:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lorg/reactivestreams/Subscription;",
            ">;"
        }
    .end annotation
.end field

.field volatile isConnected:Z

.field final source:Lio/reactivex/Flowable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Flowable",
            "<TT;>;"
        }
    .end annotation
.end field

.field sourceDone:Z

.field final subscribers:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<[",
            "Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription",
            "<TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 103
    new-array v0, v1, [Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription;

    sput-object v0, Lio/reactivex/internal/operators/flowable/FlowableCache$CacheState;->EMPTY:[Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription;

    .line 106
    new-array v0, v1, [Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription;

    sput-object v0, Lio/reactivex/internal/operators/flowable/FlowableCache$CacheState;->TERMINATED:[Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription;

    return-void
.end method

.method constructor <init>(Lio/reactivex/Flowable;I)V
    .locals 2
    .param p2, "capacityHint"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Flowable",
            "<TT;>;I)V"
        }
    .end annotation

    .prologue
    .line 118
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableCache$CacheState;, "Lio/reactivex/internal/operators/flowable/FlowableCache$CacheState<TT;>;"
    .local p1, "source":Lio/reactivex/Flowable;, "Lio/reactivex/Flowable<TT;>;"
    invoke-direct {p0, p2}, Lio/reactivex/internal/util/LinkedArrayList;-><init>(I)V

    .line 98
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableCache$CacheState;->connection:Ljava/util/concurrent/atomic/AtomicReference;

    .line 119
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableCache$CacheState;->source:Lio/reactivex/Flowable;

    .line 120
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lio/reactivex/internal/operators/flowable/FlowableCache$CacheState;->EMPTY:[Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableCache$CacheState;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    .line 121
    return-void
.end method


# virtual methods
.method public addChild(Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableCache$CacheState;, "Lio/reactivex/internal/operators/flowable/FlowableCache$CacheState<TT;>;"
    .local p1, "p":Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription;, "Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription<TT;>;"
    const/4 v4, 0x0

    .line 130
    :cond_0
    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/FlowableCache$CacheState;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription;

    .line 131
    .local v0, "a":[Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription;, "[Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription<TT;>;"
    sget-object v3, Lio/reactivex/internal/operators/flowable/FlowableCache$CacheState;->TERMINATED:[Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription;

    if-ne v0, v3, :cond_1

    .line 140
    :goto_0
    return-void

    .line 134
    :cond_1
    array-length v2, v0

    .line 136
    .local v2, "n":I
    add-int/lit8 v3, v2, 0x1

    new-array v1, v3, [Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription;

    .line 137
    .local v1, "b":[Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription;, "[Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription<TT;>;"
    invoke-static {v0, v4, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 138
    aput-object p1, v1, v2

    .line 139
    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/FlowableCache$CacheState;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3, v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0
.end method

.method public connect()V
    .locals 1

    .prologue
    .line 193
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableCache$CacheState;, "Lio/reactivex/internal/operators/flowable/FlowableCache$CacheState<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableCache$CacheState;->source:Lio/reactivex/Flowable;

    invoke-virtual {v0, p0}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/FlowableSubscriber;)V

    .line 194
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableCache$CacheState;->isConnected:Z

    .line 195
    return-void
.end method

.method public onComplete()V
    .locals 7

    .prologue
    .line 224
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableCache$CacheState;, "Lio/reactivex/internal/operators/flowable/FlowableCache$CacheState<TT;>;"
    iget-boolean v5, p0, Lio/reactivex/internal/operators/flowable/FlowableCache$CacheState;->sourceDone:Z

    if-nez v5, :cond_0

    .line 225
    const/4 v5, 0x1

    iput-boolean v5, p0, Lio/reactivex/internal/operators/flowable/FlowableCache$CacheState;->sourceDone:Z

    .line 226
    invoke-static {}, Lio/reactivex/internal/util/NotificationLite;->complete()Ljava/lang/Object;

    move-result-object v3

    .line 227
    .local v3, "o":Ljava/lang/Object;
    invoke-virtual {p0, v3}, Lio/reactivex/internal/operators/flowable/FlowableCache$CacheState;->add(Ljava/lang/Object;)V

    .line 228
    iget-object v5, p0, Lio/reactivex/internal/operators/flowable/FlowableCache$CacheState;->connection:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v5}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->cancel(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 229
    iget-object v5, p0, Lio/reactivex/internal/operators/flowable/FlowableCache$CacheState;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v6, Lio/reactivex/internal/operators/flowable/FlowableCache$CacheState;->TERMINATED:[Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription;

    invoke-virtual {v5, v6}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription;

    .local v0, "arr$":[Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v4, v0, v1

    .line 230
    .local v4, "rp":Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription;, "Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription<*>;"
    invoke-virtual {v4}, Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription;->replay()V

    .line 229
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 233
    .end local v0    # "arr$":[Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "o":Ljava/lang/Object;
    .end local v4    # "rp":Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription;, "Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription<*>;"
    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 7
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 209
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableCache$CacheState;, "Lio/reactivex/internal/operators/flowable/FlowableCache$CacheState<TT;>;"
    iget-boolean v5, p0, Lio/reactivex/internal/operators/flowable/FlowableCache$CacheState;->sourceDone:Z

    if-nez v5, :cond_0

    .line 210
    const/4 v5, 0x1

    iput-boolean v5, p0, Lio/reactivex/internal/operators/flowable/FlowableCache$CacheState;->sourceDone:Z

    .line 211
    invoke-static {p1}, Lio/reactivex/internal/util/NotificationLite;->error(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v3

    .line 212
    .local v3, "o":Ljava/lang/Object;
    invoke-virtual {p0, v3}, Lio/reactivex/internal/operators/flowable/FlowableCache$CacheState;->add(Ljava/lang/Object;)V

    .line 213
    iget-object v5, p0, Lio/reactivex/internal/operators/flowable/FlowableCache$CacheState;->connection:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v5}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->cancel(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 214
    iget-object v5, p0, Lio/reactivex/internal/operators/flowable/FlowableCache$CacheState;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v6, Lio/reactivex/internal/operators/flowable/FlowableCache$CacheState;->TERMINATED:[Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription;

    invoke-virtual {v5, v6}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription;

    .local v0, "arr$":[Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v4, v0, v1

    .line 215
    .local v4, "rp":Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription;, "Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription<*>;"
    invoke-virtual {v4}, Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription;->replay()V

    .line 214
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 218
    .end local v0    # "arr$":[Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "o":Ljava/lang/Object;
    .end local v4    # "rp":Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription;, "Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription<*>;"
    :cond_0
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    .line 220
    :cond_1
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 198
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableCache$CacheState;, "Lio/reactivex/internal/operators/flowable/FlowableCache$CacheState<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-boolean v5, p0, Lio/reactivex/internal/operators/flowable/FlowableCache$CacheState;->sourceDone:Z

    if-nez v5, :cond_0

    .line 199
    invoke-static {p1}, Lio/reactivex/internal/util/NotificationLite;->next(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 200
    .local v3, "o":Ljava/lang/Object;
    invoke-virtual {p0, v3}, Lio/reactivex/internal/operators/flowable/FlowableCache$CacheState;->add(Ljava/lang/Object;)V

    .line 201
    iget-object v5, p0, Lio/reactivex/internal/operators/flowable/FlowableCache$CacheState;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription;

    .local v0, "arr$":[Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v4, v0, v1

    .line 202
    .local v4, "rp":Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription;, "Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription<*>;"
    invoke-virtual {v4}, Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription;->replay()V

    .line 201
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 205
    .end local v0    # "arr$":[Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "o":Ljava/lang/Object;
    .end local v4    # "rp":Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription;, "Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription<*>;"
    :cond_0
    return-void
.end method

.method public onSubscribe(Lorg/reactivestreams/Subscription;)V
    .locals 2
    .param p1, "s"    # Lorg/reactivestreams/Subscription;

    .prologue
    .line 183
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableCache$CacheState;, "Lio/reactivex/internal/operators/flowable/FlowableCache$CacheState<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableCache$CacheState;->connection:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lorg/reactivestreams/Subscription;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    const-wide v0, 0x7fffffffffffffffL

    invoke-interface {p1, v0, v1}, Lorg/reactivestreams/Subscription;->request(J)V

    .line 186
    :cond_0
    return-void
.end method

.method public removeChild(Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableCache$CacheState;, "Lio/reactivex/internal/operators/flowable/FlowableCache$CacheState<TT;>;"
    .local p1, "p":Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription;, "Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription<TT;>;"
    const/4 v7, 0x0

    .line 151
    :cond_0
    iget-object v5, p0, Lio/reactivex/internal/operators/flowable/FlowableCache$CacheState;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription;

    .line 152
    .local v0, "a":[Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription;, "[Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription<TT;>;"
    array-length v4, v0

    .line 153
    .local v4, "n":I
    if-nez v4, :cond_2

    .line 176
    :cond_1
    :goto_0
    return-void

    .line 156
    :cond_2
    const/4 v3, -0x1

    .line 157
    .local v3, "j":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v4, :cond_3

    .line 158
    aget-object v5, v0, v2

    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 159
    move v3, v2

    .line 163
    :cond_3
    if-ltz v3, :cond_1

    .line 168
    const/4 v5, 0x1

    if-ne v4, v5, :cond_5

    .line 169
    sget-object v1, Lio/reactivex/internal/operators/flowable/FlowableCache$CacheState;->EMPTY:[Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription;

    .line 175
    .local v1, "b":[Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription;, "[Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription<TT;>;"
    :goto_2
    iget-object v5, p0, Lio/reactivex/internal/operators/flowable/FlowableCache$CacheState;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v5, v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    .line 157
    .end local v1    # "b":[Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription;, "[Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription<TT;>;"
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 171
    :cond_5
    add-int/lit8 v5, v4, -0x1

    new-array v1, v5, [Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription;

    .line 172
    .restart local v1    # "b":[Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription;, "[Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription<TT;>;"
    invoke-static {v0, v7, v1, v7, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 173
    add-int/lit8 v5, v3, 0x1

    sub-int v6, v4, v3

    add-int/lit8 v6, v6, -0x1

    invoke-static {v0, v5, v1, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2
.end method
