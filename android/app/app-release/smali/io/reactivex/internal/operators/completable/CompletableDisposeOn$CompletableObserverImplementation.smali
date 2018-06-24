.class final Lio/reactivex/internal/operators/completable/CompletableDisposeOn$CompletableObserverImplementation;
.super Ljava/lang/Object;
.source "CompletableDisposeOn.java"

# interfaces
.implements Lio/reactivex/CompletableObserver;
.implements Lio/reactivex/disposables/Disposable;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/completable/CompletableDisposeOn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CompletableObserverImplementation"
.end annotation


# instance fields
.field d:Lio/reactivex/disposables/Disposable;

.field volatile disposed:Z

.field final s:Lio/reactivex/CompletableObserver;

.field final scheduler:Lio/reactivex/Scheduler;


# direct methods
.method constructor <init>(Lio/reactivex/CompletableObserver;Lio/reactivex/Scheduler;)V
    .locals 0
    .param p1, "s"    # Lio/reactivex/CompletableObserver;
    .param p2, "scheduler"    # Lio/reactivex/Scheduler;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lio/reactivex/internal/operators/completable/CompletableDisposeOn$CompletableObserverImplementation;->s:Lio/reactivex/CompletableObserver;

    .line 48
    iput-object p2, p0, Lio/reactivex/internal/operators/completable/CompletableDisposeOn$CompletableObserverImplementation;->scheduler:Lio/reactivex/Scheduler;

    .line 49
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/completable/CompletableDisposeOn$CompletableObserverImplementation;->disposed:Z

    .line 80
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/CompletableDisposeOn$CompletableObserverImplementation;->scheduler:Lio/reactivex/Scheduler;

    invoke-virtual {v0, p0}, Lio/reactivex/Scheduler;->scheduleDirect(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    .line 81
    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .prologue
    .line 85
    iget-boolean v0, p0, Lio/reactivex/internal/operators/completable/CompletableDisposeOn$CompletableObserverImplementation;->disposed:Z

    return v0
.end method

.method public onComplete()V
    .locals 1

    .prologue
    .line 53
    iget-boolean v0, p0, Lio/reactivex/internal/operators/completable/CompletableDisposeOn$CompletableObserverImplementation;->disposed:Z

    if-eqz v0, :cond_0

    .line 57
    :goto_0
    return-void

    .line 56
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/CompletableDisposeOn$CompletableObserverImplementation;->s:Lio/reactivex/CompletableObserver;

    invoke-interface {v0}, Lio/reactivex/CompletableObserver;->onComplete()V

    goto :goto_0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 61
    iget-boolean v0, p0, Lio/reactivex/internal/operators/completable/CompletableDisposeOn$CompletableObserverImplementation;->disposed:Z

    if-eqz v0, :cond_0

    .line 62
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    .line 66
    :goto_0
    return-void

    .line 65
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/CompletableDisposeOn$CompletableObserverImplementation;->s:Lio/reactivex/CompletableObserver;

    invoke-interface {v0, p1}, Lio/reactivex/CompletableObserver;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 1
    .param p1, "d"    # Lio/reactivex/disposables/Disposable;

    .prologue
    .line 70
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/CompletableDisposeOn$CompletableObserverImplementation;->d:Lio/reactivex/disposables/Disposable;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/Disposable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    iput-object p1, p0, Lio/reactivex/internal/operators/completable/CompletableDisposeOn$CompletableObserverImplementation;->d:Lio/reactivex/disposables/Disposable;

    .line 73
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/CompletableDisposeOn$CompletableObserverImplementation;->s:Lio/reactivex/CompletableObserver;

    invoke-interface {v0, p0}, Lio/reactivex/CompletableObserver;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 75
    :cond_0
    return-void
.end method

.method public run()V
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/CompletableDisposeOn$CompletableObserverImplementation;->d:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 91
    sget-object v0, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    iput-object v0, p0, Lio/reactivex/internal/operators/completable/CompletableDisposeOn$CompletableObserverImplementation;->d:Lio/reactivex/disposables/Disposable;

    .line 92
    return-void
.end method
