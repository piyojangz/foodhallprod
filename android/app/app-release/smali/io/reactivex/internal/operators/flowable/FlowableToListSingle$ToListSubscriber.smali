.class final Lio/reactivex/internal/operators/flowable/FlowableToListSingle$ToListSubscriber;
.super Ljava/lang/Object;
.source "FlowableToListSingle.java"

# interfaces
.implements Lio/reactivex/FlowableSubscriber;
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableToListSingle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ToListSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U::",
        "Ljava/util/Collection",
        "<-TT;>;>",
        "Ljava/lang/Object;",
        "Lio/reactivex/FlowableSubscriber",
        "<TT;>;",
        "Lio/reactivex/disposables/Disposable;"
    }
.end annotation


# instance fields
.field final actual:Lio/reactivex/SingleObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/SingleObserver",
            "<-TU;>;"
        }
    .end annotation
.end field

.field s:Lorg/reactivestreams/Subscription;

.field value:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TU;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/SingleObserver;Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/SingleObserver",
            "<-TU;>;TU;)V"
        }
    .end annotation

    .prologue
    .line 74
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableToListSingle$ToListSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableToListSingle$ToListSubscriber<TT;TU;>;"
    .local p1, "actual":Lio/reactivex/SingleObserver;, "Lio/reactivex/SingleObserver<-TU;>;"
    .local p2, "collection":Ljava/util/Collection;, "TU;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableToListSingle$ToListSubscriber;->actual:Lio/reactivex/SingleObserver;

    .line 76
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/FlowableToListSingle$ToListSubscriber;->value:Ljava/util/Collection;

    .line 77
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .prologue
    .line 108
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableToListSingle$ToListSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableToListSingle$ToListSubscriber<TT;TU;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableToListSingle$ToListSubscriber;->s:Lorg/reactivestreams/Subscription;

    invoke-interface {v0}, Lorg/reactivestreams/Subscription;->cancel()V

    .line 109
    sget-object v0, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableToListSingle$ToListSubscriber;->s:Lorg/reactivestreams/Subscription;

    .line 110
    return-void
.end method

.method public isDisposed()Z
    .locals 2

    .prologue
    .line 114
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableToListSingle$ToListSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableToListSingle$ToListSubscriber<TT;TU;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableToListSingle$ToListSubscriber;->s:Lorg/reactivestreams/Subscription;

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
    .line 102
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableToListSingle$ToListSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableToListSingle$ToListSubscriber<TT;TU;>;"
    sget-object v0, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableToListSingle$ToListSubscriber;->s:Lorg/reactivestreams/Subscription;

    .line 103
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableToListSingle$ToListSubscriber;->actual:Lio/reactivex/SingleObserver;

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableToListSingle$ToListSubscriber;->value:Ljava/util/Collection;

    invoke-interface {v0, v1}, Lio/reactivex/SingleObserver;->onSuccess(Ljava/lang/Object;)V

    .line 104
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 95
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableToListSingle$ToListSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableToListSingle$ToListSubscriber<TT;TU;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableToListSingle$ToListSubscriber;->value:Ljava/util/Collection;

    .line 96
    sget-object v0, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableToListSingle$ToListSubscriber;->s:Lorg/reactivestreams/Subscription;

    .line 97
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableToListSingle$ToListSubscriber;->actual:Lio/reactivex/SingleObserver;

    invoke-interface {v0, p1}, Lio/reactivex/SingleObserver;->onError(Ljava/lang/Throwable;)V

    .line 98
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
    .line 90
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableToListSingle$ToListSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableToListSingle$ToListSubscriber<TT;TU;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableToListSingle$ToListSubscriber;->value:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 91
    return-void
.end method

.method public onSubscribe(Lorg/reactivestreams/Subscription;)V
    .locals 2
    .param p1, "s"    # Lorg/reactivestreams/Subscription;

    .prologue
    .line 81
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableToListSingle$ToListSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableToListSingle$ToListSubscriber<TT;TU;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableToListSingle$ToListSubscriber;->s:Lorg/reactivestreams/Subscription;

    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(Lorg/reactivestreams/Subscription;Lorg/reactivestreams/Subscription;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableToListSingle$ToListSubscriber;->s:Lorg/reactivestreams/Subscription;

    .line 83
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableToListSingle$ToListSubscriber;->actual:Lio/reactivex/SingleObserver;

    invoke-interface {v0, p0}, Lio/reactivex/SingleObserver;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 84
    const-wide v0, 0x7fffffffffffffffL

    invoke-interface {p1, v0, v1}, Lorg/reactivestreams/Subscription;->request(J)V

    .line 86
    :cond_0
    return-void
.end method
