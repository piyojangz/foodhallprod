.class public final Lio/reactivex/internal/operators/single/SingleToFlowable;
.super Lio/reactivex/Flowable;
.source "SingleToFlowable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/single/SingleToFlowable$SingleToFlowableObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/Flowable",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final source:Lio/reactivex/SingleSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/SingleSource",
            "<+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/SingleSource;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/SingleSource",
            "<+TT;>;)V"
        }
    .end annotation

    .prologue
    .line 31
    .local p0, "this":Lio/reactivex/internal/operators/single/SingleToFlowable;, "Lio/reactivex/internal/operators/single/SingleToFlowable<TT;>;"
    .local p1, "source":Lio/reactivex/SingleSource;, "Lio/reactivex/SingleSource<+TT;>;"
    invoke-direct {p0}, Lio/reactivex/Flowable;-><init>()V

    .line 32
    iput-object p1, p0, Lio/reactivex/internal/operators/single/SingleToFlowable;->source:Lio/reactivex/SingleSource;

    .line 33
    return-void
.end method


# virtual methods
.method public subscribeActual(Lorg/reactivestreams/Subscriber;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 37
    .local p0, "this":Lio/reactivex/internal/operators/single/SingleToFlowable;, "Lio/reactivex/internal/operators/single/SingleToFlowable<TT;>;"
    .local p1, "s":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/single/SingleToFlowable;->source:Lio/reactivex/SingleSource;

    new-instance v1, Lio/reactivex/internal/operators/single/SingleToFlowable$SingleToFlowableObserver;

    invoke-direct {v1, p1}, Lio/reactivex/internal/operators/single/SingleToFlowable$SingleToFlowableObserver;-><init>(Lorg/reactivestreams/Subscriber;)V

    invoke-interface {v0, v1}, Lio/reactivex/SingleSource;->subscribe(Lio/reactivex/SingleObserver;)V

    .line 38
    return-void
.end method
