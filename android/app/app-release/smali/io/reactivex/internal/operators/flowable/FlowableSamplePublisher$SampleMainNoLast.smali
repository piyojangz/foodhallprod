.class final Lio/reactivex/internal/operators/flowable/FlowableSamplePublisher$SampleMainNoLast;
.super Lio/reactivex/internal/operators/flowable/FlowableSamplePublisher$SamplePublisherSubscriber;
.source "FlowableSamplePublisher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableSamplePublisher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SampleMainNoLast"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/flowable/FlowableSamplePublisher$SamplePublisherSubscriber",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x2a0bdab9530de829L


# direct methods
.method constructor <init>(Lorg/reactivestreams/Subscriber;Lorg/reactivestreams/Publisher;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber",
            "<-TT;>;",
            "Lorg/reactivestreams/Publisher",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 179
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableSamplePublisher$SampleMainNoLast;, "Lio/reactivex/internal/operators/flowable/FlowableSamplePublisher$SampleMainNoLast<TT;>;"
    .local p1, "actual":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-TT;>;"
    .local p2, "other":Lorg/reactivestreams/Publisher;, "Lorg/reactivestreams/Publisher<*>;"
    invoke-direct {p0, p1, p2}, Lio/reactivex/internal/operators/flowable/FlowableSamplePublisher$SamplePublisherSubscriber;-><init>(Lorg/reactivestreams/Subscriber;Lorg/reactivestreams/Publisher;)V

    .line 180
    return-void
.end method


# virtual methods
.method completeMain()V
    .locals 1

    .prologue
    .line 184
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableSamplePublisher$SampleMainNoLast;, "Lio/reactivex/internal/operators/flowable/FlowableSamplePublisher$SampleMainNoLast<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableSamplePublisher$SampleMainNoLast;->actual:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0}, Lorg/reactivestreams/Subscriber;->onComplete()V

    .line 185
    return-void
.end method

.method completeOther()V
    .locals 1

    .prologue
    .line 189
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableSamplePublisher$SampleMainNoLast;, "Lio/reactivex/internal/operators/flowable/FlowableSamplePublisher$SampleMainNoLast<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableSamplePublisher$SampleMainNoLast;->actual:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0}, Lorg/reactivestreams/Subscriber;->onComplete()V

    .line 190
    return-void
.end method

.method run()V
    .locals 0

    .prologue
    .line 194
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableSamplePublisher$SampleMainNoLast;, "Lio/reactivex/internal/operators/flowable/FlowableSamplePublisher$SampleMainNoLast<TT;>;"
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableSamplePublisher$SampleMainNoLast;->emit()V

    .line 195
    return-void
.end method
