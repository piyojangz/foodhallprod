.class final Lio/reactivex/internal/operators/flowable/FlowableLastMaybe$LastSubscriber;
.super Ljava/lang/Object;
.source "FlowableLastMaybe.java"

# interfaces
.implements Lio/reactivex/FlowableSubscriber;
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableLastMaybe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "LastSubscriber"
.end annotation

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
.field final actual:Lio/reactivex/MaybeObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/MaybeObserver",
            "<-TT;>;"
        }
    .end annotation
.end field

.field item:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field s:Lorg/reactivestreams/Subscription;


# direct methods
.method constructor <init>(Lio/reactivex/MaybeObserver;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/MaybeObserver",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 50
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableLastMaybe$LastSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableLastMaybe$LastSubscriber<TT;>;"
    .local p1, "actual":Lio/reactivex/MaybeObserver;, "Lio/reactivex/MaybeObserver<-TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableLastMaybe$LastSubscriber;->actual:Lio/reactivex/MaybeObserver;

    .line 52
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .prologue
    .line 56
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableLastMaybe$LastSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableLastMaybe$LastSubscriber<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableLastMaybe$LastSubscriber;->s:Lorg/reactivestreams/Subscription;

    invoke-interface {v0}, Lorg/reactivestreams/Subscription;->cancel()V

    .line 57
    sget-object v0, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableLastMaybe$LastSubscriber;->s:Lorg/reactivestreams/Subscription;

    .line 58
    return-void
.end method

.method public isDisposed()Z
    .locals 2

    .prologue
    .line 62
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableLastMaybe$LastSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableLastMaybe$LastSubscriber<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableLastMaybe$LastSubscriber;->s:Lorg/reactivestreams/Subscription;

    sget-object v1, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onComplete()V
    .locals 2

    .prologue
    .line 90
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableLastMaybe$LastSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableLastMaybe$LastSubscriber<TT;>;"
    sget-object v1, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    iput-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableLastMaybe$LastSubscriber;->s:Lorg/reactivestreams/Subscription;

    .line 91
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableLastMaybe$LastSubscriber;->item:Ljava/lang/Object;

    .line 92
    .local v0, "v":Ljava/lang/Object;, "TT;"
    if-eqz v0, :cond_0

    .line 93
    const/4 v1, 0x0

    iput-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableLastMaybe$LastSubscriber;->item:Ljava/lang/Object;

    .line 94
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableLastMaybe$LastSubscriber;->actual:Lio/reactivex/MaybeObserver;

    invoke-interface {v1, v0}, Lio/reactivex/MaybeObserver;->onSuccess(Ljava/lang/Object;)V

    .line 98
    :goto_0
    return-void

    .line 96
    :cond_0
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableLastMaybe$LastSubscriber;->actual:Lio/reactivex/MaybeObserver;

    invoke-interface {v1}, Lio/reactivex/MaybeObserver;->onComplete()V

    goto :goto_0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 83
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableLastMaybe$LastSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableLastMaybe$LastSubscriber<TT;>;"
    sget-object v0, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableLastMaybe$LastSubscriber;->s:Lorg/reactivestreams/Subscription;

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableLastMaybe$LastSubscriber;->item:Ljava/lang/Object;

    .line 85
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableLastMaybe$LastSubscriber;->actual:Lio/reactivex/MaybeObserver;

    invoke-interface {v0, p1}, Lio/reactivex/MaybeObserver;->onError(Ljava/lang/Throwable;)V

    .line 86
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 78
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableLastMaybe$LastSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableLastMaybe$LastSubscriber<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableLastMaybe$LastSubscriber;->item:Ljava/lang/Object;

    .line 79
    return-void
.end method

.method public onSubscribe(Lorg/reactivestreams/Subscription;)V
    .locals 2
    .param p1, "s"    # Lorg/reactivestreams/Subscription;

    .prologue
    .line 67
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableLastMaybe$LastSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableLastMaybe$LastSubscriber<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableLastMaybe$LastSubscriber;->s:Lorg/reactivestreams/Subscription;

    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(Lorg/reactivestreams/Subscription;Lorg/reactivestreams/Subscription;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableLastMaybe$LastSubscriber;->s:Lorg/reactivestreams/Subscription;

    .line 70
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableLastMaybe$LastSubscriber;->actual:Lio/reactivex/MaybeObserver;

    invoke-interface {v0, p0}, Lio/reactivex/MaybeObserver;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 72
    const-wide v0, 0x7fffffffffffffffL

    invoke-interface {p1, v0, v1}, Lorg/reactivestreams/Subscription;->request(J)V

    .line 74
    :cond_0
    return-void
.end method
