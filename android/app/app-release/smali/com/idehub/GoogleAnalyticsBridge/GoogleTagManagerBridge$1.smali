.class Lcom/idehub/GoogleAnalyticsBridge/GoogleTagManagerBridge$1;
.super Ljava/lang/Object;
.source "GoogleTagManagerBridge.java"

# interfaces
.implements Lcom/google/android/gms/common/api/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/idehub/GoogleAnalyticsBridge/GoogleTagManagerBridge;->openContainerWithId(Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/ResultCallback",
        "<",
        "Lcom/google/android/gms/tagmanager/ContainerHolder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/idehub/GoogleAnalyticsBridge/GoogleTagManagerBridge;

.field final synthetic val$containerId:Ljava/lang/String;

.field final synthetic val$promise:Lcom/facebook/react/bridge/Promise;


# direct methods
.method constructor <init>(Lcom/idehub/GoogleAnalyticsBridge/GoogleTagManagerBridge;Lcom/facebook/react/bridge/Promise;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/idehub/GoogleAnalyticsBridge/GoogleTagManagerBridge;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/idehub/GoogleAnalyticsBridge/GoogleTagManagerBridge$1;->this$0:Lcom/idehub/GoogleAnalyticsBridge/GoogleTagManagerBridge;

    iput-object p2, p0, Lcom/idehub/GoogleAnalyticsBridge/GoogleTagManagerBridge$1;->val$promise:Lcom/facebook/react/bridge/Promise;

    iput-object p3, p0, Lcom/idehub/GoogleAnalyticsBridge/GoogleTagManagerBridge$1;->val$containerId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResult(Lcom/google/android/gms/common/api/Result;)V
    .locals 0

    .prologue
    .line 57
    check-cast p1, Lcom/google/android/gms/tagmanager/ContainerHolder;

    invoke-virtual {p0, p1}, Lcom/idehub/GoogleAnalyticsBridge/GoogleTagManagerBridge$1;->onResult(Lcom/google/android/gms/tagmanager/ContainerHolder;)V

    return-void
.end method

.method public onResult(Lcom/google/android/gms/tagmanager/ContainerHolder;)V
    .locals 7
    .param p1, "containerHolder"    # Lcom/google/android/gms/tagmanager/ContainerHolder;

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 60
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/google/android/gms/tagmanager/ContainerHolder;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/idehub/GoogleAnalyticsBridge/GoogleTagManagerBridge$1;->this$0:Lcom/idehub/GoogleAnalyticsBridge/GoogleTagManagerBridge;

    invoke-static {v0, p1}, Lcom/idehub/GoogleAnalyticsBridge/GoogleTagManagerBridge;->access$002(Lcom/idehub/GoogleAnalyticsBridge/GoogleTagManagerBridge;Lcom/google/android/gms/tagmanager/ContainerHolder;)Lcom/google/android/gms/tagmanager/ContainerHolder;

    .line 62
    iget-object v0, p0, Lcom/idehub/GoogleAnalyticsBridge/GoogleTagManagerBridge$1;->val$promise:Lcom/facebook/react/bridge/Promise;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    .line 66
    :goto_0
    iget-object v0, p0, Lcom/idehub/GoogleAnalyticsBridge/GoogleTagManagerBridge$1;->this$0:Lcom/idehub/GoogleAnalyticsBridge/GoogleTagManagerBridge;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/idehub/GoogleAnalyticsBridge/GoogleTagManagerBridge;->access$102(Lcom/idehub/GoogleAnalyticsBridge/GoogleTagManagerBridge;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 67
    return-void

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/idehub/GoogleAnalyticsBridge/GoogleTagManagerBridge$1;->val$promise:Lcom/facebook/react/bridge/Promise;

    const-string v1, "E_OPEN_CONTAINER_FAILED"

    new-instance v2, Ljava/lang/Throwable;

    const-string v3, "Failed to open container. Does container with id %s exist?"

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/idehub/GoogleAnalyticsBridge/GoogleTagManagerBridge$1;->val$containerId:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
