.class final Lio/reactivex/subjects/CompletableSubject$CompletableDisposable;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "CompletableSubject.java"

# interfaces
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/subjects/CompletableSubject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CompletableDisposable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/atomic/AtomicReference",
        "<",
        "Lio/reactivex/subjects/CompletableSubject;",
        ">;",
        "Lio/reactivex/disposables/Disposable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x6a2d77ea7e969284L


# instance fields
.field final actual:Lio/reactivex/CompletableObserver;


# direct methods
.method constructor <init>(Lio/reactivex/CompletableObserver;Lio/reactivex/subjects/CompletableSubject;)V
    .locals 0
    .param p1, "actual"    # Lio/reactivex/CompletableObserver;
    .param p2, "parent"    # Lio/reactivex/subjects/CompletableSubject;

    .prologue
    .line 211
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 212
    iput-object p1, p0, Lio/reactivex/subjects/CompletableSubject$CompletableDisposable;->actual:Lio/reactivex/CompletableObserver;

    .line 213
    invoke-virtual {p0, p2}, Lio/reactivex/subjects/CompletableSubject$CompletableDisposable;->lazySet(Ljava/lang/Object;)V

    .line 214
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .prologue
    .line 218
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lio/reactivex/subjects/CompletableSubject$CompletableDisposable;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/subjects/CompletableSubject;

    .line 219
    .local v0, "parent":Lio/reactivex/subjects/CompletableSubject;
    if-eqz v0, :cond_0

    .line 220
    invoke-virtual {v0, p0}, Lio/reactivex/subjects/CompletableSubject;->remove(Lio/reactivex/subjects/CompletableSubject$CompletableDisposable;)V

    .line 222
    :cond_0
    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .prologue
    .line 226
    invoke-virtual {p0}, Lio/reactivex/subjects/CompletableSubject$CompletableDisposable;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
