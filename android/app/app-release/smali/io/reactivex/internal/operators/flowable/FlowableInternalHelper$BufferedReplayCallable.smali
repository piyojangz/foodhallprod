.class final Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$BufferedReplayCallable;
.super Ljava/lang/Object;
.source "FlowableInternalHelper.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableInternalHelper;
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
        "Lio/reactivex/flowables/ConnectableFlowable",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field private final bufferSize:I

.field private final parent:Lio/reactivex/Flowable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Flowable",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/Flowable;I)V
    .locals 0
    .param p2, "bufferSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Flowable",
            "<TT;>;I)V"
        }
    .end annotation

    .prologue
    .line 258
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$BufferedReplayCallable;, "Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$BufferedReplayCallable<TT;>;"
    .local p1, "parent":Lio/reactivex/Flowable;, "Lio/reactivex/Flowable<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 259
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$BufferedReplayCallable;->parent:Lio/reactivex/Flowable;

    .line 260
    iput p2, p0, Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$BufferedReplayCallable;->bufferSize:I

    .line 261
    return-void
.end method


# virtual methods
.method public call()Lio/reactivex/flowables/ConnectableFlowable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/flowables/ConnectableFlowable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 265
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$BufferedReplayCallable;, "Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$BufferedReplayCallable<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$BufferedReplayCallable;->parent:Lio/reactivex/Flowable;

    iget v1, p0, Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$BufferedReplayCallable;->bufferSize:I

    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->replay(I)Lio/reactivex/flowables/ConnectableFlowable;

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
    .line 254
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$BufferedReplayCallable;, "Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$BufferedReplayCallable<TT;>;"
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$BufferedReplayCallable;->call()Lio/reactivex/flowables/ConnectableFlowable;

    move-result-object v0

    return-object v0
.end method