.class final Lio/reactivex/internal/operators/flowable/FlowableFlattenIterable$FlattenIterableSubscriber;
.super Lio/reactivex/internal/subscriptions/BasicIntQueueSubscription;
.source "FlowableFlattenIterable.java"

# interfaces
.implements Lio/reactivex/FlowableSubscriber;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableFlattenIterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FlattenIterableSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/subscriptions/BasicIntQueueSubscription",
        "<TR;>;",
        "Lio/reactivex/FlowableSubscriber",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x2af733f1e9031a6bL


# instance fields
.field final actual:Lorg/reactivestreams/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/reactivestreams/Subscriber",
            "<-TR;>;"
        }
    .end annotation
.end field

.field volatile cancelled:Z

.field consumed:I

.field current:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<+TR;>;"
        }
    .end annotation
.end field

.field volatile done:Z

.field final error:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field fusionMode:I

.field final limit:I

.field final mapper:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function",
            "<-TT;+",
            "Ljava/lang/Iterable",
            "<+TR;>;>;"
        }
    .end annotation
.end field

.field final prefetch:I

.field queue:Lio/reactivex/internal/fuseable/SimpleQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/fuseable/SimpleQueue",
            "<TT;>;"
        }
    .end annotation
.end field

.field final requested:Ljava/util/concurrent/atomic/AtomicLong;

.field s:Lorg/reactivestreams/Subscription;


# direct methods
.method constructor <init>(Lorg/reactivestreams/Subscriber;Lio/reactivex/functions/Function;I)V
    .locals 1
    .param p3, "prefetch"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber",
            "<-TR;>;",
            "Lio/reactivex/functions/Function",
            "<-TT;+",
            "Ljava/lang/Iterable",
            "<+TR;>;>;I)V"
        }
    .end annotation

    .prologue
    .line 118
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableFlattenIterable$FlattenIterableSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableFlattenIterable$FlattenIterableSubscriber<TT;TR;>;"
    .local p1, "actual":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-TR;>;"
    .local p2, "mapper":Lio/reactivex/functions/Function;, "Lio/reactivex/functions/Function<-TT;+Ljava/lang/Iterable<+TR;>;>;"
    invoke-direct {p0}, Lio/reactivex/internal/subscriptions/BasicIntQueueSubscription;-><init>()V

    .line 119
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableFlattenIterable$FlattenIterableSubscriber;->actual:Lorg/reactivestreams/Subscriber;

    .line 120
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/FlowableFlattenIterable$FlattenIterableSubscriber;->mapper:Lio/reactivex/functions/Function;

    .line 121
    iput p3, p0, Lio/reactivex/internal/operators/flowable/FlowableFlattenIterable$FlattenIterableSubscriber;->prefetch:I

    .line 122
    shr-int/lit8 v0, p3, 0x2

    sub-int v0, p3, v0

    iput v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFlattenIterable$FlattenIterableSubscriber;->limit:I

    .line 123
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFlattenIterable$FlattenIterableSubscriber;->error:Ljava/util/concurrent/atomic/AtomicReference;

    .line 124
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFlattenIterable$FlattenIterableSubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    .line 125
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 207
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableFlattenIterable$FlattenIterableSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableFlattenIterable$FlattenIterableSubscriber<TT;TR;>;"
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFlattenIterable$FlattenIterableSubscriber;->cancelled:Z

    if-nez v0, :cond_0

    .line 208
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFlattenIterable$FlattenIterableSubscriber;->cancelled:Z

    .line 210
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFlattenIterable$FlattenIterableSubscriber;->s:Lorg/reactivestreams/Subscription;

    invoke-interface {v0}, Lorg/reactivestreams/Subscription;->cancel()V

    .line 212
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableFlattenIterable$FlattenIterableSubscriber;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    .line 213
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFlattenIterable$FlattenIterableSubscriber;->queue:Lio/reactivex/internal/fuseable/SimpleQueue;

    invoke-interface {v0}, Lio/reactivex/internal/fuseable/SimpleQueue;->clear()V

    .line 216
    :cond_0
    return-void
.end method

.method checkTerminated(ZZLorg/reactivestreams/Subscriber;Lio/reactivex/internal/fuseable/SimpleQueue;)Z
    .locals 4
    .param p1, "d"    # Z
    .param p2, "empty"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Lorg/reactivestreams/Subscriber",
            "<*>;",
            "Lio/reactivex/internal/fuseable/SimpleQueue",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableFlattenIterable$FlattenIterableSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableFlattenIterable$FlattenIterableSubscriber<TT;TR;>;"
    .local p3, "a":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<*>;"
    .local p4, "q":Lio/reactivex/internal/fuseable/SimpleQueue;, "Lio/reactivex/internal/fuseable/SimpleQueue<*>;"
    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 383
    iget-boolean v2, p0, Lio/reactivex/internal/operators/flowable/FlowableFlattenIterable$FlattenIterableSubscriber;->cancelled:Z

    if-eqz v2, :cond_0

    .line 384
    iput-object v3, p0, Lio/reactivex/internal/operators/flowable/FlowableFlattenIterable$FlattenIterableSubscriber;->current:Ljava/util/Iterator;

    .line 385
    invoke-interface {p4}, Lio/reactivex/internal/fuseable/SimpleQueue;->clear()V

    .line 403
    :goto_0
    return v1

    .line 388
    :cond_0
    if-eqz p1, :cond_2

    .line 389
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableFlattenIterable$FlattenIterableSubscriber;->error:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    .line 390
    .local v0, "ex":Ljava/lang/Throwable;
    if-eqz v0, :cond_1

    .line 391
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableFlattenIterable$FlattenIterableSubscriber;->error:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v2}, Lio/reactivex/internal/util/ExceptionHelper;->terminate(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Throwable;

    move-result-object v0

    .line 393
    iput-object v3, p0, Lio/reactivex/internal/operators/flowable/FlowableFlattenIterable$FlattenIterableSubscriber;->current:Ljava/util/Iterator;

    .line 394
    invoke-interface {p4}, Lio/reactivex/internal/fuseable/SimpleQueue;->clear()V

    .line 396
    invoke-interface {p3, v0}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 398
    :cond_1
    if-eqz p2, :cond_2

    .line 399
    invoke-interface {p3}, Lorg/reactivestreams/Subscriber;->onComplete()V

    goto :goto_0

    .line 403
    .end local v0    # "ex":Ljava/lang/Throwable;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 408
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableFlattenIterable$FlattenIterableSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableFlattenIterable$FlattenIterableSubscriber<TT;TR;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFlattenIterable$FlattenIterableSubscriber;->current:Ljava/util/Iterator;

    .line 409
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFlattenIterable$FlattenIterableSubscriber;->queue:Lio/reactivex/internal/fuseable/SimpleQueue;

    invoke-interface {v0}, Lio/reactivex/internal/fuseable/SimpleQueue;->clear()V

    .line 410
    return-void
.end method

.method consumedOne(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .prologue
    .line 371
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableFlattenIterable$FlattenIterableSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableFlattenIterable$FlattenIterableSubscriber<TT;TR;>;"
    if-eqz p1, :cond_0

    .line 372
    iget v1, p0, Lio/reactivex/internal/operators/flowable/FlowableFlattenIterable$FlattenIterableSubscriber;->consumed:I

    add-int/lit8 v0, v1, 0x1

    .line 373
    .local v0, "c":I
    iget v1, p0, Lio/reactivex/internal/operators/flowable/FlowableFlattenIterable$FlattenIterableSubscriber;->limit:I

    if-ne v0, v1, :cond_1

    .line 374
    const/4 v1, 0x0

    iput v1, p0, Lio/reactivex/internal/operators/flowable/FlowableFlattenIterable$FlattenIterableSubscriber;->consumed:I

    .line 375
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableFlattenIterable$FlattenIterableSubscriber;->s:Lorg/reactivestreams/Subscription;

    int-to-long v2, v0

    invoke-interface {v1, v2, v3}, Lorg/reactivestreams/Subscription;->request(J)V

    .line 380
    .end local v0    # "c":I
    :cond_0
    :goto_0
    return-void

    .line 377
    .restart local v0    # "c":I
    :cond_1
    iput v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFlattenIterable$FlattenIterableSubscriber;->consumed:I

    goto :goto_0
.end method

.method drain()V
    .locals 24

    .prologue
    .line 219
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableFlattenIterable$FlattenIterableSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableFlattenIterable$FlattenIterableSubscriber<TT;TR;>;"
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/flowable/FlowableFlattenIterable$FlattenIterableSubscriber;->getAndIncrement()I

    move-result v20

    if-eqz v20, :cond_1

    .line 368
    :cond_0
    :goto_0
    return-void

    .line 223
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lio/reactivex/internal/operators/flowable/FlowableFlattenIterable$FlattenIterableSubscriber;->actual:Lorg/reactivestreams/Subscriber;

    .line 224
    .local v4, "a":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-TR;>;"
    move-object/from16 v0, p0

    iget-object v14, v0, Lio/reactivex/internal/operators/flowable/FlowableFlattenIterable$FlattenIterableSubscriber;->queue:Lio/reactivex/internal/fuseable/SimpleQueue;

    .line 225
    .local v14, "q":Lio/reactivex/internal/fuseable/SimpleQueue;, "Lio/reactivex/internal/fuseable/SimpleQueue<TT;>;"
    move-object/from16 v0, p0

    iget v0, v0, Lio/reactivex/internal/operators/flowable/FlowableFlattenIterable$FlattenIterableSubscriber;->fusionMode:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_3

    const/4 v15, 0x1

    .line 227
    .local v15, "replenish":Z
    :goto_1
    const/4 v13, 0x1

    .line 229
    .local v13, "missed":I
    move-object/from16 v0, p0

    iget-object v11, v0, Lio/reactivex/internal/operators/flowable/FlowableFlattenIterable$FlattenIterableSubscriber;->current:Ljava/util/Iterator;

    .line 233
    .local v11, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<+TR;>;"
    :cond_2
    :goto_2
    if-nez v11, :cond_6

    .line 235
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lio/reactivex/internal/operators/flowable/FlowableFlattenIterable$FlattenIterableSubscriber;->done:Z

    .line 240
    .local v6, "d":Z
    :try_start_0
    invoke-interface {v14}, Lio/reactivex/internal/fuseable/SimpleQueue;->poll()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v18

    .line 254
    .local v18, "t":Ljava/lang/Object;, "TT;"
    if-nez v18, :cond_4

    const/4 v7, 0x1

    .line 256
    .local v7, "empty":Z
    :goto_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7, v4, v14}, Lio/reactivex/internal/operators/flowable/FlowableFlattenIterable$FlattenIterableSubscriber;->checkTerminated(ZZLorg/reactivestreams/Subscriber;Lio/reactivex/internal/fuseable/SimpleQueue;)Z

    move-result v20

    if-nez v20, :cond_0

    .line 260
    if-eqz v18, :cond_6

    .line 266
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/reactivex/internal/operators/flowable/FlowableFlattenIterable$FlattenIterableSubscriber;->mapper:Lio/reactivex/functions/Function;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Lio/reactivex/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Iterable;

    .line 268
    .local v12, "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TR;>;"
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .line 270
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result v5

    .line 280
    .local v5, "b":Z
    if-nez v5, :cond_5

    .line 281
    const/4 v11, 0x0

    .line 282
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lio/reactivex/internal/operators/flowable/FlowableFlattenIterable$FlattenIterableSubscriber;->consumedOne(Z)V

    goto :goto_2

    .line 225
    .end local v5    # "b":Z
    .end local v6    # "d":Z
    .end local v7    # "empty":Z
    .end local v11    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<+TR;>;"
    .end local v12    # "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TR;>;"
    .end local v13    # "missed":I
    .end local v15    # "replenish":Z
    .end local v18    # "t":Ljava/lang/Object;, "TT;"
    :cond_3
    const/4 v15, 0x0

    goto :goto_1

    .line 241
    .restart local v6    # "d":Z
    .restart local v11    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<+TR;>;"
    .restart local v13    # "missed":I
    .restart local v15    # "replenish":Z
    :catch_0
    move-exception v10

    .line 242
    .local v10, "ex":Ljava/lang/Throwable;
    invoke-static {v10}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 243
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/reactivex/internal/operators/flowable/FlowableFlattenIterable$FlattenIterableSubscriber;->s:Lorg/reactivestreams/Subscription;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lorg/reactivestreams/Subscription;->cancel()V

    .line 244
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/reactivex/internal/operators/flowable/FlowableFlattenIterable$FlattenIterableSubscriber;->error:Ljava/util/concurrent/atomic/AtomicReference;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-static {v0, v10}, Lio/reactivex/internal/util/ExceptionHelper;->addThrowable(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Throwable;)Z

    .line 245
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/reactivex/internal/operators/flowable/FlowableFlattenIterable$FlattenIterableSubscriber;->error:Ljava/util/concurrent/atomic/AtomicReference;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lio/reactivex/internal/util/ExceptionHelper;->terminate(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Throwable;

    move-result-object v10

    .line 247
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lio/reactivex/internal/operators/flowable/FlowableFlattenIterable$FlattenIterableSubscriber;->current:Ljava/util/Iterator;

    .line 248
    invoke-interface {v14}, Lio/reactivex/internal/fuseable/SimpleQueue;->clear()V

    .line 250
    invoke-interface {v4, v10}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 254
    .end local v10    # "ex":Ljava/lang/Throwable;
    .restart local v18    # "t":Ljava/lang/Object;, "TT;"
    :cond_4
    const/4 v7, 0x0

    goto :goto_3

    .line 271
    .restart local v7    # "empty":Z
    :catch_1
    move-exception v10

    .line 272
    .restart local v10    # "ex":Ljava/lang/Throwable;
    invoke-static {v10}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 273
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/reactivex/internal/operators/flowable/FlowableFlattenIterable$FlattenIterableSubscriber;->s:Lorg/reactivestreams/Subscription;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lorg/reactivestreams/Subscription;->cancel()V

    .line 274
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/reactivex/internal/operators/flowable/FlowableFlattenIterable$FlattenIterableSubscriber;->error:Ljava/util/concurrent/atomic/AtomicReference;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-static {v0, v10}, Lio/reactivex/internal/util/ExceptionHelper;->addThrowable(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Throwable;)Z

    .line 275
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/reactivex/internal/operators/flowable/FlowableFlattenIterable$FlattenIterableSubscriber;->error:Ljava/util/concurrent/atomic/AtomicReference;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lio/reactivex/internal/util/ExceptionHelper;->terminate(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Throwable;

    move-result-object v10

    .line 276
    invoke-interface {v4, v10}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 286
    .end local v10    # "ex":Ljava/lang/Throwable;
    .restart local v5    # "b":Z
    .restart local v12    # "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TR;>;"
    :cond_5
    move-object/from16 v0, p0

    iput-object v11, v0, Lio/reactivex/internal/operators/flowable/FlowableFlattenIterable$FlattenIterableSubscriber;->current:Ljava/util/Iterator;

    .line 290
    .end local v5    # "b":Z
    .end local v6    # "d":Z
    .end local v7    # "empty":Z
    .end local v12    # "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TR;>;"
    .end local v18    # "t":Ljava/lang/Object;, "TT;"
    :cond_6
    if-eqz v11, :cond_b

    .line 291
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/reactivex/internal/operators/flowable/FlowableFlattenIterable$FlattenIterableSubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v16

    .line 292
    .local v16, "r":J
    const-wide/16 v8, 0x0

    .line 294
    .local v8, "e":J
    :cond_7
    cmp-long v20, v8, v16

    if-eqz v20, :cond_8

    .line 295
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lio/reactivex/internal/operators/flowable/FlowableFlattenIterable$FlattenIterableSubscriber;->done:Z

    move/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2, v4, v14}, Lio/reactivex/internal/operators/flowable/FlowableFlattenIterable$FlattenIterableSubscriber;->checkTerminated(ZZLorg/reactivestreams/Subscriber;Lio/reactivex/internal/fuseable/SimpleQueue;)Z

    move-result v20

    if-nez v20, :cond_0

    .line 302
    :try_start_2
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    const-string v21, "The iterator returned a null value"

    invoke-static/range {v20 .. v21}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v19

    .line 313
    .local v19, "v":Ljava/lang/Object;, "TR;"
    move-object/from16 v0, v19

    invoke-interface {v4, v0}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 315
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lio/reactivex/internal/operators/flowable/FlowableFlattenIterable$FlattenIterableSubscriber;->done:Z

    move/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2, v4, v14}, Lio/reactivex/internal/operators/flowable/FlowableFlattenIterable$FlattenIterableSubscriber;->checkTerminated(ZZLorg/reactivestreams/Subscriber;Lio/reactivex/internal/fuseable/SimpleQueue;)Z

    move-result v20

    if-nez v20, :cond_0

    .line 319
    const-wide/16 v20, 0x1

    add-long v8, v8, v20

    .line 324
    :try_start_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    move-result v5

    .line 335
    .restart local v5    # "b":Z
    if-nez v5, :cond_7

    .line 336
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lio/reactivex/internal/operators/flowable/FlowableFlattenIterable$FlattenIterableSubscriber;->consumedOne(Z)V

    .line 337
    const/4 v11, 0x0

    .line 338
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lio/reactivex/internal/operators/flowable/FlowableFlattenIterable$FlattenIterableSubscriber;->current:Ljava/util/Iterator;

    .line 343
    .end local v5    # "b":Z
    .end local v19    # "v":Ljava/lang/Object;, "TR;"
    :cond_8
    cmp-long v20, v8, v16

    if-nez v20, :cond_9

    .line 344
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lio/reactivex/internal/operators/flowable/FlowableFlattenIterable$FlattenIterableSubscriber;->done:Z

    .line 345
    .restart local v6    # "d":Z
    invoke-interface {v14}, Lio/reactivex/internal/fuseable/SimpleQueue;->isEmpty()Z

    move-result v20

    if-eqz v20, :cond_c

    if-nez v11, :cond_c

    const/4 v7, 0x1

    .line 347
    .restart local v7    # "empty":Z
    :goto_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7, v4, v14}, Lio/reactivex/internal/operators/flowable/FlowableFlattenIterable$FlattenIterableSubscriber;->checkTerminated(ZZLorg/reactivestreams/Subscriber;Lio/reactivex/internal/fuseable/SimpleQueue;)Z

    move-result v20

    if-nez v20, :cond_0

    .line 352
    .end local v6    # "d":Z
    .end local v7    # "empty":Z
    :cond_9
    const-wide/16 v20, 0x0

    cmp-long v20, v8, v20

    if-eqz v20, :cond_a

    .line 353
    const-wide v20, 0x7fffffffffffffffL

    cmp-long v20, v16, v20

    if-eqz v20, :cond_a

    .line 354
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/reactivex/internal/operators/flowable/FlowableFlattenIterable$FlattenIterableSubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    move-object/from16 v20, v0

    neg-long v0, v8

    move-wide/from16 v22, v0

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 358
    :cond_a
    if-eqz v11, :cond_2

    .line 363
    .end local v8    # "e":J
    .end local v16    # "r":J
    :cond_b
    neg-int v0, v13

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lio/reactivex/internal/operators/flowable/FlowableFlattenIterable$FlattenIterableSubscriber;->addAndGet(I)I

    move-result v13

    .line 364
    if-nez v13, :cond_2

    goto/16 :goto_0

    .line 303
    .restart local v8    # "e":J
    .restart local v16    # "r":J
    :catch_2
    move-exception v10

    .line 304
    .restart local v10    # "ex":Ljava/lang/Throwable;
    invoke-static {v10}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 305
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lio/reactivex/internal/operators/flowable/FlowableFlattenIterable$FlattenIterableSubscriber;->current:Ljava/util/Iterator;

    .line 306
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/reactivex/internal/operators/flowable/FlowableFlattenIterable$FlattenIterableSubscriber;->s:Lorg/reactivestreams/Subscription;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lorg/reactivestreams/Subscription;->cancel()V

    .line 307
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/reactivex/internal/operators/flowable/FlowableFlattenIterable$FlattenIterableSubscriber;->error:Ljava/util/concurrent/atomic/AtomicReference;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-static {v0, v10}, Lio/reactivex/internal/util/ExceptionHelper;->addThrowable(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Throwable;)Z

    .line 308
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/reactivex/internal/operators/flowable/FlowableFlattenIterable$FlattenIterableSubscriber;->error:Ljava/util/concurrent/atomic/AtomicReference;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lio/reactivex/internal/util/ExceptionHelper;->terminate(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Throwable;

    move-result-object v10

    .line 309
    invoke-interface {v4, v10}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 325
    .end local v10    # "ex":Ljava/lang/Throwable;
    .restart local v19    # "v":Ljava/lang/Object;, "TR;"
    :catch_3
    move-exception v10

    .line 326
    .restart local v10    # "ex":Ljava/lang/Throwable;
    invoke-static {v10}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 327
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lio/reactivex/internal/operators/flowable/FlowableFlattenIterable$FlattenIterableSubscriber;->current:Ljava/util/Iterator;

    .line 328
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/reactivex/internal/operators/flowable/FlowableFlattenIterable$FlattenIterableSubscriber;->s:Lorg/reactivestreams/Subscription;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lorg/reactivestreams/Subscription;->cancel()V

    .line 329
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/reactivex/internal/operators/flowable/FlowableFlattenIterable$FlattenIterableSubscriber;->error:Ljava/util/concurrent/atomic/AtomicReference;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-static {v0, v10}, Lio/reactivex/internal/util/ExceptionHelper;->addThrowable(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Throwable;)Z

    .line 330
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/reactivex/internal/operators/flowable/FlowableFlattenIterable$FlattenIterableSubscriber;->error:Ljava/util/concurrent/atomic/AtomicReference;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lio/reactivex/internal/util/ExceptionHelper;->terminate(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Throwable;

    move-result-object v10

    .line 331
    invoke-interface {v4, v10}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 345
    .end local v10    # "ex":Ljava/lang/Throwable;
    .end local v19    # "v":Ljava/lang/Object;, "TR;"
    .restart local v6    # "d":Z
    :cond_c
    const/4 v7, 0x0

    goto/16 :goto_4
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 414
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableFlattenIterable$FlattenIterableSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableFlattenIterable$FlattenIterableSubscriber<TT;TR;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFlattenIterable$FlattenIterableSubscriber;->current:Ljava/util/Iterator;

    .line 415
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<+TR;>;"
    if-nez v0, :cond_0

    .line 416
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableFlattenIterable$FlattenIterableSubscriber;->queue:Lio/reactivex/internal/fuseable/SimpleQueue;

    invoke-interface {v1}, Lio/reactivex/internal/fuseable/SimpleQueue;->isEmpty()Z

    move-result v1

    .line 418
    :goto_0
    return v1

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onComplete()V
    .locals 1

    .prologue
    .line 190
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableFlattenIterable$FlattenIterableSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableFlattenIterable$FlattenIterableSubscriber<TT;TR;>;"
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFlattenIterable$FlattenIterableSubscriber;->done:Z

    if-eqz v0, :cond_0

    .line 195
    :goto_0
    return-void

    .line 193
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFlattenIterable$FlattenIterableSubscriber;->done:Z

    .line 194
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableFlattenIterable$FlattenIterableSubscriber;->drain()V

    goto :goto_0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 180
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableFlattenIterable$FlattenIterableSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableFlattenIterable$FlattenIterableSubscriber<TT;TR;>;"
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFlattenIterable$FlattenIterableSubscriber;->done:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFlattenIterable$FlattenIterableSubscriber;->error:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, p1}, Lio/reactivex/internal/util/ExceptionHelper;->addThrowable(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFlattenIterable$FlattenIterableSubscriber;->done:Z

    .line 182
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableFlattenIterable$FlattenIterableSubscriber;->drain()V

    .line 186
    :goto_0
    return-void

    .line 184
    :cond_0
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 168
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableFlattenIterable$FlattenIterableSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableFlattenIterable$FlattenIterableSubscriber<TT;TR;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFlattenIterable$FlattenIterableSubscriber;->done:Z

    if-eqz v0, :cond_0

    .line 176
    :goto_0
    return-void

    .line 171
    :cond_0
    iget v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFlattenIterable$FlattenIterableSubscriber;->fusionMode:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFlattenIterable$FlattenIterableSubscriber;->queue:Lio/reactivex/internal/fuseable/SimpleQueue;

    invoke-interface {v0, p1}, Lio/reactivex/internal/fuseable/SimpleQueue;->offer(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 172
    new-instance v0, Lio/reactivex/exceptions/MissingBackpressureException;

    const-string v1, "Queue is full?!"

    invoke-direct {v0, v1}, Lio/reactivex/exceptions/MissingBackpressureException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/flowable/FlowableFlattenIterable$FlattenIterableSubscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 175
    :cond_1
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableFlattenIterable$FlattenIterableSubscriber;->drain()V

    goto :goto_0
.end method

.method public onSubscribe(Lorg/reactivestreams/Subscription;)V
    .locals 4
    .param p1, "s"    # Lorg/reactivestreams/Subscription;

    .prologue
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableFlattenIterable$FlattenIterableSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableFlattenIterable$FlattenIterableSubscriber<TT;TR;>;"
    const/4 v3, 0x1

    .line 129
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableFlattenIterable$FlattenIterableSubscriber;->s:Lorg/reactivestreams/Subscription;

    invoke-static {v2, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(Lorg/reactivestreams/Subscription;Lorg/reactivestreams/Subscription;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 130
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableFlattenIterable$FlattenIterableSubscriber;->s:Lorg/reactivestreams/Subscription;

    .line 132
    instance-of v2, p1, Lio/reactivex/internal/fuseable/QueueSubscription;

    if-eqz v2, :cond_2

    move-object v1, p1

    .line 134
    check-cast v1, Lio/reactivex/internal/fuseable/QueueSubscription;

    .line 136
    .local v1, "qs":Lio/reactivex/internal/fuseable/QueueSubscription;, "Lio/reactivex/internal/fuseable/QueueSubscription<TT;>;"
    const/4 v2, 0x3

    invoke-interface {v1, v2}, Lio/reactivex/internal/fuseable/QueueSubscription;->requestFusion(I)I

    move-result v0

    .line 138
    .local v0, "m":I
    if-ne v0, v3, :cond_1

    .line 139
    iput v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFlattenIterable$FlattenIterableSubscriber;->fusionMode:I

    .line 140
    iput-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableFlattenIterable$FlattenIterableSubscriber;->queue:Lio/reactivex/internal/fuseable/SimpleQueue;

    .line 141
    iput-boolean v3, p0, Lio/reactivex/internal/operators/flowable/FlowableFlattenIterable$FlattenIterableSubscriber;->done:Z

    .line 143
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableFlattenIterable$FlattenIterableSubscriber;->actual:Lorg/reactivestreams/Subscriber;

    invoke-interface {v2, p0}, Lorg/reactivestreams/Subscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    .line 164
    .end local v0    # "m":I
    .end local v1    # "qs":Lio/reactivex/internal/fuseable/QueueSubscription;, "Lio/reactivex/internal/fuseable/QueueSubscription<TT;>;"
    :cond_0
    :goto_0
    return-void

    .line 147
    .restart local v0    # "m":I
    .restart local v1    # "qs":Lio/reactivex/internal/fuseable/QueueSubscription;, "Lio/reactivex/internal/fuseable/QueueSubscription<TT;>;"
    :cond_1
    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    .line 148
    iput v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFlattenIterable$FlattenIterableSubscriber;->fusionMode:I

    .line 149
    iput-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableFlattenIterable$FlattenIterableSubscriber;->queue:Lio/reactivex/internal/fuseable/SimpleQueue;

    .line 151
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableFlattenIterable$FlattenIterableSubscriber;->actual:Lorg/reactivestreams/Subscriber;

    invoke-interface {v2, p0}, Lorg/reactivestreams/Subscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    .line 153
    iget v2, p0, Lio/reactivex/internal/operators/flowable/FlowableFlattenIterable$FlattenIterableSubscriber;->prefetch:I

    int-to-long v2, v2

    invoke-interface {p1, v2, v3}, Lorg/reactivestreams/Subscription;->request(J)V

    goto :goto_0

    .line 158
    .end local v0    # "m":I
    .end local v1    # "qs":Lio/reactivex/internal/fuseable/QueueSubscription;, "Lio/reactivex/internal/fuseable/QueueSubscription<TT;>;"
    :cond_2
    new-instance v2, Lio/reactivex/internal/queue/SpscArrayQueue;

    iget v3, p0, Lio/reactivex/internal/operators/flowable/FlowableFlattenIterable$FlattenIterableSubscriber;->prefetch:I

    invoke-direct {v2, v3}, Lio/reactivex/internal/queue/SpscArrayQueue;-><init>(I)V

    iput-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableFlattenIterable$FlattenIterableSubscriber;->queue:Lio/reactivex/internal/fuseable/SimpleQueue;

    .line 160
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableFlattenIterable$FlattenIterableSubscriber;->actual:Lorg/reactivestreams/Subscriber;

    invoke-interface {v2, p0}, Lorg/reactivestreams/Subscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    .line 162
    iget v2, p0, Lio/reactivex/internal/operators/flowable/FlowableFlattenIterable$FlattenIterableSubscriber;->prefetch:I

    int-to-long v2, v2

    invoke-interface {p1, v2, v3}, Lorg/reactivestreams/Subscription;->request(J)V

    goto :goto_0
.end method

.method public poll()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation build Lio/reactivex/annotations/Nullable;
    .end annotation

    .prologue
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableFlattenIterable$FlattenIterableSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableFlattenIterable$FlattenIterableSubscriber<TT;TR;>;"
    const/4 v4, 0x0

    .line 424
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFlattenIterable$FlattenIterableSubscriber;->current:Ljava/util/Iterator;

    .line 426
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<+TR;>;"
    :goto_0
    if-nez v0, :cond_3

    .line 427
    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/FlowableFlattenIterable$FlattenIterableSubscriber;->queue:Lio/reactivex/internal/fuseable/SimpleQueue;

    invoke-interface {v3}, Lio/reactivex/internal/fuseable/SimpleQueue;->poll()Ljava/lang/Object;

    move-result-object v2

    .line 428
    .local v2, "v":Ljava/lang/Object;, "TT;"
    if-nez v2, :cond_1

    move-object v1, v4

    .line 447
    .end local v2    # "v":Ljava/lang/Object;, "TT;"
    :cond_0
    :goto_1
    return-object v1

    .line 432
    .restart local v2    # "v":Ljava/lang/Object;, "TT;"
    :cond_1
    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/FlowableFlattenIterable$FlattenIterableSubscriber;->mapper:Lio/reactivex/functions/Function;

    invoke-interface {v3, v2}, Lio/reactivex/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 434
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 435
    const/4 v0, 0x0

    .line 436
    goto :goto_0

    .line 438
    :cond_2
    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFlattenIterable$FlattenIterableSubscriber;->current:Ljava/util/Iterator;

    .line 441
    .end local v2    # "v":Ljava/lang/Object;, "TT;"
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    const-string v5, "The iterator returned a null value"

    invoke-static {v3, v5}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 443
    .local v1, "r":Ljava/lang/Object;, "TR;"
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 444
    iput-object v4, p0, Lio/reactivex/internal/operators/flowable/FlowableFlattenIterable$FlattenIterableSubscriber;->current:Ljava/util/Iterator;

    goto :goto_1
.end method

.method public request(J)V
    .locals 1
    .param p1, "n"    # J

    .prologue
    .line 199
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableFlattenIterable$FlattenIterableSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableFlattenIterable$FlattenIterableSubscriber<TT;TR;>;"
    invoke-static {p1, p2}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFlattenIterable$FlattenIterableSubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, p1, p2}, Lio/reactivex/internal/util/BackpressureHelper;->add(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 201
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableFlattenIterable$FlattenIterableSubscriber;->drain()V

    .line 203
    :cond_0
    return-void
.end method

.method public requestFusion(I)I
    .locals 2
    .param p1, "requestedMode"    # I

    .prologue
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableFlattenIterable$FlattenIterableSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableFlattenIterable$FlattenIterableSubscriber<TT;TR;>;"
    const/4 v0, 0x1

    .line 453
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_0

    iget v1, p0, Lio/reactivex/internal/operators/flowable/FlowableFlattenIterable$FlattenIterableSubscriber;->fusionMode:I

    if-ne v1, v0, :cond_0

    .line 456
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
