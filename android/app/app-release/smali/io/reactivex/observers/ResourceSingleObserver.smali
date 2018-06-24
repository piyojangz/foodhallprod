.class public abstract Lio/reactivex/observers/ResourceSingleObserver;
.super Ljava/lang/Object;
.source "ResourceSingleObserver.java"

# interfaces
.implements Lio/reactivex/SingleObserver;
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/SingleObserver",
        "<TT;>;",
        "Lio/reactivex/disposables/Disposable;"
    }
.end annotation


# instance fields
.field private final resources:Lio/reactivex/internal/disposables/ListCompositeDisposable;

.field private final s:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lio/reactivex/disposables/Disposable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 78
    .local p0, "this":Lio/reactivex/observers/ResourceSingleObserver;, "Lio/reactivex/observers/ResourceSingleObserver<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lio/reactivex/observers/ResourceSingleObserver;->s:Ljava/util/concurrent/atomic/AtomicReference;

    .line 83
    new-instance v0, Lio/reactivex/internal/disposables/ListCompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/internal/disposables/ListCompositeDisposable;-><init>()V

    iput-object v0, p0, Lio/reactivex/observers/ResourceSingleObserver;->resources:Lio/reactivex/internal/disposables/ListCompositeDisposable;

    return-void
.end method


# virtual methods
.method public final add(Lio/reactivex/disposables/Disposable;)V
    .locals 1
    .param p1, "resource"    # Lio/reactivex/disposables/Disposable;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param

    .prologue
    .line 93
    .local p0, "this":Lio/reactivex/observers/ResourceSingleObserver;, "Lio/reactivex/observers/ResourceSingleObserver<TT;>;"
    const-string v0, "resource is null"

    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 94
    iget-object v0, p0, Lio/reactivex/observers/ResourceSingleObserver;->resources:Lio/reactivex/internal/disposables/ListCompositeDisposable;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/disposables/ListCompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    .line 95
    return-void
.end method

.method public final dispose()V
    .locals 1

    .prologue
    .line 122
    .local p0, "this":Lio/reactivex/observers/ResourceSingleObserver;, "Lio/reactivex/observers/ResourceSingleObserver<TT;>;"
    iget-object v0, p0, Lio/reactivex/observers/ResourceSingleObserver;->s:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lio/reactivex/observers/ResourceSingleObserver;->resources:Lio/reactivex/internal/disposables/ListCompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/internal/disposables/ListCompositeDisposable;->dispose()V

    .line 125
    :cond_0
    return-void
.end method

.method public final isDisposed()Z
    .locals 1

    .prologue
    .line 133
    .local p0, "this":Lio/reactivex/observers/ResourceSingleObserver;, "Lio/reactivex/observers/ResourceSingleObserver<TT;>;"
    iget-object v0, p0, Lio/reactivex/observers/ResourceSingleObserver;->s:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/disposables/Disposable;

    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->isDisposed(Lio/reactivex/disposables/Disposable;)Z

    move-result v0

    return v0
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 111
    .local p0, "this":Lio/reactivex/observers/ResourceSingleObserver;, "Lio/reactivex/observers/ResourceSingleObserver<TT;>;"
    return-void
.end method

.method public final onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 2
    .param p1, "s"    # Lio/reactivex/disposables/Disposable;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param

    .prologue
    .line 99
    .local p0, "this":Lio/reactivex/observers/ResourceSingleObserver;, "Lio/reactivex/observers/ResourceSingleObserver<TT;>;"
    iget-object v0, p0, Lio/reactivex/observers/ResourceSingleObserver;->s:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lio/reactivex/internal/util/EndConsumerHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/disposables/Disposable;Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    invoke-virtual {p0}, Lio/reactivex/observers/ResourceSingleObserver;->onStart()V

    .line 102
    :cond_0
    return-void
.end method
