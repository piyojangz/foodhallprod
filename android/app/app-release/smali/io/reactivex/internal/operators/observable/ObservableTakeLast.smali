.class public final Lio/reactivex/internal/operators/observable/ObservableTakeLast;
.super Lio/reactivex/internal/operators/observable/AbstractObservableWithUpstream;
.source "ObservableTakeLast.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/ObservableTakeLast$TakeLastObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/observable/AbstractObservableWithUpstream",
        "<TT;TT;>;"
    }
.end annotation


# instance fields
.field final count:I


# direct methods
.method public constructor <init>(Lio/reactivex/ObservableSource;I)V
    .locals 0
    .param p2, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ObservableSource",
            "<TT;>;I)V"
        }
    .end annotation

    .prologue
    .line 26
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableTakeLast;, "Lio/reactivex/internal/operators/observable/ObservableTakeLast<TT;>;"
    .local p1, "source":Lio/reactivex/ObservableSource;, "Lio/reactivex/ObservableSource<TT;>;"
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/observable/AbstractObservableWithUpstream;-><init>(Lio/reactivex/ObservableSource;)V

    .line 27
    iput p2, p0, Lio/reactivex/internal/operators/observable/ObservableTakeLast;->count:I

    .line 28
    return-void
.end method


# virtual methods
.method public subscribeActual(Lio/reactivex/Observer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 32
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableTakeLast;, "Lio/reactivex/internal/operators/observable/ObservableTakeLast<TT;>;"
    .local p1, "t":Lio/reactivex/Observer;, "Lio/reactivex/Observer<-TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTakeLast;->source:Lio/reactivex/ObservableSource;

    new-instance v1, Lio/reactivex/internal/operators/observable/ObservableTakeLast$TakeLastObserver;

    iget v2, p0, Lio/reactivex/internal/operators/observable/ObservableTakeLast;->count:I

    invoke-direct {v1, p1, v2}, Lio/reactivex/internal/operators/observable/ObservableTakeLast$TakeLastObserver;-><init>(Lio/reactivex/Observer;I)V

    invoke-interface {v0, v1}, Lio/reactivex/ObservableSource;->subscribe(Lio/reactivex/Observer;)V

    .line 33
    return-void
.end method
