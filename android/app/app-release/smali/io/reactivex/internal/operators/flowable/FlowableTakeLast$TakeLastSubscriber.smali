.class final Lio/reactivex/internal/operators/flowable/FlowableTakeLast$TakeLastSubscriber;
.super Ljava/util/ArrayDeque;
.source "FlowableTakeLast.java"

# interfaces
.implements Lio/reactivex/FlowableSubscriber;
.implements Lorg/reactivestreams/Subscription;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableTakeLast;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TakeLastSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/ArrayDeque",
        "<TT;>;",
        "Lio/reactivex/FlowableSubscriber",
        "<TT;>;",
        "Lorg/reactivestreams/Subscription;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x6479cc5265c56d72L


# instance fields
.field final actual:Lorg/reactivestreams/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/reactivestreams/Subscriber",
            "<-TT;>;"
        }
    .end annotation
.end field

.field volatile cancelled:Z

.field final count:I

.field volatile done:Z

.field final requested:Ljava/util/concurrent/atomic/AtomicLong;

.field s:Lorg/reactivestreams/Subscription;

.field final wip:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method constructor <init>(Lorg/reactivestreams/Subscriber;I)V
    .locals 1
    .param p2, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber",
            "<-TT;>;I)V"
        }
    .end annotation

    .prologue
    .line 52
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableTakeLast$TakeLastSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableTakeLast$TakeLastSubscriber<TT;>;"
    .local p1, "actual":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-TT;>;"
    invoke-direct {p0}, Ljava/util/ArrayDeque;-><init>()V

    .line 48
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableTakeLast$TakeLastSubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    .line 50
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableTakeLast$TakeLastSubscriber;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 53
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableTakeLast$TakeLastSubscriber;->actual:Lorg/reactivestreams/Subscriber;

    .line 54
    iput p2, p0, Lio/reactivex/internal/operators/flowable/FlowableTakeLast$TakeLastSubscriber;->count:I

    .line 55
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 95
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableTakeLast$TakeLastSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableTakeLast$TakeLastSubscriber<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableTakeLast$TakeLastSubscriber;->cancelled:Z

    .line 96
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableTakeLast$TakeLastSubscriber;->s:Lorg/reactivestreams/Subscription;

    invoke-interface {v0}, Lorg/reactivestreams/Subscription;->cancel()V

    .line 97
    return-void
.end method

.method drain()V
    .locals 10

    .prologue
    .line 100
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableTakeLast$TakeLastSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableTakeLast$TakeLastSubscriber<TT;>;"
    iget-object v6, p0, Lio/reactivex/internal/operators/flowable/FlowableTakeLast$TakeLastSubscriber;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v6

    if-nez v6, :cond_1

    .line 101
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableTakeLast$TakeLastSubscriber;->actual:Lorg/reactivestreams/Subscriber;

    .line 102
    .local v0, "a":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-TT;>;"
    iget-object v6, p0, Lio/reactivex/internal/operators/flowable/FlowableTakeLast$TakeLastSubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    .line 104
    .local v4, "r":J
    :cond_0
    iget-boolean v6, p0, Lio/reactivex/internal/operators/flowable/FlowableTakeLast$TakeLastSubscriber;->cancelled:Z

    if-eqz v6, :cond_2

    .line 128
    .end local v0    # "a":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-TT;>;"
    .end local v4    # "r":J
    :cond_1
    :goto_0
    return-void

    .line 107
    .restart local v0    # "a":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-TT;>;"
    .restart local v4    # "r":J
    :cond_2
    iget-boolean v6, p0, Lio/reactivex/internal/operators/flowable/FlowableTakeLast$TakeLastSubscriber;->done:Z

    if-eqz v6, :cond_5

    .line 108
    const-wide/16 v2, 0x0

    .line 110
    .local v2, "e":J
    :goto_1
    cmp-long v6, v2, v4

    if-eqz v6, :cond_4

    .line 111
    iget-boolean v6, p0, Lio/reactivex/internal/operators/flowable/FlowableTakeLast$TakeLastSubscriber;->cancelled:Z

    if-nez v6, :cond_1

    .line 114
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableTakeLast$TakeLastSubscriber;->poll()Ljava/lang/Object;

    move-result-object v1

    .line 115
    .local v1, "v":Ljava/lang/Object;, "TT;"
    if-nez v1, :cond_3

    .line 116
    invoke-interface {v0}, Lorg/reactivestreams/Subscriber;->onComplete()V

    goto :goto_0

    .line 119
    :cond_3
    invoke-interface {v0, v1}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 120
    const-wide/16 v6, 0x1

    add-long/2addr v2, v6

    .line 121
    goto :goto_1

    .line 122
    .end local v1    # "v":Ljava/lang/Object;, "TT;"
    :cond_4
    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-eqz v6, :cond_5

    const-wide v6, 0x7fffffffffffffffL

    cmp-long v6, v4, v6

    if-eqz v6, :cond_5

    .line 123
    iget-object v6, p0, Lio/reactivex/internal/operators/flowable/FlowableTakeLast$TakeLastSubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    neg-long v8, v2

    invoke-virtual {v6, v8, v9}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    move-result-wide v4

    .line 126
    .end local v2    # "e":J
    :cond_5
    iget-object v6, p0, Lio/reactivex/internal/operators/flowable/FlowableTakeLast$TakeLastSubscriber;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v6

    if-nez v6, :cond_0

    goto :goto_0
.end method

.method public onComplete()V
    .locals 1

    .prologue
    .line 81
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableTakeLast$TakeLastSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableTakeLast$TakeLastSubscriber<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableTakeLast$TakeLastSubscriber;->done:Z

    .line 82
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableTakeLast$TakeLastSubscriber;->drain()V

    .line 83
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 76
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableTakeLast$TakeLastSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableTakeLast$TakeLastSubscriber<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableTakeLast$TakeLastSubscriber;->actual:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0, p1}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 77
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 68
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableTakeLast$TakeLastSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableTakeLast$TakeLastSubscriber<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget v0, p0, Lio/reactivex/internal/operators/flowable/FlowableTakeLast$TakeLastSubscriber;->count:I

    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableTakeLast$TakeLastSubscriber;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 69
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableTakeLast$TakeLastSubscriber;->poll()Ljava/lang/Object;

    .line 71
    :cond_0
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/flowable/FlowableTakeLast$TakeLastSubscriber;->offer(Ljava/lang/Object;)Z

    .line 72
    return-void
.end method

.method public onSubscribe(Lorg/reactivestreams/Subscription;)V
    .locals 2
    .param p1, "s"    # Lorg/reactivestreams/Subscription;

    .prologue
    .line 59
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableTakeLast$TakeLastSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableTakeLast$TakeLastSubscriber<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableTakeLast$TakeLastSubscriber;->s:Lorg/reactivestreams/Subscription;

    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(Lorg/reactivestreams/Subscription;Lorg/reactivestreams/Subscription;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableTakeLast$TakeLastSubscriber;->s:Lorg/reactivestreams/Subscription;

    .line 61
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableTakeLast$TakeLastSubscriber;->actual:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0, p0}, Lorg/reactivestreams/Subscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    .line 62
    const-wide v0, 0x7fffffffffffffffL

    invoke-interface {p1, v0, v1}, Lorg/reactivestreams/Subscription;->request(J)V

    .line 64
    :cond_0
    return-void
.end method

.method public request(J)V
    .locals 1
    .param p1, "n"    # J

    .prologue
    .line 87
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableTakeLast$TakeLastSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableTakeLast$TakeLastSubscriber<TT;>;"
    invoke-static {p1, p2}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableTakeLast$TakeLastSubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, p1, p2}, Lio/reactivex/internal/util/BackpressureHelper;->add(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 89
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableTakeLast$TakeLastSubscriber;->drain()V

    .line 91
    :cond_0
    return-void
.end method
