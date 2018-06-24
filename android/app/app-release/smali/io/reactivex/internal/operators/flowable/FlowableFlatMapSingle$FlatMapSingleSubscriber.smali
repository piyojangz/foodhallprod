.class final Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "FlowableFlatMapSingle.java"

# interfaces
.implements Lio/reactivex/FlowableSubscriber;
.implements Lorg/reactivestreams/Subscription;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FlatMapSingleSubscriber"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber$InnerObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lio/reactivex/FlowableSubscriber",
        "<TT;>;",
        "Lorg/reactivestreams/Subscription;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x775a28d5b42d01b7L


# instance fields
.field final active:Ljava/util/concurrent/atomic/AtomicInteger;

.field final actual:Lorg/reactivestreams/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/reactivestreams/Subscriber",
            "<-TR;>;"
        }
    .end annotation
.end field

.field volatile cancelled:Z

.field final delayErrors:Z

.field final errors:Lio/reactivex/internal/util/AtomicThrowable;

.field final mapper:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function",
            "<-TT;+",
            "Lio/reactivex/SingleSource",
            "<+TR;>;>;"
        }
    .end annotation
.end field

.field final maxConcurrency:I

.field final queue:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lio/reactivex/internal/queue/SpscLinkedArrayQueue",
            "<TR;>;>;"
        }
    .end annotation
.end field

.field final requested:Ljava/util/concurrent/atomic/AtomicLong;

.field s:Lorg/reactivestreams/Subscription;

.field final set:Lio/reactivex/disposables/CompositeDisposable;


# direct methods
.method constructor <init>(Lorg/reactivestreams/Subscriber;Lio/reactivex/functions/Function;ZI)V
    .locals 2
    .param p3, "delayErrors"    # Z
    .param p4, "maxConcurrency"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber",
            "<-TR;>;",
            "Lio/reactivex/functions/Function",
            "<-TT;+",
            "Lio/reactivex/SingleSource",
            "<+TR;>;>;ZI)V"
        }
    .end annotation

    .prologue
    .line 86
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber<TT;TR;>;"
    .local p1, "actual":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-TR;>;"
    .local p2, "mapper":Lio/reactivex/functions/Function;, "Lio/reactivex/functions/Function<-TT;+Lio/reactivex/SingleSource<+TR;>;>;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 87
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->actual:Lorg/reactivestreams/Subscriber;

    .line 88
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->mapper:Lio/reactivex/functions/Function;

    .line 89
    iput-boolean p3, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->delayErrors:Z

    .line 90
    iput p4, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->maxConcurrency:I

    .line 91
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    .line 92
    new-instance v0, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->set:Lio/reactivex/disposables/CompositeDisposable;

    .line 93
    new-instance v0, Lio/reactivex/internal/util/AtomicThrowable;

    invoke-direct {v0}, Lio/reactivex/internal/util/AtomicThrowable;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    .line 94
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->active:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 95
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->queue:Ljava/util/concurrent/atomic/AtomicReference;

    .line 96
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 157
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber<TT;TR;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->cancelled:Z

    .line 158
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->s:Lorg/reactivestreams/Subscription;

    invoke-interface {v0}, Lorg/reactivestreams/Subscription;->cancel()V

    .line 159
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->set:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->dispose()V

    .line 160
    return-void
.end method

.method clear()V
    .locals 2

    .prologue
    .line 252
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber<TT;TR;>;"
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->queue:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    .line 253
    .local v0, "q":Lio/reactivex/internal/queue/SpscLinkedArrayQueue;, "Lio/reactivex/internal/queue/SpscLinkedArrayQueue<TR;>;"
    if-eqz v0, :cond_0

    .line 254
    invoke-virtual {v0}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->clear()V

    .line 256
    :cond_0
    return-void
.end method

.method drain()V
    .locals 1

    .prologue
    .line 246
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber<TT;TR;>;"
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    .line 247
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->drainLoop()V

    .line 249
    :cond_0
    return-void
.end method

.method drainLoop()V
    .locals 18

    .prologue
    .line 259
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber<TT;TR;>;"
    const/4 v8, 0x1

    .line 260
    .local v8, "missed":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->actual:Lorg/reactivestreams/Subscriber;

    .line 261
    .local v2, "a":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-TR;>;"
    move-object/from16 v0, p0

    iget-object v9, v0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->active:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 262
    .local v9, "n":Ljava/util/concurrent/atomic/AtomicInteger;
    move-object/from16 v0, p0

    iget-object v11, v0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->queue:Ljava/util/concurrent/atomic/AtomicReference;

    .line 265
    .local v11, "qr":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Lio/reactivex/internal/queue/SpscLinkedArrayQueue<TR;>;>;"
    :cond_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v15}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v12

    .line 266
    .local v12, "r":J
    const-wide/16 v4, 0x0

    .line 268
    .local v4, "e":J
    :goto_0
    cmp-long v15, v4, v12

    if-eqz v15, :cond_8

    .line 269
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->cancelled:Z

    if-eqz v15, :cond_1

    .line 270
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->clear()V

    .line 351
    :goto_1
    return-void

    .line 274
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->delayErrors:Z

    if-nez v15, :cond_2

    .line 275
    move-object/from16 v0, p0

    iget-object v15, v0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v15}, Lio/reactivex/internal/util/AtomicThrowable;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Throwable;

    .line 276
    .local v7, "ex":Ljava/lang/Throwable;
    if-eqz v7, :cond_2

    .line 277
    move-object/from16 v0, p0

    iget-object v15, v0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v15}, Lio/reactivex/internal/util/AtomicThrowable;->terminate()Ljava/lang/Throwable;

    move-result-object v7

    .line 278
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->clear()V

    .line 279
    invoke-interface {v2, v7}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 284
    .end local v7    # "ex":Ljava/lang/Throwable;
    :cond_2
    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v15

    if-nez v15, :cond_3

    const/4 v3, 0x1

    .line 285
    .local v3, "d":Z
    :goto_2
    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    .line 286
    .local v10, "q":Lio/reactivex/internal/queue/SpscLinkedArrayQueue;, "Lio/reactivex/internal/queue/SpscLinkedArrayQueue<TR;>;"
    if-eqz v10, :cond_4

    invoke-virtual {v10}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->poll()Ljava/lang/Object;

    move-result-object v14

    .line 287
    .local v14, "v":Ljava/lang/Object;, "TR;"
    :goto_3
    if-nez v14, :cond_5

    const/4 v6, 0x1

    .line 289
    .local v6, "empty":Z
    :goto_4
    if-eqz v3, :cond_7

    if-eqz v6, :cond_7

    .line 290
    move-object/from16 v0, p0

    iget-object v15, v0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v15}, Lio/reactivex/internal/util/AtomicThrowable;->terminate()Ljava/lang/Throwable;

    move-result-object v7

    .line 291
    .restart local v7    # "ex":Ljava/lang/Throwable;
    if-eqz v7, :cond_6

    .line 292
    invoke-interface {v2, v7}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 284
    .end local v3    # "d":Z
    .end local v6    # "empty":Z
    .end local v7    # "ex":Ljava/lang/Throwable;
    .end local v10    # "q":Lio/reactivex/internal/queue/SpscLinkedArrayQueue;, "Lio/reactivex/internal/queue/SpscLinkedArrayQueue<TR;>;"
    .end local v14    # "v":Ljava/lang/Object;, "TR;"
    :cond_3
    const/4 v3, 0x0

    goto :goto_2

    .line 286
    .restart local v3    # "d":Z
    .restart local v10    # "q":Lio/reactivex/internal/queue/SpscLinkedArrayQueue;, "Lio/reactivex/internal/queue/SpscLinkedArrayQueue<TR;>;"
    :cond_4
    const/4 v14, 0x0

    goto :goto_3

    .line 287
    .restart local v14    # "v":Ljava/lang/Object;, "TR;"
    :cond_5
    const/4 v6, 0x0

    goto :goto_4

    .line 294
    .restart local v6    # "empty":Z
    .restart local v7    # "ex":Ljava/lang/Throwable;
    :cond_6
    invoke-interface {v2}, Lorg/reactivestreams/Subscriber;->onComplete()V

    goto :goto_1

    .line 299
    .end local v7    # "ex":Ljava/lang/Throwable;
    :cond_7
    if-eqz v6, :cond_9

    .line 308
    .end local v3    # "d":Z
    .end local v6    # "empty":Z
    .end local v10    # "q":Lio/reactivex/internal/queue/SpscLinkedArrayQueue;, "Lio/reactivex/internal/queue/SpscLinkedArrayQueue<TR;>;"
    .end local v14    # "v":Ljava/lang/Object;, "TR;"
    :cond_8
    cmp-long v15, v4, v12

    if-nez v15, :cond_10

    .line 309
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->cancelled:Z

    if-eqz v15, :cond_a

    .line 310
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->clear()V

    goto :goto_1

    .line 303
    .restart local v3    # "d":Z
    .restart local v6    # "empty":Z
    .restart local v10    # "q":Lio/reactivex/internal/queue/SpscLinkedArrayQueue;, "Lio/reactivex/internal/queue/SpscLinkedArrayQueue<TR;>;"
    .restart local v14    # "v":Ljava/lang/Object;, "TR;"
    :cond_9
    invoke-interface {v2, v14}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 305
    const-wide/16 v16, 0x1

    add-long v4, v4, v16

    .line 306
    goto :goto_0

    .line 314
    .end local v3    # "d":Z
    .end local v6    # "empty":Z
    .end local v10    # "q":Lio/reactivex/internal/queue/SpscLinkedArrayQueue;, "Lio/reactivex/internal/queue/SpscLinkedArrayQueue<TR;>;"
    .end local v14    # "v":Ljava/lang/Object;, "TR;"
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->delayErrors:Z

    if-nez v15, :cond_b

    .line 315
    move-object/from16 v0, p0

    iget-object v15, v0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v15}, Lio/reactivex/internal/util/AtomicThrowable;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Throwable;

    .line 316
    .restart local v7    # "ex":Ljava/lang/Throwable;
    if-eqz v7, :cond_b

    .line 317
    move-object/from16 v0, p0

    iget-object v15, v0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v15}, Lio/reactivex/internal/util/AtomicThrowable;->terminate()Ljava/lang/Throwable;

    move-result-object v7

    .line 318
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->clear()V

    .line 319
    invoke-interface {v2, v7}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 324
    .end local v7    # "ex":Ljava/lang/Throwable;
    :cond_b
    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v15

    if-nez v15, :cond_d

    const/4 v3, 0x1

    .line 325
    .restart local v3    # "d":Z
    :goto_5
    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    .line 326
    .restart local v10    # "q":Lio/reactivex/internal/queue/SpscLinkedArrayQueue;, "Lio/reactivex/internal/queue/SpscLinkedArrayQueue<TR;>;"
    if-eqz v10, :cond_c

    invoke-virtual {v10}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_e

    :cond_c
    const/4 v6, 0x1

    .line 328
    .restart local v6    # "empty":Z
    :goto_6
    if-eqz v3, :cond_10

    if-eqz v6, :cond_10

    .line 329
    move-object/from16 v0, p0

    iget-object v15, v0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v15}, Lio/reactivex/internal/util/AtomicThrowable;->terminate()Ljava/lang/Throwable;

    move-result-object v7

    .line 330
    .restart local v7    # "ex":Ljava/lang/Throwable;
    if-eqz v7, :cond_f

    .line 331
    invoke-interface {v2, v7}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 324
    .end local v3    # "d":Z
    .end local v6    # "empty":Z
    .end local v7    # "ex":Ljava/lang/Throwable;
    .end local v10    # "q":Lio/reactivex/internal/queue/SpscLinkedArrayQueue;, "Lio/reactivex/internal/queue/SpscLinkedArrayQueue<TR;>;"
    :cond_d
    const/4 v3, 0x0

    goto :goto_5

    .line 326
    .restart local v3    # "d":Z
    .restart local v10    # "q":Lio/reactivex/internal/queue/SpscLinkedArrayQueue;, "Lio/reactivex/internal/queue/SpscLinkedArrayQueue<TR;>;"
    :cond_e
    const/4 v6, 0x0

    goto :goto_6

    .line 333
    .restart local v6    # "empty":Z
    .restart local v7    # "ex":Ljava/lang/Throwable;
    :cond_f
    invoke-interface {v2}, Lorg/reactivestreams/Subscriber;->onComplete()V

    goto/16 :goto_1

    .line 339
    .end local v3    # "d":Z
    .end local v6    # "empty":Z
    .end local v7    # "ex":Ljava/lang/Throwable;
    .end local v10    # "q":Lio/reactivex/internal/queue/SpscLinkedArrayQueue;, "Lio/reactivex/internal/queue/SpscLinkedArrayQueue<TR;>;"
    :cond_10
    const-wide/16 v16, 0x0

    cmp-long v15, v4, v16

    if-eqz v15, :cond_11

    .line 340
    move-object/from16 v0, p0

    iget-object v15, v0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v15, v4, v5}, Lio/reactivex/internal/util/BackpressureHelper;->produced(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 341
    move-object/from16 v0, p0

    iget v15, v0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->maxConcurrency:I

    const v16, 0x7fffffff

    move/from16 v0, v16

    if-eq v15, v0, :cond_11

    .line 342
    move-object/from16 v0, p0

    iget-object v15, v0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->s:Lorg/reactivestreams/Subscription;

    invoke-interface {v15, v4, v5}, Lorg/reactivestreams/Subscription;->request(J)V

    .line 346
    :cond_11
    neg-int v15, v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->addAndGet(I)I

    move-result v8

    .line 347
    if-nez v8, :cond_0

    goto/16 :goto_1
.end method

.method getOrCreateQueue()Lio/reactivex/internal/queue/SpscLinkedArrayQueue;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/internal/queue/SpscLinkedArrayQueue",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 216
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber<TT;TR;>;"
    :cond_0
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->queue:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    .line 217
    .local v0, "current":Lio/reactivex/internal/queue/SpscLinkedArrayQueue;, "Lio/reactivex/internal/queue/SpscLinkedArrayQueue<TR;>;"
    if-eqz v0, :cond_1

    move-object v1, v0

    .line 222
    .end local v0    # "current":Lio/reactivex/internal/queue/SpscLinkedArrayQueue;, "Lio/reactivex/internal/queue/SpscLinkedArrayQueue<TR;>;"
    .local v1, "current":Ljava/lang/Object;, "Lio/reactivex/internal/queue/SpscLinkedArrayQueue<TR;>;"
    :goto_0
    return-object v1

    .line 220
    .end local v1    # "current":Ljava/lang/Object;, "Lio/reactivex/internal/queue/SpscLinkedArrayQueue<TR;>;"
    .restart local v0    # "current":Lio/reactivex/internal/queue/SpscLinkedArrayQueue;, "Lio/reactivex/internal/queue/SpscLinkedArrayQueue<TR;>;"
    :cond_1
    new-instance v0, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    .end local v0    # "current":Lio/reactivex/internal/queue/SpscLinkedArrayQueue;, "Lio/reactivex/internal/queue/SpscLinkedArrayQueue<TR;>;"
    invoke-static {}, Lio/reactivex/Flowable;->bufferSize()I

    move-result v2

    invoke-direct {v0, v2}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;-><init>(I)V

    .line 221
    .restart local v0    # "current":Lio/reactivex/internal/queue/SpscLinkedArrayQueue;, "Lio/reactivex/internal/queue/SpscLinkedArrayQueue<TR;>;"
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->queue:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 222
    .restart local v1    # "current":Ljava/lang/Object;, "Lio/reactivex/internal/queue/SpscLinkedArrayQueue<TR;>;"
    goto :goto_0
.end method

.method innerError(Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber$InnerObserver;Ljava/lang/Throwable;)V
    .locals 4
    .param p2, "e"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber",
            "<TT;TR;>.InnerObserver;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 228
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber<TT;TR;>;"
    .local p1, "inner":Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber$InnerObserver;, "Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber<TT;TR;>.InnerObserver;"
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->set:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0, p1}, Lio/reactivex/disposables/CompositeDisposable;->delete(Lio/reactivex/disposables/Disposable;)Z

    .line 229
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v0, p2}, Lio/reactivex/internal/util/AtomicThrowable;->addThrowable(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 230
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->delayErrors:Z

    if-nez v0, :cond_1

    .line 231
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->s:Lorg/reactivestreams/Subscription;

    invoke-interface {v0}, Lorg/reactivestreams/Subscription;->cancel()V

    .line 232
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->set:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->dispose()V

    .line 238
    :cond_0
    :goto_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->active:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 239
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->drain()V

    .line 243
    :goto_1
    return-void

    .line 234
    :cond_1
    iget v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->maxConcurrency:I

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_0

    .line 235
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->s:Lorg/reactivestreams/Subscription;

    const-wide/16 v2, 0x1

    invoke-interface {v0, v2, v3}, Lorg/reactivestreams/Subscription;->request(J)V

    goto :goto_0

    .line 241
    :cond_2
    invoke-static {p2}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method innerSuccess(Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber$InnerObserver;Ljava/lang/Object;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber",
            "<TT;TR;>.InnerObserver;TR;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber<TT;TR;>;"
    .local p1, "inner":Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber$InnerObserver;, "Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber<TT;TR;>.InnerObserver;"
    .local p2, "value":Ljava/lang/Object;, "TR;"
    const-wide/16 v8, 0x1

    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 171
    iget-object v4, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->set:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v4, p1}, Lio/reactivex/disposables/CompositeDisposable;->delete(Lio/reactivex/disposables/Disposable;)Z

    .line 172
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->get()I

    move-result v4

    if-nez v4, :cond_8

    invoke-virtual {p0, v3, v0}, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->compareAndSet(II)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 173
    iget-object v4, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->active:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v4

    if-nez v4, :cond_2

    .line 174
    .local v0, "d":Z
    :goto_0
    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_7

    .line 175
    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->actual:Lorg/reactivestreams/Subscriber;

    invoke-interface {v3, p2}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 177
    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->queue:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    .line 179
    .local v2, "q":Lio/reactivex/internal/queue/SpscLinkedArrayQueue;, "Lio/reactivex/internal/queue/SpscLinkedArrayQueue<TR;>;"
    if-eqz v0, :cond_4

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 180
    :cond_0
    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v3}, Lio/reactivex/internal/util/AtomicThrowable;->terminate()Ljava/lang/Throwable;

    move-result-object v1

    .line 181
    .local v1, "ex":Ljava/lang/Throwable;
    if-eqz v1, :cond_3

    .line 182
    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->actual:Lorg/reactivestreams/Subscriber;

    invoke-interface {v3, v1}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 212
    .end local v0    # "d":Z
    .end local v1    # "ex":Ljava/lang/Throwable;
    :cond_1
    :goto_1
    return-void

    .end local v2    # "q":Lio/reactivex/internal/queue/SpscLinkedArrayQueue;, "Lio/reactivex/internal/queue/SpscLinkedArrayQueue<TR;>;"
    :cond_2
    move v0, v3

    .line 173
    goto :goto_0

    .line 184
    .restart local v0    # "d":Z
    .restart local v1    # "ex":Ljava/lang/Throwable;
    .restart local v2    # "q":Lio/reactivex/internal/queue/SpscLinkedArrayQueue;, "Lio/reactivex/internal/queue/SpscLinkedArrayQueue<TR;>;"
    :cond_3
    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->actual:Lorg/reactivestreams/Subscriber;

    invoke-interface {v3}, Lorg/reactivestreams/Subscriber;->onComplete()V

    goto :goto_1

    .line 188
    .end local v1    # "ex":Ljava/lang/Throwable;
    :cond_4
    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v3, v8, v9}, Lio/reactivex/internal/util/BackpressureHelper;->produced(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 189
    iget v3, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->maxConcurrency:I

    const v4, 0x7fffffff

    if-eq v3, v4, :cond_5

    .line 190
    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->s:Lorg/reactivestreams/Subscription;

    invoke-interface {v3, v8, v9}, Lorg/reactivestreams/Subscription;->request(J)V

    .line 198
    :cond_5
    :goto_2
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->decrementAndGet()I

    move-result v3

    if-eqz v3, :cond_1

    .line 211
    .end local v0    # "d":Z
    :cond_6
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->drainLoop()V

    goto :goto_1

    .line 193
    .end local v2    # "q":Lio/reactivex/internal/queue/SpscLinkedArrayQueue;, "Lio/reactivex/internal/queue/SpscLinkedArrayQueue<TR;>;"
    .restart local v0    # "d":Z
    :cond_7
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->getOrCreateQueue()Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    move-result-object v2

    .line 194
    .restart local v2    # "q":Lio/reactivex/internal/queue/SpscLinkedArrayQueue;, "Lio/reactivex/internal/queue/SpscLinkedArrayQueue<TR;>;"
    monitor-enter v2

    .line 195
    :try_start_0
    invoke-virtual {v2, p2}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->offer(Ljava/lang/Object;)Z

    .line 196
    monitor-exit v2

    goto :goto_2

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 202
    .end local v0    # "d":Z
    .end local v2    # "q":Lio/reactivex/internal/queue/SpscLinkedArrayQueue;, "Lio/reactivex/internal/queue/SpscLinkedArrayQueue<TR;>;"
    :cond_8
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->getOrCreateQueue()Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    move-result-object v2

    .line 203
    .restart local v2    # "q":Lio/reactivex/internal/queue/SpscLinkedArrayQueue;, "Lio/reactivex/internal/queue/SpscLinkedArrayQueue<TR;>;"
    monitor-enter v2

    .line 204
    :try_start_1
    invoke-virtual {v2, p2}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->offer(Ljava/lang/Object;)Z

    .line 205
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 206
    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->active:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 207
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->getAndIncrement()I

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_1

    .line 205
    :catchall_1
    move-exception v3

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v3
.end method

.method public onComplete()V
    .locals 1

    .prologue
    .line 151
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber<TT;TR;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->active:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 152
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->drain()V

    .line 153
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 138
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber<TT;TR;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->active:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 139
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/util/AtomicThrowable;->addThrowable(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 140
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->delayErrors:Z

    if-nez v0, :cond_0

    .line 141
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->set:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->dispose()V

    .line 143
    :cond_0
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->drain()V

    .line 147
    :goto_0
    return-void

    .line 145
    :cond_1
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 119
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber<TT;TR;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    :try_start_0
    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->mapper:Lio/reactivex/functions/Function;

    invoke-interface {v3, p1}, Lio/reactivex/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "The mapper returned a null SingleSource"

    invoke-static {v3, v4}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/reactivex/SingleSource;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    .local v2, "ms":Lio/reactivex/SingleSource;, "Lio/reactivex/SingleSource<+TR;>;"
    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->active:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 129
    new-instance v1, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber$InnerObserver;

    invoke-direct {v1, p0}, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber$InnerObserver;-><init>(Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;)V

    .line 131
    .local v1, "inner":Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber$InnerObserver;, "Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber<TT;TR;>.InnerObserver;"
    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->set:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v3, v1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 132
    invoke-interface {v2, v1}, Lio/reactivex/SingleSource;->subscribe(Lio/reactivex/SingleObserver;)V

    .line 134
    .end local v1    # "inner":Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber$InnerObserver;, "Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber<TT;TR;>.InnerObserver;"
    .end local v2    # "ms":Lio/reactivex/SingleSource;, "Lio/reactivex/SingleSource<+TR;>;"
    :cond_0
    :goto_0
    return-void

    .line 120
    :catch_0
    move-exception v0

    .line 121
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 122
    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->s:Lorg/reactivestreams/Subscription;

    invoke-interface {v3}, Lorg/reactivestreams/Subscription;->cancel()V

    .line 123
    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onSubscribe(Lorg/reactivestreams/Subscription;)V
    .locals 4
    .param p1, "s"    # Lorg/reactivestreams/Subscription;

    .prologue
    .line 100
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber<TT;TR;>;"
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->s:Lorg/reactivestreams/Subscription;

    invoke-static {v1, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(Lorg/reactivestreams/Subscription;Lorg/reactivestreams/Subscription;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 101
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->s:Lorg/reactivestreams/Subscription;

    .line 103
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->actual:Lorg/reactivestreams/Subscriber;

    invoke-interface {v1, p0}, Lorg/reactivestreams/Subscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    .line 105
    iget v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->maxConcurrency:I

    .line 106
    .local v0, "m":I
    const v1, 0x7fffffff

    if-ne v0, v1, :cond_1

    .line 107
    const-wide v2, 0x7fffffffffffffffL

    invoke-interface {p1, v2, v3}, Lorg/reactivestreams/Subscription;->request(J)V

    .line 112
    .end local v0    # "m":I
    :cond_0
    :goto_0
    return-void

    .line 109
    .restart local v0    # "m":I
    :cond_1
    iget v1, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->maxConcurrency:I

    int-to-long v2, v1

    invoke-interface {p1, v2, v3}, Lorg/reactivestreams/Subscription;->request(J)V

    goto :goto_0
.end method

.method public request(J)V
    .locals 1
    .param p1, "n"    # J

    .prologue
    .line 164
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber<TT;TR;>;"
    invoke-static {p1, p2}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, p1, p2}, Lio/reactivex/internal/util/BackpressureHelper;->add(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 166
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->drain()V

    .line 168
    :cond_0
    return-void
.end method
