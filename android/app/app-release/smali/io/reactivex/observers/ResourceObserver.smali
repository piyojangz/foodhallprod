.class public abstract Lio/reactivex/observers/ResourceObserver;
.super Ljava/lang/Object;
.source "ResourceObserver.java"

# interfaces
.implements Lio/reactivex/Observer;
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/Observer",
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
    .line 83
    .local p0, "this":Lio/reactivex/observers/ResourceObserver;, "Lio/reactivex/observers/ResourceObserver<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lio/reactivex/observers/ResourceObserver;->s:Ljava/util/concurrent/atomic/AtomicReference;

    .line 88
    new-instance v0, Lio/reactivex/internal/disposables/ListCompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/internal/disposables/ListCompositeDisposable;-><init>()V

    iput-object v0, p0, Lio/reactivex/observers/ResourceObserver;->resources:Lio/reactivex/internal/disposables/ListCompositeDisposable;

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
    .line 98
    .local p0, "this":Lio/reactivex/observers/ResourceObserver;, "Lio/reactivex/observers/ResourceObserver<TT;>;"
    const-string v0, "resource is null"

    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 99
    iget-object v0, p0, Lio/reactivex/observers/ResourceObserver;->resources:Lio/reactivex/internal/disposables/ListCompositeDisposable;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/disposables/ListCompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    .line 100
    return-void
.end method

.method public final dispose()V
    .locals 1

    .prologue
    .line 127
    .local p0, "this":Lio/reactivex/observers/ResourceObserver;, "Lio/reactivex/observers/ResourceObserver<TT;>;"
    iget-object v0, p0, Lio/reactivex/observers/ResourceObserver;->s:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lio/reactivex/observers/ResourceObserver;->resources:Lio/reactivex/internal/disposables/ListCompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/internal/disposables/ListCompositeDisposable;->dispose()V

    .line 130
    :cond_0
    return-void
.end method

.method public final isDisposed()Z
    .locals 1

    .prologue
    .line 138
    .local p0, "this":Lio/reactivex/observers/ResourceObserver;, "Lio/reactivex/observers/ResourceObserver<TT;>;"
    iget-object v0, p0, Lio/reactivex/observers/ResourceObserver;->s:Ljava/util/concurrent/atomic/AtomicReference;

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
    .line 116
    .local p0, "this":Lio/reactivex/observers/ResourceObserver;, "Lio/reactivex/observers/ResourceObserver<TT;>;"
    return-void
.end method

.method public final onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 2
    .param p1, "s"    # Lio/reactivex/disposables/Disposable;

    .prologue
    .line 104
    .local p0, "this":Lio/reactivex/observers/ResourceObserver;, "Lio/reactivex/observers/ResourceObserver<TT;>;"
    iget-object v0, p0, Lio/reactivex/observers/ResourceObserver;->s:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lio/reactivex/internal/util/EndConsumerHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/disposables/Disposable;Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    invoke-virtual {p0}, Lio/reactivex/observers/ResourceObserver;->onStart()V

    .line 107
    :cond_0
    return-void
.end method
