.class final Lio/reactivex/internal/operators/observable/ObservableCount$CountObserver;
.super Ljava/lang/Object;
.source "ObservableCount.java"

# interfaces
.implements Lio/reactivex/Observer;
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableCount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CountObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/Observer",
        "<",
        "Ljava/lang/Object;",
        ">;",
        "Lio/reactivex/disposables/Disposable;"
    }
.end annotation


# instance fields
.field final actual:Lio/reactivex/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observer",
            "<-",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field count:J

.field s:Lio/reactivex/disposables/Disposable;


# direct methods
.method constructor <init>(Lio/reactivex/Observer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer",
            "<-",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 37
    .local p1, "actual":Lio/reactivex/Observer;, "Lio/reactivex/Observer<-Ljava/lang/Long;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableCount$CountObserver;->actual:Lio/reactivex/Observer;

    .line 39
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableCount$CountObserver;->s:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 53
    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableCount$CountObserver;->s:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    return v0
.end method

.method public onComplete()V
    .locals 4

    .prologue
    .line 72
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableCount$CountObserver;->actual:Lio/reactivex/Observer;

    iget-wide v2, p0, Lio/reactivex/internal/operators/observable/ObservableCount$CountObserver;->count:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    .line 73
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableCount$CountObserver;->actual:Lio/reactivex/Observer;

    invoke-interface {v0}, Lio/reactivex/Observer;->onComplete()V

    .line 74
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 67
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableCount$CountObserver;->actual:Lio/reactivex/Observer;

    invoke-interface {v0, p1}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    .line 68
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 4
    .param p1, "t"    # Ljava/lang/Object;

    .prologue
    .line 62
    iget-wide v0, p0, Lio/reactivex/internal/operators/observable/ObservableCount$CountObserver;->count:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lio/reactivex/internal/operators/observable/ObservableCount$CountObserver;->count:J

    .line 63
    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 1
    .param p1, "s"    # Lio/reactivex/disposables/Disposable;

    .prologue
    .line 43
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableCount$CountObserver;->s:Lio/reactivex/disposables/Disposable;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/Disposable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableCount$CountObserver;->s:Lio/reactivex/disposables/Disposable;

    .line 45
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableCount$CountObserver;->actual:Lio/reactivex/Observer;

    invoke-interface {v0, p0}, Lio/reactivex/Observer;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 47
    :cond_0
    return-void
.end method
