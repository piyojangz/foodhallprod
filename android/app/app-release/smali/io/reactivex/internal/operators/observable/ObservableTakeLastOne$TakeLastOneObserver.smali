.class final Lio/reactivex/internal/operators/observable/ObservableTakeLastOne$TakeLastOneObserver;
.super Ljava/lang/Object;
.source "ObservableTakeLastOne.java"

# interfaces
.implements Lio/reactivex/Observer;
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableTakeLastOne;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TakeLastOneObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/Observer",
        "<TT;>;",
        "Lio/reactivex/disposables/Disposable;"
    }
.end annotation


# instance fields
.field final actual:Lio/reactivex/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observer",
            "<-TT;>;"
        }
    .end annotation
.end field

.field s:Lio/reactivex/disposables/Disposable;

.field value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/Observer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 37
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableTakeLastOne$TakeLastOneObserver;, "Lio/reactivex/internal/operators/observable/ObservableTakeLastOne$TakeLastOneObserver<TT;>;"
    .local p1, "actual":Lio/reactivex/Observer;, "Lio/reactivex/Observer<-TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableTakeLastOne$TakeLastOneObserver;->actual:Lio/reactivex/Observer;

    .line 39
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .prologue
    .line 76
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableTakeLastOne$TakeLastOneObserver;, "Lio/reactivex/internal/operators/observable/ObservableTakeLastOne$TakeLastOneObserver<TT;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTakeLastOne$TakeLastOneObserver;->value:Ljava/lang/Object;

    .line 77
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTakeLastOne$TakeLastOneObserver;->s:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 78
    return-void
.end method

.method emit()V
    .locals 2

    .prologue
    .line 66
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableTakeLastOne$TakeLastOneObserver;, "Lio/reactivex/internal/operators/observable/ObservableTakeLastOne$TakeLastOneObserver<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTakeLastOne$TakeLastOneObserver;->value:Ljava/lang/Object;

    .line 67
    .local v0, "v":Ljava/lang/Object;, "TT;"
    if-eqz v0, :cond_0

    .line 68
    const/4 v1, 0x0

    iput-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableTakeLastOne$TakeLastOneObserver;->value:Ljava/lang/Object;

    .line 69
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableTakeLastOne$TakeLastOneObserver;->actual:Lio/reactivex/Observer;

    invoke-interface {v1, v0}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    .line 71
    :cond_0
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableTakeLastOne$TakeLastOneObserver;->actual:Lio/reactivex/Observer;

    invoke-interface {v1}, Lio/reactivex/Observer;->onComplete()V

    .line 72
    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .prologue
    .line 82
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableTakeLastOne$TakeLastOneObserver;, "Lio/reactivex/internal/operators/observable/ObservableTakeLastOne$TakeLastOneObserver<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTakeLastOne$TakeLastOneObserver;->s:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    return v0
.end method

.method public onComplete()V
    .locals 0

    .prologue
    .line 62
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableTakeLastOne$TakeLastOneObserver;, "Lio/reactivex/internal/operators/observable/ObservableTakeLastOne$TakeLastOneObserver<TT;>;"
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableTakeLastOne$TakeLastOneObserver;->emit()V

    .line 63
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 56
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableTakeLastOne$TakeLastOneObserver;, "Lio/reactivex/internal/operators/observable/ObservableTakeLastOne$TakeLastOneObserver<TT;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTakeLastOne$TakeLastOneObserver;->value:Ljava/lang/Object;

    .line 57
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTakeLastOne$TakeLastOneObserver;->actual:Lio/reactivex/Observer;

    invoke-interface {v0, p1}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    .line 58
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 51
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableTakeLastOne$TakeLastOneObserver;, "Lio/reactivex/internal/operators/observable/ObservableTakeLastOne$TakeLastOneObserver<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableTakeLastOne$TakeLastOneObserver;->value:Ljava/lang/Object;

    .line 52
    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 1
    .param p1, "s"    # Lio/reactivex/disposables/Disposable;

    .prologue
    .line 43
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableTakeLastOne$TakeLastOneObserver;, "Lio/reactivex/internal/operators/observable/ObservableTakeLastOne$TakeLastOneObserver<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTakeLastOne$TakeLastOneObserver;->s:Lio/reactivex/disposables/Disposable;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/Disposable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableTakeLastOne$TakeLastOneObserver;->s:Lio/reactivex/disposables/Disposable;

    .line 45
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTakeLastOne$TakeLastOneObserver;->actual:Lio/reactivex/Observer;

    invoke-interface {v0, p0}, Lio/reactivex/Observer;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 47
    :cond_0
    return-void
.end method
