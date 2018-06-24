.class public final Lio/reactivex/internal/subscriptions/ArrayCompositeSubscription;
.super Ljava/util/concurrent/atomic/AtomicReferenceArray;
.source "ArrayCompositeSubscription.java"

# interfaces
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/atomic/AtomicReferenceArray",
        "<",
        "Lorg/reactivestreams/Subscription;",
        ">;",
        "Lio/reactivex/disposables/Disposable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x261d229f8c0b4b20L


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "capacity"    # I

    .prologue
    .line 34
    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    .line 35
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 5

    .prologue
    .line 84
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lio/reactivex/internal/subscriptions/ArrayCompositeSubscription;->get(I)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    if-eq v3, v4, :cond_1

    .line 85
    invoke-virtual {p0}, Lio/reactivex/internal/subscriptions/ArrayCompositeSubscription;->length()I

    move-result v2

    .line 86
    .local v2, "s":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 87
    invoke-virtual {p0, v0}, Lio/reactivex/internal/subscriptions/ArrayCompositeSubscription;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/reactivestreams/Subscription;

    .line 88
    .local v1, "o":Lorg/reactivestreams/Subscription;
    sget-object v3, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    if-eq v1, v3, :cond_0

    .line 89
    sget-object v3, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    invoke-virtual {p0, v0, v3}, Lio/reactivex/internal/subscriptions/ArrayCompositeSubscription;->getAndSet(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "o":Lorg/reactivestreams/Subscription;
    check-cast v1, Lorg/reactivestreams/Subscription;

    .line 90
    .restart local v1    # "o":Lorg/reactivestreams/Subscription;
    sget-object v3, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    if-eq v1, v3, :cond_0

    if-eqz v1, :cond_0

    .line 91
    invoke-interface {v1}, Lorg/reactivestreams/Subscription;->cancel()V

    .line 86
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 96
    .end local v0    # "i":I
    .end local v1    # "o":Lorg/reactivestreams/Subscription;
    .end local v2    # "s":I
    :cond_1
    return-void
.end method

.method public isDisposed()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 100
    invoke-virtual {p0, v0}, Lio/reactivex/internal/subscriptions/ArrayCompositeSubscription;->get(I)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public replaceResource(ILorg/reactivestreams/Subscription;)Lorg/reactivestreams/Subscription;
    .locals 2
    .param p1, "index"    # I
    .param p2, "resource"    # Lorg/reactivestreams/Subscription;

    .prologue
    .line 69
    :cond_0
    invoke-virtual {p0, p1}, Lio/reactivex/internal/subscriptions/ArrayCompositeSubscription;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/reactivestreams/Subscription;

    .line 70
    .local v0, "o":Lorg/reactivestreams/Subscription;
    sget-object v1, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    if-ne v0, v1, :cond_2

    .line 71
    if-eqz p2, :cond_1

    .line 72
    invoke-interface {p2}, Lorg/reactivestreams/Subscription;->cancel()V

    .line 74
    :cond_1
    const/4 v0, 0x0

    .line 77
    .end local v0    # "o":Lorg/reactivestreams/Subscription;
    :goto_0
    return-object v0

    .line 76
    .restart local v0    # "o":Lorg/reactivestreams/Subscription;
    :cond_2
    invoke-virtual {p0, p1, v0, p2}, Lio/reactivex/internal/subscriptions/ArrayCompositeSubscription;->compareAndSet(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0
.end method

.method public setResource(ILorg/reactivestreams/Subscription;)Z
    .locals 2
    .param p1, "index"    # I
    .param p2, "resource"    # Lorg/reactivestreams/Subscription;

    .prologue
    .line 45
    :cond_0
    invoke-virtual {p0, p1}, Lio/reactivex/internal/subscriptions/ArrayCompositeSubscription;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/reactivestreams/Subscription;

    .line 46
    .local v0, "o":Lorg/reactivestreams/Subscription;
    sget-object v1, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    if-ne v0, v1, :cond_2

    .line 47
    if-eqz p2, :cond_1

    .line 48
    invoke-interface {p2}, Lorg/reactivestreams/Subscription;->cancel()V

    .line 50
    :cond_1
    const/4 v1, 0x0

    .line 56
    :goto_0
    return v1

    .line 52
    :cond_2
    invoke-virtual {p0, p1, v0, p2}, Lio/reactivex/internal/subscriptions/ArrayCompositeSubscription;->compareAndSet(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 53
    if-eqz v0, :cond_3

    .line 54
    invoke-interface {v0}, Lorg/reactivestreams/Subscription;->cancel()V

    .line 56
    :cond_3
    const/4 v1, 0x1

    goto :goto_0
.end method
