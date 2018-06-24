.class public final Lio/reactivex/disposables/CompositeDisposable;
.super Ljava/lang/Object;
.source "CompositeDisposable.java"

# interfaces
.implements Lio/reactivex/disposables/Disposable;
.implements Lio/reactivex/internal/disposables/DisposableContainer;


# instance fields
.field volatile disposed:Z

.field resources:Lio/reactivex/internal/util/OpenHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/util/OpenHashSet",
            "<",
            "Lio/reactivex/disposables/Disposable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/lang/Iterable;)V
    .locals 3
    .param p1    # Ljava/lang/Iterable;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lio/reactivex/disposables/Disposable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 56
    .local p1, "resources":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lio/reactivex/disposables/Disposable;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const-string v2, "resources is null"

    invoke-static {p1, v2}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 58
    new-instance v2, Lio/reactivex/internal/util/OpenHashSet;

    invoke-direct {v2}, Lio/reactivex/internal/util/OpenHashSet;-><init>()V

    iput-object v2, p0, Lio/reactivex/disposables/CompositeDisposable;->resources:Lio/reactivex/internal/util/OpenHashSet;

    .line 59
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/disposables/Disposable;

    .line 60
    .local v0, "d":Lio/reactivex/disposables/Disposable;
    const-string v2, "Disposable item is null"

    invoke-static {v0, v2}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 61
    iget-object v2, p0, Lio/reactivex/disposables/CompositeDisposable;->resources:Lio/reactivex/internal/util/OpenHashSet;

    invoke-virtual {v2, v0}, Lio/reactivex/internal/util/OpenHashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 63
    .end local v0    # "d":Lio/reactivex/disposables/Disposable;
    :cond_0
    return-void
.end method

.method public varargs constructor <init>([Lio/reactivex/disposables/Disposable;)V
    .locals 6
    .param p1, "resources"    # [Lio/reactivex/disposables/Disposable;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const-string v4, "resources is null"

    invoke-static {p1, v4}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 45
    new-instance v4, Lio/reactivex/internal/util/OpenHashSet;

    array-length v5, p1

    add-int/lit8 v5, v5, 0x1

    invoke-direct {v4, v5}, Lio/reactivex/internal/util/OpenHashSet;-><init>(I)V

    iput-object v4, p0, Lio/reactivex/disposables/CompositeDisposable;->resources:Lio/reactivex/internal/util/OpenHashSet;

    .line 46
    move-object v0, p1

    .local v0, "arr$":[Lio/reactivex/disposables/Disposable;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 47
    .local v1, "d":Lio/reactivex/disposables/Disposable;
    const-string v4, "Disposable item is null"

    invoke-static {v1, v4}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 48
    iget-object v4, p0, Lio/reactivex/disposables/CompositeDisposable;->resources:Lio/reactivex/internal/util/OpenHashSet;

    invoke-virtual {v4, v1}, Lio/reactivex/internal/util/OpenHashSet;->add(Ljava/lang/Object;)Z

    .line 46
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 50
    .end local v1    # "d":Lio/reactivex/disposables/Disposable;
    :cond_0
    return-void
.end method


# virtual methods
.method public add(Lio/reactivex/disposables/Disposable;)Z
    .locals 2
    .param p1, "d"    # Lio/reactivex/disposables/Disposable;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param

    .prologue
    .line 90
    const-string v1, "d is null"

    invoke-static {p1, v1}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 91
    iget-boolean v1, p0, Lio/reactivex/disposables/CompositeDisposable;->disposed:Z

    if-nez v1, :cond_2

    .line 92
    monitor-enter p0

    .line 93
    :try_start_0
    iget-boolean v1, p0, Lio/reactivex/disposables/CompositeDisposable;->disposed:Z

    if-nez v1, :cond_1

    .line 94
    iget-object v0, p0, Lio/reactivex/disposables/CompositeDisposable;->resources:Lio/reactivex/internal/util/OpenHashSet;

    .line 95
    .local v0, "set":Lio/reactivex/internal/util/OpenHashSet;, "Lio/reactivex/internal/util/OpenHashSet<Lio/reactivex/disposables/Disposable;>;"
    if-nez v0, :cond_0

    .line 96
    new-instance v0, Lio/reactivex/internal/util/OpenHashSet;

    .end local v0    # "set":Lio/reactivex/internal/util/OpenHashSet;, "Lio/reactivex/internal/util/OpenHashSet<Lio/reactivex/disposables/Disposable;>;"
    invoke-direct {v0}, Lio/reactivex/internal/util/OpenHashSet;-><init>()V

    .line 97
    .restart local v0    # "set":Lio/reactivex/internal/util/OpenHashSet;, "Lio/reactivex/internal/util/OpenHashSet<Lio/reactivex/disposables/Disposable;>;"
    iput-object v0, p0, Lio/reactivex/disposables/CompositeDisposable;->resources:Lio/reactivex/internal/util/OpenHashSet;

    .line 99
    :cond_0
    invoke-virtual {v0, p1}, Lio/reactivex/internal/util/OpenHashSet;->add(Ljava/lang/Object;)Z

    .line 100
    const/4 v1, 0x1

    monitor-exit p0

    .line 105
    .end local v0    # "set":Lio/reactivex/internal/util/OpenHashSet;, "Lio/reactivex/internal/util/OpenHashSet<Lio/reactivex/disposables/Disposable;>;"
    :goto_0
    return v1

    .line 102
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    :cond_2
    invoke-interface {p1}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 105
    const/4 v1, 0x0

    goto :goto_0

    .line 102
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public varargs addAll([Lio/reactivex/disposables/Disposable;)Z
    .locals 6
    .param p1, "ds"    # [Lio/reactivex/disposables/Disposable;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param

    .prologue
    .line 115
    const-string v5, "ds is null"

    invoke-static {p1, v5}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 116
    iget-boolean v5, p0, Lio/reactivex/disposables/CompositeDisposable;->disposed:Z

    if-nez v5, :cond_3

    .line 117
    monitor-enter p0

    .line 118
    :try_start_0
    iget-boolean v5, p0, Lio/reactivex/disposables/CompositeDisposable;->disposed:Z

    if-nez v5, :cond_2

    .line 119
    iget-object v4, p0, Lio/reactivex/disposables/CompositeDisposable;->resources:Lio/reactivex/internal/util/OpenHashSet;

    .line 120
    .local v4, "set":Lio/reactivex/internal/util/OpenHashSet;, "Lio/reactivex/internal/util/OpenHashSet<Lio/reactivex/disposables/Disposable;>;"
    if-nez v4, :cond_0

    .line 121
    new-instance v4, Lio/reactivex/internal/util/OpenHashSet;

    .end local v4    # "set":Lio/reactivex/internal/util/OpenHashSet;, "Lio/reactivex/internal/util/OpenHashSet<Lio/reactivex/disposables/Disposable;>;"
    array-length v5, p1

    add-int/lit8 v5, v5, 0x1

    invoke-direct {v4, v5}, Lio/reactivex/internal/util/OpenHashSet;-><init>(I)V

    .line 122
    .restart local v4    # "set":Lio/reactivex/internal/util/OpenHashSet;, "Lio/reactivex/internal/util/OpenHashSet<Lio/reactivex/disposables/Disposable;>;"
    iput-object v4, p0, Lio/reactivex/disposables/CompositeDisposable;->resources:Lio/reactivex/internal/util/OpenHashSet;

    .line 124
    :cond_0
    move-object v0, p1

    .local v0, "arr$":[Lio/reactivex/disposables/Disposable;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 125
    .local v1, "d":Lio/reactivex/disposables/Disposable;
    const-string v5, "d is null"

    invoke-static {v1, v5}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 126
    invoke-virtual {v4, v1}, Lio/reactivex/internal/util/OpenHashSet;->add(Ljava/lang/Object;)Z

    .line 124
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 128
    .end local v1    # "d":Lio/reactivex/disposables/Disposable;
    :cond_1
    const/4 v5, 0x1

    monitor-exit p0

    .line 135
    .end local v4    # "set":Lio/reactivex/internal/util/OpenHashSet;, "Lio/reactivex/internal/util/OpenHashSet<Lio/reactivex/disposables/Disposable;>;"
    :goto_1
    return v5

    .line 130
    .end local v0    # "arr$":[Lio/reactivex/disposables/Disposable;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    :cond_3
    move-object v0, p1

    .restart local v0    # "arr$":[Lio/reactivex/disposables/Disposable;
    array-length v3, v0

    .restart local v3    # "len$":I
    const/4 v2, 0x0

    .restart local v2    # "i$":I
    :goto_2
    if-ge v2, v3, :cond_4

    aget-object v1, v0, v2

    .line 133
    .restart local v1    # "d":Lio/reactivex/disposables/Disposable;
    invoke-interface {v1}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 132
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 130
    .end local v0    # "arr$":[Lio/reactivex/disposables/Disposable;
    .end local v1    # "d":Lio/reactivex/disposables/Disposable;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 135
    .restart local v0    # "arr$":[Lio/reactivex/disposables/Disposable;
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    :cond_4
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 170
    iget-boolean v1, p0, Lio/reactivex/disposables/CompositeDisposable;->disposed:Z

    if-eqz v1, :cond_0

    .line 184
    :goto_0
    return-void

    .line 174
    :cond_0
    monitor-enter p0

    .line 175
    :try_start_0
    iget-boolean v1, p0, Lio/reactivex/disposables/CompositeDisposable;->disposed:Z

    if-eqz v1, :cond_1

    .line 176
    monitor-exit p0

    goto :goto_0

    .line 181
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 179
    :cond_1
    :try_start_1
    iget-object v0, p0, Lio/reactivex/disposables/CompositeDisposable;->resources:Lio/reactivex/internal/util/OpenHashSet;

    .line 180
    .local v0, "set":Lio/reactivex/internal/util/OpenHashSet;, "Lio/reactivex/internal/util/OpenHashSet<Lio/reactivex/disposables/Disposable;>;"
    const/4 v1, 0x0

    iput-object v1, p0, Lio/reactivex/disposables/CompositeDisposable;->resources:Lio/reactivex/internal/util/OpenHashSet;

    .line 181
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 183
    invoke-virtual {p0, v0}, Lio/reactivex/disposables/CompositeDisposable;->dispose(Lio/reactivex/internal/util/OpenHashSet;)V

    goto :goto_0
.end method

.method public delete(Lio/reactivex/disposables/Disposable;)Z
    .locals 3
    .param p1, "d"    # Lio/reactivex/disposables/Disposable;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    .line 149
    const-string v2, "Disposable item is null"

    invoke-static {p1, v2}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 150
    iget-boolean v2, p0, Lio/reactivex/disposables/CompositeDisposable;->disposed:Z

    if-eqz v2, :cond_0

    .line 163
    :goto_0
    return v1

    .line 153
    :cond_0
    monitor-enter p0

    .line 154
    :try_start_0
    iget-boolean v2, p0, Lio/reactivex/disposables/CompositeDisposable;->disposed:Z

    if-eqz v2, :cond_1

    .line 155
    monitor-exit p0

    goto :goto_0

    .line 162
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 158
    :cond_1
    :try_start_1
    iget-object v0, p0, Lio/reactivex/disposables/CompositeDisposable;->resources:Lio/reactivex/internal/util/OpenHashSet;

    .line 159
    .local v0, "set":Lio/reactivex/internal/util/OpenHashSet;, "Lio/reactivex/internal/util/OpenHashSet<Lio/reactivex/disposables/Disposable;>;"
    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lio/reactivex/internal/util/OpenHashSet;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 160
    :cond_2
    monitor-exit p0

    goto :goto_0

    .line 162
    :cond_3
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 163
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public dispose()V
    .locals 2

    .prologue
    .line 67
    iget-boolean v1, p0, Lio/reactivex/disposables/CompositeDisposable;->disposed:Z

    if-eqz v1, :cond_0

    .line 81
    :goto_0
    return-void

    .line 71
    :cond_0
    monitor-enter p0

    .line 72
    :try_start_0
    iget-boolean v1, p0, Lio/reactivex/disposables/CompositeDisposable;->disposed:Z

    if-eqz v1, :cond_1

    .line 73
    monitor-exit p0

    goto :goto_0

    .line 78
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 75
    :cond_1
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Lio/reactivex/disposables/CompositeDisposable;->disposed:Z

    .line 76
    iget-object v0, p0, Lio/reactivex/disposables/CompositeDisposable;->resources:Lio/reactivex/internal/util/OpenHashSet;

    .line 77
    .local v0, "set":Lio/reactivex/internal/util/OpenHashSet;, "Lio/reactivex/internal/util/OpenHashSet<Lio/reactivex/disposables/Disposable;>;"
    const/4 v1, 0x0

    iput-object v1, p0, Lio/reactivex/disposables/CompositeDisposable;->resources:Lio/reactivex/internal/util/OpenHashSet;

    .line 78
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 80
    invoke-virtual {p0, v0}, Lio/reactivex/disposables/CompositeDisposable;->dispose(Lio/reactivex/internal/util/OpenHashSet;)V

    goto :goto_0
.end method

.method dispose(Lio/reactivex/internal/util/OpenHashSet;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/util/OpenHashSet",
            "<",
            "Lio/reactivex/disposables/Disposable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 209
    .local p1, "set":Lio/reactivex/internal/util/OpenHashSet;, "Lio/reactivex/internal/util/OpenHashSet<Lio/reactivex/disposables/Disposable;>;"
    if-nez p1, :cond_1

    .line 233
    :cond_0
    return-void

    .line 212
    :cond_1
    const/4 v2, 0x0

    .line 213
    .local v2, "errors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    invoke-virtual {p1}, Lio/reactivex/internal/util/OpenHashSet;->keys()[Ljava/lang/Object;

    move-result-object v1

    .line 214
    .local v1, "array":[Ljava/lang/Object;
    move-object v0, v1

    .local v0, "arr$":[Ljava/lang/Object;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_4

    aget-object v6, v0, v4

    .line 215
    .local v6, "o":Ljava/lang/Object;
    instance-of v7, v6, Lio/reactivex/disposables/Disposable;

    if-eqz v7, :cond_2

    .line 217
    :try_start_0
    check-cast v6, Lio/reactivex/disposables/Disposable;

    .end local v6    # "o":Ljava/lang/Object;
    invoke-interface {v6}, Lio/reactivex/disposables/Disposable;->dispose()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 218
    :catch_0
    move-exception v3

    .line 219
    .local v3, "ex":Ljava/lang/Throwable;
    invoke-static {v3}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 220
    if-nez v2, :cond_3

    .line 221
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "errors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 223
    .restart local v2    # "errors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    :cond_3
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 227
    .end local v3    # "ex":Ljava/lang/Throwable;
    :cond_4
    if-eqz v2, :cond_0

    .line 228
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_5

    .line 229
    const/4 v7, 0x0

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Throwable;

    invoke-static {v7}, Lio/reactivex/internal/util/ExceptionHelper;->wrapOrThrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v7

    throw v7

    .line 231
    :cond_5
    new-instance v7, Lio/reactivex/exceptions/CompositeException;

    invoke-direct {v7, v2}, Lio/reactivex/exceptions/CompositeException;-><init>(Ljava/lang/Iterable;)V

    throw v7
.end method

.method public isDisposed()Z
    .locals 1

    .prologue
    .line 85
    iget-boolean v0, p0, Lio/reactivex/disposables/CompositeDisposable;->disposed:Z

    return v0
.end method

.method public remove(Lio/reactivex/disposables/Disposable;)Z
    .locals 1
    .param p1, "d"    # Lio/reactivex/disposables/Disposable;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param

    .prologue
    .line 140
    invoke-virtual {p0, p1}, Lio/reactivex/disposables/CompositeDisposable;->delete(Lio/reactivex/disposables/Disposable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    invoke-interface {p1}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 142
    const/4 v0, 0x1

    .line 144
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public size()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 191
    iget-boolean v2, p0, Lio/reactivex/disposables/CompositeDisposable;->disposed:Z

    if-eqz v2, :cond_0

    .line 199
    :goto_0
    return v1

    .line 194
    :cond_0
    monitor-enter p0

    .line 195
    :try_start_0
    iget-boolean v2, p0, Lio/reactivex/disposables/CompositeDisposable;->disposed:Z

    if-eqz v2, :cond_1

    .line 196
    monitor-exit p0

    goto :goto_0

    .line 200
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 198
    :cond_1
    :try_start_1
    iget-object v0, p0, Lio/reactivex/disposables/CompositeDisposable;->resources:Lio/reactivex/internal/util/OpenHashSet;

    .line 199
    .local v0, "set":Lio/reactivex/internal/util/OpenHashSet;, "Lio/reactivex/internal/util/OpenHashSet<Lio/reactivex/disposables/Disposable;>;"
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lio/reactivex/internal/util/OpenHashSet;->size()I

    move-result v1

    :cond_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
