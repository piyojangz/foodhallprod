.class public final Lio/reactivex/internal/operators/maybe/MaybeFromCallable;
.super Lio/reactivex/Maybe;
.source "MaybeFromCallable.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/Maybe",
        "<TT;>;",
        "Ljava/util/concurrent/Callable",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final callable:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable",
            "<+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Callable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable",
            "<+TT;>;)V"
        }
    .end annotation

    .prologue
    .line 32
    .local p0, "this":Lio/reactivex/internal/operators/maybe/MaybeFromCallable;, "Lio/reactivex/internal/operators/maybe/MaybeFromCallable<TT;>;"
    .local p1, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<+TT;>;"
    invoke-direct {p0}, Lio/reactivex/Maybe;-><init>()V

    .line 33
    iput-object p1, p0, Lio/reactivex/internal/operators/maybe/MaybeFromCallable;->callable:Ljava/util/concurrent/Callable;

    .line 34
    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 1
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

    .prologue
    .line 69
    .local p0, "this":Lio/reactivex/internal/operators/maybe/MaybeFromCallable;, "Lio/reactivex/internal/operators/maybe/MaybeFromCallable<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeFromCallable;->callable:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected subscribeActual(Lio/reactivex/MaybeObserver;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/MaybeObserver",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 38
    .local p0, "this":Lio/reactivex/internal/operators/maybe/MaybeFromCallable;, "Lio/reactivex/internal/operators/maybe/MaybeFromCallable<TT;>;"
    .local p1, "observer":Lio/reactivex/MaybeObserver;, "Lio/reactivex/MaybeObserver<-TT;>;"
    invoke-static {}, Lio/reactivex/disposables/Disposables;->empty()Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 39
    .local v0, "d":Lio/reactivex/disposables/Disposable;
    invoke-interface {p1, v0}, Lio/reactivex/MaybeObserver;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 41
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v3

    if-nez v3, :cond_0

    .line 46
    :try_start_0
    iget-object v3, p0, Lio/reactivex/internal/operators/maybe/MaybeFromCallable;->callable:Ljava/util/concurrent/Callable;

    invoke-interface {v3}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 57
    .local v2, "v":Ljava/lang/Object;, "TT;"
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v3

    if-nez v3, :cond_0

    .line 58
    if-nez v2, :cond_2

    .line 59
    invoke-interface {p1}, Lio/reactivex/MaybeObserver;->onComplete()V

    .line 65
    .end local v2    # "v":Ljava/lang/Object;, "TT;"
    :cond_0
    :goto_0
    return-void

    .line 47
    :catch_0
    move-exception v1

    .line 48
    .local v1, "ex":Ljava/lang/Throwable;
    invoke-static {v1}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 49
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v3

    if-nez v3, :cond_1

    .line 50
    invoke-interface {p1, v1}, Lio/reactivex/MaybeObserver;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 52
    :cond_1
    invoke-static {v1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 61
    .end local v1    # "ex":Ljava/lang/Throwable;
    .restart local v2    # "v":Ljava/lang/Object;, "TT;"
    :cond_2
    invoke-interface {p1, v2}, Lio/reactivex/MaybeObserver;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0
.end method
