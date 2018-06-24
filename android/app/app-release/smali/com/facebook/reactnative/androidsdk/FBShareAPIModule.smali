.class public Lcom/facebook/reactnative/androidsdk/FBShareAPIModule;
.super Lcom/facebook/react/bridge/ReactContextBaseJavaModule;
.source "FBShareAPIModule.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/reactnative/androidsdk/FBShareAPIModule$ShareAPICallback;
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 0
    .param p1, "reactContext"    # Lcom/facebook/react/bridge/ReactApplicationContext;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 59
    return-void
.end method


# virtual methods
.method public canShare(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 3
    .param p1, "shareContentMap"    # Lcom/facebook/react/bridge/ReadableMap;
    .param p2, "promise"    # Lcom/facebook/react/bridge/Promise;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .prologue
    .line 94
    invoke-static {p1}, Lcom/facebook/reactnative/androidsdk/Utility;->buildShareContent(Lcom/facebook/react/bridge/ReadableMap;)Lcom/facebook/share/model/ShareContent;

    move-result-object v1

    .line 95
    .local v1, "shareContent":Lcom/facebook/share/model/ShareContent;
    if-eqz v1, :cond_0

    .line 96
    new-instance v0, Lcom/facebook/share/ShareApi;

    invoke-direct {v0, v1}, Lcom/facebook/share/ShareApi;-><init>(Lcom/facebook/share/model/ShareContent;)V

    .line 97
    .local v0, "shareApi":Lcom/facebook/share/ShareApi;
    invoke-virtual {v0}, Lcom/facebook/share/ShareApi;->canShare()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {p2, v2}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    .line 101
    .end local v0    # "shareApi":Lcom/facebook/share/ShareApi;
    :goto_0
    return-void

    .line 99
    :cond_0
    const-string v2, "ShareContent cannot be null"

    invoke-interface {p2, v2}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    const-string v0, "FBShareApi"

    return-object v0
.end method

.method public share(Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 3
    .param p1, "shareContentMap"    # Lcom/facebook/react/bridge/ReadableMap;
    .param p2, "graphNode"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "promise"    # Lcom/facebook/react/bridge/Promise;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .prologue
    .line 76
    invoke-static {p1}, Lcom/facebook/reactnative/androidsdk/Utility;->buildShareContent(Lcom/facebook/react/bridge/ReadableMap;)Lcom/facebook/share/model/ShareContent;

    move-result-object v1

    .line 77
    .local v1, "shareContent":Lcom/facebook/share/model/ShareContent;
    if-eqz v1, :cond_0

    .line 78
    new-instance v0, Lcom/facebook/share/ShareApi;

    invoke-direct {v0, v1}, Lcom/facebook/share/ShareApi;-><init>(Lcom/facebook/share/model/ShareContent;)V

    .line 79
    .local v0, "shareApi":Lcom/facebook/share/ShareApi;
    invoke-virtual {v0, p2}, Lcom/facebook/share/ShareApi;->setGraphNode(Ljava/lang/String;)V

    .line 80
    invoke-virtual {v0, p3}, Lcom/facebook/share/ShareApi;->setMessage(Ljava/lang/String;)V

    .line 81
    new-instance v2, Lcom/facebook/reactnative/androidsdk/FBShareAPIModule$ShareAPICallback;

    invoke-direct {v2, p0, p4}, Lcom/facebook/reactnative/androidsdk/FBShareAPIModule$ShareAPICallback;-><init>(Lcom/facebook/reactnative/androidsdk/FBShareAPIModule;Lcom/facebook/react/bridge/Promise;)V

    invoke-virtual {v0, v2}, Lcom/facebook/share/ShareApi;->share(Lcom/facebook/FacebookCallback;)V

    .line 85
    .end local v0    # "shareApi":Lcom/facebook/share/ShareApi;
    :goto_0
    return-void

    .line 83
    :cond_0
    const-string v2, "ShareContent cannot be null"

    invoke-interface {p4, v2}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;)V

    goto :goto_0
.end method
