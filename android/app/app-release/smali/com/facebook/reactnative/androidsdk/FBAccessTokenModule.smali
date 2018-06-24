.class public Lcom/facebook/reactnative/androidsdk/FBAccessTokenModule;
.super Lcom/facebook/react/bridge/ReactContextBaseJavaModule;
.source "FBAccessTokenModule.java"


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 0
    .param p1, "reactContext"    # Lcom/facebook/react/bridge/ReactApplicationContext;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 41
    return-void
.end method


# virtual methods
.method public getCurrentAccessToken(Lcom/facebook/react/bridge/Callback;)V
    .locals 3
    .param p1, "callback"    # Lcom/facebook/react/bridge/Callback;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .prologue
    .line 54
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 56
    :goto_0
    aput-object v0, v1, v2

    .line 54
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    .line 57
    return-void

    .line 56
    :cond_0
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/reactnative/androidsdk/Utility;->accessTokenToReactMap(Lcom/facebook/AccessToken;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    const-string v0, "FBAccessToken"

    return-object v0
.end method

.method public refreshCurrentAccessTokenAsync(Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .param p1, "promise"    # Lcom/facebook/react/bridge/Promise;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .prologue
    .line 78
    new-instance v0, Lcom/facebook/reactnative/androidsdk/FBAccessTokenModule$1;

    invoke-direct {v0, p0, p1}, Lcom/facebook/reactnative/androidsdk/FBAccessTokenModule$1;-><init>(Lcom/facebook/reactnative/androidsdk/FBAccessTokenModule;Lcom/facebook/react/bridge/Promise;)V

    invoke-static {v0}, Lcom/facebook/AccessToken;->refreshCurrentAccessTokenAsync(Lcom/facebook/AccessToken$AccessTokenRefreshCallback;)V

    .line 89
    return-void
.end method

.method public setCurrentAccessToken(Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 1
    .param p1, "accessTokenMap"    # Lcom/facebook/react/bridge/ReadableMap;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .prologue
    .line 67
    invoke-static {p1}, Lcom/facebook/reactnative/androidsdk/Utility;->buildAccessToken(Lcom/facebook/react/bridge/ReadableMap;)Lcom/facebook/AccessToken;

    move-result-object v0

    .line 68
    .local v0, "accessToken":Lcom/facebook/AccessToken;
    invoke-static {v0}, Lcom/facebook/AccessToken;->setCurrentAccessToken(Lcom/facebook/AccessToken;)V

    .line 69
    return-void
.end method
