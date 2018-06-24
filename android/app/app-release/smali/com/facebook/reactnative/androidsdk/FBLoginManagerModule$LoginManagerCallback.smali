.class Lcom/facebook/reactnative/androidsdk/FBLoginManagerModule$LoginManagerCallback;
.super Lcom/facebook/reactnative/androidsdk/ReactNativeFacebookSDKCallback;
.source "FBLoginManagerModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/reactnative/androidsdk/FBLoginManagerModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoginManagerCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/reactnative/androidsdk/ReactNativeFacebookSDKCallback",
        "<",
        "Lcom/facebook/login/LoginResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/reactnative/androidsdk/FBLoginManagerModule;


# direct methods
.method public constructor <init>(Lcom/facebook/reactnative/androidsdk/FBLoginManagerModule;Lcom/facebook/react/bridge/Promise;)V
    .locals 0
    .param p2, "promise"    # Lcom/facebook/react/bridge/Promise;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/facebook/reactnative/androidsdk/FBLoginManagerModule$LoginManagerCallback;->this$0:Lcom/facebook/reactnative/androidsdk/FBLoginManagerModule;

    .line 56
    invoke-direct {p0, p2}, Lcom/facebook/reactnative/androidsdk/ReactNativeFacebookSDKCallback;-><init>(Lcom/facebook/react/bridge/Promise;)V

    .line 57
    return-void
.end method


# virtual methods
.method public onSuccess(Lcom/facebook/login/LoginResult;)V
    .locals 5
    .param p1, "loginResult"    # Lcom/facebook/login/LoginResult;

    .prologue
    .line 61
    iget-object v2, p0, Lcom/facebook/reactnative/androidsdk/FBLoginManagerModule$LoginManagerCallback;->mPromise:Lcom/facebook/react/bridge/Promise;

    if-eqz v2, :cond_0

    .line 62
    invoke-virtual {p1}, Lcom/facebook/login/LoginResult;->getAccessToken()Lcom/facebook/AccessToken;

    move-result-object v0

    .line 63
    .local v0, "accessToken":Lcom/facebook/AccessToken;
    invoke-static {v0}, Lcom/facebook/AccessToken;->setCurrentAccessToken(Lcom/facebook/AccessToken;)V

    .line 64
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v1

    .line 65
    .local v1, "result":Lcom/facebook/react/bridge/WritableMap;
    const-string v2, "isCancelled"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    .line 66
    const-string v2, "grantedPermissions"

    iget-object v3, p0, Lcom/facebook/reactnative/androidsdk/FBLoginManagerModule$LoginManagerCallback;->this$0:Lcom/facebook/reactnative/androidsdk/FBLoginManagerModule;

    .line 67
    invoke-virtual {p1}, Lcom/facebook/login/LoginResult;->getRecentlyGrantedPermissions()Ljava/util/Set;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/facebook/reactnative/androidsdk/FBLoginManagerModule;->access$000(Lcom/facebook/reactnative/androidsdk/FBLoginManagerModule;Ljava/util/Set;)Lcom/facebook/react/bridge/WritableArray;

    move-result-object v3

    .line 66
    invoke-interface {v1, v2, v3}, Lcom/facebook/react/bridge/WritableMap;->putArray(Ljava/lang/String;Lcom/facebook/react/bridge/WritableArray;)V

    .line 68
    const-string v2, "declinedPermissions"

    iget-object v3, p0, Lcom/facebook/reactnative/androidsdk/FBLoginManagerModule$LoginManagerCallback;->this$0:Lcom/facebook/reactnative/androidsdk/FBLoginManagerModule;

    .line 69
    invoke-virtual {p1}, Lcom/facebook/login/LoginResult;->getRecentlyDeniedPermissions()Ljava/util/Set;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/facebook/reactnative/androidsdk/FBLoginManagerModule;->access$000(Lcom/facebook/reactnative/androidsdk/FBLoginManagerModule;Ljava/util/Set;)Lcom/facebook/react/bridge/WritableArray;

    move-result-object v3

    .line 68
    invoke-interface {v1, v2, v3}, Lcom/facebook/react/bridge/WritableMap;->putArray(Ljava/lang/String;Lcom/facebook/react/bridge/WritableArray;)V

    .line 70
    iget-object v2, p0, Lcom/facebook/reactnative/androidsdk/FBLoginManagerModule$LoginManagerCallback;->mPromise:Lcom/facebook/react/bridge/Promise;

    invoke-interface {v2, v1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    .line 71
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/facebook/reactnative/androidsdk/FBLoginManagerModule$LoginManagerCallback;->mPromise:Lcom/facebook/react/bridge/Promise;

    .line 73
    .end local v0    # "accessToken":Lcom/facebook/AccessToken;
    .end local v1    # "result":Lcom/facebook/react/bridge/WritableMap;
    :cond_0
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 53
    check-cast p1, Lcom/facebook/login/LoginResult;

    invoke-virtual {p0, p1}, Lcom/facebook/reactnative/androidsdk/FBLoginManagerModule$LoginManagerCallback;->onSuccess(Lcom/facebook/login/LoginResult;)V

    return-void
.end method
