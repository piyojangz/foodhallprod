.class final Lio/reactivex/internal/operators/observable/ObservableInternalHelper$BufferedReplayCallable;
.super Ljava/lang/Object;
.source "ObservableInternalHelper.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableInternalHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "BufferedReplayCallable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Lio/reactivex/observables/ConnectableObservable",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field private final bufferSize:I

.field private final parent:Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observable",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/Observable;I)V
    .locals 0
    .param p2, "bufferSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observable",
            "<TT;>;I)V"
        }
    .end annotation

    .prologue
    .line 344
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableInternalHelper$BufferedReplayCallable;, "Lio/reactivex/internal/operators/observable/ObservableInternalHelper$BufferedReplayCallable<TT;>;"
    .local p1, "parent":Lio/reactivex/Observable;, "Lio/reactivex/Observable<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 345
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableInternalHelper$BufferedReplayCallable;->parent:Lio/reactivex/Observable;

    .line 346
    iput p2, p0, Lio/reactivex/internal/operators/observable/ObservableInternalHelper$BufferedReplayCallable;->bufferSize:I

    .line 347
    return-void
.end method


# virtual methods
.method public call()Lio/reactivex/observables/ConnectableObservable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/observables/ConnectableObservable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 351
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableInternalHelper$BufferedReplayCallable;, "Lio/reactivex/internal/operators/observable/ObservableInternalHelper$BufferedReplayCallable<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableInternalHelper$BufferedReplayCallable;->parent:Lio/reactivex/Observable;

    iget v1, p0, Lio/reactivex/internal/operators/observable/ObservableInternalHelper$BufferedReplayCallable;->bufferSize:I

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->replay(I)Lio/reactivex/observables/ConnectableObservable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 340
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableInternalHelper$BufferedReplayCallable;, "Lio/reactivex/internal/operators/observable/ObservableInternalHelper$BufferedReplayCallable<TT;>;"
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableInternalHelper$BufferedReplayCallable;->call()Lio/reactivex/observables/ConnectableObservable;

    move-result-object v0

    return-object v0
.end method