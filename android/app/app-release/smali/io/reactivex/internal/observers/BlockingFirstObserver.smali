.class public final Lio/reactivex/internal/observers/BlockingFirstObserver;
.super Lio/reactivex/internal/observers/BlockingBaseObserver;
.source "BlockingFirstObserver.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/observers/BlockingBaseObserver",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    .local p0, "this":Lio/reactivex/internal/observers/BlockingFirstObserver;, "Lio/reactivex/internal/observers/BlockingFirstObserver<TT;>;"
    invoke-direct {p0}, Lio/reactivex/internal/observers/BlockingBaseObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 34
    .local p0, "this":Lio/reactivex/internal/observers/BlockingFirstObserver;, "Lio/reactivex/internal/observers/BlockingFirstObserver<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/observers/BlockingFirstObserver;->value:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 35
    iput-object p1, p0, Lio/reactivex/internal/observers/BlockingFirstObserver;->error:Ljava/lang/Throwable;

    .line 37
    :cond_0
    invoke-virtual {p0}, Lio/reactivex/internal/observers/BlockingFirstObserver;->countDown()V

    .line 38
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 25
    .local p0, "this":Lio/reactivex/internal/observers/BlockingFirstObserver;, "Lio/reactivex/internal/observers/BlockingFirstObserver<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lio/reactivex/internal/observers/BlockingFirstObserver;->value:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 26
    iput-object p1, p0, Lio/reactivex/internal/observers/BlockingFirstObserver;->value:Ljava/lang/Object;

    .line 27
    iget-object v0, p0, Lio/reactivex/internal/observers/BlockingFirstObserver;->d:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 28
    invoke-virtual {p0}, Lio/reactivex/internal/observers/BlockingFirstObserver;->countDown()V

    .line 30
    :cond_0
    return-void
.end method
