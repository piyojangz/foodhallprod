.class public final Lio/reactivex/internal/operators/observable/ObservableZipIterable;
.super Lio/reactivex/Observable;
.source "ObservableZipIterable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/ObservableZipIterable$ZipIterableObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/Observable",
        "<TV;>;"
    }
.end annotation


# instance fields
.field final other:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable",
            "<TU;>;"
        }
    .end annotation
.end field

.field final source:Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observable",
            "<+TT;>;"
        }
    .end annotation
.end field

.field final zipper:Lio/reactivex/functions/BiFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/BiFunction",
            "<-TT;-TU;+TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/Observable;Ljava/lang/Iterable;Lio/reactivex/functions/BiFunction;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observable",
            "<+TT;>;",
            "Ljava/lang/Iterable",
            "<TU;>;",
            "Lio/reactivex/functions/BiFunction",
            "<-TT;-TU;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 33
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableZipIterable;, "Lio/reactivex/internal/operators/observable/ObservableZipIterable<TT;TU;TV;>;"
    .local p1, "source":Lio/reactivex/Observable;, "Lio/reactivex/Observable<+TT;>;"
    .local p2, "other":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TU;>;"
    .local p3, "zipper":Lio/reactivex/functions/BiFunction;, "Lio/reactivex/functions/BiFunction<-TT;-TU;+TV;>;"
    invoke-direct {p0}, Lio/reactivex/Observable;-><init>()V

    .line 34
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableZipIterable;->source:Lio/reactivex/Observable;

    .line 35
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableZipIterable;->other:Ljava/lang/Iterable;

    .line 36
    iput-object p3, p0, Lio/reactivex/internal/operators/observable/ObservableZipIterable;->zipper:Lio/reactivex/functions/BiFunction;

    .line 37
    return-void
.end method


# virtual methods
.method public subscribeActual(Lio/reactivex/Observer;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer",
            "<-TV;>;)V"
        }
    .end annotation

    .prologue
    .line 44
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableZipIterable;, "Lio/reactivex/internal/operators/observable/ObservableZipIterable<TT;TU;TV;>;"
    .local p1, "t":Lio/reactivex/Observer;, "Lio/reactivex/Observer<-TV;>;"
    :try_start_0
    iget-object v3, p0, Lio/reactivex/internal/operators/observable/ObservableZipIterable;->other:Ljava/lang/Iterable;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const-string v4, "The iterator returned by other is null"

    invoke-static {v3, v4}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Iterator;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TU;>;"
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    .line 61
    .local v0, "b":Z
    if-nez v0, :cond_0

    .line 62
    invoke-static {p1}, Lio/reactivex/internal/disposables/EmptyDisposable;->complete(Lio/reactivex/Observer;)V

    .line 67
    .end local v0    # "b":Z
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TU;>;"
    :goto_0
    return-void

    .line 45
    :catch_0
    move-exception v1

    .line 46
    .local v1, "e":Ljava/lang/Throwable;
    invoke-static {v1}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 47
    invoke-static {v1, p1}, Lio/reactivex/internal/disposables/EmptyDisposable;->error(Ljava/lang/Throwable;Lio/reactivex/Observer;)V

    goto :goto_0

    .line 55
    .end local v1    # "e":Ljava/lang/Throwable;
    .restart local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TU;>;"
    :catch_1
    move-exception v1

    .line 56
    .restart local v1    # "e":Ljava/lang/Throwable;
    invoke-static {v1}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 57
    invoke-static {v1, p1}, Lio/reactivex/internal/disposables/EmptyDisposable;->error(Ljava/lang/Throwable;Lio/reactivex/Observer;)V

    goto :goto_0

    .line 66
    .end local v1    # "e":Ljava/lang/Throwable;
    .restart local v0    # "b":Z
    :cond_0
    iget-object v3, p0, Lio/reactivex/internal/operators/observable/ObservableZipIterable;->source:Lio/reactivex/Observable;

    new-instance v4, Lio/reactivex/internal/operators/observable/ObservableZipIterable$ZipIterableObserver;

    iget-object v5, p0, Lio/reactivex/internal/operators/observable/ObservableZipIterable;->zipper:Lio/reactivex/functions/BiFunction;

    invoke-direct {v4, p1, v2, v5}, Lio/reactivex/internal/operators/observable/ObservableZipIterable$ZipIterableObserver;-><init>(Lio/reactivex/Observer;Ljava/util/Iterator;Lio/reactivex/functions/BiFunction;)V

    invoke-virtual {v3, v4}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    goto :goto_0
.end method
