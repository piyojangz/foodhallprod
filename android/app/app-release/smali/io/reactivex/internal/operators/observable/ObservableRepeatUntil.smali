.class public final Lio/reactivex/internal/operators/observable/ObservableRepeatUntil;
.super Lio/reactivex/internal/operators/observable/AbstractObservableWithUpstream;
.source "ObservableRepeatUntil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/ObservableRepeatUntil$RepeatUntilObserver;
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
.field final until:Lio/reactivex/functions/BooleanSupplier;


# direct methods
.method public constructor <init>(Lio/reactivex/Observable;Lio/reactivex/functions/BooleanSupplier;)V
    .locals 0
    .param p2, "until"    # Lio/reactivex/functions/BooleanSupplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observable",
            "<TT;>;",
            "Lio/reactivex/functions/BooleanSupplier;",
            ")V"
        }
    .end annotation

    .prologue
    .line 27
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableRepeatUntil;, "Lio/reactivex/internal/operators/observable/ObservableRepeatUntil<TT;>;"
    .local p1, "source":Lio/reactivex/Observable;, "Lio/reactivex/Observable<TT;>;"
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/observable/AbstractObservableWithUpstream;-><init>(Lio/reactivex/ObservableSource;)V

    .line 28
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableRepeatUntil;->until:Lio/reactivex/functions/BooleanSupplier;

    .line 29
    return-void
.end method


# virtual methods
.method public subscribeActual(Lio/reactivex/Observer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 33
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableRepeatUntil;, "Lio/reactivex/internal/operators/observable/ObservableRepeatUntil<TT;>;"
    .local p1, "s":Lio/reactivex/Observer;, "Lio/reactivex/Observer<-TT;>;"
    new-instance v1, Lio/reactivex/internal/disposables/SequentialDisposable;

    invoke-direct {v1}, Lio/reactivex/internal/disposables/SequentialDisposable;-><init>()V

    .line 34
    .local v1, "sd":Lio/reactivex/internal/disposables/SequentialDisposable;
    invoke-interface {p1, v1}, Lio/reactivex/Observer;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 36
    new-instance v0, Lio/reactivex/internal/operators/observable/ObservableRepeatUntil$RepeatUntilObserver;

    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableRepeatUntil;->until:Lio/reactivex/functions/BooleanSupplier;

    iget-object v3, p0, Lio/reactivex/internal/operators/observable/ObservableRepeatUntil;->source:Lio/reactivex/ObservableSource;

    invoke-direct {v0, p1, v2, v1, v3}, Lio/reactivex/internal/operators/observable/ObservableRepeatUntil$RepeatUntilObserver;-><init>(Lio/reactivex/Observer;Lio/reactivex/functions/BooleanSupplier;Lio/reactivex/internal/disposables/SequentialDisposable;Lio/reactivex/ObservableSource;)V

    .line 37
    .local v0, "rs":Lio/reactivex/internal/operators/observable/ObservableRepeatUntil$RepeatUntilObserver;, "Lio/reactivex/internal/operators/observable/ObservableRepeatUntil$RepeatUntilObserver<TT;>;"
    invoke-virtual {v0}, Lio/reactivex/internal/operators/observable/ObservableRepeatUntil$RepeatUntilObserver;->subscribeNext()V

    .line 38
    return-void
.end method