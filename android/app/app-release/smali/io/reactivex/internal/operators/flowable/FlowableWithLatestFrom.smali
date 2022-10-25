.class public final Lio/reactivex/internal/operators/flowable/FlowableWithLatestFrom;
.super Lio/reactivex/internal/operators/flowable/AbstractFlowableWithUpstream;
.source "FlowableWithLatestFrom.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/FlowableWithLatestFrom$FlowableWithLatestSubscriber;,
        Lio/reactivex/internal/operators/flowable/FlowableWithLatestFrom$WithLatestFromSubscriber;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/flowable/AbstractFlowableWithUpstream",
        "<TT;TR;>;"
    }
.end annotation


# instance fields
.field final combiner:Lio/reactivex/functions/BiFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/BiFunction",
            "<-TT;-TU;+TR;>;"
        }
    .end annotation
.end field

.field final other:Lorg/reactivestreams/Publisher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/reactivestreams/Publisher",
            "<+TU;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/Flowable;Lio/reactivex/functions/BiFunction;Lorg/reactivestreams/Publisher;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Flowable",
            "<TT;>;",
            "Lio/reactivex/functions/BiFunction",
            "<-TT;-TU;+TR;>;",
            "Lorg/reactivestreams/Publisher",
            "<+TU;>;)V"
        }
    .end annotation

    .prologue
    .line 31
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableWithLatestFrom;, "Lio/reactivex/internal/operators/flowable/FlowableWithLatestFrom<TT;TU;TR;>;"
    .local p1, "source":Lio/reactivex/Flowable;, "Lio/reactivex/Flowable<TT;>;"
    .local p2, "combiner":Lio/reactivex/functions/BiFunction;, "Lio/reactivex/functions/BiFunction<-TT;-TU;+TR;>;"
    .local p3, "other":Lorg/reactivestreams/Publisher;, "Lorg/reactivestreams/Publisher<+TU;>;"
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/flowable/AbstractFlowableWithUpstream;-><init>(Lio/reactivex/Flowable;)V

    .line 32
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/FlowableWithLatestFrom;->combiner:Lio/reactivex/functions/BiFunction;

    .line 33
    iput-object p3, p0, Lio/reactivex/internal/operators/flowable/FlowableWithLatestFrom;->other:Lorg/reactivestreams/Publisher;

    .line 34
    return-void
.end method


# virtual methods
.method protected subscribeActual(Lorg/reactivestreams/Subscriber;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber",
            "<-TR;>;)V"
        }
    .end annotation

    .prologue
    .line 38
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableWithLatestFrom;, "Lio/reactivex/internal/operators/flowable/FlowableWithLatestFrom<TT;TU;TR;>;"
    .local p1, "s":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-TR;>;"
    new-instance v0, Lio/reactivex/subscribers/SerializedSubscriber;

    invoke-direct {v0, p1}, Lio/reactivex/subscribers/SerializedSubscriber;-><init>(Lorg/reactivestreams/Subscriber;)V

    .line 39
    .local v0, "serial":Lio/reactivex/subscribers/SerializedSubscriber;, "Lio/reactivex/subscribers/SerializedSubscriber<TR;>;"
    new-instance v1, Lio/reactivex/internal/operators/flowable/FlowableWithLatestFrom$WithLatestFromSubscriber;

    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableWithLatestFrom;->combiner:Lio/reactivex/functions/BiFunction;

    invoke-direct {v1, v0, v2}, Lio/reactivex/internal/operators/flowable/FlowableWithLatestFrom$WithLatestFromSubscriber;-><init>(Lorg/reactivestreams/Subscriber;Lio/reactivex/functions/BiFunction;)V

    .line 41
    .local v1, "wlf":Lio/reactivex/internal/operators/flowable/FlowableWithLatestFrom$WithLatestFromSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableWithLatestFrom$WithLatestFromSubscriber<TT;TU;TR;>;"
    invoke-virtual {v0, v1}, Lio/reactivex/subscribers/SerializedSubscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    .line 43
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableWithLatestFrom;->other:Lorg/reactivestreams/Publisher;

    new-instance v3, Lio/reactivex/internal/operators/flowable/FlowableWithLatestFrom$FlowableWithLatestSubscriber;

    invoke-direct {v3, p0, v1}, Lio/reactivex/internal/operators/flowable/FlowableWithLatestFrom$FlowableWithLatestSubscriber;-><init>(Lio/reactivex/internal/operators/flowable/FlowableWithLatestFrom;Lio/reactivex/internal/operators/flowable/FlowableWithLatestFrom$WithLatestFromSubscriber;)V

    invoke-interface {v2, v3}, Lorg/reactivestreams/Publisher;->subscribe(Lorg/reactivestreams/Subscriber;)V

    .line 45
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableWithLatestFrom;->source:Lio/reactivex/Flowable;

    invoke-virtual {v2, v1}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/FlowableSubscriber;)V

    .line 46
    return-void
.end method
