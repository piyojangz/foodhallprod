.class public Lcom/idehub/GoogleAnalyticsBridge/GoogleTagManagerBridge;
.super Lcom/facebook/react/bridge/ReactContextBaseJavaModule;
.source "GoogleTagManagerBridge.java"


# instance fields
.field private final E_CONTAINER_ALREADY_OPEN:Ljava/lang/String;

.field private final E_CONTAINER_NOT_OPENED:Ljava/lang/String;

.field private final E_ONGOING_OPEN_OPERATION:Ljava/lang/String;

.field private final E_OPEN_CONTAINER_FAILED:Ljava/lang/String;

.field private final E_PUSH_EVENT_FAILED:Ljava/lang/String;

.field private mContainerHolder:Lcom/google/android/gms/tagmanager/ContainerHolder;

.field private mDatalayer:Lcom/google/android/gms/tagmanager/DataLayer;

.field private openOperationInProgress:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 1
    .param p1, "reactContext"    # Lcom/facebook/react/bridge/ReactApplicationContext;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 26
    const-string v0, "E_CONTAINER_ALREADY_OPEN"

    iput-object v0, p0, Lcom/idehub/GoogleAnalyticsBridge/GoogleTagManagerBridge;->E_CONTAINER_ALREADY_OPEN:Ljava/lang/String;

    .line 27
    const-string v0, "E_ONGOING_OPEN_OPERATION"

    iput-object v0, p0, Lcom/idehub/GoogleAnalyticsBridge/GoogleTagManagerBridge;->E_ONGOING_OPEN_OPERATION:Ljava/lang/String;

    .line 28
    const-string v0, "E_CONTAINER_NOT_OPENED"

    iput-object v0, p0, Lcom/idehub/GoogleAnalyticsBridge/GoogleTagManagerBridge;->E_CONTAINER_NOT_OPENED:Ljava/lang/String;

    .line 29
    const-string v0, "E_OPEN_CONTAINER_FAILED"

    iput-object v0, p0, Lcom/idehub/GoogleAnalyticsBridge/GoogleTagManagerBridge;->E_OPEN_CONTAINER_FAILED:Ljava/lang/String;

    .line 30
    const-string v0, "E_PUSH_EVENT_FAILED"

    iput-object v0, p0, Lcom/idehub/GoogleAnalyticsBridge/GoogleTagManagerBridge;->E_PUSH_EVENT_FAILED:Ljava/lang/String;

    .line 33
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/idehub/GoogleAnalyticsBridge/GoogleTagManagerBridge;->openOperationInProgress:Ljava/lang/Boolean;

    .line 23
    return-void
.end method

.method static synthetic access$002(Lcom/idehub/GoogleAnalyticsBridge/GoogleTagManagerBridge;Lcom/google/android/gms/tagmanager/ContainerHolder;)Lcom/google/android/gms/tagmanager/ContainerHolder;
    .locals 0
    .param p0, "x0"    # Lcom/idehub/GoogleAnalyticsBridge/GoogleTagManagerBridge;
    .param p1, "x1"    # Lcom/google/android/gms/tagmanager/ContainerHolder;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/idehub/GoogleAnalyticsBridge/GoogleTagManagerBridge;->mContainerHolder:Lcom/google/android/gms/tagmanager/ContainerHolder;

    return-object p1
.end method

.method static synthetic access$102(Lcom/idehub/GoogleAnalyticsBridge/GoogleTagManagerBridge;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .param p0, "x0"    # Lcom/idehub/GoogleAnalyticsBridge/GoogleTagManagerBridge;
    .param p1, "x1"    # Ljava/lang/Boolean;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/idehub/GoogleAnalyticsBridge/GoogleTagManagerBridge;->openOperationInProgress:Ljava/lang/Boolean;

    return-object p1
.end method

.method private getDataLayer()Lcom/google/android/gms/tagmanager/DataLayer;
    .locals 2

    .prologue
    .line 119
    iget-object v1, p0, Lcom/idehub/GoogleAnalyticsBridge/GoogleTagManagerBridge;->mDatalayer:Lcom/google/android/gms/tagmanager/DataLayer;

    if-nez v1, :cond_0

    .line 120
    invoke-virtual {p0}, Lcom/idehub/GoogleAnalyticsBridge/GoogleTagManagerBridge;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/tagmanager/TagManager;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/tagmanager/TagManager;

    move-result-object v0

    .line 121
    .local v0, "tagManager":Lcom/google/android/gms/tagmanager/TagManager;
    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/TagManager;->getDataLayer()Lcom/google/android/gms/tagmanager/DataLayer;

    move-result-object v1

    iput-object v1, p0, Lcom/idehub/GoogleAnalyticsBridge/GoogleTagManagerBridge;->mDatalayer:Lcom/google/android/gms/tagmanager/DataLayer;

    .line 123
    .end local v0    # "tagManager":Lcom/google/android/gms/tagmanager/TagManager;
    :cond_0
    iget-object v1, p0, Lcom/idehub/GoogleAnalyticsBridge/GoogleTagManagerBridge;->mDatalayer:Lcom/google/android/gms/tagmanager/DataLayer;

    return-object v1
.end method

.method private isValidMapToPushEvent(Lcom/facebook/react/bridge/ReadableMap;)Z
    .locals 1
    .param p1, "dictionary"    # Lcom/facebook/react/bridge/ReadableMap;

    .prologue
    .line 114
    if-eqz p1, :cond_0

    const-string v0, "event"

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "event"

    .line 115
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    .line 114
    :goto_0
    return v0

    .line 115
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public booleanForKey(Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "promise"    # Lcom/facebook/react/bridge/Promise;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .prologue
    .line 73
    iget-object v0, p0, Lcom/idehub/GoogleAnalyticsBridge/GoogleTagManagerBridge;->mContainerHolder:Lcom/google/android/gms/tagmanager/ContainerHolder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/idehub/GoogleAnalyticsBridge/GoogleTagManagerBridge;->mContainerHolder:Lcom/google/android/gms/tagmanager/ContainerHolder;

    invoke-interface {v0}, Lcom/google/android/gms/tagmanager/ContainerHolder;->getContainer()Lcom/google/android/gms/tagmanager/Container;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/idehub/GoogleAnalyticsBridge/GoogleTagManagerBridge;->mContainerHolder:Lcom/google/android/gms/tagmanager/ContainerHolder;

    invoke-interface {v0}, Lcom/google/android/gms/tagmanager/ContainerHolder;->getContainer()Lcom/google/android/gms/tagmanager/Container;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/tagmanager/Container;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    .line 78
    :goto_0
    return-void

    .line 76
    :cond_0
    const-string v0, "E_CONTAINER_NOT_OPENED"

    new-instance v1, Ljava/lang/Throwable;

    const-string v2, "The container has not been opened. You must call openContainerWithId(..)"

    invoke-direct {v1, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, v0, v1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public doubleForKey(Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "promise"    # Lcom/facebook/react/bridge/Promise;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .prologue
    .line 91
    iget-object v0, p0, Lcom/idehub/GoogleAnalyticsBridge/GoogleTagManagerBridge;->mContainerHolder:Lcom/google/android/gms/tagmanager/ContainerHolder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/idehub/GoogleAnalyticsBridge/GoogleTagManagerBridge;->mContainerHolder:Lcom/google/android/gms/tagmanager/ContainerHolder;

    invoke-interface {v0}, Lcom/google/android/gms/tagmanager/ContainerHolder;->getContainer()Lcom/google/android/gms/tagmanager/Container;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/idehub/GoogleAnalyticsBridge/GoogleTagManagerBridge;->mContainerHolder:Lcom/google/android/gms/tagmanager/ContainerHolder;

    invoke-interface {v0}, Lcom/google/android/gms/tagmanager/ContainerHolder;->getContainer()Lcom/google/android/gms/tagmanager/Container;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/tagmanager/Container;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    .line 96
    :goto_0
    return-void

    .line 94
    :cond_0
    const-string v0, "E_CONTAINER_NOT_OPENED"

    new-instance v1, Ljava/lang/Throwable;

    const-string v2, "The container has not been opened. You must call openContainerWithId(..)"

    invoke-direct {v1, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, v0, v1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    const-string v0, "GoogleTagManagerBridge"

    return-object v0
.end method

.method public openContainerWithId(Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 6
    .param p1, "containerId"    # Ljava/lang/String;
    .param p2, "promise"    # Lcom/facebook/react/bridge/Promise;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .prologue
    .line 43
    iget-object v2, p0, Lcom/idehub/GoogleAnalyticsBridge/GoogleTagManagerBridge;->mContainerHolder:Lcom/google/android/gms/tagmanager/ContainerHolder;

    if-eqz v2, :cond_0

    .line 44
    const-string v2, "E_CONTAINER_ALREADY_OPEN"

    new-instance v3, Ljava/lang/Throwable;

    const-string v4, "The container is already open."

    invoke-direct {v3, v4}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, v2, v3}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 69
    :goto_0
    return-void

    .line 48
    :cond_0
    iget-object v2, p0, Lcom/idehub/GoogleAnalyticsBridge/GoogleTagManagerBridge;->openOperationInProgress:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 49
    const-string v2, "E_ONGOING_OPEN_OPERATION"

    new-instance v3, Ljava/lang/Throwable;

    const-string v4, "Container open-operation already in progress."

    invoke-direct {v3, v4}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, v2, v3}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 53
    :cond_1
    invoke-virtual {p0}, Lcom/idehub/GoogleAnalyticsBridge/GoogleTagManagerBridge;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/tagmanager/TagManager;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/tagmanager/TagManager;

    move-result-object v0

    .line 55
    .local v0, "mTagManager":Lcom/google/android/gms/tagmanager/TagManager;
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/idehub/GoogleAnalyticsBridge/GoogleTagManagerBridge;->openOperationInProgress:Ljava/lang/Boolean;

    .line 56
    const/4 v2, -0x1

    invoke-virtual {v0, p1, v2}, Lcom/google/android/gms/tagmanager/TagManager;->loadContainerPreferFresh(Ljava/lang/String;I)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v1

    .line 57
    .local v1, "pending":Lcom/google/android/gms/common/api/PendingResult;, "Lcom/google/android/gms/common/api/PendingResult<Lcom/google/android/gms/tagmanager/ContainerHolder;>;"
    new-instance v2, Lcom/idehub/GoogleAnalyticsBridge/GoogleTagManagerBridge$1;

    invoke-direct {v2, p0, p2, p1}, Lcom/idehub/GoogleAnalyticsBridge/GoogleTagManagerBridge$1;-><init>(Lcom/idehub/GoogleAnalyticsBridge/GoogleTagManagerBridge;Lcom/facebook/react/bridge/Promise;Ljava/lang/String;)V

    const-wide/16 v4, 0x7d0

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v4, v5, v3}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;JLjava/util/concurrent/TimeUnit;)V

    goto :goto_0
.end method

.method public pushDataLayerEvent(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 3
    .param p1, "dictionary"    # Lcom/facebook/react/bridge/ReadableMap;
    .param p2, "promise"    # Lcom/facebook/react/bridge/Promise;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .prologue
    .line 101
    iget-object v0, p0, Lcom/idehub/GoogleAnalyticsBridge/GoogleTagManagerBridge;->mContainerHolder:Lcom/google/android/gms/tagmanager/ContainerHolder;

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/idehub/GoogleAnalyticsBridge/GoogleTagManagerBridge;->isValidMapToPushEvent(Lcom/facebook/react/bridge/ReadableMap;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    invoke-direct {p0}, Lcom/idehub/GoogleAnalyticsBridge/GoogleTagManagerBridge;->getDataLayer()Lcom/google/android/gms/tagmanager/DataLayer;

    move-result-object v0

    invoke-static {p1}, Lcom/idehub/GoogleAnalyticsBridge/ConvertReadableToMap;->getMap(Lcom/facebook/react/bridge/ReadableMap;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tagmanager/DataLayer;->push(Ljava/util/Map;)V

    .line 103
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    .line 111
    :goto_0
    return-void

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/idehub/GoogleAnalyticsBridge/GoogleTagManagerBridge;->mContainerHolder:Lcom/google/android/gms/tagmanager/ContainerHolder;

    if-nez v0, :cond_1

    .line 106
    const-string v0, "E_CONTAINER_NOT_OPENED"

    new-instance v1, Ljava/lang/Throwable;

    const-string v2, "The container has not been opened. You must call openContainerWithId(..)"

    invoke-direct {v1, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, v0, v1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 108
    :cond_1
    const-string v0, "E_PUSH_EVENT_FAILED"

    new-instance v1, Ljava/lang/Throwable;

    const-string v2, "Validation error, data must have a key \"event\" with valid event name"

    invoke-direct {v1, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, v0, v1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public stringForKey(Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "promise"    # Lcom/facebook/react/bridge/Promise;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .prologue
    .line 82
    iget-object v0, p0, Lcom/idehub/GoogleAnalyticsBridge/GoogleTagManagerBridge;->mContainerHolder:Lcom/google/android/gms/tagmanager/ContainerHolder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/idehub/GoogleAnalyticsBridge/GoogleTagManagerBridge;->mContainerHolder:Lcom/google/android/gms/tagmanager/ContainerHolder;

    invoke-interface {v0}, Lcom/google/android/gms/tagmanager/ContainerHolder;->getContainer()Lcom/google/android/gms/tagmanager/Container;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/idehub/GoogleAnalyticsBridge/GoogleTagManagerBridge;->mContainerHolder:Lcom/google/android/gms/tagmanager/ContainerHolder;

    invoke-interface {v0}, Lcom/google/android/gms/tagmanager/ContainerHolder;->getContainer()Lcom/google/android/gms/tagmanager/Container;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/tagmanager/Container;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    .line 87
    :goto_0
    return-void

    .line 85
    :cond_0
    const-string v0, "E_CONTAINER_NOT_OPENED"

    new-instance v1, Ljava/lang/Throwable;

    const-string v2, "The container has not been opened. You must call openContainerWithId(..)"

    invoke-direct {v1, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, v0, v1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
