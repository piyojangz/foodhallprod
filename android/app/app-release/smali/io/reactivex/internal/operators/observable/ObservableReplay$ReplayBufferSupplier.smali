.class final Lio/reactivex/internal/operators/observable/ObservableReplay$ReplayBufferSupplier;
.super Ljava/lang/Object;
.source "ObservableReplay.java"

# interfaces
.implements Lio/reactivex/internal/operators/observable/ObservableReplay$BufferSupplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableReplay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ReplayBufferSupplier"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/internal/operators/observable/ObservableReplay$BufferSupplier",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final bufferSize:I


# direct methods
.method constructor <init>(I)V
    .locals 0
    .param p1, "bufferSize"    # I

    .prologue
    .line 929
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableReplay$ReplayBufferSupplier;, "Lio/reactivex/internal/operators/observable/ObservableReplay$ReplayBufferSupplier<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 930
    iput p1, p0, Lio/reactivex/internal/operators/observable/ObservableReplay$ReplayBufferSupplier;->bufferSize:I

    .line 931
    return-void
.end method


# virtual methods
.method public call()Lio/reactivex/internal/operators/observable/ObservableReplay$ReplayBuffer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/internal/operators/observable/ObservableReplay$ReplayBuffer",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 935
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableReplay$ReplayBufferSupplier;, "Lio/reactivex/internal/operators/observable/ObservableReplay$ReplayBufferSupplier<TT;>;"
    new-instance v0, Lio/reactivex/internal/operators/observable/ObservableReplay$SizeBoundReplayBuffer;

    iget v1, p0, Lio/reactivex/internal/operators/observable/ObservableReplay$ReplayBufferSupplier;->bufferSize:I

    invoke-direct {v0, v1}, Lio/reactivex/internal/operators/observable/ObservableReplay$SizeBoundReplayBuffer;-><init>(I)V

    return-object v0
.end method
