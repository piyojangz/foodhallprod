.class Lcom/facebook/reactnative/androidsdk/RCTLoginButton$1;
.super Lcom/facebook/AccessTokenTracker;
.source "RCTLoginButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/reactnative/androidsdk/RCTLoginButton;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/reactnative/androidsdk/RCTLoginButton;


# direct methods
.method constructor <init>(Lcom/facebook/reactnative/androidsdk/RCTLoginButton;)V
    .locals 0
    .param p1, "this$0"    # Lcom/facebook/reactnative/androidsdk/RCTLoginButton;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/facebook/reactnative/androidsdk/RCTLoginButton$1;->this$0:Lcom/facebook/reactnative/androidsdk/RCTLoginButton;

    invoke-direct {p0}, Lcom/facebook/AccessTokenTracker;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCurrentAccessTokenChanged(Lcom/facebook/AccessToken;Lcom/facebook/AccessToken;)V
    .locals 5
    .param p1, "oldAccessToken"    # Lcom/facebook/AccessToken;
    .param p2, "currentAccessToken"    # Lcom/facebook/AccessToken;

    .prologue
    .line 62
    if-nez p2, :cond_0

    .line 63
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v1

    .line 64
    .local v1, "event":Lcom/facebook/react/bridge/WritableMap;
    const-string v2, "type"

    const-string v3, "logoutFinished"

    invoke-interface {v1, v2, v3}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    iget-object v2, p0, Lcom/facebook/reactnative/androidsdk/RCTLoginButton$1;->this$0:Lcom/facebook/reactnative/androidsdk/RCTLoginButton;

    invoke-virtual {v2}, Lcom/facebook/reactnative/androidsdk/RCTLoginButton;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/bridge/ReactContext;

    .line 66
    .local v0, "context":Lcom/facebook/react/bridge/ReactContext;
    const-class v2, Lcom/facebook/react/uimanager/events/RCTEventEmitter;

    invoke-virtual {v0, v2}, Lcom/facebook/react/bridge/ReactContext;->getJSModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/JavaScriptModule;

    move-result-object v2

    check-cast v2, Lcom/facebook/react/uimanager/events/RCTEventEmitter;

    iget-object v3, p0, Lcom/facebook/reactnative/androidsdk/RCTLoginButton$1;->this$0:Lcom/facebook/reactnative/androidsdk/RCTLoginButton;

    .line 67
    invoke-virtual {v3}, Lcom/facebook/reactnative/androidsdk/RCTLoginButton;->getId()I

    move-result v3

    const-string v4, "topChange"

    .line 66
    invoke-interface {v2, v3, v4, v1}, Lcom/facebook/react/uimanager/events/RCTEventEmitter;->receiveEvent(ILjava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    .line 71
    .end local v0    # "context":Lcom/facebook/react/bridge/ReactContext;
    .end local v1    # "event":Lcom/facebook/react/bridge/WritableMap;
    :cond_0
    return-void
.end method
