.class final Lio/reactivex/internal/operators/maybe/MaybeToObservable$MaybeToFlowableSubscriber;
.super Lio/reactivex/internal/observers/DeferredScalarDisposable;
.source "MaybeToObservable.java"

# interfaces
.implements Lio/reactivex/MaybeObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/maybe/MaybeToObservable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MaybeToFlowableSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/observers/DeferredScalarDisposable",
        "<TT;>;",
        "Lio/reactivex/MaybeObserver",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x6984808a6f073b2aL


# instance fields
.field d:Lio/reactivex/disposables/Disposable;


# direct methods
.method constructor <init>(Lio/reactivex/Observer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 54
    .local p0, "this":Lio/reactivex/internal/operators/maybe/MaybeToObservable$MaybeToFlowableSubscriber;, "Lio/reactivex/internal/operators/maybe/MaybeToObservable$MaybeToFlowableSubscriber<TT;>;"
    .local p1, "actual":Lio/reactivex/Observer;, "Lio/reactivex/Observer<-TT;>;"
    invoke-direct {p0, p1}, Lio/reactivex/internal/observers/DeferredScalarDisposable;-><init>(Lio/reactivex/Observer;)V

    .line 55
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .prologue
    .line 83
    .local p0, "this":Lio/reactivex/internal/operators/maybe/MaybeToObservable$MaybeToFlowableSubscriber;, "Lio/reactivex/internal/operators/maybe/MaybeToObservable$MaybeToFlowableSubscriber<TT;>;"
    invoke-super {p0}, Lio/reactivex/internal/observers/DeferredScalarDisposable;->dispose()V

    .line 84
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeToObservable$MaybeToFlowableSubscriber;->d:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 85
    return-void
.end method

.method public onComplete()V
    .locals 0

    .prologue
    .line 78
    .local p0, "this":Lio/reactivex/internal/operators/maybe/MaybeToObservable$MaybeToFlowableSubscriber;, "Lio/reactivex/internal/operators/maybe/MaybeToObservable$MaybeToFlowableSubscriber<TT;>;"
    invoke-virtual {p0}, Lio/reactivex/internal/operators/maybe/MaybeToObservable$MaybeToFlowableSubscriber;->complete()V

    .line 79
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 73
    .local p0, "this":Lio/reactivex/internal/operators/maybe/MaybeToObservable$MaybeToFlowableSubscriber;, "Lio/reactivex/internal/operators/maybe/MaybeToObservable$MaybeToFlowableSubscriber<TT;>;"
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/maybe/MaybeToObservable$MaybeToFlowableSubscriber;->error(Ljava/lang/Throwable;)V

    .line 74
    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 1
    .param p1, "d"    # Lio/reactivex/disposables/Disposable;

    .prologue
    .line 59
    .local p0, "this":Lio/reactivex/internal/operators/maybe/MaybeToObservable$MaybeToFlowableSubscriber;, "Lio/reactivex/internal/operators/maybe/MaybeToObservable$MaybeToFlowableSubscriber<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeToObservable$MaybeToFlowableSubscriber;->d:Lio/reactivex/disposables/Disposable;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/Disposable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    iput-object p1, p0, Lio/reactivex/internal/operators/maybe/MaybeToObservable$MaybeToFlowableSubscriber;->d:Lio/reactivex/disposables/Disposable;

    .line 62
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeToObservable$MaybeToFlowableSubscriber;->actual:Lio/reactivex/Observer;

    invoke-interface {v0, p0}, Lio/reactivex/Observer;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 64
    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 68
    .local p0, "this":Lio/reactivex/internal/operators/maybe/MaybeToObservable$MaybeToFlowableSubscriber;, "Lio/reactivex/internal/operators/maybe/MaybeToObservable$MaybeToFlowableSubscriber<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/maybe/MaybeToObservable$MaybeToFlowableSubscriber;->complete(Ljava/lang/Object;)V

    .line 69
    return-void
.end method
