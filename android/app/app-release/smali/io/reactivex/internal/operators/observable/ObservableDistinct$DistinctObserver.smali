.class final Lio/reactivex/internal/operators/observable/ObservableDistinct$DistinctObserver;
.super Lio/reactivex/internal/observers/BasicFuseableObserver;
.source "ObservableDistinct.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableDistinct;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DistinctObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "K:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/observers/BasicFuseableObserver",
        "<TT;TT;>;"
    }
.end annotation


# instance fields
.field final collection:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<-TK;>;"
        }
    .end annotation
.end field

.field final keySelector:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function",
            "<-TT;TK;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/Observer;Lio/reactivex/functions/Function;Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer",
            "<-TT;>;",
            "Lio/reactivex/functions/Function",
            "<-TT;TK;>;",
            "Ljava/util/Collection",
            "<-TK;>;)V"
        }
    .end annotation

    .prologue
    .line 62
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableDistinct$DistinctObserver;, "Lio/reactivex/internal/operators/observable/ObservableDistinct$DistinctObserver<TT;TK;>;"
    .local p1, "actual":Lio/reactivex/Observer;, "Lio/reactivex/Observer<-TT;>;"
    .local p2, "keySelector":Lio/reactivex/functions/Function;, "Lio/reactivex/functions/Function<-TT;TK;>;"
    .local p3, "collection":Ljava/util/Collection;, "Ljava/util/Collection<-TK;>;"
    invoke-direct {p0, p1}, Lio/reactivex/internal/observers/BasicFuseableObserver;-><init>(Lio/reactivex/Observer;)V

    .line 63
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableDistinct$DistinctObserver;->keySelector:Lio/reactivex/functions/Function;

    .line 64
    iput-object p3, p0, Lio/reactivex/internal/operators/observable/ObservableDistinct$DistinctObserver;->collection:Ljava/util/Collection;

    .line 65
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 131
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableDistinct$DistinctObserver;, "Lio/reactivex/internal/operators/observable/ObservableDistinct$DistinctObserver<TT;TK;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableDistinct$DistinctObserver;->collection:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 132
    invoke-super {p0}, Lio/reactivex/internal/observers/BasicFuseableObserver;->clear()V

    .line 133
    return-void
.end method

.method public onComplete()V
    .locals 1

    .prologue
    .line 105
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableDistinct$DistinctObserver;, "Lio/reactivex/internal/operators/observable/ObservableDistinct$DistinctObserver<TT;TK;>;"
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableDistinct$DistinctObserver;->done:Z

    if-nez v0, :cond_0

    .line 106
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableDistinct$DistinctObserver;->done:Z

    .line 107
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableDistinct$DistinctObserver;->collection:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 108
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableDistinct$DistinctObserver;->actual:Lio/reactivex/Observer;

    invoke-interface {v0}, Lio/reactivex/Observer;->onComplete()V

    .line 110
    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 94
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableDistinct$DistinctObserver;, "Lio/reactivex/internal/operators/observable/ObservableDistinct$DistinctObserver<TT;TK;>;"
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableDistinct$DistinctObserver;->done:Z

    if-eqz v0, :cond_0

    .line 95
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    .line 101
    :goto_0
    return-void

    .line 97
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableDistinct$DistinctObserver;->done:Z

    .line 98
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableDistinct$DistinctObserver;->collection:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 99
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableDistinct$DistinctObserver;->actual:Lio/reactivex/Observer;

    invoke-interface {v0, p1}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

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
    .line 69
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableDistinct$DistinctObserver;, "Lio/reactivex/internal/operators/observable/ObservableDistinct$DistinctObserver<TT;TK;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    iget-boolean v3, p0, Lio/reactivex/internal/operators/observable/ObservableDistinct$DistinctObserver;->done:Z

    if-eqz v3, :cond_1

    .line 90
    :cond_0
    :goto_0
    return-void

    .line 72
    :cond_1
    iget v3, p0, Lio/reactivex/internal/operators/observable/ObservableDistinct$DistinctObserver;->sourceMode:I

    if-nez v3, :cond_2

    .line 77
    :try_start_0
    iget-object v3, p0, Lio/reactivex/internal/operators/observable/ObservableDistinct$DistinctObserver;->keySelector:Lio/reactivex/functions/Function;

    invoke-interface {v3, p1}, Lio/reactivex/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "The keySelector returned a null key"

    invoke-static {v3, v4}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 78
    .local v2, "key":Ljava/lang/Object;, "TK;"
    iget-object v3, p0, Lio/reactivex/internal/operators/observable/ObservableDistinct$DistinctObserver;->collection:Ljava/util/Collection;

    invoke-interface {v3, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 84
    .local v0, "b":Z
    if-eqz v0, :cond_0

    .line 85
    iget-object v3, p0, Lio/reactivex/internal/operators/observable/ObservableDistinct$DistinctObserver;->actual:Lio/reactivex/Observer;

    invoke-interface {v3, p1}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    .line 79
    .end local v0    # "b":Z
    .end local v2    # "key":Ljava/lang/Object;, "TK;"
    :catch_0
    move-exception v1

    .line 80
    .local v1, "ex":Ljava/lang/Throwable;
    invoke-virtual {p0, v1}, Lio/reactivex/internal/operators/observable/ObservableDistinct$DistinctObserver;->fail(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 88
    .end local v1    # "ex":Ljava/lang/Throwable;
    :cond_2
    iget-object v3, p0, Lio/reactivex/internal/operators/observable/ObservableDistinct$DistinctObserver;->actual:Lio/reactivex/Observer;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public poll()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
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
    .line 121
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableDistinct$DistinctObserver;, "Lio/reactivex/internal/operators/observable/ObservableDistinct$DistinctObserver<TT;TK;>;"
    :cond_0
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableDistinct$DistinctObserver;->qs:Lio/reactivex/internal/fuseable/QueueDisposable;

    invoke-interface {v1}, Lio/reactivex/internal/fuseable/QueueDisposable;->poll()Ljava/lang/Object;

    move-result-object v0

    .line 123
    .local v0, "v":Ljava/lang/Object;, "TT;"
    if-eqz v0, :cond_1

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableDistinct$DistinctObserver;->collection:Ljava/util/Collection;

    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableDistinct$DistinctObserver;->keySelector:Lio/reactivex/functions/Function;

    invoke-interface {v2, v0}, Lio/reactivex/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "The keySelector returned a null key"

    invoke-static {v2, v3}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 124
    :cond_1
    return-object v0
.end method

.method public requestFusion(I)I
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 114
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableDistinct$DistinctObserver;, "Lio/reactivex/internal/operators/observable/ObservableDistinct$DistinctObserver<TT;TK;>;"
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/observable/ObservableDistinct$DistinctObserver;->transitiveBoundaryFusion(I)I

    move-result v0

    return v0
.end method
