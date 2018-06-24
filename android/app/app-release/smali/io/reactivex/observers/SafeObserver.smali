.class public final Lio/reactivex/observers/SafeObserver;
.super Ljava/lang/Object;
.source "SafeObserver.java"

# interfaces
.implements Lio/reactivex/Observer;
.implements Lio/reactivex/disposables/Disposable;


# annotations
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

.field done:Z

.field s:Lio/reactivex/disposables/Disposable;


# direct methods
.method public constructor <init>(Lio/reactivex/Observer;)V
    .locals 0
    .param p1    # Lio/reactivex/Observer;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 40
    .local p0, "this":Lio/reactivex/observers/SafeObserver;, "Lio/reactivex/observers/SafeObserver<TT;>;"
    .local p1, "actual":Lio/reactivex/Observer;, "Lio/reactivex/Observer<-TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lio/reactivex/observers/SafeObserver;->actual:Lio/reactivex/Observer;

    .line 42
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .prologue
    .line 69
    .local p0, "this":Lio/reactivex/observers/SafeObserver;, "Lio/reactivex/observers/SafeObserver<TT;>;"
    iget-object v0, p0, Lio/reactivex/observers/SafeObserver;->s:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 70
    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .prologue
    .line 74
    .local p0, "this":Lio/reactivex/observers/SafeObserver;, "Lio/reactivex/observers/SafeObserver<TT;>;"
    iget-object v0, p0, Lio/reactivex/observers/SafeObserver;->s:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    return v0
.end method

.method public onComplete()V
    .locals 2

    .prologue
    .line 181
    .local p0, "this":Lio/reactivex/observers/SafeObserver;, "Lio/reactivex/observers/SafeObserver<TT;>;"
    iget-boolean v1, p0, Lio/reactivex/observers/SafeObserver;->done:Z

    if-eqz v1, :cond_0

    .line 198
    :goto_0
    return-void

    .line 185
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lio/reactivex/observers/SafeObserver;->done:Z

    .line 187
    iget-object v1, p0, Lio/reactivex/observers/SafeObserver;->s:Lio/reactivex/disposables/Disposable;

    if-nez v1, :cond_1

    .line 188
    invoke-virtual {p0}, Lio/reactivex/observers/SafeObserver;->onCompleteNoSubscription()V

    goto :goto_0

    .line 193
    :cond_1
    :try_start_0
    iget-object v1, p0, Lio/reactivex/observers/SafeObserver;->actual:Lio/reactivex/Observer;

    invoke-interface {v1}, Lio/reactivex/Observer;->onComplete()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 194
    :catch_0
    move-exception v0

    .line 195
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 196
    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method onCompleteNoSubscription()V
    .locals 7

    .prologue
    .local p0, "this":Lio/reactivex/observers/SafeObserver;, "Lio/reactivex/observers/SafeObserver<TT;>;"
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 202
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Subscription not set!"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 205
    .local v1, "ex":Ljava/lang/Throwable;
    :try_start_0
    iget-object v2, p0, Lio/reactivex/observers/SafeObserver;->actual:Lio/reactivex/Observer;

    sget-object v3, Lio/reactivex/internal/disposables/EmptyDisposable;->INSTANCE:Lio/reactivex/internal/disposables/EmptyDisposable;

    invoke-interface {v2, v3}, Lio/reactivex/Observer;->onSubscribe(Lio/reactivex/disposables/Disposable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    :try_start_1
    iget-object v2, p0, Lio/reactivex/observers/SafeObserver;->actual:Lio/reactivex/Observer;

    invoke-interface {v2, v1}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 219
    :goto_0
    return-void

    .line 206
    :catch_0
    move-exception v0

    .line 207
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 209
    new-instance v2, Lio/reactivex/exceptions/CompositeException;

    new-array v3, v6, [Ljava/lang/Throwable;

    aput-object v1, v3, v4

    aput-object v0, v3, v5

    invoke-direct {v2, v3}, Lio/reactivex/exceptions/CompositeException;-><init>([Ljava/lang/Throwable;)V

    invoke-static {v2}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 214
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_1
    move-exception v0

    .line 215
    .restart local v0    # "e":Ljava/lang/Throwable;
    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 217
    new-instance v2, Lio/reactivex/exceptions/CompositeException;

    new-array v3, v6, [Ljava/lang/Throwable;

    aput-object v1, v3, v4

    aput-object v0, v3, v5

    invoke-direct {v2, v3}, Lio/reactivex/exceptions/CompositeException;-><init>([Ljava/lang/Throwable;)V

    invoke-static {v2}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 11
    .param p1, "t"    # Ljava/lang/Throwable;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param

    .prologue
    .local p0, "this":Lio/reactivex/observers/SafeObserver;, "Lio/reactivex/observers/SafeObserver<TT;>;"
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 139
    iget-boolean v3, p0, Lio/reactivex/observers/SafeObserver;->done:Z

    if-eqz v3, :cond_0

    .line 140
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    .line 177
    :goto_0
    return-void

    .line 143
    :cond_0
    iput-boolean v7, p0, Lio/reactivex/observers/SafeObserver;->done:Z

    .line 145
    iget-object v3, p0, Lio/reactivex/observers/SafeObserver;->s:Lio/reactivex/disposables/Disposable;

    if-nez v3, :cond_1

    .line 146
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Subscription not set!"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 149
    .local v2, "npe":Ljava/lang/Throwable;
    :try_start_0
    iget-object v3, p0, Lio/reactivex/observers/SafeObserver;->actual:Lio/reactivex/Observer;

    sget-object v4, Lio/reactivex/internal/disposables/EmptyDisposable;->INSTANCE:Lio/reactivex/internal/disposables/EmptyDisposable;

    invoke-interface {v3, v4}, Lio/reactivex/Observer;->onSubscribe(Lio/reactivex/disposables/Disposable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 157
    :try_start_1
    iget-object v3, p0, Lio/reactivex/observers/SafeObserver;->actual:Lio/reactivex/Observer;

    new-instance v4, Lio/reactivex/exceptions/CompositeException;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Throwable;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    aput-object v2, v5, v6

    invoke-direct {v4, v5}, Lio/reactivex/exceptions/CompositeException;-><init>([Ljava/lang/Throwable;)V

    invoke-interface {v3, v4}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 158
    :catch_0
    move-exception v0

    .line 159
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 161
    new-instance v3, Lio/reactivex/exceptions/CompositeException;

    new-array v4, v10, [Ljava/lang/Throwable;

    aput-object p1, v4, v8

    aput-object v2, v4, v7

    aput-object v0, v4, v9

    invoke-direct {v3, v4}, Lio/reactivex/exceptions/CompositeException;-><init>([Ljava/lang/Throwable;)V

    invoke-static {v3}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 150
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_1
    move-exception v0

    .line 151
    .restart local v0    # "e":Ljava/lang/Throwable;
    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 153
    new-instance v3, Lio/reactivex/exceptions/CompositeException;

    new-array v4, v10, [Ljava/lang/Throwable;

    aput-object p1, v4, v8

    aput-object v2, v4, v7

    aput-object v0, v4, v9

    invoke-direct {v3, v4}, Lio/reactivex/exceptions/CompositeException;-><init>([Ljava/lang/Throwable;)V

    invoke-static {v3}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 166
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v2    # "npe":Ljava/lang/Throwable;
    :cond_1
    if-nez p1, :cond_2

    .line 167
    new-instance p1, Ljava/lang/NullPointerException;

    .end local p1    # "t":Ljava/lang/Throwable;
    const-string v3, "onError called with null. Null values are generally not allowed in 2.x operators and sources."

    invoke-direct {p1, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 171
    .restart local p1    # "t":Ljava/lang/Throwable;
    :cond_2
    :try_start_2
    iget-object v3, p0, Lio/reactivex/observers/SafeObserver;->actual:Lio/reactivex/Observer;

    invoke-interface {v3, p1}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 172
    :catch_2
    move-exception v1

    .line 173
    .local v1, "ex":Ljava/lang/Throwable;
    invoke-static {v1}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 175
    new-instance v3, Lio/reactivex/exceptions/CompositeException;

    new-array v4, v9, [Ljava/lang/Throwable;

    aput-object p1, v4, v8

    aput-object v1, v4, v7

    invoke-direct {v3, v4}, Lio/reactivex/exceptions/CompositeException;-><init>([Ljava/lang/Throwable;)V

    invoke-static {v3}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 7
    .param p1    # Ljava/lang/Object;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lio/reactivex/observers/SafeObserver;, "Lio/reactivex/observers/SafeObserver<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    const/4 v4, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 79
    iget-boolean v3, p0, Lio/reactivex/observers/SafeObserver;->done:Z

    if-eqz v3, :cond_0

    .line 113
    :goto_0
    return-void

    .line 82
    :cond_0
    iget-object v3, p0, Lio/reactivex/observers/SafeObserver;->s:Lio/reactivex/disposables/Disposable;

    if-nez v3, :cond_1

    .line 83
    invoke-virtual {p0}, Lio/reactivex/observers/SafeObserver;->onNextNoSubscription()V

    goto :goto_0

    .line 87
    :cond_1
    if-nez p1, :cond_2

    .line 88
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "onNext called with null. Null values are generally not allowed in 2.x operators and sources."

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 90
    .local v2, "ex":Ljava/lang/Throwable;
    :try_start_0
    iget-object v3, p0, Lio/reactivex/observers/SafeObserver;->s:Lio/reactivex/disposables/Disposable;

    invoke-interface {v3}, Lio/reactivex/disposables/Disposable;->dispose()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    invoke-virtual {p0, v2}, Lio/reactivex/observers/SafeObserver;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 91
    :catch_0
    move-exception v1

    .line 92
    .local v1, "e1":Ljava/lang/Throwable;
    invoke-static {v1}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 93
    new-instance v3, Lio/reactivex/exceptions/CompositeException;

    new-array v4, v4, [Ljava/lang/Throwable;

    aput-object v2, v4, v5

    aput-object v1, v4, v6

    invoke-direct {v3, v4}, Lio/reactivex/exceptions/CompositeException;-><init>([Ljava/lang/Throwable;)V

    invoke-virtual {p0, v3}, Lio/reactivex/observers/SafeObserver;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 101
    .end local v1    # "e1":Ljava/lang/Throwable;
    .end local v2    # "ex":Ljava/lang/Throwable;
    :cond_2
    :try_start_1
    iget-object v3, p0, Lio/reactivex/observers/SafeObserver;->actual:Lio/reactivex/Observer;

    invoke-interface {v3, p1}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 102
    :catch_1
    move-exception v0

    .line 103
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 105
    :try_start_2
    iget-object v3, p0, Lio/reactivex/observers/SafeObserver;->s:Lio/reactivex/disposables/Disposable;

    invoke-interface {v3}, Lio/reactivex/disposables/Disposable;->dispose()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    .line 111
    invoke-virtual {p0, v0}, Lio/reactivex/observers/SafeObserver;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 106
    :catch_2
    move-exception v1

    .line 107
    .restart local v1    # "e1":Ljava/lang/Throwable;
    invoke-static {v1}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 108
    new-instance v3, Lio/reactivex/exceptions/CompositeException;

    new-array v4, v4, [Ljava/lang/Throwable;

    aput-object v0, v4, v5

    aput-object v1, v4, v6

    invoke-direct {v3, v4}, Lio/reactivex/exceptions/CompositeException;-><init>([Ljava/lang/Throwable;)V

    invoke-virtual {p0, v3}, Lio/reactivex/observers/SafeObserver;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method onNextNoSubscription()V
    .locals 7

    .prologue
    .local p0, "this":Lio/reactivex/observers/SafeObserver;, "Lio/reactivex/observers/SafeObserver<TT;>;"
    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 116
    iput-boolean v4, p0, Lio/reactivex/observers/SafeObserver;->done:Z

    .line 118
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Subscription not set!"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 121
    .local v1, "ex":Ljava/lang/Throwable;
    :try_start_0
    iget-object v2, p0, Lio/reactivex/observers/SafeObserver;->actual:Lio/reactivex/Observer;

    sget-object v3, Lio/reactivex/internal/disposables/EmptyDisposable;->INSTANCE:Lio/reactivex/internal/disposables/EmptyDisposable;

    invoke-interface {v2, v3}, Lio/reactivex/Observer;->onSubscribe(Lio/reactivex/disposables/Disposable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    :try_start_1
    iget-object v2, p0, Lio/reactivex/observers/SafeObserver;->actual:Lio/reactivex/Observer;

    invoke-interface {v2, v1}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 135
    :goto_0
    return-void

    .line 122
    :catch_0
    move-exception v0

    .line 123
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 125
    new-instance v2, Lio/reactivex/exceptions/CompositeException;

    new-array v3, v6, [Ljava/lang/Throwable;

    aput-object v1, v3, v5

    aput-object v0, v3, v4

    invoke-direct {v2, v3}, Lio/reactivex/exceptions/CompositeException;-><init>([Ljava/lang/Throwable;)V

    invoke-static {v2}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 130
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_1
    move-exception v0

    .line 131
    .restart local v0    # "e":Ljava/lang/Throwable;
    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 133
    new-instance v2, Lio/reactivex/exceptions/CompositeException;

    new-array v3, v6, [Ljava/lang/Throwable;

    aput-object v1, v3, v5

    aput-object v0, v3, v4

    invoke-direct {v2, v3}, Lio/reactivex/exceptions/CompositeException;-><init>([Ljava/lang/Throwable;)V

    invoke-static {v2}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 6
    .param p1, "s"    # Lio/reactivex/disposables/Disposable;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param

    .prologue
    .local p0, "this":Lio/reactivex/observers/SafeObserver;, "Lio/reactivex/observers/SafeObserver<TT;>;"
    const/4 v5, 0x1

    .line 46
    iget-object v2, p0, Lio/reactivex/observers/SafeObserver;->s:Lio/reactivex/disposables/Disposable;

    invoke-static {v2, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/Disposable;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 47
    iput-object p1, p0, Lio/reactivex/observers/SafeObserver;->s:Lio/reactivex/disposables/Disposable;

    .line 49
    :try_start_0
    iget-object v2, p0, Lio/reactivex/observers/SafeObserver;->actual:Lio/reactivex/Observer;

    invoke-interface {v2, p0}, Lio/reactivex/Observer;->onSubscribe(Lio/reactivex/disposables/Disposable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    :cond_0
    :goto_0
    return-void

    .line 50
    :catch_0
    move-exception v0

    .line 51
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 52
    iput-boolean v5, p0, Lio/reactivex/observers/SafeObserver;->done:Z

    .line 55
    :try_start_1
    invoke-interface {p1}, Lio/reactivex/disposables/Disposable;->dispose()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 61
    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 56
    :catch_1
    move-exception v1

    .line 57
    .local v1, "e1":Ljava/lang/Throwable;
    invoke-static {v1}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 58
    new-instance v2, Lio/reactivex/exceptions/CompositeException;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Throwable;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    aput-object v1, v3, v5

    invoke-direct {v2, v3}, Lio/reactivex/exceptions/CompositeException;-><init>([Ljava/lang/Throwable;)V

    invoke-static {v2}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
