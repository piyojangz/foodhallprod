.class final Lio/reactivex/internal/operators/observable/ObservableSkipUntil$SkipUntil;
.super Ljava/lang/Object;
.source "ObservableSkipUntil.java"

# interfaces
.implements Lio/reactivex/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableSkipUntil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "SkipUntil"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/Observer",
        "<TU;>;"
    }
.end annotation


# instance fields
.field private final frc:Lio/reactivex/internal/disposables/ArrayCompositeDisposable;

.field s:Lio/reactivex/disposables/Disposable;

.field private final serial:Lio/reactivex/observers/SerializedObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/observers/SerializedObserver",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final sus:Lio/reactivex/internal/operators/observable/ObservableSkipUntil$SkipUntilObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/observable/ObservableSkipUntil$SkipUntilObserver",
            "<TT;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lio/reactivex/internal/operators/observable/ObservableSkipUntil;


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/observable/ObservableSkipUntil;Lio/reactivex/internal/disposables/ArrayCompositeDisposable;Lio/reactivex/internal/operators/observable/ObservableSkipUntil$SkipUntilObserver;Lio/reactivex/observers/SerializedObserver;)V
    .locals 0
    .param p2, "frc"    # Lio/reactivex/internal/disposables/ArrayCompositeDisposable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/disposables/ArrayCompositeDisposable;",
            "Lio/reactivex/internal/operators/observable/ObservableSkipUntil$SkipUntilObserver",
            "<TT;>;",
            "Lio/reactivex/observers/SerializedObserver",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 97
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableSkipUntil$SkipUntil;, "Lio/reactivex/internal/operators/observable/ObservableSkipUntil<TT;TU;>.SkipUntil;"
    .local p3, "sus":Lio/reactivex/internal/operators/observable/ObservableSkipUntil$SkipUntilObserver;, "Lio/reactivex/internal/operators/observable/ObservableSkipUntil$SkipUntilObserver<TT;>;"
    .local p4, "serial":Lio/reactivex/observers/SerializedObserver;, "Lio/reactivex/observers/SerializedObserver<TT;>;"
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableSkipUntil$SkipUntil;->this$0:Lio/reactivex/internal/operators/observable/ObservableSkipUntil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableSkipUntil$SkipUntil;->frc:Lio/reactivex/internal/disposables/ArrayCompositeDisposable;

    .line 99
    iput-object p3, p0, Lio/reactivex/internal/operators/observable/ObservableSkipUntil$SkipUntil;->sus:Lio/reactivex/internal/operators/observable/ObservableSkipUntil$SkipUntilObserver;

    .line 100
    iput-object p4, p0, Lio/reactivex/internal/operators/observable/ObservableSkipUntil$SkipUntil;->serial:Lio/reactivex/observers/SerializedObserver;

    .line 101
    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 2

    .prologue
    .line 125
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableSkipUntil$SkipUntil;, "Lio/reactivex/internal/operators/observable/ObservableSkipUntil<TT;TU;>.SkipUntil;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableSkipUntil$SkipUntil;->sus:Lio/reactivex/internal/operators/observable/ObservableSkipUntil$SkipUntilObserver;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lio/reactivex/internal/operators/observable/ObservableSkipUntil$SkipUntilObserver;->notSkipping:Z

    .line 126
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 119
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableSkipUntil$SkipUntil;, "Lio/reactivex/internal/operators/observable/ObservableSkipUntil<TT;TU;>.SkipUntil;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableSkipUntil$SkipUntil;->frc:Lio/reactivex/internal/disposables/ArrayCompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/internal/disposables/ArrayCompositeDisposable;->dispose()V

    .line 120
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableSkipUntil$SkipUntil;->serial:Lio/reactivex/observers/SerializedObserver;

    invoke-virtual {v0, p1}, Lio/reactivex/observers/SerializedObserver;->onError(Ljava/lang/Throwable;)V

    .line 121
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;)V"
        }
    .end annotation

    .prologue
    .line 113
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableSkipUntil$SkipUntil;, "Lio/reactivex/internal/operators/observable/ObservableSkipUntil<TT;TU;>.SkipUntil;"
    .local p1, "t":Ljava/lang/Object;, "TU;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableSkipUntil$SkipUntil;->s:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 114
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableSkipUntil$SkipUntil;->sus:Lio/reactivex/internal/operators/observable/ObservableSkipUntil$SkipUntilObserver;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lio/reactivex/internal/operators/observable/ObservableSkipUntil$SkipUntilObserver;->notSkipping:Z

    .line 115
    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 2
    .param p1, "s"    # Lio/reactivex/disposables/Disposable;

    .prologue
    .line 105
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableSkipUntil$SkipUntil;, "Lio/reactivex/internal/operators/observable/ObservableSkipUntil<TT;TU;>.SkipUntil;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableSkipUntil$SkipUntil;->s:Lio/reactivex/disposables/Disposable;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/Disposable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableSkipUntil$SkipUntil;->s:Lio/reactivex/disposables/Disposable;

    .line 107
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableSkipUntil$SkipUntil;->frc:Lio/reactivex/internal/disposables/ArrayCompositeDisposable;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lio/reactivex/internal/disposables/ArrayCompositeDisposable;->setResource(ILio/reactivex/disposables/Disposable;)Z

    .line 109
    :cond_0
    return-void
.end method
