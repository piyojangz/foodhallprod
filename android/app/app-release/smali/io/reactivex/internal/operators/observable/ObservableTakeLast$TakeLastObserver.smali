.class final Lio/reactivex/internal/operators/observable/ObservableTakeLast$TakeLastObserver;
.super Ljava/util/ArrayDeque;
.source "ObservableTakeLast.java"

# interfaces
.implements Lio/reactivex/Observer;
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableTakeLast;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TakeLastObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/ArrayDeque",
        "<TT;>;",
        "Lio/reactivex/Observer",
        "<TT;>;",
        "Lio/reactivex/disposables/Disposable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x6479cc5265c56d72L


# instance fields
.field final actual:Lio/reactivex/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observer",
            "<-TT;>;"
        }
    .end annotation
.end field

.field volatile cancelled:Z

.field final count:I

.field s:Lio/reactivex/disposables/Disposable;


# direct methods
.method constructor <init>(Lio/reactivex/Observer;I)V
    .locals 0
    .param p2, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer",
            "<-TT;>;I)V"
        }
    .end annotation

    .prologue
    .line 45
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableTakeLast$TakeLastObserver;, "Lio/reactivex/internal/operators/observable/ObservableTakeLast$TakeLastObserver<TT;>;"
    .local p1, "actual":Lio/reactivex/Observer;, "Lio/reactivex/Observer<-TT;>;"
    invoke-direct {p0}, Ljava/util/ArrayDeque;-><init>()V

    .line 46
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableTakeLast$TakeLastObserver;->actual:Lio/reactivex/Observer;

    .line 47
    iput p2, p0, Lio/reactivex/internal/operators/observable/ObservableTakeLast$TakeLastObserver;->count:I

    .line 48
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .prologue
    .line 91
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableTakeLast$TakeLastObserver;, "Lio/reactivex/internal/operators/observable/ObservableTakeLast$TakeLastObserver<TT;>;"
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableTakeLast$TakeLastObserver;->cancelled:Z

    if-nez v0, :cond_0

    .line 92
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableTakeLast$TakeLastObserver;->cancelled:Z

    .line 93
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTakeLast$TakeLastObserver;->s:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 95
    :cond_0
    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .prologue
    .line 99
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableTakeLast$TakeLastObserver;, "Lio/reactivex/internal/operators/observable/ObservableTakeLast$TakeLastObserver<TT;>;"
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableTakeLast$TakeLastObserver;->cancelled:Z

    return v0
.end method

.method public onComplete()V
    .locals 3

    .prologue
    .line 73
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableTakeLast$TakeLastObserver;, "Lio/reactivex/internal/operators/observable/ObservableTakeLast$TakeLastObserver<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTakeLast$TakeLastObserver;->actual:Lio/reactivex/Observer;

    .line 75
    .local v0, "a":Lio/reactivex/Observer;, "Lio/reactivex/Observer<-TT;>;"
    :goto_0
    iget-boolean v2, p0, Lio/reactivex/internal/operators/observable/ObservableTakeLast$TakeLastObserver;->cancelled:Z

    if-eqz v2, :cond_1

    .line 83
    :cond_0
    :goto_1
    return-void

    .line 78
    :cond_1
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableTakeLast$TakeLastObserver;->poll()Ljava/lang/Object;

    move-result-object v1

    .line 79
    .local v1, "v":Ljava/lang/Object;, "TT;"
    if-nez v1, :cond_2

    .line 80
    iget-boolean v2, p0, Lio/reactivex/internal/operators/observable/ObservableTakeLast$TakeLastObserver;->cancelled:Z

    if-nez v2, :cond_0

    .line 81
    invoke-interface {v0}, Lio/reactivex/Observer;->onComplete()V

    goto :goto_1

    .line 85
    :cond_2
    invoke-interface {v0, v1}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 68
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableTakeLast$TakeLastObserver;, "Lio/reactivex/internal/operators/observable/ObservableTakeLast$TakeLastObserver<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTakeLast$TakeLastObserver;->actual:Lio/reactivex/Observer;

    invoke-interface {v0, p1}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    .line 69
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 60
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableTakeLast$TakeLastObserver;, "Lio/reactivex/internal/operators/observable/ObservableTakeLast$TakeLastObserver<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget v0, p0, Lio/reactivex/internal/operators/observable/ObservableTakeLast$TakeLastObserver;->count:I

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableTakeLast$TakeLastObserver;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 61
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableTakeLast$TakeLastObserver;->poll()Ljava/lang/Object;

    .line 63
    :cond_0
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/observable/ObservableTakeLast$TakeLastObserver;->offer(Ljava/lang/Object;)Z

    .line 64
    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 1
    .param p1, "s"    # Lio/reactivex/disposables/Disposable;

    .prologue
    .line 52
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableTakeLast$TakeLastObserver;, "Lio/reactivex/internal/operators/observable/ObservableTakeLast$TakeLastObserver<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTakeLast$TakeLastObserver;->s:Lio/reactivex/disposables/Disposable;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/Disposable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableTakeLast$TakeLastObserver;->s:Lio/reactivex/disposables/Disposable;

    .line 54
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTakeLast$TakeLastObserver;->actual:Lio/reactivex/Observer;

    invoke-interface {v0, p0}, Lio/reactivex/Observer;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 56
    :cond_0
    return-void
.end method
