.class final Lio/reactivex/internal/operators/observable/BlockingObservableMostRecent$MostRecentObserver;
.super Lio/reactivex/observers/DefaultObserver;
.source "BlockingObservableMostRecent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/BlockingObservableMostRecent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MostRecentObserver"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/BlockingObservableMostRecent$MostRecentObserver$Iterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/observers/DefaultObserver",
        "<TT;>;"
    }
.end annotation


# instance fields
.field volatile value:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 58
    .local p0, "this":Lio/reactivex/internal/operators/observable/BlockingObservableMostRecent$MostRecentObserver;, "Lio/reactivex/internal/operators/observable/BlockingObservableMostRecent$MostRecentObserver<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Lio/reactivex/observers/DefaultObserver;-><init>()V

    .line 59
    invoke-static {p1}, Lio/reactivex/internal/util/NotificationLite;->next(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/reactivex/internal/operators/observable/BlockingObservableMostRecent$MostRecentObserver;->value:Ljava/lang/Object;

    .line 60
    return-void
.end method


# virtual methods
.method public getIterable()Lio/reactivex/internal/operators/observable/BlockingObservableMostRecent$MostRecentObserver$Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/internal/operators/observable/BlockingObservableMostRecent$MostRecentObserver",
            "<TT;>.Iterator;"
        }
    .end annotation

    .prologue
    .line 83
    .local p0, "this":Lio/reactivex/internal/operators/observable/BlockingObservableMostRecent$MostRecentObserver;, "Lio/reactivex/internal/operators/observable/BlockingObservableMostRecent$MostRecentObserver<TT;>;"
    new-instance v0, Lio/reactivex/internal/operators/observable/BlockingObservableMostRecent$MostRecentObserver$Iterator;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/observable/BlockingObservableMostRecent$MostRecentObserver$Iterator;-><init>(Lio/reactivex/internal/operators/observable/BlockingObservableMostRecent$MostRecentObserver;)V

    return-object v0
.end method

.method public onComplete()V
    .locals 1

    .prologue
    .line 64
    .local p0, "this":Lio/reactivex/internal/operators/observable/BlockingObservableMostRecent$MostRecentObserver;, "Lio/reactivex/internal/operators/observable/BlockingObservableMostRecent$MostRecentObserver<TT;>;"
    invoke-static {}, Lio/reactivex/internal/util/NotificationLite;->complete()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/reactivex/internal/operators/observable/BlockingObservableMostRecent$MostRecentObserver;->value:Ljava/lang/Object;

    .line 65
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 69
    .local p0, "this":Lio/reactivex/internal/operators/observable/BlockingObservableMostRecent$MostRecentObserver;, "Lio/reactivex/internal/operators/observable/BlockingObservableMostRecent$MostRecentObserver<TT;>;"
    invoke-static {p1}, Lio/reactivex/internal/util/NotificationLite;->error(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/reactivex/internal/operators/observable/BlockingObservableMostRecent$MostRecentObserver;->value:Ljava/lang/Object;

    .line 70
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 74
    .local p0, "this":Lio/reactivex/internal/operators/observable/BlockingObservableMostRecent$MostRecentObserver;, "Lio/reactivex/internal/operators/observable/BlockingObservableMostRecent$MostRecentObserver<TT;>;"
    .local p1, "args":Ljava/lang/Object;, "TT;"
    invoke-static {p1}, Lio/reactivex/internal/util/NotificationLite;->next(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/reactivex/internal/operators/observable/BlockingObservableMostRecent$MostRecentObserver;->value:Ljava/lang/Object;

    .line 75
    return-void
.end method
