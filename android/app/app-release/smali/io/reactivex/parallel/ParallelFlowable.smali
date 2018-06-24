.class public abstract Lio/reactivex/parallel/ParallelFlowable;
.super Ljava/lang/Object;
.source "ParallelFlowable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation build Lio/reactivex/annotations/Beta;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    .local p0, "this":Lio/reactivex/parallel/ParallelFlowable;, "Lio/reactivex/parallel/ParallelFlowable<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static from(Lorg/reactivestreams/Publisher;)Lio/reactivex/parallel/ParallelFlowable;
    .locals 2
    .param p0    # Lorg/reactivestreams/Publisher;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/reactivestreams/Publisher",
            "<+TT;>;)",
            "Lio/reactivex/parallel/ParallelFlowable",
            "<TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .prologue
    .line 88
    .local p0, "source":Lorg/reactivestreams/Publisher;, "Lorg/reactivestreams/Publisher<+TT;>;"
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    invoke-static {}, Lio/reactivex/Flowable;->bufferSize()I

    move-result v1

    invoke-static {p0, v0, v1}, Lio/reactivex/parallel/ParallelFlowable;->from(Lorg/reactivestreams/Publisher;II)Lio/reactivex/parallel/ParallelFlowable;

    move-result-object v0

    return-object v0
.end method

.method public static from(Lorg/reactivestreams/Publisher;I)Lio/reactivex/parallel/ParallelFlowable;
    .locals 1
    .param p0    # Lorg/reactivestreams/Publisher;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .param p1, "parallelism"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/reactivestreams/Publisher",
            "<+TT;>;I)",
            "Lio/reactivex/parallel/ParallelFlowable",
            "<TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .prologue
    .line 100
    .local p0, "source":Lorg/reactivestreams/Publisher;, "Lorg/reactivestreams/Publisher<+TT;>;"
    invoke-static {}, Lio/reactivex/Flowable;->bufferSize()I

    move-result v0

    invoke-static {p0, p1, v0}, Lio/reactivex/parallel/ParallelFlowable;->from(Lorg/reactivestreams/Publisher;II)Lio/reactivex/parallel/ParallelFlowable;

    move-result-object v0

    return-object v0
.end method

.method public static from(Lorg/reactivestreams/Publisher;II)Lio/reactivex/parallel/ParallelFlowable;
    .locals 1
    .param p0    # Lorg/reactivestreams/Publisher;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .param p1, "parallelism"    # I
    .param p2, "prefetch"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/reactivestreams/Publisher",
            "<+TT;>;II)",
            "Lio/reactivex/parallel/ParallelFlowable",
            "<TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation build Lio/reactivex/annotations/NonNull;
    .end annotation

    .prologue
    .line 118
    .local p0, "source":Lorg/reactivestreams/Publisher;, "Lorg/reactivestreams/Publisher<+TT;>;"
    const-string v0, "source"

    invoke-static {p0, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 119
    const-string v0, "parallelism"

    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->verifyPositive(ILjava/lang/String;)I

    .line 120
    const-string v0, "prefetch"

    invoke-static {p2, v0}, Lio/reactivex/internal/functions/ObjectHelper;->verifyPositive(ILjava/lang/String;)I

    .line 122
    new-instance v0, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher;

    invoke-direct {v0, p0, p1, p2}, Lio/reactivex/internal/operators/parallel/ParallelFromPublisher;-><init>(Lorg/reactivestreams/Publisher;II)V

    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/parallel/ParallelFlowable;)Lio/reactivex/parallel/ParallelFlowable;

    move-result-object v0

    return-object v0
.end method

.method public static varargs fromArray([Lorg/reactivestreams/Publisher;)Lio/reactivex/parallel/ParallelFlowable;
    .locals 2
    .param p0    # [Lorg/reactivestreams/Publisher;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Lorg/reactivestreams/Publisher",
            "<TT;>;)",
            "Lio/reactivex/parallel/ParallelFlowable",
            "<TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation build Lio/reactivex/annotations/NonNull;
    .end annotation

    .prologue
    .line 745
    .local p0, "publishers":[Lorg/reactivestreams/Publisher;, "[Lorg/reactivestreams/Publisher<TT;>;"
    array-length v0, p0

    if-nez v0, :cond_0

    .line 746
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Zero publishers not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 748
    :cond_0
    new-instance v0, Lio/reactivex/internal/operators/parallel/ParallelFromArray;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/parallel/ParallelFromArray;-><init>([Lorg/reactivestreams/Publisher;)V

    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/parallel/ParallelFlowable;)Lio/reactivex/parallel/ParallelFlowable;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final collect(Ljava/util/concurrent/Callable;Lio/reactivex/functions/BiConsumer;)Lio/reactivex/parallel/ParallelFlowable;
    .locals 1
    .param p1    # Ljava/util/concurrent/Callable;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/reactivex/functions/BiConsumer;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<+TC;>;",
            "Lio/reactivex/functions/BiConsumer",
            "<-TC;-TT;>;)",
            "Lio/reactivex/parallel/ParallelFlowable",
            "<TC;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation build Lio/reactivex/annotations/NonNull;
    .end annotation

    .prologue
    .line 729
    .local p0, "this":Lio/reactivex/parallel/ParallelFlowable;, "Lio/reactivex/parallel/ParallelFlowable<TT;>;"
    .local p1, "collectionSupplier":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<+TC;>;"
    .local p2, "collector":Lio/reactivex/functions/BiConsumer;, "Lio/reactivex/functions/BiConsumer<-TC;-TT;>;"
    const-string v0, "collectionSupplier is null"

    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 730
    const-string v0, "collector is null"

    invoke-static {p2, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 731
    new-instance v0, Lio/reactivex/internal/operators/parallel/ParallelCollect;

    invoke-direct {v0, p0, p1, p2}, Lio/reactivex/internal/operators/parallel/ParallelCollect;-><init>(Lio/reactivex/parallel/ParallelFlowable;Ljava/util/concurrent/Callable;Lio/reactivex/functions/BiConsumer;)V

    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/parallel/ParallelFlowable;)Lio/reactivex/parallel/ParallelFlowable;

    move-result-object v0

    return-object v0
.end method

.method public final compose(Lio/reactivex/parallel/ParallelTransformer;)Lio/reactivex/parallel/ParallelFlowable;
    .locals 1
    .param p1    # Lio/reactivex/parallel/ParallelTransformer;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/parallel/ParallelTransformer",
            "<TT;TU;>;)",
            "Lio/reactivex/parallel/ParallelFlowable",
            "<TU;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation build Lio/reactivex/annotations/NonNull;
    .end annotation

    .prologue
    .line 781
    .local p0, "this":Lio/reactivex/parallel/ParallelFlowable;, "Lio/reactivex/parallel/ParallelFlowable<TT;>;"
    .local p1, "composer":Lio/reactivex/parallel/ParallelTransformer;, "Lio/reactivex/parallel/ParallelTransformer<TT;TU;>;"
    const-string v0, "composer is null"

    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/parallel/ParallelTransformer;

    invoke-interface {v0, p0}, Lio/reactivex/parallel/ParallelTransformer;->apply(Lio/reactivex/parallel/ParallelFlowable;)Lio/reactivex/parallel/ParallelFlowable;

    move-result-object v0

    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/parallel/ParallelFlowable;)Lio/reactivex/parallel/ParallelFlowable;

    move-result-object v0

    return-object v0
.end method

.method public final concatMap(Lio/reactivex/functions/Function;)Lio/reactivex/parallel/ParallelFlowable;
    .locals 1
    .param p1    # Lio/reactivex/functions/Function;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/functions/Function",
            "<-TT;+",
            "Lorg/reactivestreams/Publisher",
            "<+TR;>;>;)",
            "Lio/reactivex/parallel/ParallelFlowable",
            "<TR;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation build Lio/reactivex/annotations/NonNull;
    .end annotation

    .prologue
    .line 871
    .local p0, "this":Lio/reactivex/parallel/ParallelFlowable;, "Lio/reactivex/parallel/ParallelFlowable<TT;>;"
    .local p1, "mapper":Lio/reactivex/functions/Function;, "Lio/reactivex/functions/Function<-TT;+Lorg/reactivestreams/Publisher<+TR;>;>;"
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lio/reactivex/parallel/ParallelFlowable;->concatMap(Lio/reactivex/functions/Function;I)Lio/reactivex/parallel/ParallelFlowable;

    move-result-object v0

    return-object v0
.end method

.method public final concatMap(Lio/reactivex/functions/Function;I)Lio/reactivex/parallel/ParallelFlowable;
    .locals 2
    .param p1    # Lio/reactivex/functions/Function;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .param p2, "prefetch"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/functions/Function",
            "<-TT;+",
            "Lorg/reactivestreams/Publisher",
            "<+TR;>;>;I)",
            "Lio/reactivex/parallel/ParallelFlowable",
            "<TR;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation build Lio/reactivex/annotations/NonNull;
    .end annotation

    .prologue
    .line 889
    .local p0, "this":Lio/reactivex/parallel/ParallelFlowable;, "Lio/reactivex/parallel/ParallelFlowable<TT;>;"
    .local p1, "mapper":Lio/reactivex/functions/Function;, "Lio/reactivex/functions/Function<-TT;+Lorg/reactivestreams/Publisher<+TR;>;>;"
    const-string v0, "mapper is null"

    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 890
    const-string v0, "prefetch"

    invoke-static {p2, v0}, Lio/reactivex/internal/functions/ObjectHelper;->verifyPositive(ILjava/lang/String;)I

    .line 891
    new-instance v0, Lio/reactivex/internal/operators/parallel/ParallelConcatMap;

    sget-object v1, Lio/reactivex/internal/util/ErrorMode;->IMMEDIATE:Lio/reactivex/internal/util/ErrorMode;

    invoke-direct {v0, p0, p1, p2, v1}, Lio/reactivex/internal/operators/parallel/ParallelConcatMap;-><init>(Lio/reactivex/parallel/ParallelFlowable;Lio/reactivex/functions/Function;ILio/reactivex/internal/util/ErrorMode;)V

    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/parallel/ParallelFlowable;)Lio/reactivex/parallel/ParallelFlowable;

    move-result-object v0

    return-object v0
.end method

.method public final concatMapDelayError(Lio/reactivex/functions/Function;IZ)Lio/reactivex/parallel/ParallelFlowable;
    .locals 2
    .param p1    # Lio/reactivex/functions/Function;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .param p2, "prefetch"    # I
    .param p3, "tillTheEnd"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/functions/Function",
            "<-TT;+",
            "Lorg/reactivestreams/Publisher",
            "<+TR;>;>;IZ)",
            "Lio/reactivex/parallel/ParallelFlowable",
            "<TR;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation build Lio/reactivex/annotations/NonNull;
    .end annotation

    .prologue
    .line 929
    .local p0, "this":Lio/reactivex/parallel/ParallelFlowable;, "Lio/reactivex/parallel/ParallelFlowable<TT;>;"
    .local p1, "mapper":Lio/reactivex/functions/Function;, "Lio/reactivex/functions/Function<-TT;+Lorg/reactivestreams/Publisher<+TR;>;>;"
    const-string v0, "mapper is null"

    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 930
    const-string v0, "prefetch"

    invoke-static {p2, v0}, Lio/reactivex/internal/functions/ObjectHelper;->verifyPositive(ILjava/lang/String;)I

    .line 931
    new-instance v1, Lio/reactivex/internal/operators/parallel/ParallelConcatMap;

    if-eqz p3, :cond_0

    sget-object v0, Lio/reactivex/internal/util/ErrorMode;->END:Lio/reactivex/internal/util/ErrorMode;

    :goto_0
    invoke-direct {v1, p0, p1, p2, v0}, Lio/reactivex/internal/operators/parallel/ParallelConcatMap;-><init>(Lio/reactivex/parallel/ParallelFlowable;Lio/reactivex/functions/Function;ILio/reactivex/internal/util/ErrorMode;)V

    invoke-static {v1}, Lio/reactivex/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/parallel/ParallelFlowable;)Lio/reactivex/parallel/ParallelFlowable;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Lio/reactivex/internal/util/ErrorMode;->BOUNDARY:Lio/reactivex/internal/util/ErrorMode;

    goto :goto_0
.end method

.method public final concatMapDelayError(Lio/reactivex/functions/Function;Z)Lio/reactivex/parallel/ParallelFlowable;
    .locals 1
    .param p1    # Lio/reactivex/functions/Function;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .param p2, "tillTheEnd"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/functions/Function",
            "<-TT;+",
            "Lorg/reactivestreams/Publisher",
            "<+TR;>;>;Z)",
            "Lio/reactivex/parallel/ParallelFlowable",
            "<TR;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation build Lio/reactivex/annotations/NonNull;
    .end annotation

    .prologue
    .line 910
    .local p0, "this":Lio/reactivex/parallel/ParallelFlowable;, "Lio/reactivex/parallel/ParallelFlowable<TT;>;"
    .local p1, "mapper":Lio/reactivex/functions/Function;, "Lio/reactivex/functions/Function<-TT;+Lorg/reactivestreams/Publisher<+TR;>;>;"
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0, p2}, Lio/reactivex/parallel/ParallelFlowable;->concatMapDelayError(Lio/reactivex/functions/Function;IZ)Lio/reactivex/parallel/ParallelFlowable;

    move-result-object v0

    return-object v0
.end method

.method public final doAfterNext(Lio/reactivex/functions/Consumer;)Lio/reactivex/parallel/ParallelFlowable;
    .locals 10
    .param p1    # Lio/reactivex/functions/Consumer;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/functions/Consumer",
            "<-TT;>;)",
            "Lio/reactivex/parallel/ParallelFlowable",
            "<TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation build Lio/reactivex/annotations/NonNull;
    .end annotation

    .prologue
    .line 572
    .local p0, "this":Lio/reactivex/parallel/ParallelFlowable;, "Lio/reactivex/parallel/ParallelFlowable<TT;>;"
    .local p1, "onAfterNext":Lio/reactivex/functions/Consumer;, "Lio/reactivex/functions/Consumer<-TT;>;"
    const-string v0, "onAfterNext is null"

    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 573
    new-instance v0, Lio/reactivex/internal/operators/parallel/ParallelPeek;

    invoke-static {}, Lio/reactivex/internal/functions/Functions;->emptyConsumer()Lio/reactivex/functions/Consumer;

    move-result-object v2

    invoke-static {}, Lio/reactivex/internal/functions/Functions;->emptyConsumer()Lio/reactivex/functions/Consumer;

    move-result-object v4

    sget-object v5, Lio/reactivex/internal/functions/Functions;->EMPTY_ACTION:Lio/reactivex/functions/Action;

    sget-object v6, Lio/reactivex/internal/functions/Functions;->EMPTY_ACTION:Lio/reactivex/functions/Action;

    invoke-static {}, Lio/reactivex/internal/functions/Functions;->emptyConsumer()Lio/reactivex/functions/Consumer;

    move-result-object v7

    sget-object v8, Lio/reactivex/internal/functions/Functions;->EMPTY_LONG_CONSUMER:Lio/reactivex/functions/LongConsumer;

    sget-object v9, Lio/reactivex/internal/functions/Functions;->EMPTY_ACTION:Lio/reactivex/functions/Action;

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v9}, Lio/reactivex/internal/operators/parallel/ParallelPeek;-><init>(Lio/reactivex/parallel/ParallelFlowable;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Action;Lio/reactivex/functions/Action;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/LongConsumer;Lio/reactivex/functions/Action;)V

    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/parallel/ParallelFlowable;)Lio/reactivex/parallel/ParallelFlowable;

    move-result-object v0

    return-object v0
.end method

.method public final doAfterTerminated(Lio/reactivex/functions/Action;)Lio/reactivex/parallel/ParallelFlowable;
    .locals 10
    .param p1, "onAfterTerminate"    # Lio/reactivex/functions/Action;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/functions/Action;",
            ")",
            "Lio/reactivex/parallel/ParallelFlowable",
            "<TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation build Lio/reactivex/annotations/NonNull;
    .end annotation

    .prologue
    .line 638
    .local p0, "this":Lio/reactivex/parallel/ParallelFlowable;, "Lio/reactivex/parallel/ParallelFlowable<TT;>;"
    const-string v0, "onAfterTerminate is null"

    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 639
    new-instance v0, Lio/reactivex/internal/operators/parallel/ParallelPeek;

    invoke-static {}, Lio/reactivex/internal/functions/Functions;->emptyConsumer()Lio/reactivex/functions/Consumer;

    move-result-object v2

    invoke-static {}, Lio/reactivex/internal/functions/Functions;->emptyConsumer()Lio/reactivex/functions/Consumer;

    move-result-object v3

    invoke-static {}, Lio/reactivex/internal/functions/Functions;->emptyConsumer()Lio/reactivex/functions/Consumer;

    move-result-object v4

    sget-object v5, Lio/reactivex/internal/functions/Functions;->EMPTY_ACTION:Lio/reactivex/functions/Action;

    invoke-static {}, Lio/reactivex/internal/functions/Functions;->emptyConsumer()Lio/reactivex/functions/Consumer;

    move-result-object v7

    sget-object v8, Lio/reactivex/internal/functions/Functions;->EMPTY_LONG_CONSUMER:Lio/reactivex/functions/LongConsumer;

    sget-object v9, Lio/reactivex/internal/functions/Functions;->EMPTY_ACTION:Lio/reactivex/functions/Action;

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v9}, Lio/reactivex/internal/operators/parallel/ParallelPeek;-><init>(Lio/reactivex/parallel/ParallelFlowable;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Action;Lio/reactivex/functions/Action;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/LongConsumer;Lio/reactivex/functions/Action;)V

    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/parallel/ParallelFlowable;)Lio/reactivex/parallel/ParallelFlowable;

    move-result-object v0

    return-object v0
.end method

.method public final doOnCancel(Lio/reactivex/functions/Action;)Lio/reactivex/parallel/ParallelFlowable;
    .locals 10
    .param p1, "onCancel"    # Lio/reactivex/functions/Action;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/functions/Action;",
            ")",
            "Lio/reactivex/parallel/ParallelFlowable",
            "<TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation build Lio/reactivex/annotations/NonNull;
    .end annotation

    .prologue
    .line 704
    .local p0, "this":Lio/reactivex/parallel/ParallelFlowable;, "Lio/reactivex/parallel/ParallelFlowable<TT;>;"
    const-string v0, "onCancel is null"

    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 705
    new-instance v0, Lio/reactivex/internal/operators/parallel/ParallelPeek;

    invoke-static {}, Lio/reactivex/internal/functions/Functions;->emptyConsumer()Lio/reactivex/functions/Consumer;

    move-result-object v2

    invoke-static {}, Lio/reactivex/internal/functions/Functions;->emptyConsumer()Lio/reactivex/functions/Consumer;

    move-result-object v3

    invoke-static {}, Lio/reactivex/internal/functions/Functions;->emptyConsumer()Lio/reactivex/functions/Consumer;

    move-result-object v4

    sget-object v5, Lio/reactivex/internal/functions/Functions;->EMPTY_ACTION:Lio/reactivex/functions/Action;

    sget-object v6, Lio/reactivex/internal/functions/Functions;->EMPTY_ACTION:Lio/reactivex/functions/Action;

    invoke-static {}, Lio/reactivex/internal/functions/Functions;->emptyConsumer()Lio/reactivex/functions/Consumer;

    move-result-object v7

    sget-object v8, Lio/reactivex/internal/functions/Functions;->EMPTY_LONG_CONSUMER:Lio/reactivex/functions/LongConsumer;

    move-object v1, p0

    move-object v9, p1

    invoke-direct/range {v0 .. v9}, Lio/reactivex/internal/operators/parallel/ParallelPeek;-><init>(Lio/reactivex/parallel/ParallelFlowable;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Action;Lio/reactivex/functions/Action;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/LongConsumer;Lio/reactivex/functions/Action;)V

    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/parallel/ParallelFlowable;)Lio/reactivex/parallel/ParallelFlowable;

    move-result-object v0

    return-object v0
.end method

.method public final doOnComplete(Lio/reactivex/functions/Action;)Lio/reactivex/parallel/ParallelFlowable;
    .locals 10
    .param p1, "onComplete"    # Lio/reactivex/functions/Action;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/functions/Action;",
            ")",
            "Lio/reactivex/parallel/ParallelFlowable",
            "<TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation build Lio/reactivex/annotations/NonNull;
    .end annotation

    .prologue
    .line 616
    .local p0, "this":Lio/reactivex/parallel/ParallelFlowable;, "Lio/reactivex/parallel/ParallelFlowable<TT;>;"
    const-string v0, "onComplete is null"

    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 617
    new-instance v0, Lio/reactivex/internal/operators/parallel/ParallelPeek;

    invoke-static {}, Lio/reactivex/internal/functions/Functions;->emptyConsumer()Lio/reactivex/functions/Consumer;

    move-result-object v2

    invoke-static {}, Lio/reactivex/internal/functions/Functions;->emptyConsumer()Lio/reactivex/functions/Consumer;

    move-result-object v3

    invoke-static {}, Lio/reactivex/internal/functions/Functions;->emptyConsumer()Lio/reactivex/functions/Consumer;

    move-result-object v4

    sget-object v6, Lio/reactivex/internal/functions/Functions;->EMPTY_ACTION:Lio/reactivex/functions/Action;

    invoke-static {}, Lio/reactivex/internal/functions/Functions;->emptyConsumer()Lio/reactivex/functions/Consumer;

    move-result-object v7

    sget-object v8, Lio/reactivex/internal/functions/Functions;->EMPTY_LONG_CONSUMER:Lio/reactivex/functions/LongConsumer;

    sget-object v9, Lio/reactivex/internal/functions/Functions;->EMPTY_ACTION:Lio/reactivex/functions/Action;

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v9}, Lio/reactivex/internal/operators/parallel/ParallelPeek;-><init>(Lio/reactivex/parallel/ParallelFlowable;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Action;Lio/reactivex/functions/Action;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/LongConsumer;Lio/reactivex/functions/Action;)V

    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/parallel/ParallelFlowable;)Lio/reactivex/parallel/ParallelFlowable;

    move-result-object v0

    return-object v0
.end method

.method public final doOnError(Lio/reactivex/functions/Consumer;)Lio/reactivex/parallel/ParallelFlowable;
    .locals 10
    .param p1    # Lio/reactivex/functions/Consumer;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/functions/Consumer",
            "<",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lio/reactivex/parallel/ParallelFlowable",
            "<TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation build Lio/reactivex/annotations/NonNull;
    .end annotation

    .prologue
    .line 594
    .local p0, "this":Lio/reactivex/parallel/ParallelFlowable;, "Lio/reactivex/parallel/ParallelFlowable<TT;>;"
    .local p1, "onError":Lio/reactivex/functions/Consumer;, "Lio/reactivex/functions/Consumer<Ljava/lang/Throwable;>;"
    const-string v0, "onError is null"

    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 595
    new-instance v0, Lio/reactivex/internal/operators/parallel/ParallelPeek;

    invoke-static {}, Lio/reactivex/internal/functions/Functions;->emptyConsumer()Lio/reactivex/functions/Consumer;

    move-result-object v2

    invoke-static {}, Lio/reactivex/internal/functions/Functions;->emptyConsumer()Lio/reactivex/functions/Consumer;

    move-result-object v3

    sget-object v5, Lio/reactivex/internal/functions/Functions;->EMPTY_ACTION:Lio/reactivex/functions/Action;

    sget-object v6, Lio/reactivex/internal/functions/Functions;->EMPTY_ACTION:Lio/reactivex/functions/Action;

    invoke-static {}, Lio/reactivex/internal/functions/Functions;->emptyConsumer()Lio/reactivex/functions/Consumer;

    move-result-object v7

    sget-object v8, Lio/reactivex/internal/functions/Functions;->EMPTY_LONG_CONSUMER:Lio/reactivex/functions/LongConsumer;

    sget-object v9, Lio/reactivex/internal/functions/Functions;->EMPTY_ACTION:Lio/reactivex/functions/Action;

    move-object v1, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v9}, Lio/reactivex/internal/operators/parallel/ParallelPeek;-><init>(Lio/reactivex/parallel/ParallelFlowable;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Action;Lio/reactivex/functions/Action;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/LongConsumer;Lio/reactivex/functions/Action;)V

    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/parallel/ParallelFlowable;)Lio/reactivex/parallel/ParallelFlowable;

    move-result-object v0

    return-object v0
.end method

.method public final doOnNext(Lio/reactivex/functions/Consumer;)Lio/reactivex/parallel/ParallelFlowable;
    .locals 10
    .param p1    # Lio/reactivex/functions/Consumer;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/functions/Consumer",
            "<-TT;>;)",
            "Lio/reactivex/parallel/ParallelFlowable",
            "<TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation build Lio/reactivex/annotations/NonNull;
    .end annotation

    .prologue
    .line 509
    .local p0, "this":Lio/reactivex/parallel/ParallelFlowable;, "Lio/reactivex/parallel/ParallelFlowable<TT;>;"
    .local p1, "onNext":Lio/reactivex/functions/Consumer;, "Lio/reactivex/functions/Consumer<-TT;>;"
    const-string v0, "onNext is null"

    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 510
    new-instance v0, Lio/reactivex/internal/operators/parallel/ParallelPeek;

    invoke-static {}, Lio/reactivex/internal/functions/Functions;->emptyConsumer()Lio/reactivex/functions/Consumer;

    move-result-object v3

    invoke-static {}, Lio/reactivex/internal/functions/Functions;->emptyConsumer()Lio/reactivex/functions/Consumer;

    move-result-object v4

    sget-object v5, Lio/reactivex/internal/functions/Functions;->EMPTY_ACTION:Lio/reactivex/functions/Action;

    sget-object v6, Lio/reactivex/internal/functions/Functions;->EMPTY_ACTION:Lio/reactivex/functions/Action;

    invoke-static {}, Lio/reactivex/internal/functions/Functions;->emptyConsumer()Lio/reactivex/functions/Consumer;

    move-result-object v7

    sget-object v8, Lio/reactivex/internal/functions/Functions;->EMPTY_LONG_CONSUMER:Lio/reactivex/functions/LongConsumer;

    sget-object v9, Lio/reactivex/internal/functions/Functions;->EMPTY_ACTION:Lio/reactivex/functions/Action;

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v9}, Lio/reactivex/internal/operators/parallel/ParallelPeek;-><init>(Lio/reactivex/parallel/ParallelFlowable;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Action;Lio/reactivex/functions/Action;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/LongConsumer;Lio/reactivex/functions/Action;)V

    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/parallel/ParallelFlowable;)Lio/reactivex/parallel/ParallelFlowable;

    move-result-object v0

    return-object v0
.end method

.method public final doOnNext(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/BiFunction;)Lio/reactivex/parallel/ParallelFlowable;
    .locals 1
    .param p1    # Lio/reactivex/functions/Consumer;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/reactivex/functions/BiFunction;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/functions/Consumer",
            "<-TT;>;",
            "Lio/reactivex/functions/BiFunction",
            "<-",
            "Ljava/lang/Long;",
            "-",
            "Ljava/lang/Throwable;",
            "Lio/reactivex/parallel/ParallelFailureHandling;",
            ">;)",
            "Lio/reactivex/parallel/ParallelFlowable",
            "<TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation build Lio/reactivex/annotations/Experimental;
    .end annotation

    .annotation build Lio/reactivex/annotations/NonNull;
    .end annotation

    .prologue
    .line 557
    .local p0, "this":Lio/reactivex/parallel/ParallelFlowable;, "Lio/reactivex/parallel/ParallelFlowable<TT;>;"
    .local p1, "onNext":Lio/reactivex/functions/Consumer;, "Lio/reactivex/functions/Consumer<-TT;>;"
    .local p2, "errorHandler":Lio/reactivex/functions/BiFunction;, "Lio/reactivex/functions/BiFunction<-Ljava/lang/Long;-Ljava/lang/Throwable;Lio/reactivex/parallel/ParallelFailureHandling;>;"
    const-string v0, "onNext is null"

    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 558
    const-string v0, "errorHandler is null"

    invoke-static {p2, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 559
    new-instance v0, Lio/reactivex/internal/operators/parallel/ParallelDoOnNextTry;

    invoke-direct {v0, p0, p1, p2}, Lio/reactivex/internal/operators/parallel/ParallelDoOnNextTry;-><init>(Lio/reactivex/parallel/ParallelFlowable;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/BiFunction;)V

    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/parallel/ParallelFlowable;)Lio/reactivex/parallel/ParallelFlowable;

    move-result-object v0

    return-object v0
.end method

.method public final doOnNext(Lio/reactivex/functions/Consumer;Lio/reactivex/parallel/ParallelFailureHandling;)Lio/reactivex/parallel/ParallelFlowable;
    .locals 1
    .param p1    # Lio/reactivex/functions/Consumer;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .param p2, "errorHandler"    # Lio/reactivex/parallel/ParallelFailureHandling;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/functions/Consumer",
            "<-TT;>;",
            "Lio/reactivex/parallel/ParallelFailureHandling;",
            ")",
            "Lio/reactivex/parallel/ParallelFlowable",
            "<TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation build Lio/reactivex/annotations/Experimental;
    .end annotation

    .annotation build Lio/reactivex/annotations/NonNull;
    .end annotation

    .prologue
    .line 537
    .local p0, "this":Lio/reactivex/parallel/ParallelFlowable;, "Lio/reactivex/parallel/ParallelFlowable<TT;>;"
    .local p1, "onNext":Lio/reactivex/functions/Consumer;, "Lio/reactivex/functions/Consumer<-TT;>;"
    const-string v0, "onNext is null"

    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 538
    const-string v0, "errorHandler is null"

    invoke-static {p2, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 539
    new-instance v0, Lio/reactivex/internal/operators/parallel/ParallelDoOnNextTry;

    invoke-direct {v0, p0, p1, p2}, Lio/reactivex/internal/operators/parallel/ParallelDoOnNextTry;-><init>(Lio/reactivex/parallel/ParallelFlowable;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/BiFunction;)V

    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/parallel/ParallelFlowable;)Lio/reactivex/parallel/ParallelFlowable;

    move-result-object v0

    return-object v0
.end method

.method public final doOnRequest(Lio/reactivex/functions/LongConsumer;)Lio/reactivex/parallel/ParallelFlowable;
    .locals 10
    .param p1, "onRequest"    # Lio/reactivex/functions/LongConsumer;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/functions/LongConsumer;",
            ")",
            "Lio/reactivex/parallel/ParallelFlowable",
            "<TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation build Lio/reactivex/annotations/NonNull;
    .end annotation

    .prologue
    .line 682
    .local p0, "this":Lio/reactivex/parallel/ParallelFlowable;, "Lio/reactivex/parallel/ParallelFlowable<TT;>;"
    const-string v0, "onRequest is null"

    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 683
    new-instance v0, Lio/reactivex/internal/operators/parallel/ParallelPeek;

    invoke-static {}, Lio/reactivex/internal/functions/Functions;->emptyConsumer()Lio/reactivex/functions/Consumer;

    move-result-object v2

    invoke-static {}, Lio/reactivex/internal/functions/Functions;->emptyConsumer()Lio/reactivex/functions/Consumer;

    move-result-object v3

    invoke-static {}, Lio/reactivex/internal/functions/Functions;->emptyConsumer()Lio/reactivex/functions/Consumer;

    move-result-object v4

    sget-object v5, Lio/reactivex/internal/functions/Functions;->EMPTY_ACTION:Lio/reactivex/functions/Action;

    sget-object v6, Lio/reactivex/internal/functions/Functions;->EMPTY_ACTION:Lio/reactivex/functions/Action;

    invoke-static {}, Lio/reactivex/internal/functions/Functions;->emptyConsumer()Lio/reactivex/functions/Consumer;

    move-result-object v7

    sget-object v9, Lio/reactivex/internal/functions/Functions;->EMPTY_ACTION:Lio/reactivex/functions/Action;

    move-object v1, p0

    move-object v8, p1

    invoke-direct/range {v0 .. v9}, Lio/reactivex/internal/operators/parallel/ParallelPeek;-><init>(Lio/reactivex/parallel/ParallelFlowable;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Action;Lio/reactivex/functions/Action;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/LongConsumer;Lio/reactivex/functions/Action;)V

    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/parallel/ParallelFlowable;)Lio/reactivex/parallel/ParallelFlowable;

    move-result-object v0

    return-object v0
.end method

.method public final doOnSubscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/parallel/ParallelFlowable;
    .locals 10
    .param p1    # Lio/reactivex/functions/Consumer;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/functions/Consumer",
            "<-",
            "Lorg/reactivestreams/Subscription;",
            ">;)",
            "Lio/reactivex/parallel/ParallelFlowable",
            "<TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation build Lio/reactivex/annotations/NonNull;
    .end annotation

    .prologue
    .line 660
    .local p0, "this":Lio/reactivex/parallel/ParallelFlowable;, "Lio/reactivex/parallel/ParallelFlowable<TT;>;"
    .local p1, "onSubscribe":Lio/reactivex/functions/Consumer;, "Lio/reactivex/functions/Consumer<-Lorg/reactivestreams/Subscription;>;"
    const-string v0, "onSubscribe is null"

    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 661
    new-instance v0, Lio/reactivex/internal/operators/parallel/ParallelPeek;

    invoke-static {}, Lio/reactivex/internal/functions/Functions;->emptyConsumer()Lio/reactivex/functions/Consumer;

    move-result-object v2

    invoke-static {}, Lio/reactivex/internal/functions/Functions;->emptyConsumer()Lio/reactivex/functions/Consumer;

    move-result-object v3

    invoke-static {}, Lio/reactivex/internal/functions/Functions;->emptyConsumer()Lio/reactivex/functions/Consumer;

    move-result-object v4

    sget-object v5, Lio/reactivex/internal/functions/Functions;->EMPTY_ACTION:Lio/reactivex/functions/Action;

    sget-object v6, Lio/reactivex/internal/functions/Functions;->EMPTY_ACTION:Lio/reactivex/functions/Action;

    sget-object v8, Lio/reactivex/internal/functions/Functions;->EMPTY_LONG_CONSUMER:Lio/reactivex/functions/LongConsumer;

    sget-object v9, Lio/reactivex/internal/functions/Functions;->EMPTY_ACTION:Lio/reactivex/functions/Action;

    move-object v1, p0

    move-object v7, p1

    invoke-direct/range {v0 .. v9}, Lio/reactivex/internal/operators/parallel/ParallelPeek;-><init>(Lio/reactivex/parallel/ParallelFlowable;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Action;Lio/reactivex/functions/Action;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/LongConsumer;Lio/reactivex/functions/Action;)V

    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/parallel/ParallelFlowable;)Lio/reactivex/parallel/ParallelFlowable;

    move-result-object v0

    return-object v0
.end method

.method public final filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/parallel/ParallelFlowable;
    .locals 1
    .param p1    # Lio/reactivex/functions/Predicate;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/functions/Predicate",
            "<-TT;>;)",
            "Lio/reactivex/parallel/ParallelFlowable",
            "<TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .prologue
    .line 192
    .local p0, "this":Lio/reactivex/parallel/ParallelFlowable;, "Lio/reactivex/parallel/ParallelFlowable<TT;>;"
    .local p1, "predicate":Lio/reactivex/functions/Predicate;, "Lio/reactivex/functions/Predicate<-TT;>;"
    const-string v0, "predicate"

    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 193
    new-instance v0, Lio/reactivex/internal/operators/parallel/ParallelFilter;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/parallel/ParallelFilter;-><init>(Lio/reactivex/parallel/ParallelFlowable;Lio/reactivex/functions/Predicate;)V

    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/parallel/ParallelFlowable;)Lio/reactivex/parallel/ParallelFlowable;

    move-result-object v0

    return-object v0
.end method

.method public final filter(Lio/reactivex/functions/Predicate;Lio/reactivex/functions/BiFunction;)Lio/reactivex/parallel/ParallelFlowable;
    .locals 1
    .param p1    # Lio/reactivex/functions/Predicate;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/reactivex/functions/BiFunction;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/functions/Predicate",
            "<-TT;>;",
            "Lio/reactivex/functions/BiFunction",
            "<-",
            "Ljava/lang/Long;",
            "-",
            "Ljava/lang/Throwable;",
            "Lio/reactivex/parallel/ParallelFailureHandling;",
            ">;)",
            "Lio/reactivex/parallel/ParallelFlowable",
            "<TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation build Lio/reactivex/annotations/Experimental;
    .end annotation

    .prologue
    .line 231
    .local p0, "this":Lio/reactivex/parallel/ParallelFlowable;, "Lio/reactivex/parallel/ParallelFlowable<TT;>;"
    .local p1, "predicate":Lio/reactivex/functions/Predicate;, "Lio/reactivex/functions/Predicate<-TT;>;"
    .local p2, "errorHandler":Lio/reactivex/functions/BiFunction;, "Lio/reactivex/functions/BiFunction<-Ljava/lang/Long;-Ljava/lang/Throwable;Lio/reactivex/parallel/ParallelFailureHandling;>;"
    const-string v0, "predicate"

    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 232
    const-string v0, "errorHandler is null"

    invoke-static {p2, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 233
    new-instance v0, Lio/reactivex/internal/operators/parallel/ParallelFilterTry;

    invoke-direct {v0, p0, p1, p2}, Lio/reactivex/internal/operators/parallel/ParallelFilterTry;-><init>(Lio/reactivex/parallel/ParallelFlowable;Lio/reactivex/functions/Predicate;Lio/reactivex/functions/BiFunction;)V

    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/parallel/ParallelFlowable;)Lio/reactivex/parallel/ParallelFlowable;

    move-result-object v0

    return-object v0
.end method

.method public final filter(Lio/reactivex/functions/Predicate;Lio/reactivex/parallel/ParallelFailureHandling;)Lio/reactivex/parallel/ParallelFlowable;
    .locals 1
    .param p1    # Lio/reactivex/functions/Predicate;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .param p2, "errorHandler"    # Lio/reactivex/parallel/ParallelFailureHandling;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/functions/Predicate",
            "<-TT;>;",
            "Lio/reactivex/parallel/ParallelFailureHandling;",
            ")",
            "Lio/reactivex/parallel/ParallelFlowable",
            "<TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation build Lio/reactivex/annotations/Experimental;
    .end annotation

    .prologue
    .line 210
    .local p0, "this":Lio/reactivex/parallel/ParallelFlowable;, "Lio/reactivex/parallel/ParallelFlowable<TT;>;"
    .local p1, "predicate":Lio/reactivex/functions/Predicate;, "Lio/reactivex/functions/Predicate<-TT;>;"
    const-string v0, "predicate"

    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 211
    const-string v0, "errorHandler is null"

    invoke-static {p2, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 212
    new-instance v0, Lio/reactivex/internal/operators/parallel/ParallelFilterTry;

    invoke-direct {v0, p0, p1, p2}, Lio/reactivex/internal/operators/parallel/ParallelFilterTry;-><init>(Lio/reactivex/parallel/ParallelFlowable;Lio/reactivex/functions/Predicate;Lio/reactivex/functions/BiFunction;)V

    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/parallel/ParallelFlowable;)Lio/reactivex/parallel/ParallelFlowable;

    move-result-object v0

    return-object v0
.end method

.method public final flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/parallel/ParallelFlowable;
    .locals 3
    .param p1    # Lio/reactivex/functions/Function;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/functions/Function",
            "<-TT;+",
            "Lorg/reactivestreams/Publisher",
            "<+TR;>;>;)",
            "Lio/reactivex/parallel/ParallelFlowable",
            "<TR;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation build Lio/reactivex/annotations/NonNull;
    .end annotation

    .prologue
    .line 796
    .local p0, "this":Lio/reactivex/parallel/ParallelFlowable;, "Lio/reactivex/parallel/ParallelFlowable<TT;>;"
    .local p1, "mapper":Lio/reactivex/functions/Function;, "Lio/reactivex/functions/Function<-TT;+Lorg/reactivestreams/Publisher<+TR;>;>;"
    const/4 v0, 0x0

    const v1, 0x7fffffff

    invoke-static {}, Lio/reactivex/Flowable;->bufferSize()I

    move-result v2

    invoke-virtual {p0, p1, v0, v1, v2}, Lio/reactivex/parallel/ParallelFlowable;->flatMap(Lio/reactivex/functions/Function;ZII)Lio/reactivex/parallel/ParallelFlowable;

    move-result-object v0

    return-object v0
.end method

.method public final flatMap(Lio/reactivex/functions/Function;Z)Lio/reactivex/parallel/ParallelFlowable;
    .locals 2
    .param p1    # Lio/reactivex/functions/Function;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .param p2, "delayError"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/functions/Function",
            "<-TT;+",
            "Lorg/reactivestreams/Publisher",
            "<+TR;>;>;Z)",
            "Lio/reactivex/parallel/ParallelFlowable",
            "<TR;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation build Lio/reactivex/annotations/NonNull;
    .end annotation

    .prologue
    .line 813
    .local p0, "this":Lio/reactivex/parallel/ParallelFlowable;, "Lio/reactivex/parallel/ParallelFlowable<TT;>;"
    .local p1, "mapper":Lio/reactivex/functions/Function;, "Lio/reactivex/functions/Function<-TT;+Lorg/reactivestreams/Publisher<+TR;>;>;"
    const v0, 0x7fffffff

    invoke-static {}, Lio/reactivex/Flowable;->bufferSize()I

    move-result v1

    invoke-virtual {p0, p1, p2, v0, v1}, Lio/reactivex/parallel/ParallelFlowable;->flatMap(Lio/reactivex/functions/Function;ZII)Lio/reactivex/parallel/ParallelFlowable;

    move-result-object v0

    return-object v0
.end method

.method public final flatMap(Lio/reactivex/functions/Function;ZI)Lio/reactivex/parallel/ParallelFlowable;
    .locals 1
    .param p1    # Lio/reactivex/functions/Function;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .param p2, "delayError"    # Z
    .param p3, "maxConcurrency"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/functions/Function",
            "<-TT;+",
            "Lorg/reactivestreams/Publisher",
            "<+TR;>;>;ZI)",
            "Lio/reactivex/parallel/ParallelFlowable",
            "<TR;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation build Lio/reactivex/annotations/NonNull;
    .end annotation

    .prologue
    .line 832
    .local p0, "this":Lio/reactivex/parallel/ParallelFlowable;, "Lio/reactivex/parallel/ParallelFlowable<TT;>;"
    .local p1, "mapper":Lio/reactivex/functions/Function;, "Lio/reactivex/functions/Function<-TT;+Lorg/reactivestreams/Publisher<+TR;>;>;"
    invoke-static {}, Lio/reactivex/Flowable;->bufferSize()I

    move-result v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lio/reactivex/parallel/ParallelFlowable;->flatMap(Lio/reactivex/functions/Function;ZII)Lio/reactivex/parallel/ParallelFlowable;

    move-result-object v0

    return-object v0
.end method

.method public final flatMap(Lio/reactivex/functions/Function;ZII)Lio/reactivex/parallel/ParallelFlowable;
    .locals 6
    .param p1    # Lio/reactivex/functions/Function;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .param p2, "delayError"    # Z
    .param p3, "maxConcurrency"    # I
    .param p4, "prefetch"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/functions/Function",
            "<-TT;+",
            "Lorg/reactivestreams/Publisher",
            "<+TR;>;>;ZII)",
            "Lio/reactivex/parallel/ParallelFlowable",
            "<TR;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation build Lio/reactivex/annotations/NonNull;
    .end annotation

    .prologue
    .line 852
    .local p0, "this":Lio/reactivex/parallel/ParallelFlowable;, "Lio/reactivex/parallel/ParallelFlowable<TT;>;"
    .local p1, "mapper":Lio/reactivex/functions/Function;, "Lio/reactivex/functions/Function<-TT;+Lorg/reactivestreams/Publisher<+TR;>;>;"
    const-string v0, "mapper is null"

    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 853
    const-string v0, "maxConcurrency"

    invoke-static {p3, v0}, Lio/reactivex/internal/functions/ObjectHelper;->verifyPositive(ILjava/lang/String;)I

    .line 854
    const-string v0, "prefetch"

    invoke-static {p4, v0}, Lio/reactivex/internal/functions/ObjectHelper;->verifyPositive(ILjava/lang/String;)I

    .line 855
    new-instance v0, Lio/reactivex/internal/operators/parallel/ParallelFlatMap;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lio/reactivex/internal/operators/parallel/ParallelFlatMap;-><init>(Lio/reactivex/parallel/ParallelFlowable;Lio/reactivex/functions/Function;ZII)V

    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/parallel/ParallelFlowable;)Lio/reactivex/parallel/ParallelFlowable;

    move-result-object v0

    return-object v0
.end method

.method public final map(Lio/reactivex/functions/Function;)Lio/reactivex/parallel/ParallelFlowable;
    .locals 1
    .param p1    # Lio/reactivex/functions/Function;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/functions/Function",
            "<-TT;+TR;>;)",
            "Lio/reactivex/parallel/ParallelFlowable",
            "<TR;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation build Lio/reactivex/annotations/NonNull;
    .end annotation

    .prologue
    .line 136
    .local p0, "this":Lio/reactivex/parallel/ParallelFlowable;, "Lio/reactivex/parallel/ParallelFlowable<TT;>;"
    .local p1, "mapper":Lio/reactivex/functions/Function;, "Lio/reactivex/functions/Function<-TT;+TR;>;"
    const-string v0, "mapper"

    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 137
    new-instance v0, Lio/reactivex/internal/operators/parallel/ParallelMap;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/parallel/ParallelMap;-><init>(Lio/reactivex/parallel/ParallelFlowable;Lio/reactivex/functions/Function;)V

    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/parallel/ParallelFlowable;)Lio/reactivex/parallel/ParallelFlowable;

    move-result-object v0

    return-object v0
.end method

.method public final map(Lio/reactivex/functions/Function;Lio/reactivex/functions/BiFunction;)Lio/reactivex/parallel/ParallelFlowable;
    .locals 1
    .param p1    # Lio/reactivex/functions/Function;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/reactivex/functions/BiFunction;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/functions/Function",
            "<-TT;+TR;>;",
            "Lio/reactivex/functions/BiFunction",
            "<-",
            "Ljava/lang/Long;",
            "-",
            "Ljava/lang/Throwable;",
            "Lio/reactivex/parallel/ParallelFailureHandling;",
            ">;)",
            "Lio/reactivex/parallel/ParallelFlowable",
            "<TR;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation build Lio/reactivex/annotations/Experimental;
    .end annotation

    .annotation build Lio/reactivex/annotations/NonNull;
    .end annotation

    .prologue
    .line 178
    .local p0, "this":Lio/reactivex/parallel/ParallelFlowable;, "Lio/reactivex/parallel/ParallelFlowable<TT;>;"
    .local p1, "mapper":Lio/reactivex/functions/Function;, "Lio/reactivex/functions/Function<-TT;+TR;>;"
    .local p2, "errorHandler":Lio/reactivex/functions/BiFunction;, "Lio/reactivex/functions/BiFunction<-Ljava/lang/Long;-Ljava/lang/Throwable;Lio/reactivex/parallel/ParallelFailureHandling;>;"
    const-string v0, "mapper"

    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 179
    const-string v0, "errorHandler is null"

    invoke-static {p2, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 180
    new-instance v0, Lio/reactivex/internal/operators/parallel/ParallelMapTry;

    invoke-direct {v0, p0, p1, p2}, Lio/reactivex/internal/operators/parallel/ParallelMapTry;-><init>(Lio/reactivex/parallel/ParallelFlowable;Lio/reactivex/functions/Function;Lio/reactivex/functions/BiFunction;)V

    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/parallel/ParallelFlowable;)Lio/reactivex/parallel/ParallelFlowable;

    move-result-object v0

    return-object v0
.end method

.method public final map(Lio/reactivex/functions/Function;Lio/reactivex/parallel/ParallelFailureHandling;)Lio/reactivex/parallel/ParallelFlowable;
    .locals 1
    .param p1    # Lio/reactivex/functions/Function;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .param p2, "errorHandler"    # Lio/reactivex/parallel/ParallelFailureHandling;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/functions/Function",
            "<-TT;+TR;>;",
            "Lio/reactivex/parallel/ParallelFailureHandling;",
            ")",
            "Lio/reactivex/parallel/ParallelFlowable",
            "<TR;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation build Lio/reactivex/annotations/Experimental;
    .end annotation

    .annotation build Lio/reactivex/annotations/NonNull;
    .end annotation

    .prologue
    .line 156
    .local p0, "this":Lio/reactivex/parallel/ParallelFlowable;, "Lio/reactivex/parallel/ParallelFlowable<TT;>;"
    .local p1, "mapper":Lio/reactivex/functions/Function;, "Lio/reactivex/functions/Function<-TT;+TR;>;"
    const-string v0, "mapper"

    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 157
    const-string v0, "errorHandler is null"

    invoke-static {p2, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 158
    new-instance v0, Lio/reactivex/internal/operators/parallel/ParallelMapTry;

    invoke-direct {v0, p0, p1, p2}, Lio/reactivex/internal/operators/parallel/ParallelMapTry;-><init>(Lio/reactivex/parallel/ParallelFlowable;Lio/reactivex/functions/Function;Lio/reactivex/functions/BiFunction;)V

    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/parallel/ParallelFlowable;)Lio/reactivex/parallel/ParallelFlowable;

    move-result-object v0

    return-object v0
.end method

.method public abstract parallelism()I
.end method

.method public final reduce(Lio/reactivex/functions/BiFunction;)Lio/reactivex/Flowable;
    .locals 1
    .param p1    # Lio/reactivex/functions/BiFunction;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/functions/BiFunction",
            "<TT;TT;TT;>;)",
            "Lio/reactivex/Flowable",
            "<TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation build Lio/reactivex/annotations/NonNull;
    .end annotation

    .prologue
    .line 301
    .local p0, "this":Lio/reactivex/parallel/ParallelFlowable;, "Lio/reactivex/parallel/ParallelFlowable<TT;>;"
    .local p1, "reducer":Lio/reactivex/functions/BiFunction;, "Lio/reactivex/functions/BiFunction<TT;TT;TT;>;"
    const-string v0, "reducer"

    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 302
    new-instance v0, Lio/reactivex/internal/operators/parallel/ParallelReduceFull;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/parallel/ParallelReduceFull;-><init>(Lio/reactivex/parallel/ParallelFlowable;Lio/reactivex/functions/BiFunction;)V

    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/Flowable;)Lio/reactivex/Flowable;

    move-result-object v0

    return-object v0
.end method

.method public final reduce(Ljava/util/concurrent/Callable;Lio/reactivex/functions/BiFunction;)Lio/reactivex/parallel/ParallelFlowable;
    .locals 1
    .param p1    # Ljava/util/concurrent/Callable;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/reactivex/functions/BiFunction;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TR;>;",
            "Lio/reactivex/functions/BiFunction",
            "<TR;-TT;TR;>;)",
            "Lio/reactivex/parallel/ParallelFlowable",
            "<TR;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation build Lio/reactivex/annotations/NonNull;
    .end annotation

    .prologue
    .line 319
    .local p0, "this":Lio/reactivex/parallel/ParallelFlowable;, "Lio/reactivex/parallel/ParallelFlowable<TT;>;"
    .local p1, "initialSupplier":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TR;>;"
    .local p2, "reducer":Lio/reactivex/functions/BiFunction;, "Lio/reactivex/functions/BiFunction<TR;-TT;TR;>;"
    const-string v0, "initialSupplier"

    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 320
    const-string v0, "reducer"

    invoke-static {p2, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 321
    new-instance v0, Lio/reactivex/internal/operators/parallel/ParallelReduce;

    invoke-direct {v0, p0, p1, p2}, Lio/reactivex/internal/operators/parallel/ParallelReduce;-><init>(Lio/reactivex/parallel/ParallelFlowable;Ljava/util/concurrent/Callable;Lio/reactivex/functions/BiFunction;)V

    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/parallel/ParallelFlowable;)Lio/reactivex/parallel/ParallelFlowable;

    move-result-object v0

    return-object v0
.end method

.method public final runOn(Lio/reactivex/Scheduler;)Lio/reactivex/parallel/ParallelFlowable;
    .locals 1
    .param p1, "scheduler"    # Lio/reactivex/Scheduler;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Scheduler;",
            ")",
            "Lio/reactivex/parallel/ParallelFlowable",
            "<TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation build Lio/reactivex/annotations/NonNull;
    .end annotation

    .prologue
    .line 258
    .local p0, "this":Lio/reactivex/parallel/ParallelFlowable;, "Lio/reactivex/parallel/ParallelFlowable<TT;>;"
    invoke-static {}, Lio/reactivex/Flowable;->bufferSize()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lio/reactivex/parallel/ParallelFlowable;->runOn(Lio/reactivex/Scheduler;I)Lio/reactivex/parallel/ParallelFlowable;

    move-result-object v0

    return-object v0
.end method

.method public final runOn(Lio/reactivex/Scheduler;I)Lio/reactivex/parallel/ParallelFlowable;
    .locals 1
    .param p1, "scheduler"    # Lio/reactivex/Scheduler;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .param p2, "prefetch"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Scheduler;",
            "I)",
            "Lio/reactivex/parallel/ParallelFlowable",
            "<TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation build Lio/reactivex/annotations/NonNull;
    .end annotation

    .prologue
    .line 285
    .local p0, "this":Lio/reactivex/parallel/ParallelFlowable;, "Lio/reactivex/parallel/ParallelFlowable<TT;>;"
    const-string v0, "scheduler"

    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 286
    const-string v0, "prefetch"

    invoke-static {p2, v0}, Lio/reactivex/internal/functions/ObjectHelper;->verifyPositive(ILjava/lang/String;)I

    .line 287
    new-instance v0, Lio/reactivex/internal/operators/parallel/ParallelRunOn;

    invoke-direct {v0, p0, p1, p2}, Lio/reactivex/internal/operators/parallel/ParallelRunOn;-><init>(Lio/reactivex/parallel/ParallelFlowable;Lio/reactivex/Scheduler;I)V

    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/parallel/ParallelFlowable;)Lio/reactivex/parallel/ParallelFlowable;

    move-result-object v0

    return-object v0
.end method

.method public final sequential()Lio/reactivex/Flowable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Flowable",
            "<TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .prologue
    .line 345
    .local p0, "this":Lio/reactivex/parallel/ParallelFlowable;, "Lio/reactivex/parallel/ParallelFlowable<TT;>;"
    invoke-static {}, Lio/reactivex/Flowable;->bufferSize()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/reactivex/parallel/ParallelFlowable;->sequential(I)Lio/reactivex/Flowable;

    move-result-object v0

    return-object v0
.end method

.method public final sequential(I)Lio/reactivex/Flowable;
    .locals 2
    .param p1, "prefetch"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lio/reactivex/Flowable",
            "<TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation build Lio/reactivex/annotations/NonNull;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .prologue
    .line 369
    .local p0, "this":Lio/reactivex/parallel/ParallelFlowable;, "Lio/reactivex/parallel/ParallelFlowable<TT;>;"
    const-string v0, "prefetch"

    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->verifyPositive(ILjava/lang/String;)I

    .line 370
    new-instance v0, Lio/reactivex/internal/operators/parallel/ParallelJoin;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lio/reactivex/internal/operators/parallel/ParallelJoin;-><init>(Lio/reactivex/parallel/ParallelFlowable;IZ)V

    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/Flowable;)Lio/reactivex/Flowable;

    move-result-object v0

    return-object v0
.end method

.method public final sequentialDelayError()Lio/reactivex/Flowable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Flowable",
            "<TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation build Lio/reactivex/annotations/Experimental;
    .end annotation

    .annotation build Lio/reactivex/annotations/NonNull;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .prologue
    .line 397
    .local p0, "this":Lio/reactivex/parallel/ParallelFlowable;, "Lio/reactivex/parallel/ParallelFlowable<TT;>;"
    invoke-static {}, Lio/reactivex/Flowable;->bufferSize()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/reactivex/parallel/ParallelFlowable;->sequentialDelayError(I)Lio/reactivex/Flowable;

    move-result-object v0

    return-object v0
.end method

.method public final sequentialDelayError(I)Lio/reactivex/Flowable;
    .locals 2
    .param p1, "prefetch"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lio/reactivex/Flowable",
            "<TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation build Lio/reactivex/annotations/NonNull;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .prologue
    .line 422
    .local p0, "this":Lio/reactivex/parallel/ParallelFlowable;, "Lio/reactivex/parallel/ParallelFlowable<TT;>;"
    const-string v0, "prefetch"

    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->verifyPositive(ILjava/lang/String;)I

    .line 423
    new-instance v0, Lio/reactivex/internal/operators/parallel/ParallelJoin;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lio/reactivex/internal/operators/parallel/ParallelJoin;-><init>(Lio/reactivex/parallel/ParallelFlowable;IZ)V

    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/Flowable;)Lio/reactivex/Flowable;

    move-result-object v0

    return-object v0
.end method

.method public final sorted(Ljava/util/Comparator;)Lio/reactivex/Flowable;
    .locals 1
    .param p1    # Ljava/util/Comparator;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<-TT;>;)",
            "Lio/reactivex/Flowable",
            "<TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation build Lio/reactivex/annotations/NonNull;
    .end annotation

    .prologue
    .line 438
    .local p0, "this":Lio/reactivex/parallel/ParallelFlowable;, "Lio/reactivex/parallel/ParallelFlowable<TT;>;"
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    const/16 v0, 0x10

    invoke-virtual {p0, p1, v0}, Lio/reactivex/parallel/ParallelFlowable;->sorted(Ljava/util/Comparator;I)Lio/reactivex/Flowable;

    move-result-object v0

    return-object v0
.end method

.method public final sorted(Ljava/util/Comparator;I)Lio/reactivex/Flowable;
    .locals 5
    .param p1    # Ljava/util/Comparator;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .param p2, "capacityHint"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<-TT;>;I)",
            "Lio/reactivex/Flowable",
            "<TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation build Lio/reactivex/annotations/NonNull;
    .end annotation

    .prologue
    .line 454
    .local p0, "this":Lio/reactivex/parallel/ParallelFlowable;, "Lio/reactivex/parallel/ParallelFlowable<TT;>;"
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    const-string v3, "comparator is null"

    invoke-static {p1, v3}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 455
    const-string v3, "capacityHint"

    invoke-static {p2, v3}, Lio/reactivex/internal/functions/ObjectHelper;->verifyPositive(ILjava/lang/String;)I

    .line 456
    invoke-virtual {p0}, Lio/reactivex/parallel/ParallelFlowable;->parallelism()I

    move-result v3

    div-int v3, p2, v3

    add-int/lit8 v0, v3, 0x1

    .line 457
    .local v0, "ch":I
    invoke-static {v0}, Lio/reactivex/internal/functions/Functions;->createArrayList(I)Ljava/util/concurrent/Callable;

    move-result-object v3

    invoke-static {}, Lio/reactivex/internal/util/ListAddBiConsumer;->instance()Lio/reactivex/functions/BiFunction;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lio/reactivex/parallel/ParallelFlowable;->reduce(Ljava/util/concurrent/Callable;Lio/reactivex/functions/BiFunction;)Lio/reactivex/parallel/ParallelFlowable;

    move-result-object v1

    .line 458
    .local v1, "railReduced":Lio/reactivex/parallel/ParallelFlowable;, "Lio/reactivex/parallel/ParallelFlowable<Ljava/util/List<TT;>;>;"
    new-instance v3, Lio/reactivex/internal/util/SorterFunction;

    invoke-direct {v3, p1}, Lio/reactivex/internal/util/SorterFunction;-><init>(Ljava/util/Comparator;)V

    invoke-virtual {v1, v3}, Lio/reactivex/parallel/ParallelFlowable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/parallel/ParallelFlowable;

    move-result-object v2

    .line 460
    .local v2, "railSorted":Lio/reactivex/parallel/ParallelFlowable;, "Lio/reactivex/parallel/ParallelFlowable<Ljava/util/List<TT;>;>;"
    new-instance v3, Lio/reactivex/internal/operators/parallel/ParallelSortedJoin;

    invoke-direct {v3, v2, p1}, Lio/reactivex/internal/operators/parallel/ParallelSortedJoin;-><init>(Lio/reactivex/parallel/ParallelFlowable;Ljava/util/Comparator;)V

    invoke-static {v3}, Lio/reactivex/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/Flowable;)Lio/reactivex/Flowable;

    move-result-object v3

    return-object v3
.end method

.method public abstract subscribe([Lorg/reactivestreams/Subscriber;)V
    .param p1    # [Lorg/reactivestreams/Subscriber;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/reactivestreams/Subscriber",
            "<-TT;>;)V"
        }
    .end annotation
.end method

.method public final to(Lio/reactivex/functions/Function;)Ljava/lang/Object;
    .locals 2
    .param p1    # Lio/reactivex/functions/Function;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/functions/Function",
            "<-",
            "Lio/reactivex/parallel/ParallelFlowable",
            "<TT;>;TU;>;)TU;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation build Lio/reactivex/annotations/NonNull;
    .end annotation

    .prologue
    .line 763
    .local p0, "this":Lio/reactivex/parallel/ParallelFlowable;, "Lio/reactivex/parallel/ParallelFlowable<TT;>;"
    .local p1, "converter":Lio/reactivex/functions/Function;, "Lio/reactivex/functions/Function<-Lio/reactivex/parallel/ParallelFlowable<TT;>;TU;>;"
    :try_start_0
    const-string v1, "converter is null"

    invoke-static {p1, v1}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/reactivex/functions/Function;

    invoke-interface {v1, p0}, Lio/reactivex/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 764
    :catch_0
    move-exception v0

    .line 765
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 766
    invoke-static {v0}, Lio/reactivex/internal/util/ExceptionHelper;->wrapOrThrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public final toSortedList(Ljava/util/Comparator;)Lio/reactivex/Flowable;
    .locals 1
    .param p1    # Ljava/util/Comparator;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<-TT;>;)",
            "Lio/reactivex/Flowable",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation build Lio/reactivex/annotations/NonNull;
    .end annotation

    .prologue
    .line 474
    .local p0, "this":Lio/reactivex/parallel/ParallelFlowable;, "Lio/reactivex/parallel/ParallelFlowable<TT;>;"
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    const/16 v0, 0x10

    invoke-virtual {p0, p1, v0}, Lio/reactivex/parallel/ParallelFlowable;->toSortedList(Ljava/util/Comparator;I)Lio/reactivex/Flowable;

    move-result-object v0

    return-object v0
.end method

.method public final toSortedList(Ljava/util/Comparator;I)Lio/reactivex/Flowable;
    .locals 6
    .param p1    # Ljava/util/Comparator;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .param p2, "capacityHint"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<-TT;>;I)",
            "Lio/reactivex/Flowable",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation build Lio/reactivex/annotations/NonNull;
    .end annotation

    .prologue
    .line 488
    .local p0, "this":Lio/reactivex/parallel/ParallelFlowable;, "Lio/reactivex/parallel/ParallelFlowable<TT;>;"
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    const-string v4, "comparator is null"

    invoke-static {p1, v4}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 489
    const-string v4, "capacityHint"

    invoke-static {p2, v4}, Lio/reactivex/internal/functions/ObjectHelper;->verifyPositive(ILjava/lang/String;)I

    .line 491
    invoke-virtual {p0}, Lio/reactivex/parallel/ParallelFlowable;->parallelism()I

    move-result v4

    div-int v4, p2, v4

    add-int/lit8 v0, v4, 0x1

    .line 492
    .local v0, "ch":I
    invoke-static {v0}, Lio/reactivex/internal/functions/Functions;->createArrayList(I)Ljava/util/concurrent/Callable;

    move-result-object v4

    invoke-static {}, Lio/reactivex/internal/util/ListAddBiConsumer;->instance()Lio/reactivex/functions/BiFunction;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lio/reactivex/parallel/ParallelFlowable;->reduce(Ljava/util/concurrent/Callable;Lio/reactivex/functions/BiFunction;)Lio/reactivex/parallel/ParallelFlowable;

    move-result-object v2

    .line 493
    .local v2, "railReduced":Lio/reactivex/parallel/ParallelFlowable;, "Lio/reactivex/parallel/ParallelFlowable<Ljava/util/List<TT;>;>;"
    new-instance v4, Lio/reactivex/internal/util/SorterFunction;

    invoke-direct {v4, p1}, Lio/reactivex/internal/util/SorterFunction;-><init>(Ljava/util/Comparator;)V

    invoke-virtual {v2, v4}, Lio/reactivex/parallel/ParallelFlowable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/parallel/ParallelFlowable;

    move-result-object v3

    .line 495
    .local v3, "railSorted":Lio/reactivex/parallel/ParallelFlowable;, "Lio/reactivex/parallel/ParallelFlowable<Ljava/util/List<TT;>;>;"
    new-instance v4, Lio/reactivex/internal/util/MergerBiFunction;

    invoke-direct {v4, p1}, Lio/reactivex/internal/util/MergerBiFunction;-><init>(Ljava/util/Comparator;)V

    invoke-virtual {v3, v4}, Lio/reactivex/parallel/ParallelFlowable;->reduce(Lio/reactivex/functions/BiFunction;)Lio/reactivex/Flowable;

    move-result-object v1

    .line 497
    .local v1, "merged":Lio/reactivex/Flowable;, "Lio/reactivex/Flowable<Ljava/util/List<TT;>;>;"
    invoke-static {v1}, Lio/reactivex/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/Flowable;)Lio/reactivex/Flowable;

    move-result-object v4

    return-object v4
.end method

.method protected final validate([Lorg/reactivestreams/Subscriber;)Z
    .locals 8
    .param p1    # [Lorg/reactivestreams/Subscriber;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/reactivestreams/Subscriber",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 68
    .local p0, "this":Lio/reactivex/parallel/ParallelFlowable;, "Lio/reactivex/parallel/ParallelFlowable<TT;>;"
    .local p1, "subscribers":[Lorg/reactivestreams/Subscriber;, "[Lorg/reactivestreams/Subscriber<*>;"
    invoke-virtual {p0}, Lio/reactivex/parallel/ParallelFlowable;->parallelism()I

    move-result v4

    .line 69
    .local v4, "p":I
    array-length v6, p1

    if-eq v6, v4, :cond_1

    .line 70
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "parallelism = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", subscribers = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, p1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 71
    .local v2, "iae":Ljava/lang/Throwable;
    move-object v0, p1

    .local v0, "arr$":[Lorg/reactivestreams/Subscriber;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v5, v0, v1

    .line 72
    .local v5, "s":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<*>;"
    invoke-static {v2, v5}, Lio/reactivex/internal/subscriptions/EmptySubscription;->error(Ljava/lang/Throwable;Lorg/reactivestreams/Subscriber;)V

    .line 71
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 74
    .end local v5    # "s":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<*>;"
    :cond_0
    const/4 v6, 0x0

    .line 76
    .end local v0    # "arr$":[Lorg/reactivestreams/Subscriber;
    .end local v1    # "i$":I
    .end local v2    # "iae":Ljava/lang/Throwable;
    .end local v3    # "len$":I
    :goto_1
    return v6

    :cond_1
    const/4 v6, 0x1

    goto :goto_1
.end method
