.class final Lio/reactivex/internal/operators/flowable/BlockingFlowableNext$NextSubscriber;
.super Lio/reactivex/subscribers/DisposableSubscriber;
.source "BlockingFlowableNext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/BlockingFlowableNext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "NextSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/subscribers/DisposableSubscriber",
        "<",
        "Lio/reactivex/Notification",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field private final buf:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lio/reactivex/Notification",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field final waiting:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 135
    .local p0, "this":Lio/reactivex/internal/operators/flowable/BlockingFlowableNext$NextSubscriber;, "Lio/reactivex/internal/operators/flowable/BlockingFlowableNext$NextSubscriber<TT;>;"
    invoke-direct {p0}, Lio/reactivex/subscribers/DisposableSubscriber;-><init>()V

    .line 136
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/BlockingFlowableNext$NextSubscriber;->buf:Ljava/util/concurrent/BlockingQueue;

    .line 137
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/BlockingFlowableNext$NextSubscriber;->waiting:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 0

    .prologue
    .line 142
    .local p0, "this":Lio/reactivex/internal/operators/flowable/BlockingFlowableNext$NextSubscriber;, "Lio/reactivex/internal/operators/flowable/BlockingFlowableNext$NextSubscriber<TT;>;"
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 146
    .local p0, "this":Lio/reactivex/internal/operators/flowable/BlockingFlowableNext$NextSubscriber;, "Lio/reactivex/internal/operators/flowable/BlockingFlowableNext$NextSubscriber<TT;>;"
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    .line 147
    return-void
.end method

.method public onNext(Lio/reactivex/Notification;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Notification",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 152
    .local p0, "this":Lio/reactivex/internal/operators/flowable/BlockingFlowableNext$NextSubscriber;, "Lio/reactivex/internal/operators/flowable/BlockingFlowableNext$NextSubscriber<TT;>;"
    .local p1, "args":Lio/reactivex/Notification;, "Lio/reactivex/Notification<TT;>;"
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/BlockingFlowableNext$NextSubscriber;->waiting:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    invoke-virtual {p1}, Lio/reactivex/Notification;->isOnNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 153
    :cond_0
    move-object v1, p1

    .line 154
    .local v1, "toOffer":Lio/reactivex/Notification;, "Lio/reactivex/Notification<TT;>;"
    :cond_1
    :goto_0
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/BlockingFlowableNext$NextSubscriber;->buf:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2, v1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 155
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/BlockingFlowableNext$NextSubscriber;->buf:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/Notification;

    .line 158
    .local v0, "concurrentItem":Lio/reactivex/Notification;, "Lio/reactivex/Notification<TT;>;"
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lio/reactivex/Notification;->isOnNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 159
    move-object v1, v0

    goto :goto_0

    .line 164
    .end local v0    # "concurrentItem":Lio/reactivex/Notification;, "Lio/reactivex/Notification<TT;>;"
    .end local v1    # "toOffer":Lio/reactivex/Notification;, "Lio/reactivex/Notification<TT;>;"
    :cond_2
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 135
    .local p0, "this":Lio/reactivex/internal/operators/flowable/BlockingFlowableNext$NextSubscriber;, "Lio/reactivex/internal/operators/flowable/BlockingFlowableNext$NextSubscriber<TT;>;"
    check-cast p1, Lio/reactivex/Notification;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/flowable/BlockingFlowableNext$NextSubscriber;->onNext(Lio/reactivex/Notification;)V

    return-void
.end method

.method setWaiting()V
    .locals 2

    .prologue
    .line 172
    .local p0, "this":Lio/reactivex/internal/operators/flowable/BlockingFlowableNext$NextSubscriber;, "Lio/reactivex/internal/operators/flowable/BlockingFlowableNext$NextSubscriber<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/BlockingFlowableNext$NextSubscriber;->waiting:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 173
    return-void
.end method

.method public takeNext()Lio/reactivex/Notification;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Notification",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 167
    .local p0, "this":Lio/reactivex/internal/operators/flowable/BlockingFlowableNext$NextSubscriber;, "Lio/reactivex/internal/operators/flowable/BlockingFlowableNext$NextSubscriber<TT;>;"
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/BlockingFlowableNext$NextSubscriber;->setWaiting()V

    .line 168
    invoke-static {}, Lio/reactivex/internal/util/BlockingHelper;->verifyNonBlocking()V

    .line 169
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/BlockingFlowableNext$NextSubscriber;->buf:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/Notification;

    return-object v0
.end method
