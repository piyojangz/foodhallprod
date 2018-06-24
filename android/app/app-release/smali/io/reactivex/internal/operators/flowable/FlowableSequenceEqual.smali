.class public final Lio/reactivex/internal/operators/flowable/FlowableSequenceEqual;
.super Lio/reactivex/Flowable;
.source "FlowableSequenceEqual.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/FlowableSequenceEqual$EqualSubscriber;,
        Lio/reactivex/internal/operators/flowable/FlowableSequenceEqual$EqualCoordinator;,
        Lio/reactivex/internal/operators/flowable/FlowableSequenceEqual$EqualCoordinatorHelper;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/Flowable",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final comparer:Lio/reactivex/functions/BiPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/BiPredicate",
            "<-TT;-TT;>;"
        }
    .end annotation
.end field

.field final first:Lorg/reactivestreams/Publisher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/reactivestreams/Publisher",
            "<+TT;>;"
        }
    .end annotation
.end field

.field final prefetch:I

.field final second:Lorg/reactivestreams/Publisher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/reactivestreams/Publisher",
            "<+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/reactivestreams/Publisher;Lorg/reactivestreams/Publisher;Lio/reactivex/functions/BiPredicate;I)V
    .locals 0
    .param p4, "prefetch"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Publisher",
            "<+TT;>;",
            "Lorg/reactivestreams/Publisher",
            "<+TT;>;",
            "Lio/reactivex/functions/BiPredicate",
            "<-TT;-TT;>;I)V"
        }
    .end annotation

    .prologue
    .line 36
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableSequenceEqual;, "Lio/reactivex/internal/operators/flowable/FlowableSequenceEqual<TT;>;"
    .local p1, "first":Lorg/reactivestreams/Publisher;, "Lorg/reactivestreams/Publisher<+TT;>;"
    .local p2, "second":Lorg/reactivestreams/Publisher;, "Lorg/reactivestreams/Publisher<+TT;>;"
    .local p3, "comparer":Lio/reactivex/functions/BiPredicate;, "Lio/reactivex/functions/BiPredicate<-TT;-TT;>;"
    invoke-direct {p0}, Lio/reactivex/Flowable;-><init>()V

    .line 37
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableSequenceEqual;->first:Lorg/reactivestreams/Publisher;

    .line 38
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/FlowableSequenceEqual;->second:Lorg/reactivestreams/Publisher;

    .line 39
    iput-object p3, p0, Lio/reactivex/internal/operators/flowable/FlowableSequenceEqual;->comparer:Lio/reactivex/functions/BiPredicate;

    .line 40
    iput p4, p0, Lio/reactivex/internal/operators/flowable/FlowableSequenceEqual;->prefetch:I

    .line 41
    return-void
.end method


# virtual methods
.method public subscribeActual(Lorg/reactivestreams/Subscriber;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber",
            "<-",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 45
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableSequenceEqual;, "Lio/reactivex/internal/operators/flowable/FlowableSequenceEqual<TT;>;"
    .local p1, "s":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-Ljava/lang/Boolean;>;"
    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableSequenceEqual$EqualCoordinator;

    iget v1, p0, Lio/reactivex/internal/operators/flowable/FlowableSequenceEqual;->prefetch:I

    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableSequenceEqual;->comparer:Lio/reactivex/functions/BiPredicate;

    invoke-direct {v0, p1, v1, v2}, Lio/reactivex/internal/operators/flowable/FlowableSequenceEqual$EqualCoordinator;-><init>(Lorg/reactivestreams/Subscriber;ILio/reactivex/functions/BiPredicate;)V

    .line 46
    .local v0, "parent":Lio/reactivex/internal/operators/flowable/FlowableSequenceEqual$EqualCoordinator;, "Lio/reactivex/internal/operators/flowable/FlowableSequenceEqual$EqualCoordinator<TT;>;"
    invoke-interface {p1, v0}, Lorg/reactivestreams/Subscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    .line 47
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableSequenceEqual;->first:Lorg/reactivestreams/Publisher;

    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableSequenceEqual;->second:Lorg/reactivestreams/Publisher;

    invoke-virtual {v0, v1, v2}, Lio/reactivex/internal/operators/flowable/FlowableSequenceEqual$EqualCoordinator;->subscribe(Lorg/reactivestreams/Publisher;Lorg/reactivestreams/Publisher;)V

    .line 48
    return-void
.end method
