.class public abstract Lio/reactivex/subscribers/DisposableSubscriber;
.super Ljava/lang/Object;
.source "DisposableSubscriber.java"

# interfaces
.implements Lio/reactivex/FlowableSubscriber;
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/FlowableSubscriber",
        "<TT;>;",
        "Lio/reactivex/disposables/Disposable;"
    }
.end annotation


# instance fields
.field final s:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lorg/reactivestreams/Subscription;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 76
    .local p0, "this":Lio/reactivex/subscribers/DisposableSubscriber;, "Lio/reactivex/subscribers/DisposableSubscriber<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lio/reactivex/subscribers/DisposableSubscriber;->s:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method protected final cancel()V
    .locals 0

    .prologue
    .line 111
    .local p0, "this":Lio/reactivex/subscribers/DisposableSubscriber;, "Lio/reactivex/subscribers/DisposableSubscriber<TT;>;"
    invoke-virtual {p0}, Lio/reactivex/subscribers/DisposableSubscriber;->dispose()V

    .line 112
    return-void
.end method

.method public final dispose()V
    .locals 1

    .prologue
    .line 121
    .local p0, "this":Lio/reactivex/subscribers/DisposableSubscriber;, "Lio/reactivex/subscribers/DisposableSubscriber<TT;>;"
    iget-object v0, p0, Lio/reactivex/subscribers/DisposableSubscriber;->s:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->cancel(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 122
    return-void
.end method

.method public final isDisposed()Z
    .locals 2

    .prologue
    .line 116
    .local p0, "this":Lio/reactivex/subscribers/DisposableSubscriber;, "Lio/reactivex/subscribers/DisposableSubscriber<TT;>;"
    iget-object v0, p0, Lio/reactivex/subscribers/DisposableSubscriber;->s:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onStart()V
    .locals 4

    .prologue
    .line 90
    .local p0, "this":Lio/reactivex/subscribers/DisposableSubscriber;, "Lio/reactivex/subscribers/DisposableSubscriber<TT;>;"
    iget-object v0, p0, Lio/reactivex/subscribers/DisposableSubscriber;->s:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/reactivestreams/Subscription;

    const-wide v2, 0x7fffffffffffffffL

    invoke-interface {v0, v2, v3}, Lorg/reactivestreams/Subscription;->request(J)V

    .line 91
    return-void
.end method

.method public final onSubscribe(Lorg/reactivestreams/Subscription;)V
    .locals 2
    .param p1, "s"    # Lorg/reactivestreams/Subscription;

    .prologue
    .line 81
    .local p0, "this":Lio/reactivex/subscribers/DisposableSubscriber;, "Lio/reactivex/subscribers/DisposableSubscriber<TT;>;"
    iget-object v0, p0, Lio/reactivex/subscribers/DisposableSubscriber;->s:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lio/reactivex/internal/util/EndConsumerHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lorg/reactivestreams/Subscription;Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {p0}, Lio/reactivex/subscribers/DisposableSubscriber;->onStart()V

    .line 84
    :cond_0
    return-void
.end method

.method protected final request(J)V
    .locals 1
    .param p1, "n"    # J

    .prologue
    .line 102
    .local p0, "this":Lio/reactivex/subscribers/DisposableSubscriber;, "Lio/reactivex/subscribers/DisposableSubscriber<TT;>;"
    iget-object v0, p0, Lio/reactivex/subscribers/DisposableSubscriber;->s:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/reactivestreams/Subscription;

    invoke-interface {v0, p1, p2}, Lorg/reactivestreams/Subscription;->request(J)V

    .line 103
    return-void
.end method
