.class final Lio/reactivex/internal/operators/observable/ObservableInternalHelper$ObserverOnComplete;
.super Ljava/lang/Object;
.source "ObservableInternalHelper.java"

# interfaces
.implements Lio/reactivex/functions/Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableInternalHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ObserverOnComplete"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Action;"
    }
.end annotation


# instance fields
.field final observer:Lio/reactivex/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observer",
            "<TT;>;"
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
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 118
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableInternalHelper$ObserverOnComplete;, "Lio/reactivex/internal/operators/observable/ObservableInternalHelper$ObserverOnComplete<TT;>;"
    .local p1, "observer":Lio/reactivex/Observer;, "Lio/reactivex/Observer<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableInternalHelper$ObserverOnComplete;->observer:Lio/reactivex/Observer;

    .line 120
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 124
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableInternalHelper$ObserverOnComplete;, "Lio/reactivex/internal/operators/observable/ObservableInternalHelper$ObserverOnComplete<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableInternalHelper$ObserverOnComplete;->observer:Lio/reactivex/Observer;

    invoke-interface {v0}, Lio/reactivex/Observer;->onComplete()V

    .line 125
    return-void
.end method
