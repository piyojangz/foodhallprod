.class public final Lio/reactivex/internal/operators/flowable/FlowableReduceSeedSingle;
.super Lio/reactivex/Single;
.source "FlowableReduceSeedSingle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/FlowableReduceSeedSingle$ReduceSeedObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/Single",
        "<TR;>;"
    }
.end annotation


# instance fields
.field final reducer:Lio/reactivex/functions/BiFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/BiFunction",
            "<TR;-TT;TR;>;"
        }
    .end annotation
.end field

.field final seed:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field

.field final source:Lorg/reactivestreams/Publisher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/reactivestreams/Publisher",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/reactivestreams/Publisher;Ljava/lang/Object;Lio/reactivex/functions/BiFunction;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Publisher",
            "<TT;>;TR;",
            "Lio/reactivex/functions/BiFunction",
            "<TR;-TT;TR;>;)V"
        }
    .end annotation

    .prologue
    .line 40
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableReduceSeedSingle;, "Lio/reactivex/internal/operators/flowable/FlowableReduceSeedSingle<TT;TR;>;"
    .local p1, "source":Lorg/reactivestreams/Publisher;, "Lorg/reactivestreams/Publisher<TT;>;"
    .local p2, "seed":Ljava/lang/Object;, "TR;"
    .local p3, "reducer":Lio/reactivex/functions/BiFunction;, "Lio/reactivex/functions/BiFunction<TR;-TT;TR;>;"
    invoke-direct {p0}, Lio/reactivex/Single;-><init>()V

    .line 41
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableReduceSeedSingle;->source:Lorg/reactivestreams/Publisher;

    .line 42
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/FlowableReduceSeedSingle;->seed:Ljava/lang/Object;

    .line 43
    iput-object p3, p0, Lio/reactivex/internal/operators/flowable/FlowableReduceSeedSingle;->reducer:Lio/reactivex/functions/BiFunction;

    .line 44
    return-void
.end method


# virtual methods
.method protected subscribeActual(Lio/reactivex/SingleObserver;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/SingleObserver",
            "<-TR;>;)V"
        }
    .end annotation

    .prologue
    .line 48
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableReduceSeedSingle;, "Lio/reactivex/internal/operators/flowable/FlowableReduceSeedSingle<TT;TR;>;"
    .local p1, "observer":Lio/reactivex/SingleObserver;, "Lio/reactivex/SingleObserver<-TR;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableReduceSeedSingle;->source:Lorg/reactivestreams/Publisher;

    new-instance v1, Lio/reactivex/internal/operators/flowable/FlowableReduceSeedSingle$ReduceSeedObserver;

    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableReduceSeedSingle;->reducer:Lio/reactivex/functions/BiFunction;

    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/FlowableReduceSeedSingle;->seed:Ljava/lang/Object;

    invoke-direct {v1, p1, v2, v3}, Lio/reactivex/internal/operators/flowable/FlowableReduceSeedSingle$ReduceSeedObserver;-><init>(Lio/reactivex/SingleObserver;Lio/reactivex/functions/BiFunction;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lorg/reactivestreams/Publisher;->subscribe(Lorg/reactivestreams/Subscriber;)V

    .line 49
    return-void
.end method