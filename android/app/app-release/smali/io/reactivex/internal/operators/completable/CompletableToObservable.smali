.class public final Lio/reactivex/internal/operators/completable/CompletableToObservable;
.super Lio/reactivex/Observable;
.source "CompletableToObservable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/completable/CompletableToObservable$ObserverCompletableObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/Observable",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final source:Lio/reactivex/CompletableSource;


# direct methods
.method public constructor <init>(Lio/reactivex/CompletableSource;)V
    .locals 0
    .param p1, "source"    # Lio/reactivex/CompletableSource;

    .prologue
    .line 28
    .local p0, "this":Lio/reactivex/internal/operators/completable/CompletableToObservable;, "Lio/reactivex/internal/operators/completable/CompletableToObservable<TT;>;"
    invoke-direct {p0}, Lio/reactivex/Observable;-><init>()V

    .line 29
    iput-object p1, p0, Lio/reactivex/internal/operators/completable/CompletableToObservable;->source:Lio/reactivex/CompletableSource;

    .line 30
    return-void
.end method


# virtual methods
.method protected subscribeActual(Lio/reactivex/Observer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 34
    .local p0, "this":Lio/reactivex/internal/operators/completable/CompletableToObservable;, "Lio/reactivex/internal/operators/completable/CompletableToObservable<TT;>;"
    .local p1, "observer":Lio/reactivex/Observer;, "Lio/reactivex/Observer<-TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/CompletableToObservable;->source:Lio/reactivex/CompletableSource;

    new-instance v1, Lio/reactivex/internal/operators/completable/CompletableToObservable$ObserverCompletableObserver;

    invoke-direct {v1, p1}, Lio/reactivex/internal/operators/completable/CompletableToObservable$ObserverCompletableObserver;-><init>(Lio/reactivex/Observer;)V

    invoke-interface {v0, v1}, Lio/reactivex/CompletableSource;->subscribe(Lio/reactivex/CompletableObserver;)V

    .line 35
    return-void
.end method