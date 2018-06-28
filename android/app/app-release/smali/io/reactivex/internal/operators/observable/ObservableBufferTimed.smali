.class public final Lio/reactivex/internal/operators/observable/ObservableBufferTimed;
.super Lio/reactivex/internal/operators/observable/AbstractObservableWithUpstream;
.source "ObservableBufferTimed.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/ObservableBufferTimed$BufferExactBoundedObserver;,
        Lio/reactivex/internal/operators/observable/ObservableBufferTimed$BufferSkipBoundedObserver;,
        Lio/reactivex/internal/operators/observable/ObservableBufferTimed$BufferExactUnboundedObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U::",
        "Ljava/util/Collection",
        "<-TT;>;>",
        "Lio/reactivex/internal/operators/observable/AbstractObservableWithUpstream",
        "<TT;TU;>;"
    }
.end annotation


# instance fields
.field final bufferSupplier:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable",
            "<TU;>;"
        }
    .end annotation
.end field

.field final maxSize:I

.field final restartTimerOnMaxSize:Z

.field final scheduler:Lio/reactivex/Scheduler;

.field final timeskip:J

.field final timespan:J

.field final unit:Ljava/util/concurrent/TimeUnit;


# direct methods
.method public constructor <init>(Lio/reactivex/ObservableSource;JJLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;Ljava/util/concurrent/Callable;IZ)V
    .locals 0
    .param p2, "timespan"    # J
    .param p4, "timeskip"    # J
    .param p6, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p7, "scheduler"    # Lio/reactivex/Scheduler;
    .param p9, "maxSize"    # I
    .param p10, "restartTimerOnMaxSize"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ObservableSource",
            "<TT;>;JJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/Scheduler;",
            "Ljava/util/concurrent/Callable",
            "<TU;>;IZ)V"
        }
    .end annotation

    .prologue
    .line 45
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableBufferTimed;, "Lio/reactivex/internal/operators/observable/ObservableBufferTimed<TT;TU;>;"
    .local p1, "source":Lio/reactivex/ObservableSource;, "Lio/reactivex/ObservableSource<TT;>;"
    .local p8, "bufferSupplier":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TU;>;"
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/observable/AbstractObservableWithUpstream;-><init>(Lio/reactivex/ObservableSource;)V

    .line 46
    iput-wide p2, p0, Lio/reactivex/internal/operators/observable/ObservableBufferTimed;->timespan:J

    .line 47
    iput-wide p4, p0, Lio/reactivex/internal/operators/observable/ObservableBufferTimed;->timeskip:J

    .line 48
    iput-object p6, p0, Lio/reactivex/internal/operators/observable/ObservableBufferTimed;->unit:Ljava/util/concurrent/TimeUnit;

    .line 49
    iput-object p7, p0, Lio/reactivex/internal/operators/observable/ObservableBufferTimed;->scheduler:Lio/reactivex/Scheduler;

    .line 50
    iput-object p8, p0, Lio/reactivex/internal/operators/observable/ObservableBufferTimed;->bufferSupplier:Ljava/util/concurrent/Callable;

    .line 51
    iput p9, p0, Lio/reactivex/internal/operators/observable/ObservableBufferTimed;->maxSize:I

    .line 52
    iput-boolean p10, p0, Lio/reactivex/internal/operators/observable/ObservableBufferTimed;->restartTimerOnMaxSize:Z

    .line 53
    return-void
.end method


# virtual methods
.method protected subscribeActual(Lio/reactivex/Observer;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer",
            "<-TU;>;)V"
        }
    .end annotation

    .prologue
    .line 57
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableBufferTimed;, "Lio/reactivex/internal/operators/observable/ObservableBufferTimed<TT;TU;>;"
    .local p1, "t":Lio/reactivex/Observer;, "Lio/reactivex/Observer<-TU;>;"
    iget-wide v0, p0, Lio/reactivex/internal/operators/observable/ObservableBufferTimed;->timespan:J

    iget-wide v2, p0, Lio/reactivex/internal/operators/observable/ObservableBufferTimed;->timeskip:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget v0, p0, Lio/reactivex/internal/operators/observable/ObservableBufferTimed;->maxSize:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    .line 58
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableBufferTimed;->source:Lio/reactivex/ObservableSource;

    new-instance v1, Lio/reactivex/internal/operators/observable/ObservableBufferTimed$BufferExactUnboundedObserver;

    new-instance v2, Lio/reactivex/observers/SerializedObserver;

    invoke-direct {v2, p1}, Lio/reactivex/observers/SerializedObserver;-><init>(Lio/reactivex/Observer;)V

    iget-object v3, p0, Lio/reactivex/internal/operators/observable/ObservableBufferTimed;->bufferSupplier:Ljava/util/concurrent/Callable;

    iget-wide v4, p0, Lio/reactivex/internal/operators/observable/ObservableBufferTimed;->timespan:J

    iget-object v6, p0, Lio/reactivex/internal/operators/observable/ObservableBufferTimed;->unit:Ljava/util/concurrent/TimeUnit;

    iget-object v7, p0, Lio/reactivex/internal/operators/observable/ObservableBufferTimed;->scheduler:Lio/reactivex/Scheduler;

    invoke-direct/range {v1 .. v7}, Lio/reactivex/internal/operators/observable/ObservableBufferTimed$BufferExactUnboundedObserver;-><init>(Lio/reactivex/Observer;Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;)V

    invoke-interface {v0, v1}, Lio/reactivex/ObservableSource;->subscribe(Lio/reactivex/Observer;)V

    .line 79
    :goto_0
    return-void

    .line 63
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableBufferTimed;->scheduler:Lio/reactivex/Scheduler;

    invoke-virtual {v0}, Lio/reactivex/Scheduler;->createWorker()Lio/reactivex/Scheduler$Worker;

    move-result-object v9

    .line 65
    .local v9, "w":Lio/reactivex/Scheduler$Worker;
    iget-wide v0, p0, Lio/reactivex/internal/operators/observable/ObservableBufferTimed;->timespan:J

    iget-wide v2, p0, Lio/reactivex/internal/operators/observable/ObservableBufferTimed;->timeskip:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 66
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableBufferTimed;->source:Lio/reactivex/ObservableSource;

    new-instance v1, Lio/reactivex/internal/operators/observable/ObservableBufferTimed$BufferExactBoundedObserver;

    new-instance v2, Lio/reactivex/observers/SerializedObserver;

    invoke-direct {v2, p1}, Lio/reactivex/observers/SerializedObserver;-><init>(Lio/reactivex/Observer;)V

    iget-object v3, p0, Lio/reactivex/internal/operators/observable/ObservableBufferTimed;->bufferSupplier:Ljava/util/concurrent/Callable;

    iget-wide v4, p0, Lio/reactivex/internal/operators/observable/ObservableBufferTimed;->timespan:J

    iget-object v6, p0, Lio/reactivex/internal/operators/observable/ObservableBufferTimed;->unit:Ljava/util/concurrent/TimeUnit;

    iget v7, p0, Lio/reactivex/internal/operators/observable/ObservableBufferTimed;->maxSize:I

    iget-boolean v8, p0, Lio/reactivex/internal/operators/observable/ObservableBufferTimed;->restartTimerOnMaxSize:Z

    invoke-direct/range {v1 .. v9}, Lio/reactivex/internal/operators/observable/ObservableBufferTimed$BufferExactBoundedObserver;-><init>(Lio/reactivex/Observer;Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;IZLio/reactivex/Scheduler$Worker;)V

    invoke-interface {v0, v1}, Lio/reactivex/ObservableSource;->subscribe(Lio/reactivex/Observer;)V

    goto :goto_0

    .line 75
    :cond_1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableBufferTimed;->source:Lio/reactivex/ObservableSource;

    new-instance v1, Lio/reactivex/internal/operators/observable/ObservableBufferTimed$BufferSkipBoundedObserver;

    new-instance v2, Lio/reactivex/observers/SerializedObserver;

    invoke-direct {v2, p1}, Lio/reactivex/observers/SerializedObserver;-><init>(Lio/reactivex/Observer;)V

    iget-object v3, p0, Lio/reactivex/internal/operators/observable/ObservableBufferTimed;->bufferSupplier:Ljava/util/concurrent/Callable;

    iget-wide v4, p0, Lio/reactivex/internal/operators/observable/ObservableBufferTimed;->timespan:J

    iget-wide v6, p0, Lio/reactivex/internal/operators/observable/ObservableBufferTimed;->timeskip:J

    iget-object v8, p0, Lio/reactivex/internal/operators/observable/ObservableBufferTimed;->unit:Ljava/util/concurrent/TimeUnit;

    invoke-direct/range {v1 .. v9}, Lio/reactivex/internal/operators/observable/ObservableBufferTimed$BufferSkipBoundedObserver;-><init>(Lio/reactivex/Observer;Ljava/util/concurrent/Callable;JJLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler$Worker;)V

    invoke-interface {v0, v1}, Lio/reactivex/ObservableSource;->subscribe(Lio/reactivex/Observer;)V

    goto :goto_0
.end method