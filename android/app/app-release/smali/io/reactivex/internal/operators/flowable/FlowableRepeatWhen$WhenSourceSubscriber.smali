.class abstract Lio/reactivex/internal/operators/flowable/FlowableRepeatWhen$WhenSourceSubscriber;
.super Lio/reactivex/internal/subscriptions/SubscriptionArbiter;
.source "FlowableRepeatWhen.java"

# interfaces
.implements Lio/reactivex/FlowableSubscriber;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableRepeatWhen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "WhenSourceSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/subscriptions/SubscriptionArbiter;",
        "Lio/reactivex/FlowableSubscriber",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x4dc79ef2e0d16b40L


# instance fields
.field protected final actual:Lorg/reactivestreams/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/reactivestreams/Subscriber",
            "<-TT;>;"
        }
    .end annotation
.end field

.field protected final processor:Lio/reactivex/processors/FlowableProcessor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/processors/FlowableProcessor",
            "<TU;>;"
        }
    .end annotation
.end field

.field private produced:J

.field protected final receiver:Lorg/reactivestreams/Subscription;


# direct methods
.method constructor <init>(Lorg/reactivestreams/Subscriber;Lio/reactivex/processors/FlowableProcessor;Lorg/reactivestreams/Subscription;)V
    .locals 0
    .param p3, "receiver"    # Lorg/reactivestreams/Subscription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber",
            "<-TT;>;",
            "Lio/reactivex/processors/FlowableProcessor",
            "<TU;>;",
            "Lorg/reactivestreams/Subscription;",
            ")V"
        }
    .end annotation

    .prologue
    .line 146
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableRepeatWhen$WhenSourceSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableRepeatWhen$WhenSourceSubscriber<TT;TU;>;"
    .local p1, "actual":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-TT;>;"
    .local p2, "processor":Lio/reactivex/processors/FlowableProcessor;, "Lio/reactivex/processors/FlowableProcessor<TU;>;"
    invoke-direct {p0}, Lio/reactivex/internal/subscriptions/SubscriptionArbiter;-><init>()V

    .line 147
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableRepeatWhen$WhenSourceSubscriber;->actual:Lorg/reactivestreams/Subscriber;

    .line 148
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/FlowableRepeatWhen$WhenSourceSubscriber;->processor:Lio/reactivex/processors/FlowableProcessor;

    .line 149
    iput-object p3, p0, Lio/reactivex/internal/operators/flowable/FlowableRepeatWhen$WhenSourceSubscriber;->receiver:Lorg/reactivestreams/Subscription;

    .line 150
    return-void
.end method


# virtual methods
.method protected final again(Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableRepeatWhen$WhenSourceSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableRepeatWhen$WhenSourceSubscriber<TT;TU;>;"
    .local p1, "signal":Ljava/lang/Object;, "TU;"
    const-wide/16 v4, 0x0

    .line 164
    iget-wide v0, p0, Lio/reactivex/internal/operators/flowable/FlowableRepeatWhen$WhenSourceSubscriber;->produced:J

    .line 165
    .local v0, "p":J
    cmp-long v2, v0, v4

    if-eqz v2, :cond_0

    .line 166
    iput-wide v4, p0, Lio/reactivex/internal/operators/flowable/FlowableRepeatWhen$WhenSourceSubscriber;->produced:J

    .line 167
    invoke-virtual {p0, v0, v1}, Lio/reactivex/internal/operators/flowable/FlowableRepeatWhen$WhenSourceSubscriber;->produced(J)V

    .line 169
    :cond_0
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableRepeatWhen$WhenSourceSubscriber;->receiver:Lorg/reactivestreams/Subscription;

    const-wide/16 v4, 0x1

    invoke-interface {v2, v4, v5}, Lorg/reactivestreams/Subscription;->request(J)V

    .line 170
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableRepeatWhen$WhenSourceSubscriber;->processor:Lio/reactivex/processors/FlowableProcessor;

    invoke-virtual {v2, p1}, Lio/reactivex/processors/FlowableProcessor;->onNext(Ljava/lang/Object;)V

    .line 171
    return-void
.end method

.method public final cancel()V
    .locals 1

    .prologue
    .line 175
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableRepeatWhen$WhenSourceSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableRepeatWhen$WhenSourceSubscriber<TT;TU;>;"
    invoke-super {p0}, Lio/reactivex/internal/subscriptions/SubscriptionArbiter;->cancel()V

    .line 176
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableRepeatWhen$WhenSourceSubscriber;->receiver:Lorg/reactivestreams/Subscription;

    invoke-interface {v0}, Lorg/reactivestreams/Subscription;->cancel()V

    .line 177
    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 159
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableRepeatWhen$WhenSourceSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableRepeatWhen$WhenSourceSubscriber<TT;TU;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-wide v0, p0, Lio/reactivex/internal/operators/flowable/FlowableRepeatWhen$WhenSourceSubscriber;->produced:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lio/reactivex/internal/operators/flowable/FlowableRepeatWhen$WhenSourceSubscriber;->produced:J

    .line 160
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableRepeatWhen$WhenSourceSubscriber;->actual:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0, p1}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 161
    return-void
.end method

.method public final onSubscribe(Lorg/reactivestreams/Subscription;)V
    .locals 0
    .param p1, "s"    # Lorg/reactivestreams/Subscription;

    .prologue
    .line 154
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableRepeatWhen$WhenSourceSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableRepeatWhen$WhenSourceSubscriber<TT;TU;>;"
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/flowable/FlowableRepeatWhen$WhenSourceSubscriber;->setSubscription(Lorg/reactivestreams/Subscription;)V

    .line 155
    return-void
.end method
