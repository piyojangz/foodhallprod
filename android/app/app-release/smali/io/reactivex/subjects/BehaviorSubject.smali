.class public final Lio/reactivex/subjects/BehaviorSubject;
.super Lio/reactivex/subjects/Subject;
.source "BehaviorSubject.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/subjects/Subject",
        "<TT;>;"
    }
.end annotation


# static fields
.field static final EMPTY:[Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;

.field private static final EMPTY_ARRAY:[Ljava/lang/Object;

.field static final TERMINATED:[Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;


# instance fields
.field index:J

.field final lock:Ljava/util/concurrent/locks/ReadWriteLock;

.field final readLock:Ljava/util/concurrent/locks/Lock;

.field final subscribers:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<[",
            "Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field final terminalEvent:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field final value:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final writeLock:Ljava/util/concurrent/locks/Lock;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 74
    new-array v0, v1, [Ljava/lang/Object;

    sput-object v0, Lio/reactivex/subjects/BehaviorSubject;->EMPTY_ARRAY:[Ljava/lang/Object;

    .line 81
    new-array v0, v1, [Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;

    sput-object v0, Lio/reactivex/subjects/BehaviorSubject;->EMPTY:[Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;

    .line 84
    new-array v0, v1, [Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;

    sput-object v0, Lio/reactivex/subjects/BehaviorSubject;->TERMINATED:[Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    .line 126
    .local p0, "this":Lio/reactivex/subjects/BehaviorSubject;, "Lio/reactivex/subjects/BehaviorSubject<TT;>;"
    invoke-direct {p0}, Lio/reactivex/subjects/Subject;-><init>()V

    .line 127
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lio/reactivex/subjects/BehaviorSubject;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 128
    iget-object v0, p0, Lio/reactivex/subjects/BehaviorSubject;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    iput-object v0, p0, Lio/reactivex/subjects/BehaviorSubject;->readLock:Ljava/util/concurrent/locks/Lock;

    .line 129
    iget-object v0, p0, Lio/reactivex/subjects/BehaviorSubject;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    iput-object v0, p0, Lio/reactivex/subjects/BehaviorSubject;->writeLock:Ljava/util/concurrent/locks/Lock;

    .line 130
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lio/reactivex/subjects/BehaviorSubject;->EMPTY:[Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/reactivex/subjects/BehaviorSubject;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    .line 131
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lio/reactivex/subjects/BehaviorSubject;->value:Ljava/util/concurrent/atomic/AtomicReference;

    .line 132
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lio/reactivex/subjects/BehaviorSubject;->terminalEvent:Ljava/util/concurrent/atomic/AtomicReference;

    .line 133
    return-void
.end method

.method constructor <init>(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 142
    .local p0, "this":Lio/reactivex/subjects/BehaviorSubject;, "Lio/reactivex/subjects/BehaviorSubject<TT;>;"
    .local p1, "defaultValue":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Lio/reactivex/subjects/BehaviorSubject;-><init>()V

    .line 143
    iget-object v0, p0, Lio/reactivex/subjects/BehaviorSubject;->value:Ljava/util/concurrent/atomic/AtomicReference;

    const-string v1, "defaultValue is null"

    invoke-static {p1, v1}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    .line 144
    return-void
.end method

.method public static create()Lio/reactivex/subjects/BehaviorSubject;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lio/reactivex/subjects/BehaviorSubject",
            "<TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .prologue
    .line 102
    new-instance v0, Lio/reactivex/subjects/BehaviorSubject;

    invoke-direct {v0}, Lio/reactivex/subjects/BehaviorSubject;-><init>()V

    return-object v0
.end method

.method public static createDefault(Ljava/lang/Object;)Lio/reactivex/subjects/BehaviorSubject;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lio/reactivex/subjects/BehaviorSubject",
            "<TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .prologue
    .line 118
    .local p0, "defaultValue":Ljava/lang/Object;, "TT;"
    new-instance v0, Lio/reactivex/subjects/BehaviorSubject;

    invoke-direct {v0, p0}, Lio/reactivex/subjects/BehaviorSubject;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method add(Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable",
            "<TT;>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lio/reactivex/subjects/BehaviorSubject;, "Lio/reactivex/subjects/BehaviorSubject<TT;>;"
    .local p1, "rs":Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;, "Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable<TT;>;"
    const/4 v3, 0x0

    .line 317
    :cond_0
    iget-object v4, p0, Lio/reactivex/subjects/BehaviorSubject;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;

    .line 318
    .local v0, "a":[Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;, "[Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable<TT;>;"
    sget-object v4, Lio/reactivex/subjects/BehaviorSubject;->TERMINATED:[Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;

    if-ne v0, v4, :cond_1

    .line 327
    :goto_0
    return v3

    .line 321
    :cond_1
    array-length v2, v0

    .line 323
    .local v2, "len":I
    add-int/lit8 v4, v2, 0x1

    new-array v1, v4, [Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;

    .line 324
    .local v1, "b":[Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;, "[Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable<TT;>;"
    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 325
    aput-object p1, v1, v2

    .line 326
    iget-object v4, p0, Lio/reactivex/subjects/BehaviorSubject;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4, v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 327
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public getThrowable()Ljava/lang/Throwable;
    .locals 2

    .prologue
    .line 227
    .local p0, "this":Lio/reactivex/subjects/BehaviorSubject;, "Lio/reactivex/subjects/BehaviorSubject<TT;>;"
    iget-object v1, p0, Lio/reactivex/subjects/BehaviorSubject;->value:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 228
    .local v0, "o":Ljava/lang/Object;
    invoke-static {v0}, Lio/reactivex/internal/util/NotificationLite;->isError(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 229
    invoke-static {v0}, Lio/reactivex/internal/util/NotificationLite;->getError(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    .line 231
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 240
    .local p0, "this":Lio/reactivex/subjects/BehaviorSubject;, "Lio/reactivex/subjects/BehaviorSubject<TT;>;"
    iget-object v1, p0, Lio/reactivex/subjects/BehaviorSubject;->value:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 241
    .local v0, "o":Ljava/lang/Object;
    invoke-static {v0}, Lio/reactivex/internal/util/NotificationLite;->isComplete(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lio/reactivex/internal/util/NotificationLite;->isError(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 242
    :cond_0
    const/4 v1, 0x0

    .line 244
    :goto_0
    return-object v1

    :cond_1
    invoke-static {v0}, Lio/reactivex/internal/util/NotificationLite;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public getValues()[Ljava/lang/Object;
    .locals 3

    .prologue
    .line 254
    .local p0, "this":Lio/reactivex/subjects/BehaviorSubject;, "Lio/reactivex/subjects/BehaviorSubject<TT;>;"
    sget-object v0, Lio/reactivex/subjects/BehaviorSubject;->EMPTY_ARRAY:[Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 255
    .local v0, "a":[Ljava/lang/Object;, "[TT;"
    invoke-virtual {p0, v0}, Lio/reactivex/subjects/BehaviorSubject;->getValues([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    .line 256
    .local v1, "b":[Ljava/lang/Object;, "[TT;"
    sget-object v2, Lio/reactivex/subjects/BehaviorSubject;->EMPTY_ARRAY:[Ljava/lang/Object;

    if-ne v1, v2, :cond_0

    .line 257
    const/4 v2, 0x0

    new-array v1, v2, [Ljava/lang/Object;

    .line 259
    .end local v1    # "b":[Ljava/lang/Object;, "[TT;"
    :cond_0
    return-object v1
.end method

.method public getValues([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)[TT;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lio/reactivex/subjects/BehaviorSubject;, "Lio/reactivex/subjects/BehaviorSubject<TT;>;"
    .local p1, "array":[Ljava/lang/Object;, "[TT;"
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 273
    iget-object v3, p0, Lio/reactivex/subjects/BehaviorSubject;->value:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    .line 274
    .local v1, "o":Ljava/lang/Object;
    if-eqz v1, :cond_0

    invoke-static {v1}, Lio/reactivex/internal/util/NotificationLite;->isComplete(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v1}, Lio/reactivex/internal/util/NotificationLite;->isError(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 275
    :cond_0
    array-length v3, p1

    if-eqz v3, :cond_1

    .line 276
    aput-object v6, p1, v4

    :cond_1
    move-object v0, p1

    .line 290
    .end local p1    # "array":[Ljava/lang/Object;, "[TT;"
    .local v0, "array":[Ljava/lang/Object;, "[TT;"
    :goto_0
    return-object v0

    .line 280
    .end local v0    # "array":[Ljava/lang/Object;, "[TT;"
    .restart local p1    # "array":[Ljava/lang/Object;, "[TT;"
    :cond_2
    invoke-static {v1}, Lio/reactivex/internal/util/NotificationLite;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 281
    .local v2, "v":Ljava/lang/Object;, "TT;"
    array-length v3, p1

    if-eqz v3, :cond_4

    .line 282
    aput-object v2, p1, v4

    .line 283
    array-length v3, p1

    if-eq v3, v5, :cond_3

    .line 284
    aput-object v6, p1, v5

    :cond_3
    :goto_1
    move-object v0, p1

    .line 290
    .end local p1    # "array":[Ljava/lang/Object;, "[TT;"
    .restart local v0    # "array":[Ljava/lang/Object;, "[TT;"
    goto :goto_0

    .line 287
    .end local v0    # "array":[Ljava/lang/Object;, "[TT;"
    .restart local p1    # "array":[Ljava/lang/Object;, "[TT;"
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    move-object p1, v3

    check-cast p1, [Ljava/lang/Object;

    .line 288
    aput-object v2, p1, v4

    goto :goto_1
.end method

.method public hasComplete()Z
    .locals 2

    .prologue
    .line 295
    .local p0, "this":Lio/reactivex/subjects/BehaviorSubject;, "Lio/reactivex/subjects/BehaviorSubject<TT;>;"
    iget-object v1, p0, Lio/reactivex/subjects/BehaviorSubject;->value:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 296
    .local v0, "o":Ljava/lang/Object;
    invoke-static {v0}, Lio/reactivex/internal/util/NotificationLite;->isComplete(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public hasObservers()Z
    .locals 1

    .prologue
    .line 217
    .local p0, "this":Lio/reactivex/subjects/BehaviorSubject;, "Lio/reactivex/subjects/BehaviorSubject<TT;>;"
    iget-object v0, p0, Lio/reactivex/subjects/BehaviorSubject;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;

    array-length v0, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasThrowable()Z
    .locals 2

    .prologue
    .line 301
    .local p0, "this":Lio/reactivex/subjects/BehaviorSubject;, "Lio/reactivex/subjects/BehaviorSubject<TT;>;"
    iget-object v1, p0, Lio/reactivex/subjects/BehaviorSubject;->value:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 302
    .local v0, "o":Ljava/lang/Object;
    invoke-static {v0}, Lio/reactivex/internal/util/NotificationLite;->isError(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public hasValue()Z
    .locals 2

    .prologue
    .line 311
    .local p0, "this":Lio/reactivex/subjects/BehaviorSubject;, "Lio/reactivex/subjects/BehaviorSubject<TT;>;"
    iget-object v1, p0, Lio/reactivex/subjects/BehaviorSubject;->value:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 312
    .local v0, "o":Ljava/lang/Object;
    if-eqz v0, :cond_0

    invoke-static {v0}, Lio/reactivex/internal/util/NotificationLite;->isComplete(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lio/reactivex/internal/util/NotificationLite;->isError(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onComplete()V
    .locals 8

    .prologue
    .line 206
    .local p0, "this":Lio/reactivex/subjects/BehaviorSubject;, "Lio/reactivex/subjects/BehaviorSubject<TT;>;"
    iget-object v5, p0, Lio/reactivex/subjects/BehaviorSubject;->terminalEvent:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v6, 0x0

    sget-object v7, Lio/reactivex/internal/util/ExceptionHelper;->TERMINATED:Ljava/lang/Throwable;

    invoke-virtual {v5, v6, v7}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 213
    :cond_0
    return-void

    .line 209
    :cond_1
    invoke-static {}, Lio/reactivex/internal/util/NotificationLite;->complete()Ljava/lang/Object;

    move-result-object v4

    .line 210
    .local v4, "o":Ljava/lang/Object;
    invoke-virtual {p0, v4}, Lio/reactivex/subjects/BehaviorSubject;->terminate(Ljava/lang/Object;)[Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;

    move-result-object v0

    .local v0, "arr$":[Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 211
    .local v1, "bs":Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;, "Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable<TT;>;"
    iget-wide v6, p0, Lio/reactivex/subjects/BehaviorSubject;->index:J

    invoke-virtual {v1, v4, v6, v7}, Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;->emitNext(Ljava/lang/Object;J)V

    .line 210
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 8
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 191
    .local p0, "this":Lio/reactivex/subjects/BehaviorSubject;, "Lio/reactivex/subjects/BehaviorSubject<TT;>;"
    if-nez p1, :cond_0

    .line 192
    new-instance p1, Ljava/lang/NullPointerException;

    .end local p1    # "t":Ljava/lang/Throwable;
    const-string v5, "onError called with null. Null values are generally not allowed in 2.x operators and sources."

    invoke-direct {p1, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 194
    .restart local p1    # "t":Ljava/lang/Throwable;
    :cond_0
    iget-object v5, p0, Lio/reactivex/subjects/BehaviorSubject;->terminalEvent:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v6, 0x0

    invoke-virtual {v5, v6, p1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 195
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    .line 202
    :cond_1
    return-void

    .line 198
    :cond_2
    invoke-static {p1}, Lio/reactivex/internal/util/NotificationLite;->error(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v4

    .line 199
    .local v4, "o":Ljava/lang/Object;
    invoke-virtual {p0, v4}, Lio/reactivex/subjects/BehaviorSubject;->terminate(Ljava/lang/Object;)[Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;

    move-result-object v0

    .local v0, "arr$":[Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 200
    .local v1, "bs":Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;, "Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable<TT;>;"
    iget-wide v6, p0, Lio/reactivex/subjects/BehaviorSubject;->index:J

    invoke-virtual {v1, v4, v6, v7}, Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;->emitNext(Ljava/lang/Object;J)V

    .line 199
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 175
    .local p0, "this":Lio/reactivex/subjects/BehaviorSubject;, "Lio/reactivex/subjects/BehaviorSubject<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    if-nez p1, :cond_1

    .line 176
    new-instance v5, Ljava/lang/NullPointerException;

    const-string v6, "onNext called with null. Null values are generally not allowed in 2.x operators and sources."

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Lio/reactivex/subjects/BehaviorSubject;->onError(Ljava/lang/Throwable;)V

    .line 187
    :cond_0
    return-void

    .line 179
    :cond_1
    iget-object v5, p0, Lio/reactivex/subjects/BehaviorSubject;->terminalEvent:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_0

    .line 182
    invoke-static {p1}, Lio/reactivex/internal/util/NotificationLite;->next(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 183
    .local v4, "o":Ljava/lang/Object;
    invoke-virtual {p0, v4}, Lio/reactivex/subjects/BehaviorSubject;->setCurrent(Ljava/lang/Object;)V

    .line 184
    iget-object v5, p0, Lio/reactivex/subjects/BehaviorSubject;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;

    .local v0, "arr$":[Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 185
    .local v1, "bs":Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;, "Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable<TT;>;"
    iget-wide v6, p0, Lio/reactivex/subjects/BehaviorSubject;->index:J

    invoke-virtual {v1, v4, v6, v7}, Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;->emitNext(Ljava/lang/Object;J)V

    .line 184
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 1
    .param p1, "s"    # Lio/reactivex/disposables/Disposable;

    .prologue
    .line 168
    .local p0, "this":Lio/reactivex/subjects/BehaviorSubject;, "Lio/reactivex/subjects/BehaviorSubject<TT;>;"
    iget-object v0, p0, Lio/reactivex/subjects/BehaviorSubject;->terminalEvent:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 169
    invoke-interface {p1}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 171
    :cond_0
    return-void
.end method

.method remove(Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lio/reactivex/subjects/BehaviorSubject;, "Lio/reactivex/subjects/BehaviorSubject<TT;>;"
    .local p1, "rs":Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;, "Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable<TT;>;"
    const/4 v7, 0x0

    .line 335
    :cond_0
    iget-object v5, p0, Lio/reactivex/subjects/BehaviorSubject;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;

    .line 336
    .local v0, "a":[Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;, "[Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable<TT;>;"
    sget-object v5, Lio/reactivex/subjects/BehaviorSubject;->TERMINATED:[Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;

    if-eq v0, v5, :cond_1

    sget-object v5, Lio/reactivex/subjects/BehaviorSubject;->EMPTY:[Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;

    if-ne v0, v5, :cond_2

    .line 360
    :cond_1
    :goto_0
    return-void

    .line 339
    :cond_2
    array-length v4, v0

    .line 340
    .local v4, "len":I
    const/4 v3, -0x1

    .line 341
    .local v3, "j":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v4, :cond_3

    .line 342
    aget-object v5, v0, v2

    if-ne v5, p1, :cond_4

    .line 343
    move v3, v2

    .line 348
    :cond_3
    if-ltz v3, :cond_1

    .line 352
    const/4 v5, 0x1

    if-ne v4, v5, :cond_5

    .line 353
    sget-object v1, Lio/reactivex/subjects/BehaviorSubject;->EMPTY:[Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;

    .line 359
    .local v1, "b":[Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;, "[Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable<TT;>;"
    :goto_2
    iget-object v5, p0, Lio/reactivex/subjects/BehaviorSubject;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v5, v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    .line 341
    .end local v1    # "b":[Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;, "[Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable<TT;>;"
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 355
    :cond_5
    add-int/lit8 v5, v4, -0x1

    new-array v1, v5, [Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;

    .line 356
    .restart local v1    # "b":[Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;, "[Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable<TT;>;"
    invoke-static {v0, v7, v1, v7, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 357
    add-int/lit8 v5, v3, 0x1

    sub-int v6, v4, v3

    add-int/lit8 v6, v6, -0x1

    invoke-static {v0, v5, v1, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2
.end method

.method setCurrent(Ljava/lang/Object;)V
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 381
    .local p0, "this":Lio/reactivex/subjects/BehaviorSubject;, "Lio/reactivex/subjects/BehaviorSubject<TT;>;"
    iget-object v0, p0, Lio/reactivex/subjects/BehaviorSubject;->writeLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 383
    :try_start_0
    iget-wide v0, p0, Lio/reactivex/subjects/BehaviorSubject;->index:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lio/reactivex/subjects/BehaviorSubject;->index:J

    .line 384
    iget-object v0, p0, Lio/reactivex/subjects/BehaviorSubject;->value:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 386
    iget-object v0, p0, Lio/reactivex/subjects/BehaviorSubject;->writeLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 388
    return-void

    .line 386
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lio/reactivex/subjects/BehaviorSubject;->writeLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method protected subscribeActual(Lio/reactivex/Observer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 148
    .local p0, "this":Lio/reactivex/subjects/BehaviorSubject;, "Lio/reactivex/subjects/BehaviorSubject<TT;>;"
    .local p1, "observer":Lio/reactivex/Observer;, "Lio/reactivex/Observer<-TT;>;"
    new-instance v0, Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;

    invoke-direct {v0, p1, p0}, Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;-><init>(Lio/reactivex/Observer;Lio/reactivex/subjects/BehaviorSubject;)V

    .line 149
    .local v0, "bs":Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;, "Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable<TT;>;"
    invoke-interface {p1, v0}, Lio/reactivex/Observer;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 150
    invoke-virtual {p0, v0}, Lio/reactivex/subjects/BehaviorSubject;->add(Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 151
    iget-boolean v2, v0, Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;->cancelled:Z

    if-eqz v2, :cond_0

    .line 152
    invoke-virtual {p0, v0}, Lio/reactivex/subjects/BehaviorSubject;->remove(Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;)V

    .line 164
    :goto_0
    return-void

    .line 154
    :cond_0
    invoke-virtual {v0}, Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;->emitFirst()V

    goto :goto_0

    .line 157
    :cond_1
    iget-object v2, p0, Lio/reactivex/subjects/BehaviorSubject;->terminalEvent:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;

    .line 158
    .local v1, "ex":Ljava/lang/Throwable;
    sget-object v2, Lio/reactivex/internal/util/ExceptionHelper;->TERMINATED:Ljava/lang/Throwable;

    if-ne v1, v2, :cond_2

    .line 159
    invoke-interface {p1}, Lio/reactivex/Observer;->onComplete()V

    goto :goto_0

    .line 161
    :cond_2
    invoke-interface {p1, v1}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method subscriberCount()I
    .locals 1

    .prologue
    .line 222
    .local p0, "this":Lio/reactivex/subjects/BehaviorSubject;, "Lio/reactivex/subjects/BehaviorSubject<TT;>;"
    iget-object v0, p0, Lio/reactivex/subjects/BehaviorSubject;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;

    array-length v0, v0

    return v0
.end method

.method terminate(Ljava/lang/Object;)[Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;
    .locals 3
    .param p1, "terminalValue"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")[",
            "Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 368
    .local p0, "this":Lio/reactivex/subjects/BehaviorSubject;, "Lio/reactivex/subjects/BehaviorSubject<TT;>;"
    iget-object v1, p0, Lio/reactivex/subjects/BehaviorSubject;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;

    .line 369
    .local v0, "a":[Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;, "[Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable<TT;>;"
    sget-object v1, Lio/reactivex/subjects/BehaviorSubject;->TERMINATED:[Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;

    if-eq v0, v1, :cond_0

    .line 370
    iget-object v1, p0, Lio/reactivex/subjects/BehaviorSubject;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Lio/reactivex/subjects/BehaviorSubject;->TERMINATED:[Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "a":[Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;, "[Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable<TT;>;"
    check-cast v0, [Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;

    .line 371
    .restart local v0    # "a":[Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;, "[Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable<TT;>;"
    sget-object v1, Lio/reactivex/subjects/BehaviorSubject;->TERMINATED:[Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable;

    if-eq v0, v1, :cond_0

    .line 373
    invoke-virtual {p0, p1}, Lio/reactivex/subjects/BehaviorSubject;->setCurrent(Ljava/lang/Object;)V

    .line 377
    :cond_0
    return-object v0
.end method
