.class public Lcom/reactnative/ivpusic/imagepicker/ResultCollector;
.super Ljava/lang/Object;
.source "ResultCollector.java"


# instance fields
.field private arrayResult:Lcom/facebook/react/bridge/WritableArray;

.field private multiple:Z

.field private promise:Lcom/facebook/react/bridge/Promise;

.field private resultSent:Z

.field private waitCount:I

.field private waitCounter:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/Promise;Z)V
    .locals 1
    .param p1, "promise"    # Lcom/facebook/react/bridge/Promise;
    .param p2, "multiple"    # Z

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/reactnative/ivpusic/imagepicker/ResultCollector;->resultSent:Z

    .line 25
    iput-object p1, p0, Lcom/reactnative/ivpusic/imagepicker/ResultCollector;->promise:Lcom/facebook/react/bridge/Promise;

    .line 26
    iput-boolean p2, p0, Lcom/reactnative/ivpusic/imagepicker/ResultCollector;->multiple:Z

    .line 28
    if-eqz p2, :cond_0

    .line 29
    new-instance v0, Lcom/facebook/react/bridge/WritableNativeArray;

    invoke-direct {v0}, Lcom/facebook/react/bridge/WritableNativeArray;-><init>()V

    iput-object v0, p0, Lcom/reactnative/ivpusic/imagepicker/ResultCollector;->arrayResult:Lcom/facebook/react/bridge/WritableArray;

    .line 31
    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized notifyProblem(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 60
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/reactnative/ivpusic/imagepicker/ResultCollector;->resultSent:Z

    if-eqz v0, :cond_0

    .line 61
    const-string v0, "image-crop-picker"

    const-string v1, "Skipping result, already sent..."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    :cond_0
    const-string v0, "image-crop-picker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Promise rejected. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    iget-object v0, p0, Lcom/reactnative/ivpusic/imagepicker/ResultCollector;->promise:Lcom/facebook/react/bridge/Promise;

    invoke-interface {v0, p1, p2}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/reactnative/ivpusic/imagepicker/ResultCollector;->resultSent:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    monitor-exit p0

    return-void

    .line 60
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized notifyProblem(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 70
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/reactnative/ivpusic/imagepicker/ResultCollector;->resultSent:Z

    if-eqz v0, :cond_0

    .line 71
    const-string v0, "image-crop-picker"

    const-string v1, "Skipping result, already sent..."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    :cond_0
    const-string v0, "image-crop-picker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Promise rejected. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    iget-object v0, p0, Lcom/reactnative/ivpusic/imagepicker/ResultCollector;->promise:Lcom/facebook/react/bridge/Promise;

    invoke-interface {v0, p1, p2}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 76
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/reactnative/ivpusic/imagepicker/ResultCollector;->resultSent:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    monitor-exit p0

    return-void

    .line 70
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized notifySuccess(Lcom/facebook/react/bridge/WritableMap;)V
    .locals 3
    .param p1, "result"    # Lcom/facebook/react/bridge/WritableMap;

    .prologue
    .line 41
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/reactnative/ivpusic/imagepicker/ResultCollector;->resultSent:Z

    if-eqz v1, :cond_0

    .line 42
    const-string v1, "image-crop-picker"

    const-string v2, "Skipping result, already sent..."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    :cond_0
    iget-boolean v1, p0, Lcom/reactnative/ivpusic/imagepicker/ResultCollector;->multiple:Z

    if-eqz v1, :cond_2

    .line 46
    iget-object v1, p0, Lcom/reactnative/ivpusic/imagepicker/ResultCollector;->arrayResult:Lcom/facebook/react/bridge/WritableArray;

    invoke-interface {v1, p1}, Lcom/facebook/react/bridge/WritableArray;->pushMap(Lcom/facebook/react/bridge/WritableMap;)V

    .line 47
    iget-object v1, p0, Lcom/reactnative/ivpusic/imagepicker/ResultCollector;->waitCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v0

    .line 49
    .local v0, "currentCount":I
    iget v1, p0, Lcom/reactnative/ivpusic/imagepicker/ResultCollector;->waitCount:I

    if-ne v0, v1, :cond_1

    .line 50
    iget-object v1, p0, Lcom/reactnative/ivpusic/imagepicker/ResultCollector;->promise:Lcom/facebook/react/bridge/Promise;

    iget-object v2, p0, Lcom/reactnative/ivpusic/imagepicker/ResultCollector;->arrayResult:Lcom/facebook/react/bridge/WritableArray;

    invoke-interface {v1, v2}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    .line 51
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/reactnative/ivpusic/imagepicker/ResultCollector;->resultSent:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    .end local v0    # "currentCount":I
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 54
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/reactnative/ivpusic/imagepicker/ResultCollector;->promise:Lcom/facebook/react/bridge/Promise;

    invoke-interface {v1, p1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    .line 55
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/reactnative/ivpusic/imagepicker/ResultCollector;->resultSent:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 41
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public setWaitCount(I)V
    .locals 2
    .param p1, "waitCount"    # I

    .prologue
    .line 36
    iput p1, p0, Lcom/reactnative/ivpusic/imagepicker/ResultCollector;->waitCount:I

    .line 37
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/reactnative/ivpusic/imagepicker/ResultCollector;->waitCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 38
    return-void
.end method
