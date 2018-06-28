.class public abstract Lio/reactivex/internal/observers/QueueDrainObserver;
.super Lio/reactivex/internal/observers/QueueDrainSubscriberPad2;
.source "QueueDrainObserver.java"

# interfaces
.implements Lio/reactivex/Observer;
.implements Lio/reactivex/internal/util/ObservableQueueDrain;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/observers/QueueDrainSubscriberPad2;",
        "Lio/reactivex/Observer",
        "<TT;>;",
        "Lio/reactivex/internal/util/ObservableQueueDrain",
        "<TU;TV;>;"
    }
.end annotation


# instance fields
.field protected final actual:Lio/reactivex/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observer",
            "<-TV;>;"
        }
    .end annotation
.end field

.field protected volatile cancelled:Z

.field protected volatile done:Z

.field protected error:Ljava/lang/Throwable;

.field protected final queue:Lio/reactivex/internal/fuseable/SimplePlainQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/fuseable/SimplePlainQueue",
            "<TU;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/Observer;Lio/reactivex/internal/fuseable/SimplePlainQueue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer",
            "<-TV;>;",
            "Lio/reactivex/internal/fuseable/SimplePlainQueue",
            "<TU;>;)V"
        }
    .end annotation

    .prologue
    .line 40
    .local p0, "this":Lio/reactivex/internal/observers/QueueDrainObserver;, "Lio/reactivex/internal/observers/QueueDrainObserver<TT;TU;TV;>;"
    .local p1, "actual":Lio/reactivex/Observer;, "Lio/reactivex/Observer<-TV;>;"
    .local p2, "queue":Lio/reactivex/internal/fuseable/SimplePlainQueue;, "Lio/reactivex/internal/fuseable/SimplePlainQueue<TU;>;"
    invoke-direct {p0}, Lio/reactivex/internal/observers/QueueDrainSubscriberPad2;-><init>()V

    .line 41
    iput-object p1, p0, Lio/reactivex/internal/observers/QueueDrainObserver;->actual:Lio/reactivex/Observer;

    .line 42
    iput-object p2, p0, Lio/reactivex/internal/observers/QueueDrainObserver;->queue:Lio/reactivex/internal/fuseable/SimplePlainQueue;

    .line 43
    return-void
.end method


# virtual methods
.method public accept(Lio/reactivex/Observer;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer",
            "<-TV;>;TU;)V"
        }
    .end annotation

    .prologue
    .line 123
    .local p0, "this":Lio/reactivex/internal/observers/QueueDrainObserver;, "Lio/reactivex/internal/observers/QueueDrainObserver<TT;TU;TV;>;"
    .local p1, "a":Lio/reactivex/Observer;, "Lio/reactivex/Observer<-TV;>;"
    .local p2, "v":Ljava/lang/Object;, "TU;"
    return-void
.end method

.method public final cancelled()Z
    .locals 1

    .prologue
    .line 47
    .local p0, "this":Lio/reactivex/internal/observers/QueueDrainObserver;, "Lio/reactivex/internal/observers/QueueDrainObserver<TT;TU;TV;>;"
    iget-boolean v0, p0, Lio/reactivex/internal/observers/QueueDrainObserver;->cancelled:Z

    return v0
.end method

.method public final done()Z
    .locals 1

    .prologue
    .line 52
    .local p0, "this":Lio/reactivex/internal/observers/QueueDrainObserver;, "Lio/reactivex/internal/observers/QueueDrainObserver<TT;TU;TV;>;"
    iget-boolean v0, p0, Lio/reactivex/internal/observers/QueueDrainObserver;->done:Z

    return v0
.end method

.method public final enter()Z
    .locals 1

    .prologue
    .line 57
    .local p0, "this":Lio/reactivex/internal/observers/QueueDrainObserver;, "Lio/reactivex/internal/observers/QueueDrainObserver<TT;TU;TV;>;"
    iget-object v0, p0, Lio/reactivex/internal/observers/QueueDrainObserver;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final error()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 112
    .local p0, "this":Lio/reactivex/internal/observers/QueueDrainObserver;, "Lio/reactivex/internal/observers/QueueDrainObserver<TT;TU;TV;>;"
    iget-object v0, p0, Lio/reactivex/internal/observers/QueueDrainObserver;->error:Ljava/lang/Throwable;

    return-object v0
.end method

.method public final fastEnter()Z
    .locals 3

    .prologue
    .local p0, "this":Lio/reactivex/internal/observers/QueueDrainObserver;, "Lio/reactivex/internal/observers/QueueDrainObserver<TT;TU;TV;>;"
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 61
    iget-object v2, p0, Lio/reactivex/internal/observers/QueueDrainObserver;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lio/reactivex/internal/observers/QueueDrainObserver;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method protected final fastPathEmit(Ljava/lang/Object;ZLio/reactivex/disposables/Disposable;)V
    .locals 5
    .param p2, "delayError"    # Z
    .param p3, "dispose"    # Lio/reactivex/disposables/Disposable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;Z",
            "Lio/reactivex/disposables/Disposable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 65
    .local p0, "this":Lio/reactivex/internal/observers/QueueDrainObserver;, "Lio/reactivex/internal/observers/QueueDrainObserver<TT;TU;TV;>;"
    .local p1, "value":Ljava/lang/Object;, "TU;"
    iget-object v1, p0, Lio/reactivex/internal/observers/QueueDrainObserver;->actual:Lio/reactivex/Observer;

    .line 66
    .local v1, "s":Lio/reactivex/Observer;, "Lio/reactivex/Observer<-TV;>;"
    iget-object v0, p0, Lio/reactivex/internal/observers/QueueDrainObserver;->queue:Lio/reactivex/internal/fuseable/SimplePlainQueue;

    .line 68
    .local v0, "q":Lio/reactivex/internal/fuseable/SimplePlainQueue;, "Lio/reactivex/internal/fuseable/SimplePlainQueue<TU;>;"
    iget-object v2, p0, Lio/reactivex/internal/observers/QueueDrainObserver;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lio/reactivex/internal/observers/QueueDrainObserver;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 69
    invoke-virtual {p0, v1, p1}, Lio/reactivex/internal/observers/QueueDrainObserver;->accept(Lio/reactivex/Observer;Ljava/lang/Object;)V

    .line 70
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Lio/reactivex/internal/observers/QueueDrainObserver;->leave(I)I

    move-result v2

    if-nez v2, :cond_2

    .line 80
    :cond_0
    :goto_0
    return-void

    .line 74
    :cond_1
    invoke-interface {v0, p1}, Lio/reactivex/internal/fuseable/SimplePlainQueue;->offer(Ljava/lang/Object;)Z

    .line 75
    invoke-virtual {p0}, Lio/reactivex/internal/observers/QueueDrainObserver;->enter()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 79
    :cond_2
    invoke-static {v0, v1, p2, p3, p0}, Lio/reactivex/internal/util/QueueDrainHelper;->drainLoop(Lio/reactivex/internal/fuseable/SimplePlainQueue;Lio/reactivex/Observer;ZLio/reactivex/disposables/Disposable;Lio/reactivex/internal/util/ObservableQueueDrain;)V

    goto :goto_0
.end method

.method protected final fastPathOrderedEmit(Ljava/lang/Object;ZLio/reactivex/disposables/Disposable;)V
    .locals 5
    .param p2, "delayError"    # Z
    .param p3, "disposable"    # Lio/reactivex/disposables/Disposable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;Z",
            "Lio/reactivex/disposables/Disposable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 89
    .local p0, "this":Lio/reactivex/internal/observers/QueueDrainObserver;, "Lio/reactivex/internal/observers/QueueDrainObserver<TT;TU;TV;>;"
    .local p1, "value":Ljava/lang/Object;, "TU;"
    iget-object v1, p0, Lio/reactivex/internal/observers/QueueDrainObserver;->actual:Lio/reactivex/Observer;

    .line 90
    .local v1, "s":Lio/reactivex/Observer;, "Lio/reactivex/Observer<-TV;>;"
    iget-object v0, p0, Lio/reactivex/internal/observers/QueueDrainObserver;->queue:Lio/reactivex/internal/fuseable/SimplePlainQueue;

    .line 92
    .local v0, "q":Lio/reactivex/internal/fuseable/SimplePlainQueue;, "Lio/reactivex/internal/fuseable/SimplePlainQueue<TU;>;"
    iget-object v2, p0, Lio/reactivex/internal/observers/QueueDrainObserver;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lio/reactivex/internal/observers/QueueDrainObserver;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 93
    invoke-interface {v0}, Lio/reactivex/internal/fuseable/SimplePlainQueue;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 94
    invoke-virtual {p0, v1, p1}, Lio/reactivex/internal/observers/QueueDrainObserver;->accept(Lio/reactivex/Observer;Ljava/lang/Object;)V

    .line 95
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Lio/reactivex/internal/observers/QueueDrainObserver;->leave(I)I

    move-result v2

    if-nez v2, :cond_1

    .line 108
    :goto_0
    return-void

    .line 99
    :cond_0
    invoke-interface {v0, p1}, Lio/reactivex/internal/fuseable/SimplePlainQueue;->offer(Ljava/lang/Object;)Z

    .line 107
    :cond_1
    invoke-static {v0, v1, p2, p3, p0}, Lio/reactivex/internal/util/QueueDrainHelper;->drainLoop(Lio/reactivex/internal/fuseable/SimplePlainQueue;Lio/reactivex/Observer;ZLio/reactivex/disposables/Disposable;Lio/reactivex/internal/util/ObservableQueueDrain;)V

    goto :goto_0

    .line 102
    :cond_2
    invoke-interface {v0, p1}, Lio/reactivex/internal/fuseable/SimplePlainQueue;->offer(Ljava/lang/Object;)Z

    .line 103
    invoke-virtual {p0}, Lio/reactivex/internal/observers/QueueDrainObserver;->enter()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0
.end method

.method public final leave(I)I
    .locals 1
    .param p1, "m"    # I

    .prologue
    .line 117
    .local p0, "this":Lio/reactivex/internal/observers/QueueDrainObserver;, "Lio/reactivex/internal/observers/QueueDrainObserver<TT;TU;TV;>;"
    iget-object v0, p0, Lio/reactivex/internal/observers/QueueDrainObserver;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v0

    return v0
.end method