.class Lcom/facebook/reactnative/androidsdk/FBAccessTokenModule$1;
.super Ljava/lang/Object;
.source "FBAccessTokenModule.java"

# interfaces
.implements Lcom/facebook/AccessToken$AccessTokenRefreshCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/reactnative/androidsdk/FBAccessTokenModule;->refreshCurrentAccessTokenAsync(Lcom/facebook/react/bridge/Promise;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/reactnative/androidsdk/FBAccessTokenModule;

.field final synthetic val$promise:Lcom/facebook/react/bridge/Promise;


# direct methods
.method constructor <init>(Lcom/facebook/reactnative/androidsdk/FBAccessTokenModule;Lcom/facebook/react/bridge/Promise;)V
    .locals 0
    .param p1, "this$0"    # Lcom/facebook/reactnative/androidsdk/FBAccessTokenModule;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/facebook/reactnative/androidsdk/FBAccessTokenModule$1;->this$0:Lcom/facebook/reactnative/androidsdk/FBAccessTokenModule;

    iput-object p2, p0, Lcom/facebook/reactnative/androidsdk/FBAccessTokenModule$1;->val$promise:Lcom/facebook/react/bridge/Promise;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnTokenRefreshFailed(Lcom/facebook/FacebookException;)V
    .locals 1
    .param p1, "exception"    # Lcom/facebook/FacebookException;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/facebook/reactnative/androidsdk/FBAccessTokenModule$1;->val$promise:Lcom/facebook/react/bridge/Promise;

    invoke-interface {v0, p1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/Throwable;)V

    .line 87
    return-void
.end method

.method public OnTokenRefreshed(Lcom/facebook/AccessToken;)V
    .locals 2
    .param p1, "accessToken"    # Lcom/facebook/AccessToken;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/facebook/reactnative/androidsdk/FBAccessTokenModule$1;->val$promise:Lcom/facebook/react/bridge/Promise;

    invoke-static {p1}, Lcom/facebook/reactnative/androidsdk/Utility;->accessTokenToReactMap(Lcom/facebook/AccessToken;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    .line 82
    return-void
.end method
