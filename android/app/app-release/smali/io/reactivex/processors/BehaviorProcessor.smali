.class public final Lio/reactivex/processors/BehaviorProcessor;
.super Lio/reactivex/processors/FlowableProcessor;
.source "BehaviorProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/processors/BehaviorProcessor$BehaviorSubscription;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/processors/FlowableProcessor",
        "<TT;>;"
    }
.end annotation


# static fields
.field static final EMPTY:[Lio/reactivex/processors/BehaviorProcessor$BehaviorSubscription;

.field static final EMPTY_ARRAY:[Ljava/lang/Object;

.field static final TERMINATED:[Lio/reactivex/processors/BehaviorProcessor$BehaviorSubscription;


# instance fields
.field index:J

.field final lock:Ljava/util/concurrent/locks/ReadWriteLock;

.field final readLock:Ljava/util/concurrent/locks/Lock;

.field final subscribers:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<[",
            "Lio/reactivex/processors/BehaviorProcessor$BehaviorSubscription",
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

    .line 76
    new-array v0, v1, [Ljava/lang/Object;

    sput-object v0, Lio/reactivex/processors/BehaviorProcessor;->EMPTY_ARRAY:[Ljava/lang/Object;

    .line 79
    new-array v0, v1, [Lio/reactivex/processors/BehaviorProcessor$BehaviorSubscription;

    sput-object v0, Lio/reactivex/processors/BehaviorProcessor;->EMPTY:[Lio/reactivex/processors/BehaviorProcessor$BehaviorSubscription;

    .line 82
    new-array v0, v1, [Lio/reactivex/processors/BehaviorProcessor$BehaviorSubscription;

    sput-object v0, Lio/reactivex/processors/BehaviorProcessor;->TERMINATED:[Lio/reactivex/processors/BehaviorProcessor$BehaviorSubscription;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    .line 128
    .local p0, "this":Lio/reactivex/processors/BehaviorProcessor;, "Lio/reactivex/processors/BehaviorProcessor<TT;>;"
    invoke-direct {p0}, Lio/reactivex/processors/FlowableProcessor;-><init>()V

    .line 129
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lio/reactivex/processors/BehaviorProcessor;->value:Ljava/util/concurrent/atomic/AtomicReference;

    .line 130
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lio/reactivex/processors/BehaviorProcessor;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 131
    iget-object v0, p0, Lio/reactivex/processors/BehaviorProcessor;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    iput-object v0, p0, Lio/reactivex/processors/BehaviorProcessor;->readLock:Ljava/util/concurrent/locks/Lock;

    .line 132
    iget-object v0, p0, Lio/reactivex/processors/BehaviorProcessor;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    iput-object v0, p0, Lio/reactivex/processors/BehaviorProcessor;->writeLock:Ljava/util/concurrent/locks/Lock;

    .line 133
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lio/reactivex/processors/BehaviorProcessor;->EMPTY:[Lio/reactivex/processors/BehaviorProcessor$BehaviorSubscription;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/reactivex/processors/BehaviorProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    .line 134
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lio/reactivex/processors/BehaviorProcessor;->terminalEvent:Ljava/util/concurrent/atomic/AtomicReference;

    .line 135
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
    .line 144
    .local p0, "this":Lio/reactivex/processors/BehaviorProcessor;, "Lio/reactivex/processors/BehaviorProcessor<TT;>;"
    .local p1, "defaultValue":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Lio/reactivex/processors/BehaviorProcessor;-><init>()V

    .line 145
    iget-object v0, p0, Lio/reactivex/processors/BehaviorProcessor;->value:Ljava/util/concurrent/atomic/AtomicReference;

    const-string v1, "defaultValue is null"

    invoke-static {p1, v1}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    .line 146
    return-void
.end method

.method public static create()Lio/reactivex/processors/BehaviorProcessor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lio/reactivex/processors/BehaviorProcessor",
            "<TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .prologue
    .line 103
    new-instance v0, Lio/reactivex/processors/BehaviorProcessor;

    invoke-direct {v0}, Lio/reactivex/processors/BehaviorProcessor;-><init>()V

    return-object v0
.end method

.method public static createDefault(Ljava/lang/Object;)Lio/reactivex/processors/BehaviorProcessor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lio/reactivex/processors/BehaviorProcessor",
            "<TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .prologue
    .line 119
    .local p0, "defaultValue":Ljava/lang/Object;, "TT;"
    const-string v0, "defaultValue is null"

    invoke-static {p0, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 120
    new-instance v0, Lio/reactivex/processors/BehaviorProcessor;

    invoke-direct {v0, p0}, Lio/reactivex/processors/BehaviorProcessor;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method add(Lio/reactivex/processors/BehaviorProcessor$BehaviorSubscription;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/processors/BehaviorProcessor$BehaviorSubscription",
            "<TT;>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lio/reactivex/processors/BehaviorProcessor;, "Lio/reactivex/processors/BehaviorProcessor<TT;>;"
    .local p1, "rs":Lio/reactivex/processors/BehaviorProcessor$BehaviorSubscription;, "Lio/reactivex/processors/BehaviorProcessor$BehaviorSubscription<TT;>;"
    const/4 v3, 0x0

    .line 357
    :cond_0
    iget-object v4, p0, Lio/reactivex/processors/BehaviorProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/processors/BehaviorProcessor$BehaviorSubscription;

    .line 358
    .local v0, "a":[Lio/reactivex/processors/BehaviorProcessor$BehaviorSubscription;, "[Lio/reactivex/processors/BehaviorProcessor$BehaviorSubscription<TT;>;"
    sget-object v4, Lio/reactivex/processors/BehaviorProcessor;->TERMINATED:[Lio/reactivex/processors/BehaviorProcessor$BehaviorSubscription;

    if-ne v0, v4, :cond_1

    .line 367
    :goto_0
    return v3

    .line 361
    :cond_1
    array-length v2, v0

    .line 363
    .local v2, "len":I
    add-int/lit8 v4, v2, 0x1

    new-array v1, v4, [Lio/reactivex/processors/BehaviorProcessor$BehaviorSubscription;

    .line 364
    .local v1, "b":[Lio/reactivex/processors/BehaviorProcessor$BehaviorSubscription;, "[Lio/reactivex/processors/BehaviorProcessor$BehaviorSubscription<TT;>;"
    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 365
    aput-object p1, v1, v2

    .line 366
    iget-object v4, p0, Lio/reactivex/processors/BehaviorProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4, v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 367
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public getThrowable()Ljava/lang/Throwable;
    .locals 2

    .prologue
    .line 266
    .local p0, "this":Lio/reactivex/processors/BehaviorProcessor;, "Lio/reactivex/processors/BehaviorProcessor<TT;>;"
    iget-object v1, p0, Lio/reactivex/processors/BehaviorProcessor;->value:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 267
    .local v0, "o":Ljava/lang/Object;
    invoke-static {v0}, Lio/reactivex/internal/util/NotificationLite;->isError(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 268
    invoke-static {v0}, Lio/reactivex/internal/util/NotificationLite;->getError(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    .line 270
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
    .line 279
    .local p0, "this":Lio/reactivex/processors/BehaviorProcessor;, "Lio/reactivex/processors/BehaviorProcessor<TT;>;"
    iget-object v1, p0, Lio/reactivex/processors/BehaviorProcessor;->value:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 280
    .local v0, "o":Ljava/lang/Object;
    invoke-static {v0}, Lio/reactivex/internal/util/NotificationLite;->isComplete(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lio/reactivex/internal/util/NotificationLite;->isError(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 281
    :cond_0
    const/4 v1, 0x0

    .line 283
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
    .line 293
    .local p0, "this":Lio/reactivex/processors/BehaviorProcessor;, "Lio/reactivex/processors/BehaviorProcessor<TT;>;"
    sget-object v0, Lio/reactivex/processors/BehaviorProcessor;->EMPTY_ARRAY:[Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 294
    .local v0, "a":[Ljava/lang/Object;, "[TT;"
    invoke-virtual {p0, v0}, Lio/reactivex/processors/BehaviorProcessor;->getValues([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    .line 295
    .local v1, "b":[Ljava/lang/Object;, "[TT;"
    sget-object v2, Lio/reactivex/processors/BehaviorProcessor;->EMPTY_ARRAY:[Ljava/lang/Object;

    if-ne v1, v2, :cond_0

    .line 296
    const/4 v2, 0x0

    new-array v1, v2, [Ljava/lang/Object;

    .line 298
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
    .local p0, "this":Lio/reactivex/processors/BehaviorProcessor;, "Lio/reactivex/processors/BehaviorProcessor<TT;>;"
    .local p1, "array":[Ljava/lang/Object;, "[TT;"
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 312
    iget-object v3, p0, Lio/reactivex/processors/BehaviorProcessor;->value:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    .line 313
    .local v1, "o":Ljava/lang/Object;
    if-eqz v1, :cond_0

    invoke-static {v1}, Lio/reactivex/internal/util/NotificationLite;->isComplete(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v1}, Lio/reactivex/internal/util/NotificationLite;->isError(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 314
    :cond_0
    array-length v3, p1

    if-eqz v3, :cond_1

    .line 315
    aput-object v6, p1, v4

    :cond_1
    move-object v0, p1

    .line 329
    .end local p1    # "array":[Ljava/lang/Object;, "[TT;"
    .local v0, "array":[Ljava/lang/Object;, "[TT;"
    :goto_0
    return-object v0

    .line 319
    .end local v0    # "array":[Ljava/lang/Object;, "[TT;"
    .restart local p1    # "array":[Ljava/lang/Object;, "[TT;"
    :cond_2
    invoke-static {v1}, Lio/reactivex/internal/util/NotificationLite;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 320
    .local v2, "v":Ljava/lang/Object;, "TT;"
    array-length v3, p1

    if-eqz v3, :cond_4

    .line 321
    aput-object v2, p1, v4

    .line 322
    array-length v3, p1

    if-eq v3, v5, :cond_3

    .line 323
    aput-object v6, p1, v5

    :cond_3
    :goto_1
    move-object v0, p1

    .line 329
    .end local p1    # "array":[Ljava/lang/Object;, "[TT;"
    .restart local v0    # "array":[Ljava/lang/Object;, "[TT;"
    goto :goto_0

    .line 326
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

    .line 327
    aput-object v2, p1, v4

    goto :goto_1
.end method

.method public hasComplete()Z
    .locals 2

    .prologue
    .line 334
    .local p0, "this":Lio/reactivex/processors/BehaviorProcessor;, "Lio/reactivex/processors/BehaviorProcessor<TT;>;"
    iget-object v1, p0, Lio/reactivex/processors/BehaviorProcessor;->value:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 335
    .local v0, "o":Ljava/lang/Object;
    invoke-static {v0}, Lio/reactivex/internal/util/NotificationLite;->isComplete(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public hasSubscribers()Z
    .locals 1

    .prologue
    .line 256
    .local p0, "this":Lio/reactivex/processors/BehaviorProcessor;, "Lio/reactivex/processors/BehaviorProcessor<TT;>;"
    iget-object v0, p0, Lio/reactivex/processors/BehaviorProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/processors/BehaviorProcessor$BehaviorSubscription;

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
    .line 340
    .local p0, "this":Lio/reactivex/processors/BehaviorProcessor;, "Lio/reactivex/processors/BehaviorProcessor<TT;>;"
    iget-object v1, p0, Lio/reactivex/processors/BehaviorProcessor;->value:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 341
    .local v0, "o":Ljava/lang/Object;
    invoke-static {v0}, Lio/reactivex/internal/util/NotificationLite;->isError(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public hasValue()Z
    .locals 2

    .prologue
    .line 350
    .local p0, "this":Lio/reactivex/processors/BehaviorProcessor;, "Lio/reactivex/processors/BehaviorProcessor<TT;>;"
    iget-object v1, p0, Lio/reactivex/processors/BehaviorProcessor;->value:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 351
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

.method public offer(Ljava/lang/Object;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .annotation build Lio/reactivex/annotations/Experimental;
    .end annotation

    .prologue
    .local p0, "this":Lio/reactivex/processors/BehaviorProcessor;, "Lio/reactivex/processors/BehaviorProcessor<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    const/4 v7, 0x1

    .line 234
    if-nez p1, :cond_1

    .line 235
    new-instance v8, Ljava/lang/NullPointerException;

    const-string v9, "onNext called with null. Null values are generally not allowed in 2.x operators and sources."

    invoke-direct {v8, v9}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v8}, Lio/reactivex/processors/BehaviorProcessor;->onError(Ljava/lang/Throwable;)V

    .line 251
    :cond_0
    :goto_0
    return v7

    .line 238
    :cond_1
    iget-object v8, p0, Lio/reactivex/processors/BehaviorProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lio/reactivex/processors/BehaviorProcessor$BehaviorSubscription;

    .line 240
    .local v1, "array":[Lio/reactivex/processors/BehaviorProcessor$BehaviorSubscription;, "[Lio/reactivex/processors/BehaviorProcessor$BehaviorSubscription<TT;>;"
    move-object v0, v1

    .local v0, "arr$":[Lio/reactivex/processors/BehaviorProcessor$BehaviorSubscription;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v4, :cond_3

    aget-object v6, v0, v3

    .line 241
    .local v6, "s":Lio/reactivex/processors/BehaviorProcessor$BehaviorSubscription;, "Lio/reactivex/processors/BehaviorProcessor$BehaviorSubscription<TT;>;"
    invoke-virtual {v6}, Lio/reactivex/processors/BehaviorProcessor$BehaviorSubscription;->isFull()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 242
    const/4 v7, 0x0

    goto :goto_0

    .line 240
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 246
    .end local v6    # "s":Lio/reactivex/processors/BehaviorProcessor$BehaviorSubscription;, "Lio/reactivex/processors/BehaviorProcessor$BehaviorSubscription<TT;>;"
    :cond_3
    invoke-static {p1}, Lio/reactivex/internal/util/NotificationLite;->next(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 247
    .local v5, "o":Ljava/lang/Object;
    invoke-virtual {p0, v5}, Lio/reactivex/processors/BehaviorProcessor;->setCurrent(Ljava/lang/Object;)V

    .line 248
    move-object v0, v1

    array-length v4, v0

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v4, :cond_0

    aget-object v2, v0, v3

    .line 249
    .local v2, "bs":Lio/reactivex/processors/BehaviorProcessor$BehaviorSubscription;, "Lio/reactivex/processors/BehaviorProcessor$BehaviorSubscription<TT;>;"
    iget-wide v8, p0, Lio/reactivex/processors/BehaviorProcessor;->index:J

    invoke-virtual {v2, v5, v8, v9}, Lio/reactivex/processors/BehaviorProcessor$BehaviorSubscription;->emitNext(Ljava/lang/Object;J)V

    .line 248
    add-int/lit8 v3, v3, 0x1

    goto :goto_2
.end method

.method public onComplete()V
    .locals 8

    .prologue
    .line 210
    .local p0, "this":Lio/reactivex/processors/BehaviorProcessor;, "Lio/reactivex/processors/BehaviorProcessor<TT;>;"
    iget-object v5, p0, Lio/reactivex/processors/BehaviorProcessor;->terminalEvent:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v6, 0x0

    sget-object v7, Lio/reactivex/internal/util/ExceptionHelper;->TERMINATED:Ljava/lang/Throwable;

    invoke-virtual {v5, v6, v7}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 217
    :cond_0
    return-void

    .line 213
    :cond_1
    invoke-static {}, Lio/reactivex/internal/util/NotificationLite;->complete()Ljava/lang/Object;

    move-result-object v4

    .line 214
    .local v4, "o":Ljava/lang/Object;
    invoke-virtual {p0, v4}, Lio/reactivex/processors/BehaviorProcessor;->terminate(Ljava/lang/Object;)[Lio/reactivex/processors/BehaviorProcessor$BehaviorSubscription;

    move-result-object v0

    .local v0, "arr$":[Lio/reactivex/processors/BehaviorProcessor$BehaviorSubscription;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 215
    .local v1, "bs":Lio/reactivex/processors/BehaviorProcessor$BehaviorSubscription;, "Lio/reactivex/processors/BehaviorProcessor$BehaviorSubscription<TT;>;"
    iget-wide v6, p0, Lio/reactivex/processors/BehaviorProcessor;->index:J

    invoke-virtual {v1, v4, v6, v7}, Lio/reactivex/processors/BehaviorProcessor$BehaviorSubscription;->emitNext(Ljava/lang/Object;J)V

    .line 214
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 8
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 195
    .local p0, "this":Lio/reactivex/processors/BehaviorProcessor;, "Lio/reactivex/processors/BehaviorProcessor<TT;>;"
    if-nez p1, :cond_0

    .line 196
    new-instance p1, Ljava/lang/NullPointerException;

    .end local p1    # "t":Ljava/lang/Throwable;
    const-string v5, "onError called with null. Null values are generally not allowed in 2.x operators and sources."

    invoke-direct {p1, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 198
    .restart local p1    # "t":Ljava/lang/Throwable;
    :cond_0
    iget-object v5, p0, Lio/reactivex/processors/BehaviorProcessor;->terminalEvent:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v6, 0x0

    invoke-virtual {v5, v6, p1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 199
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    .line 206
    :cond_1
    return-void

    .line 202
    :cond_2
    invoke-static {p1}, Lio/reactivex/internal/util/NotificationLite;->error(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v4

    .line 203
    .local v4, "o":Ljava/lang/Object;
    invoke-virtual {p0, v4}, Lio/reactivex/processors/BehaviorProcessor;->terminate(Ljava/lang/Object;)[Lio/reactivex/processors/BehaviorProcessor$BehaviorSubscription;

    move-result-object v0

    .local v0, "arr$":[Lio/reactivex/processors/BehaviorProcessor$BehaviorSubscription;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 204
    .local v1, "bs":Lio/reactivex/processors/BehaviorProcessor$BehaviorSubscription;, "Lio/reactivex/processors/BehaviorProcessor$BehaviorSubscription<TT;>;"
    iget-wide v6, p0, Lio/reactivex/processors/BehaviorProcessor;->index:J

    invoke-virtual {v1, v4, v6, v7}, Lio/reactivex/processors/BehaviorProcessor$BehaviorSubscription;->emitNext(Ljava/lang/Object;J)V

    .line 203
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
    .line 179
    .local p0, "this":Lio/reactivex/processors/BehaviorProcessor;, "Lio/reactivex/processors/BehaviorProcessor<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    if-nez p1, :cond_1

    .line 180
    new-instance v5, Ljava/lang/NullPointerException;

    const-string v6, "onNext called with null. Null values are generally not allowed in 2.x operators and sources."

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Lio/reactivex/processors/BehaviorProcessor;->onError(Ljava/lang/Throwable;)V

    .line 191
    :cond_0
    return-void

    .line 183
    :cond_1
    iget-object v5, p0, Lio/reactivex/processors/BehaviorProcessor;->terminalEvent:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_0

    .line 186
    invoke-static {p1}, Lio/reactivex/internal/util/NotificationLite;->next(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 187
    .local v4, "o":Ljava/lang/Object;
    invoke-virtual {p0, v4}, Lio/reactivex/processors/BehaviorProcessor;->setCurrent(Ljava/lang/Object;)V

    .line 188
    iget-object v5, p0, Lio/reactivex/processors/BehaviorProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/processors/BehaviorProcessor$BehaviorSubscription;

    .local v0, "arr$":[Lio/reactivex/processors/BehaviorProcessor$BehaviorSubscription;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 189
    .local v1, "bs":Lio/reactivex/processors/BehaviorProcessor$BehaviorSubscription;, "Lio/reactivex/processors/BehaviorProcessor$BehaviorSubscription<TT;>;"
    iget-wide v6, p0, Lio/reactivex/processors/BehaviorProcessor;->index:J

    invoke-virtual {v1, v4, v6, v7}, Lio/reactivex/processors/BehaviorProcessor$BehaviorSubscription;->emitNext(Ljava/lang/Object;J)V

    .line 188
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public onSubscribe(Lorg/reactivestreams/Subscription;)V
    .locals 2
    .param p1, "s"    # Lorg/reactivestreams/Subscription;

    .prologue
    .line 170
    .local p0, "this":Lio/reactivex/processors/BehaviorProcessor;, "Lio/reactivex/processors/BehaviorProcessor<TT;>;"
    iget-object v0, p0, Lio/reactivex/processors/BehaviorProcessor;->terminalEvent:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 171
    invoke-interface {p1}, Lorg/reactivestreams/Subscription;->cancel()V

    .line 175
    :goto_0
    return-void

    .line 174
    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    invoke-interface {p1, v0, v1}, Lorg/reactivestreams/Subscription;->request(J)V

    goto :goto_0
.end method

.method remove(Lio/reactivex/processors/BehaviorProcessor$BehaviorSubscription;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/processors/BehaviorProcessor$BehaviorSubscription",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lio/reactivex/processors/BehaviorProcessor;, "Lio/reactivex/processors/BehaviorProcessor<TT;>;"
    .local p1, "rs":Lio/reactivex/processors/BehaviorProcessor$BehaviorSubscription;, "Lio/reactivex/processors/BehaviorProcessor$BehaviorSubscription<TT;>;"
    const/4 v7, 0x0

    .line 375
    :cond_0
    iget-object v5, p0, Lio/reactivex/processors/BehaviorProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/processors/BehaviorProcessor$BehaviorSubscription;

    .line 376
    .local v0, "a":[Lio/reactivex/processors/BehaviorProcessor$BehaviorSubscription;, "[Lio/reactivex/processors/BehaviorProcessor$BehaviorSubscription<TT;>;"
    sget-object v5, Lio/reactivex/processors/BehaviorProcessor;->TERMINATED:[Lio/reactivex/processors/BehaviorProcessor$BehaviorSubscription;

    if-eq v0, v5, :cond_1

    sget-object v5, Lio/reactivex/processors/BehaviorProcessor;->EMPTY:[Lio/reactivex/processors/BehaviorProcessor$BehaviorSubscription;

    if-ne v0, v5, :cond_2

    .line 400
    :cond_1
    :goto_0
    return-void

    .line 379
    :cond_2
    array-length v4, v0

    .line 380
    .local v4, "len":I
    const/4 v3, -0x1

    .line 381
    .local v3, "j":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v4, :cond_3

    .line 382
    aget-object v5, v0, v2

    if-ne v5, p1, :cond_4

    .line 383
    move v3, v2

    .line 388
    :cond_3
    if-ltz v3, :cond_1

    .line 392
    const/4 v5, 0x1

    if-ne v4, v5, :cond_5

    .line 393
    sget-object v1, Lio/reactivex/processors/BehaviorProcessor;->EMPTY:[Lio/reactivex/processors/BehaviorProcessor$BehaviorSubscription;

    .line 399
    .local v1, "b":[Lio/reactivex/processors/BehaviorProcessor$BehaviorSubscription;, "[Lio/reactivex/processors/BehaviorProcessor$BehaviorSubscription<TT;>;"
    :goto_2
    iget-object v5, p0, Lio/reactivex/processors/BehaviorProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v5, v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    .line 381
    .end local v1    # "b":[Lio/reactivex/processors/BehaviorProcessor$BehaviorSubscription;, "[Lio/reactivex/processors/BehaviorProcessor$BehaviorSubscription<TT;>;"
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 395
    :cond_5
    add-int/lit8 v5, v4, -0x1

    new-array v1, v5, [Lio/reactivex/processors/BehaviorProcessor$BehaviorSubscription;

    .line 396
    .restart local v1    # "b":[Lio/reactivex/processors/BehaviorProcessor$BehaviorSubscription;, "[Lio/reactivex/processors/BehaviorProcessor$BehaviorSubscription<TT;>;"
    invoke-static {v0, v7, v1, v7, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 397
    add-int/lit8 v5, v3, 0x1

    sub-int v6, v4, v3

    add-int/lit8 v6, v6, -0x1

    invoke-static {v0, v5, v1, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2
.end method

.method setCurrent(Ljava/lang/Object;)V
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 421
    .local p0, "this":Lio/reactivex/processors/BehaviorProcessor;, "Lio/reactivex/processors/BehaviorProcessor<TT;>;"
    iget-object v0, p0, Lio/reactivex/processors/BehaviorProcessor;->writeLock:Ljava/util/concurrent/locks/Lock;

    .line 422
    .local v0, "wl":Ljava/util/concurrent/locks/Lock;
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 423
    iget-wide v2, p0, Lio/reactivex/processors/BehaviorProcessor;->index:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lio/reactivex/processors/BehaviorProcessor;->index:J

    .line 424
    iget-object v1, p0, Lio/reactivex/processors/BehaviorProcessor;->value:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    .line 425
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 426
    return-void
.end method

.method protected subscribeActual(Lorg/reactivestreams/Subscriber;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 150
    .local p0, "this":Lio/reactivex/processors/BehaviorProcessor;, "Lio/reactivex/processors/BehaviorProcessor<TT;>;"
    .local p1, "s":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-TT;>;"
    new-instance v0, Lio/reactivex/processors/BehaviorProcessor$BehaviorSubscription;

    invoke-direct {v0, p1, p0}, Lio/reactivex/processors/BehaviorProcessor$BehaviorSubscription;-><init>(Lorg/reactivestreams/Subscriber;Lio/reactivex/processors/BehaviorProcessor;)V

    .line 151
    .local v0, "bs":Lio/reactivex/processors/BehaviorProcessor$BehaviorSubscription;, "Lio/reactivex/processors/BehaviorProcessor$BehaviorSubscription<TT;>;"
    invoke-interface {p1, v0}, Lorg/reactivestreams/Subscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    .line 152
    invoke-virtual {p0, v0}, Lio/reactivex/processors/BehaviorProcessor;->add(Lio/reactivex/processors/BehaviorProcessor$BehaviorSubscription;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 153
    iget-boolean v2, v0, Lio/reactivex/processors/BehaviorProcessor$BehaviorSubscription;->cancelled:Z

    if-eqz v2, :cond_0

    .line 154
    invoke-virtual {p0, v0}, Lio/reactivex/processors/BehaviorProcessor;->remove(Lio/reactivex/processors/BehaviorProcessor$BehaviorSubscription;)V

    .line 166
    :goto_0
    return-void

    .line 156
    :cond_0
    invoke-virtual {v0}, Lio/reactivex/processors/BehaviorProcessor$BehaviorSubscription;->emitFirst()V

    goto :goto_0

    .line 159
    :cond_1
    iget-object v2, p0, Lio/reactivex/processors/BehaviorProcessor;->terminalEvent:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;

    .line 160
    .local v1, "ex":Ljava/lang/Throwable;
    sget-object v2, Lio/reactivex/internal/util/ExceptionHelper;->TERMINATED:Ljava/lang/Throwable;

    if-ne v1, v2, :cond_2

    .line 161
    invoke-interface {p1}, Lorg/reactivestreams/Subscriber;->onComplete()V

    goto :goto_0

    .line 163
    :cond_2
    invoke-interface {p1, v1}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method subscriberCount()I
    .locals 1

    .prologue
    .line 261
    .local p0, "this":Lio/reactivex/processors/BehaviorProcessor;, "Lio/reactivex/processors/BehaviorProcessor<TT;>;"
    iget-object v0, p0, Lio/reactivex/processors/BehaviorProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/processors/BehaviorProcessor$BehaviorSubscription;

    array-length v0, v0

    return v0
.end method

.method terminate(Ljava/lang/Object;)[Lio/reactivex/processors/BehaviorProcessor$BehaviorSubscription;
    .locals 3
    .param p1, "terminalValue"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")[",
            "Lio/reactivex/processors/BehaviorProcessor$BehaviorSubscription",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 408
    .local p0, "this":Lio/reactivex/processors/BehaviorProcessor;, "Lio/reactivex/processors/BehaviorProcessor<TT;>;"
    iget-object v1, p0, Lio/reactivex/processors/BehaviorProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/processors/BehaviorProcessor$BehaviorSubscription;

    .line 409
    .local v0, "a":[Lio/reactivex/processors/BehaviorProcessor$BehaviorSubscription;, "[Lio/reactivex/processors/BehaviorProcessor$BehaviorSubscription<TT;>;"
    sget-object v1, Lio/reactivex/processors/BehaviorProcessor;->TERMINATED:[Lio/reactivex/processors/BehaviorProcessor$BehaviorSubscription;

    if-eq v0, v1, :cond_0

    .line 410
    iget-object v1, p0, Lio/reactivex/processors/BehaviorProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Lio/reactivex/processors/BehaviorProcessor;->TERMINATED:[Lio/reactivex/processors/BehaviorProcessor$BehaviorSubscription;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "a":[Lio/reactivex/processors/BehaviorProcessor$BehaviorSubscription;, "[Lio/reactivex/processors/BehaviorProcessor$BehaviorSubscription<TT;>;"
    check-cast v0, [Lio/reactivex/processors/BehaviorProcessor$BehaviorSubscription;

    .line 411
    .restart local v0    # "a":[Lio/reactivex/processors/BehaviorProcessor$BehaviorSubscription;, "[Lio/reactivex/processors/BehaviorProcessor$BehaviorSubscription<TT;>;"
    sget-object v1, Lio/reactivex/processors/BehaviorProcessor;->TERMINATED:[Lio/reactivex/processors/BehaviorProcessor$BehaviorSubscription;

    if-eq v0, v1, :cond_0

    .line 413
    invoke-virtual {p0, p1}, Lio/reactivex/processors/BehaviorProcessor;->setCurrent(Ljava/lang/Object;)V

    .line 417
    :cond_0
    return-object v0
.end method
