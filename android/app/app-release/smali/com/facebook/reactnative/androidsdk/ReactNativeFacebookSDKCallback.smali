.class public abstract Lcom/facebook/reactnative/androidsdk/ReactNativeFacebookSDKCallback;
.super Ljava/lang/Object;
.source "ReactNativeFacebookSDKCallback.java"

# interfaces
.implements Lcom/facebook/FacebookCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<RESU",
        "LT:Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/facebook/FacebookCallback",
        "<TRESU",
        "LT;",
        ">;"
    }
.end annotation


# instance fields
.field mPromise:Lcom/facebook/react/bridge/Promise;


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/Promise;)V
    .locals 0
    .param p1, "promise"    # Lcom/facebook/react/bridge/Promise;

    .prologue
    .line 37
    .local p0, "this":Lcom/facebook/reactnative/androidsdk/ReactNativeFacebookSDKCallback;, "Lcom/facebook/reactnative/androidsdk/ReactNativeFacebookSDKCallback<TRESULT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/facebook/reactnative/androidsdk/ReactNativeFacebookSDKCallback;->mPromise:Lcom/facebook/react/bridge/Promise;

    .line 39
    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 3

    .prologue
    .line 43
    .local p0, "this":Lcom/facebook/reactnative/androidsdk/ReactNativeFacebookSDKCallback;, "Lcom/facebook/reactnative/androidsdk/ReactNativeFacebookSDKCallback<TRESULT;>;"
    iget-object v1, p0, Lcom/facebook/reactnative/androidsdk/ReactNativeFacebookSDKCallback;->mPromise:Lcom/facebook/react/bridge/Promise;

    if-eqz v1, :cond_0

    .line 44
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 45
    .local v0, "result":Lcom/facebook/react/bridge/WritableMap;
    const-string v1, "isCancelled"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    .line 46
    iget-object v1, p0, Lcom/facebook/reactnative/androidsdk/ReactNativeFacebookSDKCallback;->mPromise:Lcom/facebook/react/bridge/Promise;

    invoke-interface {v1, v0}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    .line 47
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/facebook/reactnative/androidsdk/ReactNativeFacebookSDKCallback;->mPromise:Lcom/facebook/react/bridge/Promise;

    .line 49
    .end local v0    # "result":Lcom/facebook/react/bridge/WritableMap;
    :cond_0
    return-void
.end method

.method public onError(Lcom/facebook/FacebookException;)V
    .locals 1
    .param p1, "error"    # Lcom/facebook/FacebookException;

    .prologue
    .line 53
    .local p0, "this":Lcom/facebook/reactnative/androidsdk/ReactNativeFacebookSDKCallback;, "Lcom/facebook/reactnative/androidsdk/ReactNativeFacebookSDKCallback<TRESULT;>;"
    iget-object v0, p0, Lcom/facebook/reactnative/androidsdk/ReactNativeFacebookSDKCallback;->mPromise:Lcom/facebook/react/bridge/Promise;

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/facebook/reactnative/androidsdk/ReactNativeFacebookSDKCallback;->mPromise:Lcom/facebook/react/bridge/Promise;

    invoke-interface {v0, p1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/Throwable;)V

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/reactnative/androidsdk/ReactNativeFacebookSDKCallback;->mPromise:Lcom/facebook/react/bridge/Promise;

    .line 57
    :cond_0
    return-void
.end method
