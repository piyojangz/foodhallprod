.class final Lio/reactivex/internal/operators/single/SingleDoFinally$DoFinallyObserver;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SingleDoFinally.java"

# interfaces
.implements Lio/reactivex/SingleObserver;
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/single/SingleDoFinally;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DoFinallyObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lio/reactivex/SingleObserver",
        "<TT;>;",
        "Lio/reactivex/disposables/Disposable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x3907ba0b13897e3dL


# instance fields
.field final actual:Lio/reactivex/SingleObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/SingleObserver",
            "<-TT;>;"
        }
    .end annotation
.end field

.field d:Lio/reactivex/disposables/Disposable;

.field final onFinally:Lio/reactivex/functions/Action;


# direct methods
.method constructor <init>(Lio/reactivex/SingleObserver;Lio/reactivex/functions/Action;)V
    .locals 0
    .param p2, "onFinally"    # Lio/reactivex/functions/Action;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/SingleObserver",
            "<-TT;>;",
            "Lio/reactivex/functions/Action;",
            ")V"
        }
    .end annotation

    .prologue
    .line 59
    .local p0, "this":Lio/reactivex/internal/operators/single/SingleDoFinally$DoFinallyObserver;, "Lio/reactivex/internal/operators/single/SingleDoFinally$DoFinallyObserver<TT;>;"
    .local p1, "actual":Lio/reactivex/SingleObserver;, "Lio/reactivex/SingleObserver<-TT;>;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 60
    iput-object p1, p0, Lio/reactivex/internal/operators/single/SingleDoFinally$DoFinallyObserver;->actual:Lio/reactivex/SingleObserver;

    .line 61
    iput-object p2, p0, Lio/reactivex/internal/operators/single/SingleDoFinally$DoFinallyObserver;->onFinally:Lio/reactivex/functions/Action;

    .line 62
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .prologue
    .line 87
    .local p0, "this":Lio/reactivex/internal/operators/single/SingleDoFinally$DoFinallyObserver;, "Lio/reactivex/internal/operators/single/SingleDoFinally$DoFinallyObserver<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/single/SingleDoFinally$DoFinallyObserver;->d:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 88
    invoke-virtual {p0}, Lio/reactivex/internal/operators/single/SingleDoFinally$DoFinallyObserver;->runFinally()V

    .line 89
    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .prologue
    .line 93
    .local p0, "this":Lio/reactivex/internal/operators/single/SingleDoFinally$DoFinallyObserver;, "Lio/reactivex/internal/operators/single/SingleDoFinally$DoFinallyObserver<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/single/SingleDoFinally$DoFinallyObserver;->d:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    return v0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 81
    .local p0, "this":Lio/reactivex/internal/operators/single/SingleDoFinally$DoFinallyObserver;, "Lio/reactivex/internal/operators/single/SingleDoFinally$DoFinallyObserver<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/single/SingleDoFinally$DoFinallyObserver;->actual:Lio/reactivex/SingleObserver;

    invoke-interface {v0, p1}, Lio/reactivex/SingleObserver;->onError(Ljava/lang/Throwable;)V

    .line 82
    invoke-virtual {p0}, Lio/reactivex/internal/operators/single/SingleDoFinally$DoFinallyObserver;->runFinally()V

    .line 83
    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 1
    .param p1, "d"    # Lio/reactivex/disposables/Disposable;

    .prologue
    .line 66
    .local p0, "this":Lio/reactivex/internal/operators/single/SingleDoFinally$DoFinallyObserver;, "Lio/reactivex/internal/operators/single/SingleDoFinally$DoFinallyObserver<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/single/SingleDoFinally$DoFinallyObserver;->d:Lio/reactivex/disposables/Disposable;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/Disposable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    iput-object p1, p0, Lio/reactivex/internal/operators/single/SingleDoFinally$DoFinallyObserver;->d:Lio/reactivex/disposables/Disposable;

    .line 69
    iget-object v0, p0, Lio/reactivex/internal/operators/single/SingleDoFinally$DoFinallyObserver;->actual:Lio/reactivex/SingleObserver;

    invoke-interface {v0, p0}, Lio/reactivex/SingleObserver;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 71
    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 75
    .local p0, "this":Lio/reactivex/internal/operators/single/SingleDoFinally$DoFinallyObserver;, "Lio/reactivex/internal/operators/single/SingleDoFinally$DoFinallyObserver<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lio/reactivex/internal/operators/single/SingleDoFinally$DoFinallyObserver;->actual:Lio/reactivex/SingleObserver;

    invoke-interface {v0, p1}, Lio/reactivex/SingleObserver;->onSuccess(Ljava/lang/Object;)V

    .line 76
    invoke-virtual {p0}, Lio/reactivex/internal/operators/single/SingleDoFinally$DoFinallyObserver;->runFinally()V

    .line 77
    return-void
.end method

.method runFinally()V
    .locals 3

    .prologue
    .line 97
    .local p0, "this":Lio/reactivex/internal/operators/single/SingleDoFinally$DoFinallyObserver;, "Lio/reactivex/internal/operators/single/SingleDoFinally$DoFinallyObserver<TT;>;"
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lio/reactivex/internal/operators/single/SingleDoFinally$DoFinallyObserver;->compareAndSet(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 99
    :try_start_0
    iget-object v1, p0, Lio/reactivex/internal/operators/single/SingleDoFinally$DoFinallyObserver;->onFinally:Lio/reactivex/functions/Action;

    invoke-interface {v1}, Lio/reactivex/functions/Action;->run()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    :cond_0
    :goto_0
    return-void

    .line 100
    :catch_0
    move-exception v0

    .line 101
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 102
    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
